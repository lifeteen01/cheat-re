#pragma once
#include "frame_world_controllers_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re::frame_world_detail {
template <class T> T read(const Snapshot &s, Address p, Rva at) {
    auto v = s.read<T>(p);
    if (!v)
        { (void)(GameBaseStatus::missing_bytes, at); __builtin_trap(); }
    return *v;
}
template <class T> void write(Snapshot &s, Address p, T v, Rva at) {
    if (!s.write(p, v))
        { (void)(GameBaseStatus::missing_bytes, at); __builtin_trap(); }
}
template <class F, class... A> auto call(Rva r, const F &f, A &&...a) {
    if (!f)
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    return f(re::re_forward<A>(a)...);
}
template <class T> T required(GameBaseResult<T> r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
    return r.value;
}
template <class T, class F> GameBaseResult<T> protect(F &&f) {
    return {f()};
}
inline bool valid(const FrameWorldApi &a, Address p) {
    return call(0x2e0e9c, a.game.valid_2e0e9c, p);
}
inline Address object(const FrameWorldApi &a, Rva r, Address p) {
    return call(r, a.game.object, r, p);
}
inline bool pred(const FrameWorldApi &a, Rva r, Address p, ReU8 b = 0) {
    return call(r, a.game.predicate, r, p, b);
}
inline Vec3 vector(const FrameWorldApi &a, Rva r, Address p) {
    return call(r, a.game.vector, r, p);
}
inline bool ready(const FrameWorldApi &a) {
    if (call(0x2e0e4c, a.gate_2e0e4c))
        return false;
    if (!sample_pointer_range(call(0x2e069c, a.camera_2e069c)))
        return false;
    return sample_pointer_range(call(0x2dda9c, a.local_2dda9c));
}
inline bool flag(const Snapshot &s, Address b, Rva r, Rva at) {
    return read<ReU8>(s, b + r, at) != 0;
}
inline ReI32 cvtt(float v) {
    if (!re::re_isfinite(v) || v >= 2147483648.0f || v < -2147483648.0f)
        return re::ReNumericLimits<ReI32>::min();
    return static_cast<ReI32>(v);
}
inline bool friend_kind(RegistryStore *store, const Snapshot &game, Address p,
                        ReU8 category) {
    auto key = identity_key_369e70(game, p, category != 0);
    if (key.status != RegistryStatus::complete)
        { (void)(GameBaseStatus::missing_bytes, 0x369e70); __builtin_trap(); }
    if (!store)
        { (void)(GameBaseStatus::missing_boundary, 0x2df608); __builtin_trap(); }
    auto found = store->identity_2df608(key.value);
    if (found.status != RegistryStatus::complete)
        { (void)(GameBaseStatus::missing_bytes, 0x2df608); __builtin_trap(); }
    return read<ReU32>(store->snapshot(), found.value + 0x24, 0x368632) == 1;
}
} // namespace rust_internal_re::frame_world_detail
