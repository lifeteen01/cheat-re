#include "offset_profile_bindings.hpp"

namespace rust_internal_re {
namespace {
const FieldGetterSpec *spec_for(Rva r, FieldGetterKind kind) {
    // BEGIN OWNED GETTER DESCRIPTORS
    static constexpr FieldGetterSpec specs[]{
        {0x3680d4,0x3680fd,0x320,FieldGetterKind::pointer,0},
        {0x3693b0,0x3693d4,0x2c0,FieldGetterKind::byte,0},
        {0x3693d4,0x3693ff,0x2d0,FieldGetterKind::scalar,0},
        {0x369400,0x369429,0x350,FieldGetterKind::pointer,0},
        {0x3696e4,0x36970c,0x708,FieldGetterKind::raw_u32,0},
        {0x36970c,0x369737,0x2cc,FieldGetterKind::scalar,0},
        {0x369738,0x369761,0x778,FieldGetterKind::pointer,0},
        {0x369764,0x36978d,0x300,FieldGetterKind::pointer,0},
        {0x36a2c8,0x36a2f1,0x4e8,FieldGetterKind::pointer,0},
        {0x36a2f4,0x36a31d,0x6d0,FieldGetterKind::pointer,0},
        {0x371294,0x3712bc,0x30,FieldGetterKind::raw_u32,0},
        {0x3715d8,0x371601,0x10,FieldGetterKind::pointer,0},
        {0x371604,0x37162d,0x88,FieldGetterKind::raw_u32,0xffffffffu},
        {0x372184,0x3721b4,0xd8,FieldGetterKind::predicate,0},
        {0x372220,0x372249,0x2f8,FieldGetterKind::raw_u32,0xffffffffu},
        {0x37236c,0x372395,0x58,FieldGetterKind::raw_u32,0xffffffffu},
        {0x37261c,0x372644,0x20,FieldGetterKind::raw_u32,0},
        {0x372bcc,0x372bf4,0x24,FieldGetterKind::raw_u32,0},
        {0x373dc8,0x373df1,0x28,FieldGetterKind::pointer,0},
        {0x373df4,0x373e1d,0x20,FieldGetterKind::pointer,0},
        {0x373e20,0x373e49,0x30,FieldGetterKind::pointer,0},
        {0x373e4c,0x373e75,0x50,FieldGetterKind::pointer,0},
        {0x374210,0x374239,0x128,FieldGetterKind::pointer,0},
        {0x37423c,0x374267,0x144,FieldGetterKind::scalar,0},
        {0x3742ac,0x3742d4,0x138,FieldGetterKind::raw_u32,0},
        {0x3742d4,0x3742fd,0x120,FieldGetterKind::pointer,0},
        {0x374300,0x37432b,0x188,FieldGetterKind::scalar,0},
        {0x374348,0x374370,0x40,FieldGetterKind::raw_u32,0},
        };
    // END OWNED GETTER DESCRIPTORS
    for (const auto &spec : specs)
        if (spec.getter == r && spec.kind == kind) return &spec;
    return nullptr;
}
template<class T>
GameBaseResult<T> read_field(const re_base::OffsetProfile &profile, const Snapshot &image,
                            Rva r, Address receiver, FieldGetterKind kind) {
    const auto *spec = spec_for(r, kind);
    const auto key = profile_field_key(r);
    ReU64 offset{};
    if (!spec || key.empty() ||
        !re_base::get_profile_offset(profile, key, re_base::OffsetKind::field_offset, offset))
        return {{}, GameBaseStatus::missing_boundary, r};
    const auto &entry = profile.offsets.at(re::ReString(key));
    if (!entry.module.empty()) return {{}, GameBaseStatus::missing_boundary, r};
    if (!sample_pointer_range(receiver)) return {static_cast<T>(spec->invalid_u32)};
    if (offset > re::ReNumericLimits<Address>::max() - receiver ||
        sizeof(T) - 1 > re::ReNumericLimits<Address>::max() - (receiver + offset))
        return {{}, GameBaseStatus::missing_bytes, r};
    const auto value = image.read<T>(receiver + offset);
    if (!value) return {{}, GameBaseStatus::missing_bytes, r};
    return {*value};
}
}
GameBaseResult<Address> profile_read_pointer_getter(const re_base::OffsetProfile &p, const Snapshot &s, Rva r, Address a) {
    return read_field<Address>(p, s, r, a, FieldGetterKind::pointer);
}
GameBaseResult<ReU32> profile_read_u32_getter(const re_base::OffsetProfile &p, const Snapshot &s, Rva r, Address a) {
    return read_field<ReU32>(p, s, r, a, FieldGetterKind::raw_u32);
}
GameBaseResult<ReU8> profile_read_byte_getter(const re_base::OffsetProfile &p, const Snapshot &s, Rva r, Address a) {
    return read_field<ReU8>(p, s, r, a, FieldGetterKind::byte);
}
GameBaseResult<float> profile_read_scalar_getter(const re_base::OffsetProfile &p, const Snapshot &s, Rva r, Address a) {
    return read_field<float>(p, s, r, a, FieldGetterKind::scalar);
}
GameBaseResult<bool> profile_read_predicate_getter(const re_base::OffsetProfile &p, const Snapshot &s, Rva r, Address a) {
    if (r == 0x3693b0) {
        const auto result = profile_read_byte_getter(p, s, r, a);
        return {result.value != 0, result.status, result.site};
    }
    const auto result = read_field<float>(p, s, r, a, FieldGetterKind::predicate);
    // Audited COMISS/SETA: equality and NaN are false, positive infinity is true.
    return {result.value > 0.0f, result.status, result.site};
}
re_base::ProfileResult profile_resolve_direct_address(const re_base::OffsetProfile &profile,
                                                     Rva wrapper, Address base, Address &address) {
    const auto key = profile_direct_key(wrapper);
    if (key.empty()) return {re_base::ProfileError::missing_key, "Unknown direct wrapper"};
    const auto it = profile.offsets.find(re::ReString(key));
    if (!it) return {re_base::ProfileError::missing_key, "Missing direct wrapper key"};
    if ((**it).module != "GameAssembly.dll")
        return {re_base::ProfileError::module_mismatch, "Direct wrapper requires GameAssembly.dll"};
    return re_base::resolve_profile_address(profile, key, re_base::OffsetKind::module_rva, base, address);
}
// Generated context mappings.
re::ReStringView profile_field_key(Rva r) {
    switch (r) {
    case 0x3680d4: return "field.getter_3680d4";
    case 0x3693b0: return "field.getter_3693b0";
    case 0x3693d4: return "field.getter_3693d4";
    case 0x369400: return "field.getter_369400";
    case 0x3696e4: return "field.getter_3696e4";
    case 0x36970c: return "field.getter_36970c";
    case 0x369738: return "field.getter_369738";
    case 0x369764: return "field.getter_369764";
    case 0x36a2c8: return "field.getter_36a2c8";
    case 0x36a2f4: return "field.getter_36a2f4";
    case 0x371294: return "field.getter_371294";
    case 0x3715d8: return "field.getter_3715d8";
    case 0x371604: return "field.getter_371604";
    case 0x372184: return "field.getter_372184";
    case 0x372220: return "field.getter_372220";
    case 0x37236c: return "field.getter_37236c";
    case 0x37261c: return "field.getter_37261c";
    case 0x372bcc: return "field.getter_372bcc";
    case 0x373dc8: return "field.getter_373dc8";
    case 0x373df4: return "field.getter_373df4";
    case 0x373e20: return "field.getter_373e20";
    case 0x373e4c: return "field.getter_373e4c";
    case 0x374210: return "field.getter_374210";
    case 0x37423c: return "field.getter_37423c";
    case 0x3742ac: return "field.getter_3742ac";
    case 0x3742d4: return "field.getter_3742d4";
    case 0x374300: return "field.getter_374300";
    case 0x374348: return "field.getter_374348";
    default: return {};
    }
}
re::ReStringView profile_direct_key(Rva r) {
    switch (r) {
    case 0x322580: return "gameassembly.site_3225a6";
    case 0x366c30: return "gameassembly.site_366c66";
    case 0x366ccc: return "gameassembly.site_366d0a";
    case 0x366d7c: return "gameassembly.site_366dc9";
    case 0x366e38: return "gameassembly.site_366e82";
    case 0x366ef0: return "gameassembly.site_366f2a";
    case 0x36817c: return "gameassembly.site_3681a3";
    case 0x36a0e0: return "gameassembly.site_36a107";
    case 0x36a238: return "gameassembly.site_36a25f";
    case 0x36b004: return "gameassembly.site_36b02b";
    case 0x36b6cc: return "gameassembly.site_36b6fc";
    case 0x36b9a0: return "gameassembly.site_36b9c7";
    case 0x36bacc: return "gameassembly.site_36baf3";
    case 0x36c0f0: return "gameassembly.site_36c11f";
    case 0x36c274: return "gameassembly.site_36c2d1";
    case 0x370b50: return "gameassembly.site_370ba4";
    case 0x373c60: return "gameassembly.site_373c8e";
    case 0x374168: return "gameassembly.site_37419b";
    default: return {};
    }
}
} // namespace rust_internal_re
