#include "game_direct_wrappers_internal.hpp"
#include "metadata_export_analysis.hpp"
namespace rust_internal_re::direct_detail {
re::ReString literal(Snapshot &im, Snapshot &game, Rva root, re::ReOptional<Address> alias,
                    const GameDirectEnvironment &env) {
    const auto g = [&](Rva r) { return env.module + r; };
    re::ReVector<ReU8> bytes;
    const auto copy = [&](ReUSize offset, auto value, Rva site) {
        const auto raw = re::re_bit_cast<re::ReArray<ReU8, sizeof(value)>>(value);
        if (bytes.size() < offset + raw.size())
            bytes.resize(offset + raw.size());
        re::re_copy(raw.begin(), raw.end(), bytes.begin() + offset);
        if (alias)
            write(game, *alias + offset, value, site);
    };
    switch (root) {
    case 0x3229d8:
        copy(0, read<re::ReArray<ReU8, 16>>(im, g(0x293468), root), 0x3229e2);
        break;
    case 0x370b1c: {
        const auto a = read<re::ReArray<ReU8, 16>>(im, g(0x2a8af8), 0x370b1c);
        const auto b = read<re::ReArray<ReU8, 16>>(im, g(0x2a8b08), 0x370b26);
        copy(0, a, 0x370b2d);
        const auto c = read<re::ReArray<ReU8, 16>>(im, g(0x2a8b18), 0x370b30);
        copy(16, b, 0x370b37);
        const auto d = read<ReU64>(im, g(0x2a8b28), 0x370b3b);
        copy(32, c, 0x370b43);
        copy(48, d, 0x370b47);
        break;
    }
    case 0x36b3bc: {
        const auto last = read<ReU8>(im, g(0x2a8740), 0x36b3bc);
        copy(0, read<ReU64>(im, g(0x2a8738), 0x36b3c2), 0x36b3ca);
        copy(8, last, 0x36b3ce);
        break;
    }
    case 0x36b420:
        copy(0, ReU64(0x3e5b505e695c4b62), 0x36b42a);
        break;
    default:
        { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
    }
    const auto n = bytes.size();
    if ((alias ? read<ReU8>(game, *alias + n - 1, root) : bytes.back()) != 0) {
        // [C] All four reached decryptors have i<56. Their multiply/divide
        // expression is therefore i%56==i, followed by byte key(i+55).
        for (ReUSize i = 0; i < n; ++i) {
            const auto input = alias ? read<ReU8>(game, *alias + i, root) : bytes[i];
            bytes[i] = ReU8(input ^ ReU8(i + 55));
            if (alias)
                write(game, *alias + i, bytes[i],
                      root == 0x370b1c   ? 0x33248e
                      : root == 0x3229d8 ? 0x2dd092
                      : root == 0x36b3bc ? 0x2e9a06
                                         : 0x2e342e);
        }
    }
    const auto end = re::re_find(bytes.begin(), bytes.end(), 0);
    if (!end)
        { (void)(GameBaseStatus::analysis_limit, root); __builtin_trap(); }
    return re::ReString(reinterpret_cast<const char*>(bytes.begin()), ReUSize(end - bytes.begin()));
}
Address managed(Snapshot &im, re::ReStringView bytes, re::ReOptional<Address> alias,
                const GameDirectRequest &request, const GameDirectEnvironment &env,
                const GameDirectEffects &fx) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto bits = read<ReU32>(im, g(0x3d5e70), 0x2ce71e);
    Address target;
    if (!(bits & 1)) {
        write(im, g(0x3d5e70), bits | 1u, 0x2ce72e);
        if (fx.shared.export_target)
            target = fx.shared.export_target(0x2cc164);
        else {
            if (!env.initial_loader_node)
                { (void)(GameBaseStatus::missing_boundary, 0x2cc164); __builtin_trap(); }
            const auto resolved = resolve_metadata_export(im, env.module, *env.initial_loader_node,
                                                          0x2cc164, env.limits);
            if (resolved.status != MetadataStatus::complete)
                __builtin_trap();
            target = resolved.value;
        }
        write(im, g(0x3d5e68), target, 0x2ce73c);
        bits = read<ReU32>(im, g(0x3d5e70), 0x2ce743);
    } else
        target = read<Address>(im, g(0x3d5e68), 0x2ce74b);
    GameDirectCall call;
    call.wrapper = 0x2ce718;
    call.executor = 0x2cb9fc;
    call.target = target;
    call.context = g(0x3d5e80);
    if (!(bits & 2)) {
        call.dispatcher = read<Address>(im, g(0x3d5e60), 0x2ce756);
        write(im, g(0x3d5e70), bits | 2u, 0x2ce76a);
        if (fx.observe_context)
            fx.observe_context(call);
        else if (fx.shared.observe_context_2cbd24)
            fx.shared.observe_context_2cbd24(call.context, call.target);
    }
    call.dispatcher = read<Address>(im, g(0x3d5e60), 0x2ce775);
    const re::ReArray<GameDirectArgument, 1> args{alias ? GameDirectArgument(*alias)
                                                       : GameDirectArgument(re::ReMonostate{})};
    package(im, call, args, request.string_return_address);
    return need(fx.shared.string_new_2ce718, 0x2ce78b)(bytes);
}
} // namespace rust_internal_re::direct_detail
