#pragma once
#include "frame_residuals_analysis.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re::frame_residual_detail {
struct Stop {
    UnityStatus status;
    Rva role;
};
[[noreturn]] inline void stop(UnityStatus status, Rva role) {
    { __builtin_trap(); }
}
template <class F> FrameDependencyResult protect(F &&operation) {
    operation();
    return {};
}
template <class F, class... Args> auto need(Rva role, const F &effect, Args &&...args) {
    if (!effect)
        stop(UnityStatus::missing_dependency, role);
    auto result = effect(re::re_forward<Args>(args)...);
    if (!result)
        stop(UnityStatus::missing_dependency, role);
    return *result;
}
template <class T>
T get(const FrameMainMenuApi &api, Rva role, std::initializer_list<UnityValue> args = {}) {
    if (!api.effects.unity.external)
        stop(UnityStatus::missing_dependency, role);
    const auto result = api.effects.unity.external(role, re::ReSpan(args.begin(), args.size()));
    if (!result)
        stop(UnityStatus::missing_dependency, role);
    if (const auto value = re::re_get_if<T>(&*result))
        return *value;
    stop(UnityStatus::callback_type_mismatch, role);
}
inline void call(const FrameMainMenuApi &api, Rva role,
                 std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(api, role, args);
}
inline ReU32 raw(const FrameMenuState &state, Rva key) {
    const auto at = state.values.find(key);
    return !at ? 0 : **at;
}
inline bool flag(const FrameMenuState &state, Rva key) {
    return (raw(state, key) & 255) != 0;
}
inline float number(const FrameMenuState &state, Rva key) {
    return re::re_bit_cast<float>(raw(state, key));
}
inline ReI32 integer(const FrameMenuState &state, Rva key) {
    return re::re_bit_cast<ReI32>(raw(state, key));
}
inline void store(FrameMenuState &state, Rva key, float value) {
    state.values[key] = re::re_bit_cast<ReU32>(value);
}
template <class T> T read(const FrameMainMenuApi &api, Address at, Rva role) {
    if (!api.imgui)
        stop(UnityStatus::missing_dependency, role);
    const auto result = api.imgui->read<T>(at);
    if (!result)
        stop(UnityStatus::unreadable_snapshot, role);
    return *result;
}
template <class T> void write(const FrameMainMenuApi &api, Address at, T value, Rva role) {
    if (!api.imgui)
        stop(UnityStatus::missing_dependency, role);
    if (!api.imgui->write(at, value))
        stop(UnityStatus::unreadable_snapshot, role);
}
inline Vec2 add(Vec2 a, Vec2 b) {
    return {a.x + b.x, a.y + b.y};
}
inline Vec2 sub(Vec2 a, Vec2 b) {
    return {a.x - b.x, a.y - b.y};
}
inline float distance(Vec3 a, Vec3 b) {
    const float x = a.x - b.x, y = a.y - b.y, z = a.z - b.z;
    return re::re_sqrtf((x * x + y * y) + z * z);
}
inline ReI32 truncate(float value) {
    if (!re::re_isfinite(value) || value >= 2147483648.0f || value < -2147483648.0f)
        return re::ReNumericLimits<ReI32>::min();
    return static_cast<ReI32>(value);
}
inline ClipRect rgba(const FrameMenuState &state, Rva key) {
    return {number(state, key), number(state, key + 4), number(state, key + 8),
            number(state, key + 12)};
}
inline ClipRect unpack(ReI32 packed) {
    const auto bits = re::re_bit_cast<ReU32>(packed);
    constexpr float scale = re::re_bit_cast<float>(0x3b808081u);
    return {float(bits & 255) * scale, float((bits >> 8) & 255) * scale,
            float((bits >> 16) & 255) * scale, float(bits >> 24) * scale};
}
} // namespace rust_internal_re::frame_residual_detail
