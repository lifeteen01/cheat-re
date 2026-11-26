#include "re_compat.h"
#include "frame_world_controllers_internal.hpp"
namespace rust_internal_re {
using namespace frame_world_detail;
namespace {
Address element(const Snapshot &game, Address list, ReI32 index, Rva site) {
    const auto offset = re::re_bit_cast<ReI32>(ReU32(index) * 8u);
    return read<Address>(
        game, list + 0x20 + static_cast<Address>(static_cast<ReI64>(offset)), site);
}
bool eligible_material(const Snapshot &im, Address p, const FrameWorldEnvironment &e,
                       const FrameWorldMaterialApi &a) {
    if (!sample_pointer_range(p) || !valid(a.base, p))
        return false;
    if (!a.friend_options_3f0148 || a.friend_options_3f0148->size() < 2)
        { (void)(GameBaseStatus::missing_bytes, 0x2e98f0); __builtin_trap(); }
    if (!a.friend_options_3f0148->at(1) && pred(a.base, 0x36a178, p))
        return false;
    if (pred(a.base, 0x36acb8, p) || pred(a.base, 0x3693b0, p))
        return false;
    if (!flag(im, e.module, 0x3fe5b8, 0x36b209) && pred(a.base, 0x36b288, p))
        return false;
    if (pred(a.base, 0x36a20c, p))
        return flag(im, e.module, 0x3e7338, 0x36b22b);
    return true;
}
Address view_model(Snapshot &im, const FrameWorldEnvironment &e, const FrameWorldMaterialApi &a) {
    auto bits = read<ReU32>(im, e.module + 0x3f07a0, 0x3150b0);
    Address target;
    if (!(bits & 1)) {
        target = read<Address>(im, e.module + 0x3d6f00, 0x3150bb) + 0x2bfaec0;
        bits |= 1;
        write(im, e.module + 0x3f07a0, bits, 0x3150cc);
        write(im, e.module + 0x3f0798, target, 0x3150d2);
    } else
        target = read<Address>(im, e.module + 0x3f0798, 0x3150db);
    FrameWorldNativeCall c;
    c.wrapper = 0x3150ac;
    c.packer = 0x2dda18;
    c.target = target;
    c.context = e.module + 0x3f07b0;
    if (!(bits & 2)) {
        write(im, e.module + 0x3f07a0, bits | 2u, 0x3150f1);
        c.dispatcher = read<Address>(im, e.module + 0x3d5e60, 0x3150fa);
        if (a.base.observe_context)
            a.base.observe_context(c);
    }
    c.dispatcher = read<Address>(im, e.module + 0x3d5e60, 0x315106);
    write(im, c.context + 0x80, Address(0), 0x2dda1c);
    if (!im.contains(c.context + 0x78, 8))
        { (void)(GameBaseStatus::missing_bytes, 0x2dda2a); __builtin_trap(); }
    return call(0x315118, a.view_model_effect_3150ac, c);
}
void shader(Snapshot &im, Address material, ReI32 index, Rva color_b, Rva color_a,
            const FrameWorldEnvironment &e, const FrameWorldMaterialApi &a) {
    // [C] The bundle lookup always precedes the shader-cache load, even if warm.
    const Address offset = static_cast<Address>(static_cast<ReI64>(index) * 8);
    const Address bundle = read<Address>(im, e.module + 0x3e5e88 + offset, 0x2faf78);
    if (!bundle)
        return;
    const Address cell = e.module + 0x3e5ec0 + offset;
    Address value = read<Address>(im, cell, 0x2faf94);
    if (!value) {
        if (index < 0 || index > 6)
            return;
        value = call(0x375abc, a.load_375abc, bundle, re::re_string_fill(1, char('0' + index)),
                     re::ReStringView("Shader"), re::ReStringView("UnityEngine"));
        write(im, cell, value, 0x2fb20e);
        if (!value)
            return;
    }
    call(0x3710dc, a.assign_shader_3710dc, material, value);
    const auto b = read<re::ReArray<float, 4>>(im, e.module + color_b, 0x2fb228);
    call(0x370d64, a.color_370d64, material, re::ReStringView("_b"), b);
    const auto aa = read<re::ReArray<float, 4>>(im, e.module + color_a, 0x2fb266);
    call(0x370d64, a.color_370d64, material, re::ReStringView("_a"), aa);
}
bool excluded(const Snapshot &game, Address name) {
    auto bytes = required(managed_name_bytes_2d7e18(game, name));
    if (re::ReStringView(bytes).substr(0, bytes.find('\0')).find("night.vision.goggles") !=
        re::ReStringView::npos)
        return true;
    bytes = required(managed_name_bytes_2d7e18(game, name));
    return re::ReStringView(bytes).substr(0, bytes.find('\0')).find("hat.miner") !=
           re::ReStringView::npos;
}
void bounded(ReI32 n, const FrameWorldEnvironment &e, Rva at) {
    if (n > 0 && ReU32(n) > e.maximum_records)
        { (void)(GameBaseStatus::analysis_limit, at); __builtin_trap(); }
}
} // namespace
GameBaseResult<bool> frame_world_materials_2fabf8(Snapshot &im, const Snapshot &game, Address local,
                                                  const FrameWorldEnvironment &e,
                                                  const FrameWorldMaterialApi &a) {
    return protect<bool>([&] {
        if (!flag(im, e.module, 0x3e9868, 0x2fac20) || !sample_pointer_range(local))
            return false;
        const Address collection = call(0x2f8034, a.collection_2f8034);
        if (!sample_pointer_range(collection))
            return false;
        const auto count = read<ReI32>(game, collection + 0x18, 0x316538);
        const Address entities = read<Address>(game, collection + 0x10, 0x316518);
        if (!sample_pointer_range(entities))
            return false;
        const float interval = read<float>(im, e.module + 0x293144, 0x2fac81);
        if (!call(0x2e5b7c, a.timer_2e5b7c, e.module + 0x3f0974, interval) || count <= 0)
            return false;
        bounded(count, e, 0x2facaf);
        for (ReI32 i = 0; i < count; ++i) {
            const Address entity = element(game, entities, i, 0x2facb5);
            if (!sample_pointer_range(entity) || !valid(a.base, entity) || entity == local)
                continue;
            Address go = read<Address>(game, entity + 0x10, 0x2face3);
            if (!sample_pointer_range(go))
                continue;
            // [C] Two separate validated reads of the object pointer are observable.
            if (!sample_pointer_range(read<Address>(game, go + 0x20, 0x2facf7)))
                continue;
            if (!sample_pointer_range(read<Address>(game, go + 0x20, 0x2fad08)))
                continue;
            const Address tag_object = read<Address>(game, go + 0x20, 0x2fad19);
            const auto tag = sample_pointer_range(tag_object)
                                 ? read<ReU16>(game, tag_object + 0x44, 0x373615)
                                 : ReU16(0);
            if (ReU16(tag) != 6 || !eligible_material(im, entity, e, a))
                continue;
            // [C] Both2cd32c calls execute here, both return0; the team term is false.
            const bool friendly = friend_kind(a.identity, game, entity, 0);
            if (friendly) {
                if (!a.friend_options_3f0148 || a.friend_options_3f0148->empty())
                    { (void)(GameBaseStatus::missing_bytes, 0x2e98f0); __builtin_trap(); }
                if (!a.friend_options_3f0148->at(0))
                    continue;
            }
            Address model = object(a.base, 0x369764, entity);
            if (!sample_pointer_range(model))
                continue;
            model = read<Address>(game, model + 0x600, 0x2fade4);
            if (!sample_pointer_range(model))
                continue;
            model = read<Address>(game, model + 0x58, 0x2fadfb);
            if (!sample_pointer_range(model))
                continue;
            const auto renderer_count = read<ReI32>(game, model + 0x18, 0x2fae0f);
            if (!renderer_count)
                continue;
            const Address renderers = read<Address>(game, model + 0x10, 0x2fae1e);
            if (!sample_pointer_range(renderers) || renderer_count <= 0)
                continue;
            bounded(renderer_count, e, 0x2fae45);
            for (ReI32 j = 0; j < renderer_count; ++j) {
                const Address renderer = element(game, renderers, j, 0x2fae50);
                if (!sample_pointer_range(renderer))
                    continue;
                const Address material = object(a.base, 0x370fac, renderer);
                if (!sample_pointer_range(material))
                    continue;
                if (!sample_pointer_range(object(a.base, 0x370e84, material)))
                    continue;
                const Address name = object(a.base, 0x37361c, material);
                if (!sample_pointer_range(name) || excluded(game, name))
                    continue;
                const auto index = read<ReI32>(im, e.module + 0x3eed88, 0x2faf6a);
                shader(im, material, index, 0x3ecc38, 0x3ecbd8, e, a);
            }
        }
        return true;
    });
}
GameBaseResult<bool> frame_world_view_materials_2fb2f4(Snapshot &im, Snapshot &game,
                                                       const FrameWorldEnvironment &e,
                                                       const FrameWorldMaterialApi &a) {
    return protect<bool>([&] {
        if (!flag(im, e.module, 0x3e7158, 0x2fb30d))
            return false;
        const Address model = view_model(im, e, a);
        if (!sample_pointer_range(model))
            return false;
        write(game, model + 0x40, ReU8(0), 0x2fb336);
        const Address renderers =
            call(0x3151bc, a.renderers_334204_3151bc, model,
                 re::ReStringView("SkinnedMeshRenderer"), re::ReStringView("UnityEngine"));
        if (!sample_pointer_range(renderers))
            return false;
        const auto count = read<ReI32>(game, renderers + 0x18, 0x2fb39d);
        if (count <= 0)
            return false;
        bounded(count, e, 0x2fb3b7);
        for (ReI32 i = 0; i < count; ++i) {
            const Address renderer = element(game, renderers, i, 0x2fb3c2);
            if (!sample_pointer_range(renderer))
                continue;
            const Address material = object(a.base, 0x370fac, renderer);
            if (!sample_pointer_range(material))
                continue;
            if (!sample_pointer_range(object(a.base, 0x370e84, material)))
                continue;
            if (!sample_pointer_range(object(a.base, 0x37361c, material)))
                continue;
            // [C] The view-model worker checks name validity only, with no exclusions.
            const auto index = read<ReI32>(im, e.module + 0x3eefb8, 0x2fb422);
            shader(im, material, index, 0x3ecc98, 0x3eccf8, e, a);
        }
        return true;
    });
}
GameBaseResult<bool> frame_world_player_316540(Snapshot &im, Snapshot &game, Address player,
                                               const FrameWorldEnvironment &e,
                                               const FrameWorldMaterialApi &a) {
    return protect<bool>([&] {
        if (!sample_pointer_range(player) || !valid(a.base, player))
            return false;
        (void)required(frame_world_materials_2fabf8(im, game, player, e, a));
        (void)required(frame_world_view_materials_2fb2f4(im, game, e, a));
        return true;
    });
}
} // namespace rust_internal_re
