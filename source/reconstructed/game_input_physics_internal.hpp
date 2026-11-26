#pragma once
#include "analysis_failure.hpp"
#include "game_input_physics_analysis.hpp"

namespace rust_internal_re::game_input_detail {
template <class T> T read(const Snapshot &s, Address p, Rva site) {
    const auto value = s.read<T>(p);
    if (!value)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    return *value;
}
template <class T> void write(Snapshot &s, Address p, T value, Rva site) {
    if (!s.write(p, value))
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
}
inline void extent(const Snapshot &s, Address p, ReUSize n, Rva site) {
    if (!s.contains(p, n))
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
}
template <class F> const F &need(const F &f, Rva site) {
    if (!f)
        { (void)(GameBaseStatus::missing_boundary, site); __builtin_trap(); }
    return f;
}
template <class T> T required(GameBaseResult<T> r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
    return re::re_move(r.value);
}
template <class T, class F> GameBaseResult<T> protect(F f) {
    return {f()};
}
inline Address metadata_value(MetadataResult r, Rva site) {
    if (r.status != MetadataStatus::complete)
        { __builtin_trap(); }
    return r.value;
}
struct LiteralSpec {
    Rva constructor{}, end{};
    ReUSize length{};
};
re::ReVector<ReByte> literal_bytes(const Snapshot &, Address module, Rva constructor);
re::ReString literal_string(const Snapshot &, Address module, Rva constructor);
Address store_literal(Snapshot &, const GameInputPhysicsEnvironment &, Address offset,
                      re::ReStringView, Rva site);
GameInputCall method_prepare(Snapshot &, Rva wrapper, const GameInputPhysicsEnvironment &,
                             const GameInputPhysicsEffects &);
GameInputCall physics_prepare(Snapshot &, const GameInputPhysicsEnvironment &,
                              const GameInputPhysicsEffects &);
GameInputCall layer_prepare(Snapshot &, const Snapshot &, const GameInputPhysicsEnvironment &,
                            const GameInputPhysicsEffects &);
GameInputCall pack_object(Snapshot &, GameInputCall, re::ReOptional<Address> receiver,
                          re::ReOptional<Address> return_pointer = {});
GameInputCall pack_zero_predicate(Snapshot &, GameInputCall);
GameInputCall pack_zero_object(Snapshot &, GameInputCall);
void key_initialize(GameInputKeyStore &);
re::ReOptional<ReUSize> key_find(const GameInputKeyStore &, ReI32);
ReUSize key_insert(GameInputKeyStore &, ReI32, ReUSize maximum);
} // namespace rust_internal_re::game_input_detail
