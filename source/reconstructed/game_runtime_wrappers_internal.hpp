#pragma once
#include "game_runtime_wrappers_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re::runtime_detail {
template <class T> T read(const Snapshot &s, Address p, Rva at) {
    const auto v = s.read<T>(p);
    if (!v)
        { (void)(GameBaseStatus::missing_bytes, at); __builtin_trap(); }
    return *v;
}
template <class T> void write(Snapshot &s, Address p, T v, Rva at) {
    if (!s.write(p, v))
        { (void)(GameBaseStatus::missing_bytes, at); __builtin_trap(); }
}
inline void extent(const Snapshot &s, Address p, ReUSize n, Rva at) {
    if (!s.contains(p, n))
        { (void)(GameBaseStatus::missing_bytes, at); __builtin_trap(); }
}
template <class T> T required(GameBaseResult<T> r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
    return r.value;
}
inline Address metadata_value(MetadataResult r, Rva at) {
    if (r.status != MetadataStatus::complete)
        { __builtin_trap(); }
    return r.value;
}
template <class F> const F &need(const F &f, Rva at) {
    if (!f)
        { (void)(GameBaseStatus::missing_boundary, at); __builtin_trap(); }
    return f;
}
const GameRuntimeSpec *spec(Rva);
void package(Snapshot &, GameRuntimeCall &, const GameRuntimeSpec &, const GameRuntimeRequest &,
             const re::ReFunction<void()> &);
} // namespace rust_internal_re::runtime_detail
