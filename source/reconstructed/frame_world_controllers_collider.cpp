#include "frame_world_controllers_internal.hpp"
#include "game_input_physics_analysis.hpp"
namespace rust_internal_re {
using namespace frame_world_detail;
GameBaseResult<bool> frame_world_enabled_375d30(Snapshot &im, Address receiver, ReU8 value,
                                                const FrameWorldEnvironment &e,
                                                const FrameWorldApi &a) {
    return protect<bool>([&] {
        if (!sample_pointer_range(receiver))
            return false;
        auto bits = read<ReU32>(im, e.module + 0x402a40, 0x375d55);
        Address target;
        if (!(bits & 1)) {
            write(im, e.module + 0x402a40, bits | 1u, 0x375d76);
            constexpr UnityCacheSpec spec{
                0x375d30,      0x402a40,   0x402a38,      0x402a50, 0x3349ac, 0,
                "UnityEngine", "Collider", "set_enabled", "",       -1,       -1};
            const auto resolved = call(0x3349ac, a.resolve_target, spec);
            if (resolved.status != MetadataStatus::complete)
                __builtin_trap();
            target = resolved.value;
            bits = read<ReU32>(im, e.module + 0x402a40, 0x375e05);
            write(im, e.module + 0x402a38, target, 0x375e0b);
        } else
            target = read<Address>(im, e.module + 0x402a38, 0x375e14);
        FrameWorldNativeCall c;
        c.wrapper = 0x375d30;
        c.packer = 0x3214f4;
        c.target = target;
        c.context = e.module + 0x402a50;
        if (!(bits & 2)) {
            c.dispatcher = read<Address>(im, e.module + 0x3d5e60, 0x375e1f);
            write(im, e.module + 0x402a40, bits | 2u, 0x375e33);
            if (a.observe_context)
                a.observe_context(c);
        }
        c.dispatcher = read<Address>(im, e.module + 0x3d5e60, 0x375e3e);
        GameInputCall raw;
        raw.wrapper = c.wrapper;
        raw.packer = c.packer;
        raw.target = c.target;
        raw.context = c.context;
        raw.dispatcher = c.dispatcher;
        raw = game_input_pack_3214f4(im, raw, receiver, value);
        c.unknown_return_pointer = raw.unmaterialized_return_pointer;
        c.unmaterialized_type_bytes = raw.unmaterialized_type_bytes;
        re::re_copy_n(raw.unmaterialized_argument_bytes.begin(), 2,
                    c.unmaterialized_arguments.begin());
        call(0x375e52, a.enabled_effect_375d30, c, receiver, value);
        return true;
    });
}
} // namespace rust_internal_re
