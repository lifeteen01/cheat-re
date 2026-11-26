#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_detail;
namespace {
bool compare_module(const Snapshot &names, const Snapshot &game, Address name, Address wide,
                    ReUSize maximum) {
    // [C]3cae50 with its reached third argument0. ASCII ending is a successful
    // prefix match; the wide name is not required to end at the same position.
    if (!name || !wide)
        return false;
    for (ReUSize i = 0; i < maximum; ++i) {
        const auto byte = read<ReI8>(names, name + i, 0x3cae67);
        const auto word = read<ReU16>(game, wide + i * 2, 0x3cae6b);
        const auto a = ReU8(byte) >= 'A' && ReU8(byte) <= 'Z'
                           ? ReU16(ReI16(byte) + 32)
                           : ReU16(ReI16(byte));
        const auto b = word >= 'A' && word <= 'Z' ? ReU16(word + 32u) : word;
        if (!a)
            return true;
        if (a != b)
            return false;
    }
    { (void)(GameBaseStatus::analysis_limit, 0x3cae67); __builtin_trap(); }
}
} // namespace
Address game_input_module_3cb058(const Snapshot &names, const Snapshot &game, Address name,
                                 const GameInputPhysicsEnvironment &env) {
    if (!env.copied_gs30)
        { (void)(GameBaseStatus::missing_bytes, 0x3cb067); __builtin_trap(); }
    const auto peb = read<Address>(game, *env.copied_gs30 + 0x60, 0x3cb073);
    const auto loader = read<Address>(game, peb + 0x18, 0x3cb077);
    const auto head = loader + 0x20;
    auto entry = read<Address>(game, head, 0x3cb07f);
    if (entry == head)
        return 0;
    if (!name)
        return read<Address>(game, entry + 0x20, 0x3cb0b9);
    for (ReUSize n = 0; n < env.maximum_steps; ++n) {
        const auto wide = read<Address>(game, entry + 0x50, 0x3cb08c);
        if (compare_module(names, game, name, wide, env.maximum_steps))
            return read<Address>(game, entry + 0x20, 0x3cb0b9);
        entry = read<Address>(game, entry, 0x3cb09f);
        if (entry == head)
            return 0;
    }
    { (void)(GameBaseStatus::analysis_limit, 0x3cb08c); __builtin_trap(); }
}
Address game_input_export_3caed0(const Snapshot &modules, const Snapshot &names, Address module,
                                 Address name, ReUSize maximum) {
    const auto signed_nt = read<ReI32>(modules, module + 0x3c, 0x3caed9);
    const auto directory =
        read<ReU32>(modules, module + Address(ReI64(signed_nt)) + 0x88, 0x3caee3);
    const auto count = read<ReU32>(modules, module + directory + 0x18, 0x3caeeb);
    if (!count)
        return 0;
    const auto ordinals = read<ReU32>(modules, module + directory + 0x24, 0x3caef5);
    const auto table = read<ReU32>(modules, module + directory + 0x20, 0x3caefd);
    const auto initial = read<ReU8>(names, name, 0x3caf02);
    for (ReU32 n = 0; n < count; ++n) {
        if (ReUSize(n) >= maximum)
            { (void)(GameBaseStatus::analysis_limit, 0x3caf05); __builtin_trap(); }
        const auto ordinal =
            read<ReU16>(modules, module + ordinals + Address(n) * 2, 0x3caf0b);
        auto actual =
            module + read<ReU32>(modules, module + table + Address(n) * 4, 0x3caf14);
        if (read<ReU8>(modules, actual, 0x3caf1b) != initial)
            continue;
        bool equal = false;
        for (ReUSize i = 0; i < maximum; ++i) {
            if (!read<ReU8>(modules, actual + i, 0x3caf23)) {
                equal = true;
                break;
            }
            const auto requested = read<ReU8>(names, name + i + 1, 0x3caf2e);
            if (read<ReU8>(modules, actual + i + 1, 0x3caf31) != requested)
                break;
            if (i + 1 == maximum)
                { (void)(GameBaseStatus::analysis_limit, 0x3caf20); __builtin_trap(); }
        }
        if (!equal)
            continue;
        const auto functions = read<ReU32>(modules, module + directory + 0x1c, 0x3caf49);
        return module +
               read<ReU32>(modules, module + functions + Address(ordinal) * 4, 0x3caf51);
    }
    return 0;
}
} // namespace rust_internal_re
