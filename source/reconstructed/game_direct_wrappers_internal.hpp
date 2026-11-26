#pragma once
#include "game_direct_wrappers_analysis.hpp"
#include "metadata_argument_bindings.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re::direct_detail {
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
template <class T> T require(GameBaseResult<T> r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
    return r.value;
}
const GameDirectSpec *spec(Rva);
GameDirectCall prepare(Snapshot &, const GameDirectSpec &, const GameDirectEnvironment &,
                       const GameDirectEffects &);
void package(Snapshot &, GameDirectCall &, re::ReSpan<const GameDirectArgument>,
             re::ReOptional<Address> return_address);
re::ReString text(const Snapshot &, Address, ReUSize, Rva);
re::ReString request_text(const Snapshot &, const GameDirectRequest &, unsigned,
                         const GameDirectEnvironment &);
re::ReString literal(Snapshot &, Snapshot &, Rva, re::ReOptional<Address>,
                    const GameDirectEnvironment &);
Address managed(Snapshot &, re::ReStringView, re::ReOptional<Address>, const GameDirectRequest &,
                const GameDirectEnvironment &, const GameDirectEffects &);
GameDirectResult invalid(const GameDirectSpec &, const GameDirectRequest &);
GameDirectResult invoke(Snapshot &, Snapshot &, const GameDirectSpec &, GameDirectCall,
                        const GameDirectRequest &, re::ReSpan<const GameDirectArgument>,
                        const GameDirectEnvironment &, const GameDirectEffects &);
GameDirectResult run(Snapshot &, Snapshot &, Rva, GameDirectRequest, const GameDirectEnvironment &,
                     const GameDirectEffects &);
} // namespace rust_internal_re::direct_detail
