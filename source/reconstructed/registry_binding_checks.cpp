#include "registry_bindings.hpp"
namespace rust_internal_re {
void check_registry_bindings() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("registry binding fixture") */ }};
    constexpr Address b=0x1000000,player=b+0x100,managed=b+0x1000;
    Snapshot objects(b,re::ReVector<ReByte>(0x2000));
    Snapshot nodes(b+0x10000,re::ReVector<ReByte>(0x4000,ReByte{0xaa}));
    OwnedSnapshotAllocator arena(nodes,nodes.base(),nodes.size());RegistryStore registry(arena);
    const auto aim=bind_baseline_registry(registry);
    const auto baseline=aim.baseline_2ef724(0xff123456);
    check(nodes.read<ReU32>(baseline)==0);
    check(nodes.write(baseline,ReU32(123)));
    check(aim.baseline_2ef724(0xff123456)==baseline&&nodes.read<ReU32>(baseline)==123);
    check(objects.write(player+0x640,managed));
    check(objects.write(managed+0x14,ReU16('x'))&&objects.write(managed+0x16,ReU16(0)));
    const auto target=bind_target_registry(objects,registry);
    check(target.record_kind(player,0)==0);
    const auto identity=registry.identity_2df608("x");
    check(nodes.write(identity.value+0x24,ReU32(2)));
    check(target.record_kind(player,0)==2);
    check(target.record_kind(player,1)==0);
    // [C] A nonzero UTF16 word with low byte0 remains part of the registry key.
    check(objects.write(managed+0x14,ReU16(0x100)));
    check(target.record_kind(player,0)==0&&registry.identity_nodes().size()==3);
}
} // namespace rust_internal_re
