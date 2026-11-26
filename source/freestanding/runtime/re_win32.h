#ifndef RE_FREESTANDING_WIN32_H
#define RE_FREESTANDING_WIN32_H

/*  Freestanding Win32 helpers — lazy-resolved API functions via manual
 *  PEB / PE walking.  Eliminates all static imports from the final DLL.
 *
 *  On Windows (x86_64):  full PEB walk + PE export table parsing.
 *  On Linux / other:     stubs (functions return nullptr / false).
 *
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"

namespace re {

/* ================================================================
   Compile-time hash functions  (djb2 family)
   ================================================================ */

/* Case-sensitive hash — for export function names */
constexpr ReU32 re_hash(const char* str) {
    ReU32 h = 5381;
    while (*str) {
        h = h * 33 + static_cast<unsigned char>(*str);
        ++str;
    }
    return h;
}

/* Case-insensitive hash — for module (DLL) names */
constexpr ReU32 re_hash_ci(const char* str) {
    ReU32 h = 5381;
    while (*str) {
        unsigned char c = static_cast<unsigned char>(*str);
        if (c >= 'A' && c <= 'Z') c += 32;
        h = h * 33 + c;
        ++str;
    }
    return h;
}

/* ================================================================
   Windows constants  (avoid including windows.h)
   ================================================================ */
inline constexpr ReU32 RE_MEM_COMMIT              = 0x00001000;
inline constexpr ReU32 RE_MEM_RESERVE             = 0x00002000;
inline constexpr ReU32 RE_MEM_DECOMMIT            = 0x00004000;
inline constexpr ReU32 RE_MEM_RELEASE             = 0x00008000;
inline constexpr ReU32 RE_PAGE_NOACCESS            = 0x01;
inline constexpr ReU32 RE_PAGE_READONLY            = 0x02;
inline constexpr ReU32 RE_PAGE_READWRITE           = 0x04;
inline constexpr ReU32 RE_PAGE_EXECUTE             = 0x10;
inline constexpr ReU32 RE_PAGE_EXECUTE_READ        = 0x20;
inline constexpr ReU32 RE_PAGE_EXECUTE_READWRITE   = 0x40;
inline constexpr ReU32 RE_INFINITE                 = 0xFFFFFFFF;

/* Pre-computed module hashes (case-insensitive djb2) */
inline constexpr ReU32 RE_HASH_KERNEL32  = re_hash_ci("kernel32.dll");
inline constexpr ReU32 RE_HASH_NTDLL     = re_hash_ci("ntdll.dll");
inline constexpr ReU32 RE_HASH_USER32    = re_hash_ci("user32.dll");


/* ================================================================
   Platform-specific implementation
   ================================================================ */
#ifdef _WIN32

/* ---- GS-segment read (PEB access on x64) ---- */
/* Suppress -Wpedantic for extended asm (ISO C++ only defines
   the basic asm(string-literal) form; operands are a GCC extension). */
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"

inline ReU64 re_read_gs_qword(ReU32 offset) {
    ReU64 result;
    __asm__ __volatile__(
        "movq %%gs:(%1), %0"
        : "=r"(result)
        : "r"(static_cast<ReU64>(offset))
        : "memory"
    );
    return result;
}

#pragma GCC diagnostic pop

/* ---- Helper: read value at base + byte offset ---- */
namespace detail {

template<typename T>
inline T pe_read(const void* base, ReUSize offset) {
    return *reinterpret_cast<const T*>(
        static_cast<const ReU8*>(base) + offset);
}

template<typename T>
inline T pe_read(void* base, ReUSize offset) {
    return *reinterpret_cast<const T*>(
        static_cast<ReU8*>(base) + offset);
}

/* Case-insensitive djb2 over a wide (UTF-16LE) string */
inline ReU32 hash_wide_ci(const ReU16* str, ReUSize char_count) {
    ReU32 h = 5381;
    for (ReUSize i = 0; i < char_count; ++i) {
        ReU16 c = str[i];
        if (c >= 'A' && c <= 'Z') c += 32;
        h = h * 33 + c;
    }
    return h;
}

} /* namespace detail */


/* ================================================================
   resolve_module_by_hash  —  PEB → LDR → InMemoryOrder walk
   ================================================================

   x64 layout (all offsets for 64-bit Windows):
     PEB            at GS:[0x60]
     PEB->Ldr       at PEB+0x18         (PEB_LDR_DATA*)
     Ldr->InMemoryOrderModuleList       at Ldr+0x20   (LIST_ENTRY)

   Each LIST_ENTRY in that list is the InMemoryOrderLinks field of
   an LDR_DATA_TABLE_ENTRY, which sits at offset 0x10 within the
   entry struct.  Relative to the LIST_ENTRY pointer:
     DllBase            at +0x20
     BaseDllName.Length  at +0x48    (USHORT, byte count)
     BaseDllName.Buffer  at +0x50    (PWSTR)
*/
inline void* resolve_module_by_hash(ReU32 hash) {
    /* Step 1: PEB */
    auto peb = reinterpret_cast<ReU8*>(re_read_gs_qword(0x60));

    /* Step 2: PEB->Ldr */
    auto ldr = detail::pe_read<ReU8*>(peb, 0x18);

    /* Step 3: InMemoryOrderModuleList head (LIST_ENTRY) */
    ReU8* head = ldr + 0x20;
    ReU8* cur  = detail::pe_read<ReU8*>(head, 0); /* Flink */

    while (cur != head) {
        /* DllBase */
        void* dll_base = detail::pe_read<void*>(cur, 0x20);

        /* BaseDllName (UNICODE_STRING relative to list entry) */
        ReU16  name_bytes = detail::pe_read<ReU16>(cur, 0x48);
        ReU16* name_buf   = detail::pe_read<ReU16*>(cur, 0x50);
        ReUSize char_count = name_bytes / 2;

        if (dll_base && name_buf && char_count > 0) {
            if (detail::hash_wide_ci(name_buf, char_count) == hash)
                return dll_base;
        }

        /* Next entry (Flink at offset 0 of LIST_ENTRY) */
        cur = detail::pe_read<ReU8*>(cur, 0);
    }

    return nullptr;
}


/* ================================================================
   resolve_export_by_hash  —  PE export directory walk
   ================================================================

   NT headers at DllBase + *(LONG*)(DllBase + 0x3C)        (e_lfanew)
   Export dir RVA:  NT + 0x88   (DataDirectory[0].VirtualAddress)
   Export dir size: NT + 0x8C   (DataDirectory[0].Size)

   IMAGE_EXPORT_DIRECTORY:
     +0x18  NumberOfNames
     +0x1C  AddressOfFunctions   (RVA -> DWORD[])
     +0x20  AddressOfNames       (RVA -> DWORD[])
     +0x24  AddressOfNameOrdinals (RVA -> WORD[])
*/
inline void* resolve_export_by_hash(void* module, ReU32 hash) {
    if (!module) return nullptr;

    auto base = static_cast<ReU8*>(module);

    /* DOS header -> e_lfanew (signed 32-bit offset) */
    ReI32 e_lfanew = detail::pe_read<ReI32>(base, 0x3C);
    ReU8* nt = base + e_lfanew;

    /* Export directory RVA */
    ReU32 export_rva  = detail::pe_read<ReU32>(nt, 0x88);
    ReU32 export_size = detail::pe_read<ReU32>(nt, 0x8C);
    if (export_rva == 0) return nullptr;

    ReU8* export_dir = base + export_rva;

    ReU32 num_names     = detail::pe_read<ReU32>(export_dir, 0x18);
    ReU32 functions_rva = detail::pe_read<ReU32>(export_dir, 0x1C);
    ReU32 names_rva     = detail::pe_read<ReU32>(export_dir, 0x20);
    ReU32 ordinals_rva  = detail::pe_read<ReU32>(export_dir, 0x24);

    for (ReU32 i = 0; i < num_names; ++i) {
        ReU32 name_rva = detail::pe_read<ReU32>(base + names_rva, i * 4);
        const char* name = reinterpret_cast<const char*>(base + name_rva);

        if (re_hash(name) == hash) {
            ReU16 ordinal  = detail::pe_read<ReU16>(base + ordinals_rva, i * 2);
            ReU32 func_rva = detail::pe_read<ReU32>(base + functions_rva,
                                                     ordinal * 4);
            void* func = base + func_rva;

            /* Forwarded export check: if func_rva lands inside the
               export directory, it is a forwarded string, not a real
               function address. Return nullptr for forwards. */
            if (func_rva >= export_rva && func_rva < export_rva + export_size)
                return nullptr;

            return func;
        }
    }

    return nullptr;
}


/* ================================================================
   Lazy-resolved Win32 function pointers
   ================================================================

   Each function pointer is stored as an inline global, resolved on
   first call.  Thread safety: benign race (worst case: redundant
   resolution, same result).  This is standard for DLL-injection
   runtimes.

   Function-pointer types use the default x64 calling convention
   (there is only one on 64-bit Windows).
*/
namespace detail {

/* Function-pointer types for the wrapped APIs */
using FnVirtualAlloc      = void*(*)(void*, ReUSize, ReU32, ReU32);
using FnVirtualFree       = int  (*)(void*, ReUSize, ReU32);
using FnGetProcAddress    = void*(*)(void*, const char*);
using FnLoadLibraryA      = void*(*)(const char*);
using FnFreeLibrary       = int  (*)(void*);
using FnGetModuleHandleA  = void*(*)(const char*);
using FnOutputDebugStringA = void(*)(const char*);
using FnGetLastError      = ReU32(*)();

/* Inline global pointers (zero-initialized, resolved lazily) */
inline FnVirtualAlloc       g_VirtualAlloc       = nullptr;
inline FnVirtualFree        g_VirtualFree        = nullptr;
inline FnGetProcAddress     g_GetProcAddress     = nullptr;
inline FnLoadLibraryA       g_LoadLibraryA       = nullptr;
inline FnFreeLibrary        g_FreeLibrary        = nullptr;
inline FnGetModuleHandleA   g_GetModuleHandleA   = nullptr;
inline FnOutputDebugStringA g_OutputDebugStringA = nullptr;
inline FnGetLastError       g_GetLastError       = nullptr;

/* Pre-computed export hashes (case-sensitive djb2) */
inline constexpr ReU32 H_VirtualAlloc       = re_hash("VirtualAlloc");
inline constexpr ReU32 H_VirtualFree        = re_hash("VirtualFree");
inline constexpr ReU32 H_GetProcAddress     = re_hash("GetProcAddress");
inline constexpr ReU32 H_LoadLibraryA       = re_hash("LoadLibraryA");
inline constexpr ReU32 H_FreeLibrary        = re_hash("FreeLibrary");
inline constexpr ReU32 H_GetModuleHandleA   = re_hash("GetModuleHandleA");
inline constexpr ReU32 H_OutputDebugStringA = re_hash("OutputDebugStringA");
inline constexpr ReU32 H_GetLastError       = re_hash("GetLastError");

template<typename Fn>
inline Fn resolve_kernel32(Fn& cached, ReU32 export_hash) {
    if (!cached) {
        void* k32 = resolve_module_by_hash(RE_HASH_KERNEL32);
        cached = reinterpret_cast<Fn>(resolve_export_by_hash(k32, export_hash));
    }
    return cached;
}

} /* namespace detail */


/* ---- Public API wrappers ---- */

inline void* win32_virtual_alloc(void* addr, ReUSize size,
                                  ReU32 type, ReU32 protect) {
    auto fn = detail::resolve_kernel32(detail::g_VirtualAlloc,
                                       detail::H_VirtualAlloc);
    return fn ? fn(addr, size, type, protect) : nullptr;
}

inline bool win32_virtual_free(void* addr, ReUSize size, ReU32 type) {
    auto fn = detail::resolve_kernel32(detail::g_VirtualFree,
                                       detail::H_VirtualFree);
    return fn ? fn(addr, size, type) != 0 : false;
}

inline void* win32_get_proc_address(void* module, const char* name) {
    auto fn = detail::resolve_kernel32(detail::g_GetProcAddress,
                                       detail::H_GetProcAddress);
    return fn ? fn(module, name) : nullptr;
}

inline void* win32_load_library(const char* name) {
    auto fn = detail::resolve_kernel32(detail::g_LoadLibraryA,
                                       detail::H_LoadLibraryA);
    return fn ? fn(name) : nullptr;
}

inline void* win32_get_module_handle(const char* name) {
    auto fn = detail::resolve_kernel32(detail::g_GetModuleHandleA,
                                       detail::H_GetModuleHandleA);
    return fn ? fn(name) : nullptr;
}

inline bool win32_free_library(void* module) {
    auto fn = detail::resolve_kernel32(detail::g_FreeLibrary,
                                       detail::H_FreeLibrary);
    return fn ? fn(module) != 0 : false;
}

inline void win32_output_debug_string(const char* msg) {
    auto fn = detail::resolve_kernel32(detail::g_OutputDebugStringA,
                                       detail::H_OutputDebugStringA);
    if (fn) fn(msg);
}

inline ReU32 win32_get_last_error() {
    auto fn = detail::resolve_kernel32(detail::g_GetLastError,
                                       detail::H_GetLastError);
    return fn ? fn() : 0;
}


/* ================================================================
   re_resolve_api  —  generic resolver for any module + export
   ================================================================

   Usage:
     void* fn = re_resolve_api(re_hash_ci("user32.dll"),
                                re_hash("MessageBoxA"));
*/
inline void* re_resolve_api(ReU32 module_hash, ReU32 export_hash) {
    void* mod = resolve_module_by_hash(module_hash);
    if (!mod) {
        /* Module not yet loaded — try LoadLibraryA if available */
        /* (This path is best-effort; caller should ensure module
            is loaded before resolving its exports.) */
        return nullptr;
    }
    return resolve_export_by_hash(mod, export_hash);
}


#else /* !_WIN32  — Linux / other stubs for testing */

inline void*  resolve_module_by_hash(ReU32)              { return nullptr; }
inline void*  resolve_export_by_hash(void*, ReU32)       { return nullptr; }

inline void*  win32_virtual_alloc(void*, ReUSize, ReU32, ReU32)
                                                          { return nullptr; }
inline bool   win32_virtual_free(void*, ReUSize, ReU32)   { return false; }
inline void*  win32_get_proc_address(void*, const char*)  { return nullptr; }
inline void*  win32_load_library(const char*)             { return nullptr; }
inline void*  win32_get_module_handle(const char*)        { return nullptr; }
inline bool   win32_free_library(void*)                   { return false; }
inline void   win32_output_debug_string(const char*)      {}
inline ReU32  win32_get_last_error()                       { return 0; }

inline void*  re_resolve_api(ReU32, ReU32)                { return nullptr; }

#endif /* _WIN32 */

} /* namespace re */

#endif /* RE_FREESTANDING_WIN32_H */
