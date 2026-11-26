#include "re_compat.h"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T sim_read(const Snapshot &im, Address address, Rva site) {
    const auto v = im.read<T>(address);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
template <class F> auto sim_call(const F &f, Address self, Rva site, Rva target) {
    if (!f)
        { __builtin_trap(); }
    return f(self);
}
float minss(float a, float z) {
    return a < z ? a : z;
}
re::ReString key_text(re::ReArray<double, 4> values) {
    const int n = re::re_snprintf(nullptr, 0, "%.2f/%.2f/%.2f/%.2f", values[0], values[1], values[2],
                                values[3]);
    if (n < 0)
        { __builtin_trap(); }
    re::ReString text = re::re_string_fill(ReUSize(n) + 1, '\0');
    re::re_snprintf(const_cast<char*>(text.data()), text.size(), "%.2f/%.2f/%.2f/%.2f", values[0], values[1], values[2],
                  values[3]);
    text.resize(ReUSize(n));
    return text;
}
} // namespace
// [C/I] Entire30cf87..30ea17 dispatch/calculations. Actual game helper roles use parent-provided implementations.
// [U] Branch3's format supplies only one of four varargs; copied volatile argument bits are required explicitly.
void replay_world_simulation_worker_30cf87(const Snapshot &im, Address local,
                                           ProjectionBounds bounds, const WorldEspConfig &c,
                                           WorldSimulationState &state, WorldSimulationBackend &b,
                                           WorldDrawOutput out) {
    const auto initial_direction = sim_call(b.direction_368100, local, 0x30cf87, 0x368100);
    const auto held = sim_call(b.held_368a84, local, 0x30cf8f, 0x368a84);
    if (!sample_pointer_range(held))
        return;
    const auto local_position = sim_call(b.local_position_369164, local, 0x30cfb1, 0x369164);
    const auto a = sim_call(b.object_3716e0, held, 0x30cfb9, 0x3716e0);
    const auto z = sim_call(b.object_371eb8, held, 0x30cfc4, 0x371eb8);
    const auto first = sim_call(b.object_3721b4, held, 0x30cfcf, 0x3721b4);
    const auto third = sim_call(b.object_371464, held, 0x30cfda, 0x371464);
    ReUSize branch = 0;
    float speed = 0, drag = 0, gravity = 0, qualification = 0;
    bool apply_drag = true, enabled = false;
    Vec3 start = local_position, velocity{};
    float duration = 8;
    re::ReArray<double, 4> formatted{};
    if (sample_pointer_range(first)) {
        if (!sim_read<ReU8>(im, first + 0x398, 0x30cff5))
            return;
        const auto magazine = sim_call(b.magazine_371630, held, 0x30d005, 0x371630);
        if (!sample_pointer_range(magazine))
            return;
        const auto definition = sim_call(b.projectile_372abc, magazine, 0x30d020, 0x372abc);
        if (!sample_pointer_range(definition))
            return;
        const float multiplier = c.boolean(0x3d7ce8) ? minss(c.real(0x3d80a8), 1.495f) : 1;
        speed = sim_read<float>(im, magazine + 0x40, 0x30d03f) * multiplier;
        drag = sim_read<float>(im, definition + 0x34, 0x30d076);
        gravity = sim_read<float>(im, definition + 0x38, 0x30d06a);
        qualification = sim_read<float>(im, definition + 0x44, 0x30d05d);
        enabled = c.boolean(0x3ea678);
        branch = 0;
    } else if (sample_pointer_range(z)) {
        const auto modification = sim_call(b.modification_36b938, z, 0x30d65f, 0x36b938);
        if (!sample_pointer_range(modification))
            return;
        const auto definition =
            sim_call(b.thrown_projectile_372b30, modification, 0x30d67d, 0x372b30);
        if (!sample_pointer_range(definition))
            return;
        speed = sim_read<float>(im, definition + 0x3c, 0x30d695) *
                sim_read<float>(im, z + 0x3ac, 0x30d6a2);
        gravity = sim_read<float>(im, definition + 0x38, 0x30d6d1);
        qualification = sim_read<float>(im, definition + 0x34, 0x30d6c5);
        enabled = c.boolean(0x3ea678);
        branch = 1;
        apply_drag = false;
        start = local_position + initial_direction;
    } else if (sample_pointer_range(third)) {
        const auto modification = sim_call(b.modification_36b938, third, 0x30dc89, 0x36b938);
        if (!sample_pointer_range(modification))
            return;
        const auto definition = sim_call(b.projectile_372abc, modification, 0x30dca7, 0x372abc);
        if (!sample_pointer_range(definition))
            return;
        const auto item = sim_call(b.held_item_37154c, held, 0x30dcc2, 0x37154c);
        if (!sample_pointer_range(item))
            return;
        const auto id = sim_call(b.item_identifier_37261c, item, 0x30dcdd, 0x37261c);
        const float base = id == 0x34b73d71
                               ? sim_call(b.charge_speed_36b504, third, 0x30dcec, 0x36b504)
                               : sim_read<float>(im, third + 0x3ac, 0x30dcf6);
        const float attachment = sim_call(b.attachments_36b758, third, 0x30dd01, 0x36b758);
        float multiplier = 1;
        if (!(attachment >= 1.3f)) {
            if (c.boolean(0x3d8301) && c.boolean(0x3e4238))
                multiplier = minss(c.real(0x3e6084), 1.495f);
            else if (c.boolean(0x3d7fb8))
                multiplier = 1.495f;
            else if (c.boolean(0x3d7ce8))
                multiplier = minss(c.real(0x3d80a8), 1.495f);
        }
        if (attachment != 0 && !c.boolean(0x3e4238))
            multiplier = sim_call(b.attachments_36b758, third, 0x30dd6d, 0x36b758) * multiplier;
        speed = ((sim_read<float>(im, modification + 0x44, 0x30dd79) +
                  sim_read<float>(im, modification + 0x40, 0x30dd7f)) *
                 base) *
                multiplier;
        drag = sim_read<float>(im, definition + 0x34, 0x30ddb9);
        gravity = sim_read<float>(im, definition + 0x38, 0x30dda8);
        qualification = sim_read<float>(im, definition + 0x44, 0x30dd8c);
        enabled = c.boolean(0x3ea678);
        branch = 2;
    } else if (sample_pointer_range(a)) {
        const float raw = sim_read<float>(im, a + 0x3f8, 0x30e3d0);
        speed = float(double(raw) - 0.4531250149011612);
        enabled = c.boolean(0x3ea678);
        branch = 3;
        apply_drag = false;
        gravity = 1;
        start = local_position + initial_direction * 0.25f;
    } else
        return;
    formatted = {double(speed), double(drag), double(gravity), double(qualification)};
    if (branch == 1) {
        if (!state.branch1_fourth_vararg)
            __builtin_trap();
        formatted = {double(speed), double(gravity), double(qualification),
                     *state.branch1_fourth_vararg};
    }
    if (branch == 3) {
        if (!state.branch3_varargs)
            __builtin_trap();
        formatted = {double(speed), (*state.branch3_varargs)[0], (*state.branch3_varargs)[1],
                     (*state.branch3_varargs)[2]};
    }
    const auto key = entity_name_hash_2d6354(key_text(formatted));
    state.active_key_3e5718 = key;
    if (!state.cache.contains(key)) {
        const TrajectoryParameters parameters{speed, branch == 1 ? qualification : drag, gravity,
                                              branch == 1 ? 0 : qualification};
        auto tables = build_candidate_tables_2e3aa4(parameters);
        state.cache.insert(key, WorldSimulationCacheEntry{parameters, re::re_move(tables)});
    }
    if (!enabled)
        return;
    if (branch == 0 || branch == 2)
        velocity =
            sim_call(b.direction_368100, local, branch == 0 ? 0x30d149 : 0x30de7d, 0x368100) *
            speed;
    else if (branch == 1)
        velocity = initial_direction * speed;
    else {
        const float magnitude = length(initial_direction);
        const Vec3 normalized =
            magnitude > 0 ? Vec3{initial_direction.x / magnitude, initial_direction.y / magnitude,
                                 initial_direction.z / magnitude}
                          : Vec3{};
        velocity = normalized * speed + state.motion_3e6060 * 0.5f;
        if (!b.class_name_2e5a54)
            { __builtin_trap(); }
        const auto name = b.class_name_2e5a54(held);
        if (!name)
            return;
        duration = entity_name_hash_2d6354(*name) == entity_name_hash_2d6354("GrenadeWeapon")
                       ? 2.5625f
                       : 8;
    }
    const ReU32 mask = (c.boolean(0x3e5228) ? 0x48a10101u : 0x48a12101u) | 0x48a30900u;
    WorldSimulationRequest request{start,
                                   velocity,
                                   Vec3{0, -9.81f, 0} * gravity,
                                   duration,
                                   apply_drag ? re::ReOptional<float>(drag) : re::re_nullopt,
                                   mask};
    const auto result = simulate_world_31885c_3185a0(request, b.overlay.draw);
    draw_world_simulation_30d207(result, branch, bounds, c, b.overlay, out);
}
} // namespace rust_internal_re
