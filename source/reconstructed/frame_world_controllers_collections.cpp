#include "frame_world_controllers_internal.hpp"
namespace rust_internal_re {
using namespace frame_world_detail;
GameBaseResult<bool> frame_world_validate_321484(const FrameWorldSmallRecord &r,
                                                 const FrameWorldApi &a) {
    return protect<bool>([&] {
        if (!ready(a) || !r.entity)
            return false;
        return valid(a, r.entity);
    });
}
GameBaseResult<bool> frame_world_validate_3213cc(Snapshot &im, FrameWorldCollections &s,
                                                 FrameWorldWideRecord &r,
                                                 const FrameWorldEnvironment &e,
                                                 const FrameWorldApi &a) {
    return protect<bool>([&] {
        if (!ready(a) || !r.entity)
            return false;
        if (valid(a, r.entity))
            return true;
        if (!flag(im, e.module, 0x3e9818, 0x321422))
            return false;
        if (!s.marked_3e61f0[r.entity])
            return false;
        const Address collider = s.colliders_3e6170[r.entity];
        if (!sample_pointer_range(collider))
            return false;
        (void)required(frame_world_enabled_375d30(im, collider, 0, e, a));
        // [C] Reacquire the key and map node after callback; native RDX is record+8.
        s.marked_3e61f0[r.entity] = 0;
        return false;
    });
}
GameBaseResult<bool> frame_world_collect_3211f0(Snapshot &im, FrameWorldCollections &s,
                                                const FrameWorldEnvironment &e,
                                                const FrameWorldApi &a) {
    return protect<bool>([&] {
        const auto camera = call(0x2e069c, a.camera_2e069c);
        if (!sample_pointer_range(camera) || call(0x2e0e4c, a.gate_2e0e4c)) {
            s.first.clear();
            s.second.clear();
            s.third.clear();
            return true;
        }
        const auto small = [&](re::ReVector<FrameWorldSmallRecord> &v) {
            const auto count = v.size();
            if (count > e.maximum_records)
                { (void)(GameBaseStatus::analysis_limit, 0x321242); __builtin_trap(); }
            for (ReUSize i = 0; i < count; ++i) {
                const bool keep = required(frame_world_validate_321484(v.at(i), a));
                v.at(i).tail[1] = ReByte(keep);
            }
            v.erase(re::re_remove_if(v.begin(), v.end(),
                                   [](const auto &r) { return r.tail[1] == ReByte{}; }),
                    v.end());
        };
        small(s.second);
        small(s.first);
        const auto count = s.third.size();
        if (count > e.maximum_records)
            { (void)(GameBaseStatus::analysis_limit, 0x321342); __builtin_trap(); }
        for (ReUSize i = 0; i < count; ++i) {
            const bool keep = required(frame_world_validate_3213cc(im, s, s.third.at(i), e, a));
            s.third.at(i).valid = ReU8(keep);
        }
        // [C]2ef634 copies named fields only; destination padding1..7/34..37
        // survives moved survivors, unlike a whole-record move assignment.
        ReUSize output = 0;
        for (ReUSize i = 0; i < s.third.size(); ++i)
            if (s.third[i].valid) {
                if (output != i) {
                    auto &to = s.third[output];
                    auto &from = s.third[i];
                    to.valid = from.valid;
                    to.entity = from.entity;
                    to.label = re::re_move(from.label);
                    to.value_30 = from.value_30;
                    to.value_38 = from.value_38;
                }
                ++output;
            }
        s.third.resize(output);
        return true;
    });
}
GameBaseResult<float> frame_world_inventory_368f50(const Snapshot &game, const FrameWorldApi &a,
                                                   ReUSize maximum) {
    return protect<float>([&] {
        Address p = call(0x2dda9c, a.local_2dda9c);
        if (!sample_pointer_range(p))
            return 0.0f;
        p = object(a, 0x369324, p);
        if (!sample_pointer_range(p))
            return 0.0f;
        const Address list = object(a, 0x373e20, p);
        if (!sample_pointer_range(list))
            return 0.0f;
        const auto n =
            re::re_bit_cast<ReI32>(call(0x37224c, a.game.integer, Rva(0x37224c), list));
        if (n <= 0)
            return 0.0f;
        if (ReU32(n) > maximum)
            { (void)(GameBaseStatus::analysis_limit, 0x368fc1); __builtin_trap(); }
        float sum = 0;
        for (ReI32 i = 0; i < n; ++i) {
            // [C]3722f0 rereads both intermediate pointers; no index/count check.
            const Address inner = read<Address>(game, list + 0x20, 0x372303);
            if (!sample_pointer_range(inner))
                return 0.0f;
            const Address array = read<Address>(game, inner + 0x10, 0x372313);
            if (!sample_pointer_range(array))
                return 0.0f;
            p = read<Address>(game, array + 0x20 + ReU32(ReU32(i) * 8u), 0x37232b);
            if (!sample_pointer_range(p))
                return 0.0f;
            p = read<Address>(game, p + 0x10, 0x368fda);
            if (!sample_pointer_range(p))
                return 0.0f;
            p = read<Address>(game, p + 0x1b8, 0x368fea);
            if (!sample_pointer_range(p))
                return 0.0f;
            p = read<Address>(game, p + 0x50, 0x368ffd);
            if (!sample_pointer_range(p))
                return 0.0f;
            sum = sum + read<float>(game, p + 0x18, 0x36900d);
        }
        // [C] MAXSS xmm1(0),xmm0(sum): unordered/equal returns second operand.
        return 0.0f > sum ? 0.0f : sum;
    });
}
GameBaseResult<bool> frame_world_offset_318f34(Snapshot &im, Snapshot &game, Address player,
                                               const FrameWorldEnvironment &e,
                                               const FrameWorldApi &a) {
    return protect<bool>([&] {
        if (!sample_pointer_range(player) || !valid(a, player))
            return false;
        bool active = flag(im, e.module, 0x3e9f98, 0x318f62);
        if (active) {
            const float threshold = read<float>(im, e.module + 0x3e6098, 0x318f6f) +
                                    read<float>(im, e.module + 0x293178, 0x318f77);
            active = read<float>(im, e.module + 0x3edc58, 0x318f7f) > threshold;
        }
        if (active)
            active = !pred(a, 0x36a238, player);
        if (active)
            active = !pred(a, 0x36b288, player);
        if (active) {
            const auto first = read<ReI32>(im, e.module + 0x3ef8f8, 0x318fa4);
            float value = call(0x2e5e4c, a.game.key_2e5e4c, first, true)
                              ? read<float>(im, e.module + 0x3edcf8, 0x318fb5)
                              : 0.0f;
            const auto second = read<ReI32>(im, e.module + 0x3ef958, 0x318fc2);
            const bool pressed = call(0x2e5e4c, a.game.key_2e5e4c, second, true);
            const auto mask = read<ReU32>(im, e.module + 0x2932a0, 0x318fcf);
            if (pressed)
                value = re::re_bit_cast<float>(
                    read<ReU32>(im, e.module + 0x3edca8, 0x318fdb) ^ mask);
            value = re::re_bit_cast<float>(re::re_bit_cast<ReU32>(value) ^ mask);
            write(im, e.module + 0x3f0978, ReU8(1), 0x318fe9);
            write(game, player + 0x7f8, value, 0x318ff0);
        } else if (flag(im, e.module, 0x3f0978, 0x318ffa)) {
            const float value = required(frame_world_inventory_368f50(game, a, e.maximum_records));
            write(game, player + 0x7f8, value, 0x319008);
            write(im, e.module + 0x3f0978, ReU8(0), 0x319010);
        }
        return true;
    });
}
} // namespace rust_internal_re
