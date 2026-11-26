#pragma once
#include "hooks_analysis.hpp"
namespace rust_internal_re {
// [I] Literal, bounded readers. Addresses are evidence keys, never executable.
enum class NativePeStatus { complete, missing_bytes, analysis_limit, missing_effect };
template<class T> struct NativePeResult {
    T value{};
    NativePeStatus status{NativePeStatus::complete};
    Rva site{};
};
struct NativePeLimits { ReUSize names{1000000},string_bytes{4096},records{1000000}; };
struct NativeExceptionDirectory { Address table{}; ReU32 raw_size{}; };
// [C] Signed e_lfanew, no signature/magic validation.
NativePeResult<Address> native_header_2ce7c0(const Snapshot&,Address module);
NativePeResult<Address> native_export_2ce7c8(const Snapshot&,Address module,
    re::ReStringView name,NativePeLimits = {});
NativePeResult<NativeExceptionDirectory> native_exception_directory_2ce1d4(const Snapshot&,Address module);
// [C] Second native argument is an RVA, compared with zero-extended BeginAddress.
// [C] raw_size is used as a RECORD count, with bounded individual reads.
NativePeResult<Address> native_runtime_record_2ce1f0(const Snapshot&,Address module,
    Address requested_rva,NativePeLimits = {});
struct NativeThreadModules { Address kernel32{},ntdll{},base_thread_init{},rtl_user_thread_start{}; };
struct NativeModuleEffects {
    // [U] Typed OS lookup over supplied module data; never LoadLibrary/GetProcAddress.
    re::ReFunction<re::ReOptional<Address>(re::ReStringView)> module_handle;
};
// [C] Writes each result at its native offset before resolving the next result.
NativePeResult<NativeThreadModules> native_thread_modules_2ce130(Snapshot&,Address output,
    const NativeModuleEffects&,NativePeLimits = {});
// [I] Metadata acquisition only. Existing conventional strict PE readers stay separate.
NativePeResult<FrameMetadataAudit> native_frame_metadata(const Snapshot&,Address module,
    re::ReStringView export_name,NativePeLimits = {});
void check_native_pe_reconstruction();
} // namespace rust_internal_re
