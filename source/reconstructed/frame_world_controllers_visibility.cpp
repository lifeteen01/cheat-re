#include "frame_world_controllers_internal.hpp"
#include "metadata_argument_bindings.hpp"
namespace rust_internal_re {
using namespace frame_world_detail;
namespace {
bool eligible(const Snapshot &im, Address b, Address p, ReU8 category,
              const FrameWorldApi &a) {
    // [C]36aec4 local body, with configuration reads kept after native predicates.
    const bool special = category || pred(a, 0x36a178, p);
    if (!flag(im, b, 0x3e7428, 0x36aeef) && special)
        return false;
    if (pred(a, 0x3693b0, p))
        return false;
    if (category)
        return true;
    if (pred(a, 0x36acb8, p))
        return false;
    if (!flag(im, b, 0x3fe5b8, 0x36af19) && pred(a, 0x36b288, p))
        return false;
    if (pred(a, 0x36a20c, p))
        return flag(im, b, 0x3e7338, 0x36af3b);
    return true;
}
FrameWorldNativeCall direct(Snapshot &im, Address b, Rva wrapper, Rva flags, Rva target,
                            Rva context, Address offset, Rva packer, const FrameWorldApi &a) {
    auto bits = read<ReU32>(im, b + flags, wrapper);
    Address value;
    if (!(bits & 1)) {
        value = read<Address>(im, b + 0x3d6f00, wrapper) + offset;
        bits |= 1;
        write(im, b + flags, bits, wrapper);
        write(im, b + target, value, wrapper);
    } else
        value = read<Address>(im, b + target, wrapper);
    FrameWorldNativeCall c;
    c.wrapper = wrapper;
    c.packer = packer;
    c.target = value;
    c.context = b + context;
    if (!(bits & 2)) {
        // [C] Both reached direct wrappers load the dispatcher BEFORE bit2 store.
        c.dispatcher = read<Address>(im, b + 0x3d5e60, wrapper);
        write(im, b + flags, bits | 2u, wrapper);
        if (a.observe_context)
            a.observe_context(c);
    }
    c.dispatcher = read<Address>(im, b + 0x3d5e60, wrapper);
    return c;
}
void package_ray(Snapshot &im, FrameWorldNativeCall &c, const FrameWorldRayRequest &q,
                 const FrameWorldEnvironment &e) {
    const auto extent = [&](Address p, ReUSize n, Rva site) {
        if (!im.contains(p, n))
            { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    };
    const Address p = c.context;
    c.unmaterialized_arguments = {0xff, 0xf0, 0xff, 0xf0, 0xf0, 0xf0, 0xf0};
    c.unmaterialized_type_bytes = 0;
    extent(p + 0x88, 16, 0x367840);
    if (e.ray_address) {
        write(im, p + 0x88, *e.ray_address, 0x367840);
        c.unmaterialized_arguments[0] = 0;
    }
    write(im, p + 0x90, q.radius, 0x367840);
    write(im, p + 0xd0, ReU32(0x01000100), 0x367847);
    write(im, p + 0x80, Address(7), 0x367855);
    extent(p + 0x98, 16, 0x367860);
    if (e.hit_address) {
        write(im, p + 0x98, *e.hit_address, 0x367860);
        c.unmaterialized_arguments[2] = 0;
    }
    write(im, p + 0xa0, q.distance, 0x367860);
    extent(p + 0x78, 8, 0x367867);
    if (e.ray_return_address) {
        write(im, p + 0x78, *e.ray_return_address, 0x367867);
        c.unknown_return_pointer = false;
    }
    extent(p + 0xa8, 16, 0x367870);
    write(im, p + 0xa8, q.mask, 0x367870);
    write(im, p + 0xb0, q.mode, 0x367870);
    extent(p + 0xb8, 8, 0x367877);
    write(im, p + 0xb8, ReU32(0), 0x367877);
}
} // namespace
GameBaseResult<bool> frame_world_visibility_3684e0(Snapshot &im, const Snapshot &game,
                                                   Address local, FrameWorldVisibility &s,
                                                   const FrameWorldEnvironment &e,
                                                   const FrameWorldApi &a) {
    return protect<bool>([&] {
        if (!sample_pointer_range(local))
            return false;
        const Address camera = call(0x2e069c, a.camera_2e069c);
        if (!sample_pointer_range(camera))
            return false;
        const auto records =
            s.entities_2187d0; // [C] Native copies the entire vector before getters.
        if (records.size() > e.maximum_records)
            { (void)(GameBaseStatus::analysis_limit, 0x368550); __builtin_trap(); }
        for (const auto &record : records) {
            const Address p = record.entity;
            if (!sample_pointer_range(p) || !valid(a, p))
                continue;
            const auto category = static_cast<ReU8>(record.tail[0]);
            if (!eligible(im, e.module, p, category, a))
                continue;
            // [C] NPC predicate is called even for category!=0 at this second site.
            const bool special = bool(pred(a, 0x36a178, p) | bool(category));
            const Vec3 origin = vector(a, 0x36ca34, camera);
            // [C]2cd32c returns literal0, suppressing second/team lookup.
            const bool friend_record = friend_kind(s.identity, game, p, category);
            if (friend_record && !flag(im, e.module, 0x3e9b88, 0x368656))
                continue;
            s.targeting_3e6130[p] = 0;
            if (flag(im, e.module, 0x3e9548, 0x368679) && !special) {
                FrameWorldRayRequest request;
                // [C]2df29c zeroes its two Vec3s, then copies origin/direction8+4.
                request.ray.origin = vector(a, 0x369164, p);
                request.ray.direction = vector(a, 0x368100, p);
                request.distance = read<float>(im, e.module + 0x2a8260, 0x368723);
                request.radius = read<float>(im, e.module + 0x3ed708, 0x368730);
                request.mask = 0x20000;
                request.mode = 1;
                auto native = direct(im, e.module, 0x36b0c8, 0x3fe5c8, 0x3fe5c0, 0x3fe5d0,
                                     0x311d680, 0x3677bc, a);
                package_ray(im, native, request, e);
                // [U] Final matching-game effect; unknownbytes20 stay optional.
                const bool hit = call(0x36b0c8, a.raycast_36b0c8, native, request) != 0;
                const bool sleeping = pred(a, 0x36a20c, p);
                bool excluded = sleeping;
                if (!excluded)
                    excluded = pred(a, 0x36b288, p);
                if (!excluded)
                    excluded = bool(pred(a, 0x3693b0, p) | friend_record);
                const float discriminator =
                    re::re_bit_cast<float>(ReU32(request.hit.word18 >> 32));
                if (!excluded && hit && discriminator != 0.0f) {
                    const Address transform = call(0x329920, a.hit_transform_329920, request.hit);
                    if (sample_pointer_range(transform)) {
                        auto c = direct(im, e.module, 0x3687bb, 0x3fef20, 0x3fef18, 0x3fef30,
                                        0x597e7b0, 0x2cb9fc, a);
                        metadata_argument_one_2cb9fc(im, c.context, transform);
                        c.unmaterialized_type_bytes = 0xe;
                        const Address object = call(0x368822, a.object_3687bb, c, transform);
                        if (sample_pointer_range(object) &&
                            object == call(0x2dda9c, a.local_2dda9c))
                            s.targeting_3e6130[p] = 1;
                    }
                }
            }
            if (flag(im, e.module, 0x3e9f48, 0x368860) || flag(im, e.module, 0x3d7e28, 0x368869) ||
                flag(im, e.module, 0x3d7d88, 0x368872)) {
                const Vec3 first = call(0x368be8, a.game.bone_368be8, p, category ? 11 : 55);
                const Vec3 second = call(0x368be8, a.game.bone_368be8, p, category ? 15 : 54);
                const float offset = read<float>(im, e.module + 0x293098, 0x3688d4);
                const Vec3 point = {0.0f + first.x, offset + second.y, 0.0f + first.z};
                const auto mask = call(0x2e6a6c, a.mask_2e6a6c);
                const bool result = call(0x2e2320, a.query_2e2320, origin, point, mask, 0.0f, 0.0f);
                s.visible_3e60b0.entries[p] = ReU8(result);
            }
            if (flag(im, e.module, 0x3e7298, 0x36896b) && !special) {
                const Vec3 first = call(0x368be8, a.game.bone_368be8, p, 53);
                const Vec3 second = call(0x368be8, a.game.bone_368be8, p, 53);
                const float offset = read<float>(im, e.module + 0x28db44, 0x3689b0);
                const Vec3 point = {0.0f + second.x, offset + second.y, 0.0f + second.z};
                const bool result = call(0x2e2320, a.query_2e2320, point, first,
                                         ReU32(0x200000), 0.0f, 0.0f);
                s.outside_3e60f0[p] = ReU8(result);
            }
        }
        return true;
    });
}
} // namespace rust_internal_re
