#include "registry_bindings.hpp"
namespace rust_internal_re {
namespace {
GameBaseStatus registry_status(RegistryStatus status) {
    return status==RegistryStatus::analysis_limit?GameBaseStatus::analysis_limit:GameBaseStatus::missing_bytes;
}
Address registry_value(RegistryLookup value,Rva site) {
    if(value.status!=RegistryStatus::complete)__builtin_trap();
    return value.value;
}
}
AimWeaponCalls bind_baseline_registry(RegistryStore& registry,AimWeaponCalls calls) {
    calls.baseline_2ef724=[&registry](ReU32 key){return registry_value(registry.baseline_2ef724(key),0x2ef724);};
    return calls;
}
TargetCalls bind_target_registry(const Snapshot& objects,RegistryStore& registry,TargetCalls calls) {
    calls.record_kind=[&objects,&registry](Address entity,ReU8 force_empty) {
        const auto key=identity_key_369e70(objects,entity,force_empty!=0);
        if(key.status!=RegistryStatus::complete)__builtin_trap();
        const auto record=registry_value(registry.identity_2df608(key.value),0x2df608);
        const auto value=registry.snapshot().read<ReU32>(record+0x24);
        if(!value)__builtin_trap();
        return *value;
    };
    return calls;
}
} // namespace rust_internal_re
