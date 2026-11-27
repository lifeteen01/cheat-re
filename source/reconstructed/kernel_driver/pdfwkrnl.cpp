// PDFWKRNL.sys — Full kernel driver reconstruction.
// Decompiled from PDFWKRNL.sys.bin (sha256: 357dfaee...) via REA/Ghidra.
// 25 procedures total; 5 local + 17 ntoskrnl imports + 3 CFG stubs.
//
// Purpose: BYOVD (Bring Your Own Vulnerable Driver) providing:
//   - Physical memory read (IOCTL 0x80002000) via MmMapIoSpace
//   - Physical memory write (IOCTL 0x80002004) via MmMapIoSpace
//   - IO port read (IOCTL 0x80002008) via __inbyte/__indword
//   - IO port write (IOCTL 0x8000200c) via __outbyte/__outdword
//   - Contiguous memory alloc (IOCTL 0x80002010) via MmAllocateContiguousMemorySpecifyCache
//   - Memmove via mapped region (IOCTL 0x80002014)
//   - Contiguous memory free (IOCTL 0x80002018)
//   - Map IO space (IOCTL 0x8000201c)
//   - Memmove via IO-mapped region (IOCTL 0x80002020)
//   - Unmap IO space (IOCTL 0x80002024)
//   - Direct kernel memmove (IOCTL 0x80002028) — primary exploitation primitive
//   - Direct kernel memmove variant (IOCTL 0x8000202c)
//
// The cheat starter loads this driver transiently to:
//   1. Zero KsecDD's LsaProcess pointer
//   2. Plant a fake gKsecpMiscExtension for TLB flush
//   3. Whitelist all memory in KsecValidAddresses
// Then unloads it. See B_kernel/REPORT.md for the full exploitation chain.

#include <cstdint>
#include <cstring>

// Kernel types (abbreviated for reconstruction)
using NTSTATUS = int32_t;
using ULONG = uint32_t;
using PVOID = void*;
using ULONG_PTR = uint64_t;
using PHYSICAL_ADDRESS = int64_t;

constexpr NTSTATUS STATUS_SUCCESS = 0;
constexpr NTSTATUS STATUS_INVALID_PARAMETER = 0xC000000D;
constexpr NTSTATUS STATUS_INSUFFICIENT_RESOURCES = 0xC000009A;

// IRP offsets (from Ghidra decompilation)
// param_2 = IRP*, param_2+0x18 = SystemBuffer, param_2+0x30 = IoStatus.Status,
// param_2+0x38 = IoStatus.Information, param_2+0xb8 = current stack location

namespace pdfwkrnl {

// Forward declarations for ntoskrnl imports
extern "C" {
PVOID MmMapIoSpace(PHYSICAL_ADDRESS phys, ULONG size, int cache_type);
void MmUnmapIoSpace(PVOID base, ULONG size);
PVOID IoAllocateMdl(PVOID va, ULONG len, int secondary, int charge, PVOID irp);
void MmBuildMdlForNonPagedPool(PVOID mdl);
PVOID MmMapLockedPages(PVOID mdl, int access_mode);
void MmUnmapLockedPages(PVOID va, PVOID mdl);
void IoFreeMdl(PVOID mdl);
PHYSICAL_ADDRESS MmGetPhysicalAddress(PVOID va);
PVOID MmAllocateContiguousMemorySpecifyCache(
    ULONG size, PHYSICAL_ADDRESS low, PHYSICAL_ADDRESS high,
    PHYSICAL_ADDRESS boundary, int cache_type);
void MmFreeContiguousMemory(PVOID base);
NTSTATUS IoCreateDevice(PVOID driver, ULONG ext_size, PVOID name,
                        ULONG type, ULONG characteristics, int exclusive, PVOID* out);
void IoDeleteDevice(PVOID device);
NTSTATUS IoCreateSymbolicLink(PVOID sym, PVOID target);
NTSTATUS IoDeleteSymbolicLink(PVOID name);
void IofCompleteRequest(PVOID irp, int boost);
void ExFreePoolWithTag(PVOID ptr, ULONG tag);
void RtlInitUnicodeString(PVOID dest, const wchar_t* src);
}

// Global: linked list of MDL tracking entries for cleanup
struct MdlTrackEntry {
    MdlTrackEntry* next;    // +0x00
    PVOID          mdl;     // +0x08
    PVOID          io_base; // +0x10
    PVOID          mapped;  // +0x18
};
static MdlTrackEntry* g_mdl_list = nullptr;  // DAT_140003010

// ──────────────────────────────────────────────────────────────
// FUN_1400016c0: Optimized memmove (overlapping-safe)
// RVA 0x6c0, called by IOCTLs 0x80002014, 0x80002020, 0x80002028, 0x8000202c.
// ──────────────────────────────────────────────────────────────
static void driver_memmove(void* dst, const void* src, uint64_t len) {
    // The original is an SIMD-optimized, alignment-aware memmove.
    // For reconstruction, the standard memmove provides identical semantics.
    std::memmove(dst, src, static_cast<size_t>(len));
}

// ──────────────────────────────────────────────────────────────
// FUN_140001460: IRP_MJ_CREATE / IRP_MJ_CLOSE handler
// Just completes the IRP with STATUS_SUCCESS.
// ──────────────────────────────────────────────────────────────
struct IRP {
    uint8_t pad0[0x18];
    void*   system_buffer;      // +0x18
    uint8_t pad1[0x08];         // +0x20
    int32_t io_status_status;   // +0x30 (IoStatus.Status)
    uint8_t pad2[0x04];
    int64_t io_status_info;     // +0x38 (IoStatus.Information)
};

static NTSTATUS dispatch_create_close(void* /*device*/, IRP* irp) {
    irp->io_status_status = STATUS_SUCCESS;
    irp->io_status_info = 0;
    IofCompleteRequest(irp, 0);
    return STATUS_SUCCESS;
}

// ──────────────────────────────────────────────────────────────
// FUN_140001000: IRP_MJ_DEVICE_CONTROL handler
// IOCTL dispatch with 13 operations.
// ──────────────────────────────────────────────────────────────

// IOCTL input buffer layouts (from decompilation)
struct PhysReadInput {       // 0x10 bytes, IOCTL 0x80002000
    PHYSICAL_ADDRESS phys;   // +0x00
    uint32_t         size;   // +0x08 (also output length)
    uint32_t         pad;    // +0x0C
};

struct PhysWriteInput {      // 0x10 bytes, IOCTL 0x80002004
    PHYSICAL_ADDRESS phys;   // +0x00
    uint32_t         size;   // +0x08
    uint32_t         value;  // +0x0C (value to write)
};

struct IoPortInput {         // 0x0C bytes, IOCTLs 0x80002008/0x8000200c
    uint32_t port;           // +0x00
    uint32_t size;           // +0x04 (must be 4)
    uint32_t value;          // +0x08 (output for read, input for write)
};

struct ContigAllocInput {    // 0x30 bytes, IOCTL 0x80002010
    uint32_t     size;       // +0x00
    uint32_t     pad;
    PHYSICAL_ADDRESS out_phys; // +0x08 (output)
    void*        out_va;       // +0x10 (output)
};

struct MemmoveInput30 {      // 0x30 bytes, IOCTLs 0x80002014/0x80002028
    uint64_t     field_00;
    uint64_t     field_08;
    void*        dst;        // +0x10 (or +0x20 for 0x80002028)
    void*        src;        // +0x18
    uint32_t     len;        // +0x28
};

struct MapIoInput {          // 0x38 bytes, IOCTL 0x8000201c
    uint32_t     size;       // +0x00
    uint32_t     pad;
    PHYSICAL_ADDRESS phys;   // +0x08
    uint64_t     field_10;
    uint64_t     field_18;
    uint64_t     field_20;
    void*        out_mapped; // +0x28 (output)
};

static NTSTATUS dispatch_device_control(void* /*device*/, void* irp_raw) {
    auto* irp = reinterpret_cast<uint8_t*>(irp_raw);
    auto* stack = *reinterpret_cast<uint8_t**>(irp + 0xb8);
    auto* buf = *reinterpret_cast<uint64_t**>(irp + 0x18);

    *reinterpret_cast<int64_t*>(irp + 0x38) = 0;  // IoStatus.Information = 0
    *reinterpret_cast<int32_t*>(irp + 0x30) = 0;   // IoStatus.Status = SUCCESS

    int input_len = *reinterpret_cast<int32_t*>(stack + 0x10);
    uint32_t ioctl = *reinterpret_cast<uint32_t*>(stack + 0x18);

    if (*stack != 0x0E) goto complete;  // must be IRP_MJ_DEVICE_CONTROL

    switch (ioctl) {
    case 0x80002000: { // Physical memory read
        if (input_len != 0x10) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        auto phys = *reinterpret_cast<PHYSICAL_ADDRESS*>(buf);
        auto size = *reinterpret_cast<uint32_t*>((uint8_t*)buf + 8);
        auto* mapped = MmMapIoSpace(phys, size, 0);
        if (!mapped) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        auto* mdl = IoAllocateMdl(mapped, size, 0, 0, nullptr);
        if (!mdl) { MmUnmapIoSpace(mapped, size); *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        MmBuildMdlForNonPagedPool(mdl);
        auto* user_va = reinterpret_cast<uint32_t*>(MmMapLockedPages(mdl, 0));
        *reinterpret_cast<uint32_t*>(buf) = *user_va;
        MmUnmapLockedPages(user_va, mdl);
        IoFreeMdl(mdl);
        MmUnmapIoSpace(mapped, size);
        *reinterpret_cast<int64_t*>(irp + 0x38) = 4;
        break;
    }
    case 0x80002004: { // Physical memory write
        if (input_len != 0x10) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        auto phys = *reinterpret_cast<PHYSICAL_ADDRESS*>(buf);
        auto* mapped = MmMapIoSpace(phys, 4, 0);
        if (!mapped) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        auto* mdl = IoAllocateMdl(mapped, 4, 0, 0, nullptr);
        if (!mdl) { MmUnmapIoSpace(mapped, 4); *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        MmBuildMdlForNonPagedPool(mdl);
        auto* user_va = reinterpret_cast<uint32_t*>(MmMapLockedPages(mdl, 0));
        *user_va = *reinterpret_cast<uint32_t*>((uint8_t*)buf + 0xC);
        MmUnmapLockedPages(user_va, mdl);
        IoFreeMdl(mdl);
        MmUnmapIoSpace(mapped, 4);
        *reinterpret_cast<int64_t*>(irp + 0x38) = 4;
        break;
    }
    case 0x80002008: { // IO port read (IN)
        if (input_len != 0x0C || *reinterpret_cast<int32_t*>((uint8_t*)buf + 4) != 4)
            { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        uint16_t port = static_cast<uint16_t>(*reinterpret_cast<uint32_t*>(buf));
        uint32_t value;
        asm volatile("inl %w1, %0" : "=a"(value) : "Nd"(port));
        *reinterpret_cast<uint32_t*>((uint8_t*)buf + 8) = value;
        *reinterpret_cast<int64_t*>(irp + 0x38) = 4;
        break;
    }
    case 0x8000200C: { // IO port write (OUT)
        if (input_len != 0x0C || *reinterpret_cast<int32_t*>((uint8_t*)buf + 4) != 4)
            { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        uint16_t port = static_cast<uint16_t>(*reinterpret_cast<uint32_t*>(buf));
        uint32_t value = *reinterpret_cast<uint32_t*>((uint8_t*)buf + 8);
        asm volatile("outl %0, %w1" : : "a"(value), "Nd"(port));
        *reinterpret_cast<int64_t*>(irp + 0x38) = 4;
        break;
    }
    case 0x80002010: { // Allocate contiguous memory
        if (input_len != 0x30) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        buf[1] = 0; buf[2] = 0; // zero output fields
        uint32_t size = *reinterpret_cast<uint32_t*>(buf);
        auto* va = MmAllocateContiguousMemorySpecifyCache(size, 0, 0xFFFFFFFFFFLL, 0, 0);
        if (!va) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        auto pa = MmGetPhysicalAddress(va);
        if (pa == 0) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        buf[1] = static_cast<uint64_t>(pa);
        buf[2] = reinterpret_cast<uint64_t>(va);
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x30;
        break;
    }
    case 0x80002014: { // Memmove via contiguous region
        if (input_len != 0x30) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        driver_memmove(reinterpret_cast<void*>(buf[2]),
                       reinterpret_cast<void*>(buf[3]),
                       *reinterpret_cast<uint32_t*>(&buf[5]));
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x30;
        break;
    }
    case 0x80002018: { // Free contiguous memory
        if (input_len != 0x30) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        if (buf[2] != 0) {
            MmFreeContiguousMemory(reinterpret_cast<void*>(buf[2]));
            buf[2] = 0;
        }
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x30;
        break;
    }
    case 0x8000201C: { // Map IO space
        if (input_len != 0x38 || buf[1] == 0)
            { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        uint32_t size = *reinterpret_cast<uint32_t*>(buf);
        auto* mapped = MmMapIoSpace(static_cast<PHYSICAL_ADDRESS>(buf[1]), size, 0);
        if (!mapped) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INSUFFICIENT_RESOURCES; break; }
        buf[5] = reinterpret_cast<uint64_t>(mapped);
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x38;
        break;
    }
    case 0x80002020: { // Memmove via IO-mapped region
        if (input_len != 0x38) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        driver_memmove(reinterpret_cast<void*>(buf[5]),
                       reinterpret_cast<void*>(buf[3]),
                       *reinterpret_cast<uint32_t*>(&buf[6]));
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x38;
        break;
    }
    case 0x80002024: { // Unmap IO space
        if (input_len != 0x38) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        if (buf[5] != 0) {
            MmUnmapIoSpace(reinterpret_cast<void*>(buf[5]), *reinterpret_cast<uint32_t*>(buf));
            *reinterpret_cast<int64_t*>(irp + 0x38) = 0x38;
            buf[5] = 0;
        }
        break;
    }
    case 0x80002028: { // Direct kernel memmove: dst=[+0x20], src=[+0x10], len=[+0x28]
        if (input_len != 0x30) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        driver_memmove(reinterpret_cast<void*>(buf[4]),
                       reinterpret_cast<void*>(buf[2]),
                       *reinterpret_cast<uint32_t*>(&buf[5]));
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x30;
        break;
    }
    case 0x8000202C: { // Direct kernel memmove variant (0x38 layout)
        if (input_len != 0x38) { *reinterpret_cast<int32_t*>(irp + 0x30) = STATUS_INVALID_PARAMETER; break; }
        driver_memmove(reinterpret_cast<void*>(buf[4]),
                       reinterpret_cast<void*>(buf[5]),
                       *reinterpret_cast<uint32_t*>(&buf[6]));
        *reinterpret_cast<int64_t*>(irp + 0x38) = 0x38;
        break;
    }
    default:
        break;
    }

complete:
    auto status = *reinterpret_cast<int32_t*>(irp + 0x30);
    IofCompleteRequest(irp_raw, 0);
    return status;
}

// ──────────────────────────────────────────────────────────────
// FUN_140001490: DriverUnload
// Walks the MDL tracking list, cleaning up all mapped regions.
// ──────────────────────────────────────────────────────────────
static void driver_unload(void* driver_object) {
    wchar_t sym_name_buf[64];
    // UNICODE_STRING sym_link;
    uint8_t sym_link[16];
    RtlInitUnicodeString(sym_link, L"\\DosDevices\\PdFwKrnl");

    while (g_mdl_list) {
        auto* entry = g_mdl_list;
        g_mdl_list = entry->next;

        MmUnmapLockedPages(entry->mapped, entry->mdl);
        IoFreeMdl(entry->mdl);
        MmUnmapIoSpace(entry->io_base, 0 /* size from preceding allocation */);
        ExFreePoolWithTag(entry, 0);
    }

    if (IoDeleteSymbolicLink(sym_link) == 0) {
        IoDeleteDevice(*reinterpret_cast<void**>(reinterpret_cast<uint8_t*>(driver_object) + 8));
    }
}

// ──────────────────────────────────────────────────────────────
// entry (0x140001570): DriverEntry
// Creates \Device\PdFwKrnl, symlink \DosDevices\PdFwKrnl,
// sets dispatch table: CREATE=FUN_140001490 (unload), CLOSE=FUN_140001460 (stub),
// DEVICE_CONTROL=FUN_140001000 (ioctl), CLEANUP=FUN_140001460 (stub).
// ──────────────────────────────────────────────────────────────
/*
NTSTATUS DriverEntry(PDRIVER_OBJECT driver, PUNICODE_STRING registry_path) {
    UNICODE_STRING dev_name, sym_name;
    PDEVICE_OBJECT device = nullptr;

    RtlInitUnicodeString(&dev_name, L"\\Device\\PdFwKrnl");
    RtlInitUnicodeString(&sym_name, L"\\DosDevices\\PdFwKrnl");
    g_mdl_list = nullptr;

    NTSTATUS status = IoCreateDevice(driver, 0, &dev_name, 0x8000, 0, TRUE, &device);
    if (NT_SUCCESS(status)) {
        driver->MajorFunction[IRP_MJ_CREATE]         = dispatch_create_close; // +0x68 ← 0x140001490
        driver->MajorFunction[IRP_MJ_CLOSE]          = dispatch_create_close; // +0x70 ← 0x140001460
        driver->MajorFunction[IRP_MJ_DEVICE_CONTROL] = dispatch_device_control; // +0xe0
        driver->MajorFunction[IRP_MJ_CLEANUP]        = dispatch_create_close; // +0x80 ← 0x140001460
        status = IoCreateSymbolicLink(&sym_name, &dev_name);
        if (!NT_SUCCESS(status)) {
            IoDeleteDevice(device);
        }
    }
    return status;
}
*/

} // namespace pdfwkrnl
