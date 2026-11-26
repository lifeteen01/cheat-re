#ifndef RE_FREESTANDING_MEM_H
#define RE_FREESTANDING_MEM_H

/* Freestanding CRT-free memory allocator.
 * No standard library headers. Only re_types.h.
 *
 * Windows: PEB -> LDR -> InMemoryOrderModuleList walk to find kernel32.dll,
 *          hash-based export resolution for VirtualAlloc/VirtualFree.
 * Linux:   Direct syscall for mmap/munmap (for testing only). */

#include "re_types.h"

namespace re {

/* ---- Allocator API ---- */
void* mem_alloc(ReUSize size);
void* mem_realloc(void* ptr, ReUSize old_size, ReUSize new_size);
void  mem_free(void* ptr);
void  mem_init();

/* ---- Implementation ---- */
namespace detail {

/* Align size up to a given alignment. */
inline constexpr ReUSize align_up(ReUSize size, ReUSize align) {
    return (size + align - 1) & ~(align - 1);
}

/* Minimum alignment for the user pointer returned by mem_alloc.
 * VirtualAlloc / mmap return page-aligned memory; we ensure the
 * user pointer within that page is at least this aligned. */
inline constexpr ReUSize MIN_ALIGN = 16;

/* Block header: stored immediately before the returned pointer.
 * Stores the total allocation size (header + padding + user data)
 * so that mem_free knows how much to release. */
struct AllocHeader {
    ReUSize total_size;    /* Entire allocation including header. */
    ReUSize user_size;     /* Requested size (for realloc). */
    ReU64   magic;         /* Canary for sanity checks. */
};

inline constexpr ReU64 ALLOC_MAGIC = 0x52454D454D415243ULL; /* "REMARC" + padding */
/* Pad header to MIN_ALIGN boundary so the user pointer is properly aligned.
 * sizeof(AllocHeader) is 24; align_up(24, 16) == 32, giving 16-byte
 * aligned user pointers when the OS returns page-aligned memory. */
inline constexpr ReUSize HEADER_SIZE = align_up(sizeof(AllocHeader), MIN_ALIGN);

/* ============================================================
 * Windows: PEB walk + hash-based export resolution
 * ============================================================ */
#if defined(_WIN32)

/* Windows constants (no <windows.h>). */
inline constexpr ReU32 MEM_COMMIT    = 0x1000;
inline constexpr ReU32 MEM_RESERVE   = 0x2000;
inline constexpr ReU32 MEM_RELEASE   = 0x8000;
inline constexpr ReU32 PAGE_READWRITE = 0x04;

/* Function pointer types matching the Windows API. */
using VirtualAllocFn = void* (__attribute__((ms_abi)) *)(
    void* lpAddress, ReUSize dwSize, ReU32 flAllocationType, ReU32 flProtect);
using VirtualFreeFn = int (__attribute__((ms_abi)) *)(
    void* lpAddress, ReUSize dwSize, ReU32 dwFreeType);

/* DJB2 hash of an ASCII string, case-insensitive.
 * Used to match export names without string comparison (avoids CRT). */
inline constexpr ReU32 djb2_hash(const char* str) {
    ReU32 hash = 5381;
    while (*str) {
        char c = *str++;
        if (c >= 'A' && c <= 'Z') c |= 0x20; /* lowercase */
        hash = ((hash << 5) + hash) + (ReU32)(unsigned char)c;
    }
    return hash;
}

/* Compile-time hashes for the functions we need. */
inline constexpr ReU32 HASH_VIRTUALALLOC = djb2_hash("VirtualAlloc");
inline constexpr ReU32 HASH_VIRTUALFREE  = djb2_hash("VirtualFree");

/* Runtime DJB2 hash over a byte sequence (reading from arbitrary memory). */
inline ReU32 djb2_hash_bytes(const char* str) {
    ReU32 hash = 5381;
    while (*str) {
        char c = *str++;
        if (c >= 'A' && c <= 'Z') c |= 0x20;
        hash = ((hash << 5) + hash) + (ReU32)(unsigned char)c;
    }
    return hash;
}

/* Read the PEB from the GS segment register (x64 Windows).
 * GS:[0x60] = pointer to PEB. */
inline void* get_peb() {
    void* peb;
    __asm__ volatile("mov %%gs:0x60, %0" : "=r"(peb));
    return peb;
}

/* PEB layout (minimal, only what we need):
 *   +0x18: Ldr (pointer to PEB_LDR_DATA)
 * PEB_LDR_DATA:
 *   +0x20: InMemoryOrderModuleList (LIST_ENTRY, Flink at +0x00)
 * Each entry in InMemoryOrderModuleList:
 *   +0x00: Flink (next entry)
 *   +0x30: DllBase (module base address)
 *   +0x40: BaseDllName (UNICODE_STRING: Length at +0x00 (U16), Buffer at +0x08)
 *
 * Walk the list, hash each module's BaseDllName looking for kernel32.dll. */

inline constexpr ReU32 HASH_KERNEL32 = djb2_hash("kernel32.dll");

/* Hash a UNICODE_STRING's buffer (UTF-16LE, ASCII range only). */
inline ReU32 djb2_hash_wide(const ReU16* wstr, ReU16 byte_len) {
    ReU32 hash = 5381;
    ReU16 char_count = byte_len / 2;
    for (ReU16 i = 0; i < char_count; ++i) {
        char c = (char)(wstr[i] & 0xFF);
        if (c >= 'A' && c <= 'Z') c |= 0x20;
        hash = ((hash << 5) + hash) + (ReU32)(unsigned char)c;
    }
    return hash;
}

/* Find kernel32.dll base via PEB walk. */
inline void* find_kernel32() {
    const auto peb = (ReByte*)get_peb();
    const auto ldr = *(ReByte**)(peb + 0x18);
    /* InMemoryOrderModuleList is at LDR + 0x20. Flink points to the first entry. */
    const auto list_head = (ReByte*)(ldr + 0x20);
    auto entry = *(ReByte**)list_head; /* Flink of list head */

    while (entry != list_head) {
        /* DllBase is at entry + 0x30 relative to the LIST_ENTRY start.
         * But InMemoryOrderModuleList entries are at offset 0x10 in LDR_DATA_TABLE_ENTRY,
         * so DllBase (at +0x30 in the struct) is at entry + 0x20 from the list link.
         * BaseDllName UNICODE_STRING is at +0x58 in the struct, = entry + 0x48 from link.
         * Actually: the LIST_ENTRY for InMemoryOrderModuleList is at +0x10 in the
         * LDR_DATA_TABLE_ENTRY. So from the list entry pointer:
         *   DllBase = *(entry - 0x10 + 0x30) = *(entry + 0x20)
         *   BaseDllName.Length = *(U16*)(entry - 0x10 + 0x58) = *(U16*)(entry + 0x48)
         *   BaseDllName.Buffer = *(ptr*)(entry - 0x10 + 0x60) = *(ptr*)(entry + 0x50) */
        void* dll_base = *(void**)(entry + 0x20);
        ReU16 name_len = *(ReU16*)(entry + 0x48);
        const auto* name_buf = *(const ReU16**)(entry + 0x50);

        if (dll_base && name_buf && name_len > 0) {
            if (djb2_hash_wide(name_buf, name_len) == HASH_KERNEL32)
                return dll_base;
        }
        entry = *(ReByte**)entry; /* Follow Flink to next entry */
    }
    return re_nullptr;
}

/* Resolve an export by hash from a PE module's export table.
 * Same approach as the project's metadata_export_analysis.cpp but inline. */
inline void* resolve_export_by_hash(void* module_base, ReU32 target_hash) {
    auto* base = (ReByte*)module_base;
    /* DOS header: e_lfanew at +0x3C. */
    const auto e_lfanew = *(ReI32*)(base + 0x3C);
    auto* nt = base + e_lfanew;
    /* PE64: export directory is at optional header + 0x70 (DataDirectory[0]).
     * Optional header starts at nt + 0x18.
     * DataDirectory[0] RVA at nt + 0x18 + 0x70 = nt + 0x88. */
    const auto export_rva = *(ReU32*)(nt + 0x88);
    if (export_rva == 0) return re_nullptr;
    auto* exports = base + export_rva;

    const auto num_names      = *(ReU32*)(exports + 0x18);
    const auto functions_rva  = *(ReU32*)(exports + 0x1C);
    const auto names_rva      = *(ReU32*)(exports + 0x20);
    const auto ordinals_rva   = *(ReU32*)(exports + 0x24);

    auto* name_table    = (ReU32*)(base + names_rva);
    auto* ordinal_table = (ReU16*)(base + ordinals_rva);
    auto* func_table    = (ReU32*)(base + functions_rva);

    for (ReU32 i = 0; i < num_names; ++i) {
        const auto* name = (const char*)(base + name_table[i]);
        if (djb2_hash_bytes(name) == target_hash) {
            const ReU16 ordinal = ordinal_table[i];
            return base + func_table[ordinal];
        }
    }
    return re_nullptr;
}

/* Global function pointers, resolved lazily. */
inline VirtualAllocFn g_virtual_alloc = re_nullptr;
inline VirtualFreeFn  g_virtual_free  = re_nullptr;
inline ReBool         g_mem_initialized = RE_FALSE;

inline void mem_init_impl() {
    if (g_mem_initialized) return;
    void* k32 = find_kernel32();
    if (k32) {
        g_virtual_alloc = (VirtualAllocFn)resolve_export_by_hash(k32, HASH_VIRTUALALLOC);
        g_virtual_free  = (VirtualFreeFn)resolve_export_by_hash(k32, HASH_VIRTUALFREE);
    }
    g_mem_initialized = RE_TRUE;
}

inline void* os_alloc(ReUSize size) {
    if (!g_virtual_alloc) return re_nullptr;
    return g_virtual_alloc(re_nullptr, size, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
}

inline void os_free(void* ptr, ReUSize size) {
    if (g_virtual_free) {
        (void)size; /* VirtualFree with MEM_RELEASE ignores size. */
        g_virtual_free(ptr, 0, MEM_RELEASE);
    }
}

/* ============================================================
 * Linux: direct syscall for mmap/munmap (testing only)
 * ============================================================ */
#elif defined(__linux__)

/* Syscall numbers for x86_64 Linux. */
inline constexpr long SYS_MMAP   = 9;
inline constexpr long SYS_MUNMAP = 11;

/* mmap flags. */
inline constexpr int PROT_READ   = 0x1;
inline constexpr int PROT_WRITE  = 0x2;
inline constexpr int MAP_PRIVATE = 0x02;
inline constexpr int MAP_ANONYMOUS = 0x20;

inline long syscall6(long nr, long a1, long a2, long a3, long a4, long a5, long a6) {
    long ret;
    register long r10 __asm__("r10") = a4;
    register long r8  __asm__("r8")  = a5;
    register long r9  __asm__("r9")  = a6;
    __asm__ volatile(
        "syscall"
        : "=a"(ret)
        : "a"(nr), "D"(a1), "S"(a2), "d"(a3), "r"(r10), "r"(r8), "r"(r9)
        : "rcx", "r11", "memory"
    );
    return ret;
}

inline long syscall2(long nr, long a1, long a2) {
    long ret;
    __asm__ volatile(
        "syscall"
        : "=a"(ret)
        : "a"(nr), "D"(a1), "S"(a2)
        : "rcx", "r11", "memory"
    );
    return ret;
}

inline ReBool g_mem_initialized = RE_FALSE;

inline void mem_init_impl() {
    g_mem_initialized = RE_TRUE;
}

inline void* os_alloc(ReUSize size) {
    long result = syscall6(SYS_MMAP,
        0,                                      /* addr: let kernel choose */
        (long)size,                              /* length */
        PROT_READ | PROT_WRITE,                 /* prot */
        MAP_PRIVATE | MAP_ANONYMOUS,            /* flags */
        -1,                                     /* fd (none) */
        0                                       /* offset */
    );
    /* mmap returns MAP_FAILED (-1 as unsigned) on error. */
    if (result < 0 && result > -4096) return re_nullptr;
    return (void*)result;
}

inline void os_free(void* ptr, ReUSize size) {
    syscall2(SYS_MUNMAP, (long)ptr, (long)size);
}

#else
#error "re_mem.h: unsupported platform (need _WIN32 or __linux__)"
#endif

} // namespace detail

/* ---- Public API implementation ---- */

inline void mem_init() {
    detail::mem_init_impl();
}

inline void* mem_alloc(ReUSize size) {
    if (!detail::g_mem_initialized) detail::mem_init_impl();
    if (size == 0) size = 1; /* Never return nullptr for zero-size alloc. */

    const ReUSize total = detail::align_up(
        detail::HEADER_SIZE + size, detail::MIN_ALIGN);
    void* raw = detail::os_alloc(total);
    if (!raw) return re_nullptr;

    auto* header = static_cast<detail::AllocHeader*>(raw);
    header->total_size = total;
    header->user_size  = size;
    header->magic      = detail::ALLOC_MAGIC;

    return static_cast<ReByte*>(raw) + detail::HEADER_SIZE;
}

inline void mem_free(void* ptr) {
    if (!ptr) return;

    auto* header = reinterpret_cast<detail::AllocHeader*>(
        static_cast<ReByte*>(ptr) - detail::HEADER_SIZE);
    /* Sanity check: verify magic before freeing. */
    if (header->magic != detail::ALLOC_MAGIC) return;
    header->magic = 0; /* Poison to catch double-free. */
    detail::os_free(header, header->total_size);
}

inline void* mem_realloc(void* ptr, ReUSize old_size, ReUSize new_size) {
    if (!ptr) return mem_alloc(new_size);
    if (new_size == 0) { mem_free(ptr); return re_nullptr; }

    auto* header = reinterpret_cast<detail::AllocHeader*>(
        static_cast<ReByte*>(ptr) - detail::HEADER_SIZE);
    if (header->magic != detail::ALLOC_MAGIC) return re_nullptr;

    /* Use the stored user_size as the authoritative old size if caller
     * passes 0 (convenience for callers that track size themselves). */
    if (old_size == 0) old_size = header->user_size;

    /* If the existing allocation already has enough room, just update. */
    const ReUSize needed = detail::align_up(
        detail::HEADER_SIZE + new_size, detail::MIN_ALIGN);
    if (needed <= header->total_size) {
        header->user_size = new_size;
        return ptr;
    }

    /* Allocate new, copy, free old. */
    void* new_ptr = mem_alloc(new_size);
    if (!new_ptr) return re_nullptr;
    const ReUSize copy_size = old_size < new_size ? old_size : new_size;
    re_memcpy(new_ptr, ptr, copy_size);
    mem_free(ptr);
    return new_ptr;
}

} // namespace re

#endif /* RE_FREESTANDING_MEM_H */
