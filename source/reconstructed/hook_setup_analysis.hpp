#pragma once
#include "hooks_analysis.hpp"
#include "metadata_wrapper_analysis.hpp"
#include "metadata_signature_analysis.hpp"
#include "allocation_cache_analysis.hpp"
namespace rust_internal_re {
struct HookSetupEnvironment {
    Address module{},initial_loader_node{},literal_storage{};
    ReUSize literal_capacity{1024};
    MetadataLimits limits{};
};
struct HookSetupState {
    // [I] Owned vector/string/cache adaptations of globals218888/218710/218730/3f9848.
    // [C] Vector insertion preserves duplicate four-byte lines and invocation order.
    re::ReVector<re::ReString> codes;
    re::ReString directory,configuration;
    MetadataSignatureCache signatures;
};
struct HookDetectionCall {
    Rva wrapper{},executor{};
    Address root{},context{},target{};
};
struct HookSetupEffects {
    MetadataApi metadata;
    MetadataSignatureApi signature;
    // [I] Offline reserve effect may bind OwnedSnapshotAllocator::allocate;
    // zero models malloc failure, absence is an explicit missing boundary.
    re::ReFunction<Address(ReUSize)> reserve_owned;
    re::ReFunction<re::ReOptional<Address>(re::ReStringView)> module_handle;
    // [I] Detection observation only; no executable context is constructed.
    re::ReFunction<void(const HookDetectionCall&)> observe_context;
    // [U] Explicit GameAssembly/IL2CPP/Unity effects over fixture data only.
    re::ReFunction<ReI32(const HookDetectionCall&)> loot_value;
    re::ReFunction<Address(const HookDetectionCall&,Address klass)> object_new;
    re::ReFunction<void(const HookDetectionCall&,Address closure)> loot_callback;
    re::ReFunction<void(const HookDetectionCall&,Address icon,ReU8)> original_loot;
    re::ReFunction<ReI32(const HookDetectionCall&,Address method)> method_parameter_count;
};
struct HookInstallOutcome { Rva site{};bool installed{}; };
struct HookSetupResult {
    GameBaseStatus status{GameBaseStatus::complete};
    Rva site{};
    ReUSize bytes_consumed{},methods_cached{};
    re::ReVector<HookInstallOutcome> installations;
};
GameBaseResult<Address> initialize_container_36f5cc(Snapshot&,const HookSetupEnvironment&,const HookSetupEffects&);
HookSetupResult bootstrap_signatures_334bf4(Snapshot&,HookSetupState&,
    const HookSetupEnvironment&,const HookSetupEffects&);
HookSetupResult initialize_hooks_315c34(Snapshot&,HookSetupState&,
    const HookSetupEnvironment&,const HookSetupEffects&);
HookSetupResult initialize_client_362118(Snapshot&,HookSetupState&,
    const HookSetupEnvironment&,const HookSetupEffects&);
// [C] Raw predicate3209d4, conditional in-place XOR321860, and pointer return.
GameBaseResult<Address> decode_loot_name_32189c(Snapshot&,Address);
GameBaseResult<ReI32> loot_value_3217ec(Snapshot&,const HookSetupEnvironment&,const HookSetupEffects&);
GameBaseResult<Address> allocate_loot_3218c4(Snapshot&,Address klass,const HookSetupEnvironment&,const HookSetupEffects&);
// [C] Includes callback metadata resolution32167b..321749, local caches and stores.
GameBaseResult<Address> replay_loot_setup_3215cc(Snapshot&,Address icon,ReU8 second,
    bool enabled,const HookSetupEnvironment&,const HookSetupEffects&);
void check_hook_setup_reconstruction();
} // namespace rust_internal_re
