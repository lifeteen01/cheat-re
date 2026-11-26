#include "offset_profile_bindings.hpp"

namespace re_base {
namespace { ReU64 parse_hex_simple(const char* s) { ReU64 v = 0; for (; *s; ++s) { char c = *s; if (c >= '0' && c <= '9') v = v*16+(c-'0'); else if (c >= 'a' && c <= 'f') v = v*16+(c-'a'+10); else if (c >= 'A' && c <= 'F') v = v*16+(c-'A'+10); } return v; } }
void check_offset_catalog() {
    using namespace rust_internal_re;
    const auto reference = historical_offset_profile();
    assert(validate_catalog_profile(reference));
    OffsetProfile loaded;
    assert(parse_offset_profile(serialize_offset_profile(reference), loaded));
    assert(validate_catalog_profile(loaded));
    assert(loaded.offsets.size() == offset_catalog_specs().size());
    assert(offset_catalog_specs().size() == 219);
    re::ReSet<re::ReStringView> keys;
    re::ReSet<ReU64> field_values, rvas;
    ReUSize getters{};
    for (const auto &spec : offset_catalog_specs()) {
        assert(keys.insert(spec.key));
        ReU64 value = ~ReU64{};
        assert(get_profile_offset(loaded, spec.key, spec.kind, value));
        assert(value == spec.reference_value);
        assert(loaded.offsets[re::ReString(spec.key)].module == spec.module);
        if (spec.kind == OffsetKind::field_offset) field_values.insert(value);
        else {
            rvas.insert(value);
            Address address{};
            assert(resolve_profile_address(loaded, spec.key, spec.kind, 0x100000000, address));
            assert(address == 0x100000000 + value);
        }
        if (spec.key.starts_with("field.getter_")) {
            const auto r = static_cast<Rva>(parse_hex_simple(re::ReString(spec.key.substr(13)).c_str()));
            assert(profile_field_key(r) == spec.key);
            ++getters;
        }
    }
    assert(field_values.size() == 77 && rvas.size() == 64 && getters == 28);
    // Unknown build labels and empty measured identities cannot produce a match.
    auto changed = loaded;
    changed.game_build = "made-up-current-build-label";
    assert(validate_profile_modules(changed, changed.modules).error == ProfileError::unverified_build);
    auto missing = loaded;
    missing.offsets.erase("field.getter_3680d4");
    assert(validate_catalog_profile(missing).error == ProfileError::missing_key);
    auto wrong_kind = loaded;
    wrong_kind.offsets["field.getter_3680d4"] = {OffsetKind::module_rva, "GameAssembly.dll", 0x320};
    assert(validate_catalog_profile(wrong_kind).error == ProfileError::kind_mismatch);
    auto wrong_module = loaded;
    wrong_module.offsets["gameassembly.site_3681a3"].module = "UnityPlayer.dll";
    assert(validate_catalog_profile(wrong_module).error == ProfileError::module_mismatch);
    // Equal historical values on different receivers and different native sites
    // must remain independent profile edits, rather than numeric-value aliases.
    assert(profile_field_key(0x37261c) != profile_field_key(0x373df4));
    assert(set_profile_offset(changed, profile_field_key(0x37261c), "0x500"));
    assert(changed.offsets[re::ReString(profile_field_key(0x373df4))].value == 0x20);
    assert(set_profile_offset(changed, "gameassembly.site_31613d", "0x1234"));
    assert(changed.offsets["gameassembly.site_36a25f"].value == 0x3f464e0);

    constexpr Address base = 0x100000;
    Snapshot image(base, re::ReVector<ReByte>(0x2000));
    Snapshot absent(base, {});
    // Exercise loaded values at a different location for EVERY getter; expected
    // widths and kinds are grouped independently from production descriptors.
    constexpr Rva pointer_getters[]{0x3680d4,0x369400,0x369738,0x369764,0x36a2c8,0x36a2f4,
        0x3715d8,0x373dc8,0x373df4,0x373e20,0x373e4c,0x374210,0x3742d4};
    constexpr Rva u32_getters[]{0x3696e4,0x371294,0x371604,0x372220,0x37236c,0x37261c,
        0x372bcc,0x3742ac,0x374348};
    constexpr Rva scalar_getters[]{0x3693d4,0x36970c,0x37423c,0x374300};
    for (const auto r : pointer_getters) {
        assert(image.write(base + loaded.offsets[re::ReString(profile_field_key(r))].value, Address{0x11}));
        assert(profile_read_pointer_getter(loaded, image, r, base).value == 0x11);
        assert(set_profile_offset(changed, profile_field_key(r), "0x1000"));
        assert(image.write(base + 0x1000, Address{0xfedcba9876543210ULL}));
        const auto result = profile_read_pointer_getter(changed, image, r, base);
        assert(result.status == GameBaseStatus::complete && result.value == 0xfedcba9876543210ULL);
        assert(profile_read_pointer_getter(changed, absent, r, base).status == GameBaseStatus::missing_bytes);
        assert(profile_read_pointer_getter(changed, absent, r, 0).value == 0);
    }
    for (const auto r : u32_getters) {
        assert(image.write(base + loaded.offsets[re::ReString(profile_field_key(r))].value, ReU32{0x11}));
        assert(profile_read_u32_getter(loaded, image, r, base).value == 0x11);
        assert(set_profile_offset(changed, profile_field_key(r), "0x1000"));
        assert(image.write(base + 0x1000, ReU64{0xaabbccddf1234567ULL}));
        const auto result = profile_read_u32_getter(changed, image, r, base);
        assert(result.status == GameBaseStatus::complete && result.value == 0xf1234567u);
        assert(profile_read_u32_getter(changed, absent, r, base).status == GameBaseStatus::missing_bytes);
        const bool sentinel = r == 0x371604 || r == 0x372220 || r == 0x37236c;
        assert(profile_read_u32_getter(changed, absent, r, 0).value == (sentinel ? 0xffffffffu : 0u));
    }
    for (const auto r : scalar_getters) {
        assert(image.write(base + loaded.offsets[re::ReString(profile_field_key(r))].value, 1.0f));
        assert(profile_read_scalar_getter(loaded, image, r, base).value == 1.0f);
        assert(set_profile_offset(changed, profile_field_key(r), "0x1000"));
        assert(image.write(base + 0x1000, ReU32{0x7fc12345}));
        const auto result = profile_read_scalar_getter(changed, image, r, base);
        assert(result.status == GameBaseStatus::complete && re::re_bit_cast<ReU32>(result.value) == 0x7fc12345);
        assert(profile_read_scalar_getter(changed, absent, r, base).status == GameBaseStatus::missing_bytes);
        assert(profile_read_scalar_getter(changed, absent, r, 0).value == 0.0f);
    }
    assert(image.write(base + 0x2c0, ReU8{0}));
    assert(!profile_read_predicate_getter(loaded, image, 0x3693b0, base).value);
    assert(set_profile_offset(changed, "field.getter_3693b0", "0x1000"));
    assert(image.write(base + 0x1000, ReU32{0xaabbcc80}));
    assert(profile_read_byte_getter(changed, image, 0x3693b0, base).value == 0x80);
    assert(profile_read_predicate_getter(changed, image, 0x3693b0, base).value);
    assert(image.write(base + 0xd8, -1.0f));
    assert(!profile_read_predicate_getter(loaded, image, 0x372184, base).value);
    assert(set_profile_offset(changed, "field.getter_372184", "0x1000"));
    for (float value : {-1.0f,-0.0f,0.0f,1.0f,re::ReNumericLimits<float>::infinity(),re::ReNumericLimits<float>::quiet_NaN()}) {
        assert(image.write(base + 0x1000, value));
        const auto result = profile_read_predicate_getter(changed, image, 0x372184, base);
        assert(result.status == GameBaseStatus::complete && result.value == (value > 0.0f));
    }
    assert(profile_read_predicate_getter(changed, absent, 0x372184, base).status == GameBaseStatus::missing_bytes);
    assert(!profile_read_predicate_getter(changed, absent, 0x372184, 0).value);
    assert(profile_read_pointer_getter(missing, image, 0x3680d4, base).status == GameBaseStatus::missing_boundary);
    assert(profile_read_pointer_getter(wrong_kind, image, 0x3680d4, base).status == GameBaseStatus::missing_boundary);
    assert(profile_read_pointer_getter(changed, image, 0xdeadbeef, base).status == GameBaseStatus::missing_boundary);
    assert(profile_read_scalar_getter(changed, image, 0x372184, base).status == GameBaseStatus::missing_boundary);
    changed.offsets["field.getter_3680d4"].value = re::ReNumericLimits<ReU64>::max();
    // The core rejects an oversized field configuration before a read occurs.
    assert(profile_read_pointer_getter(changed, image, 0x3680d4, base).status == GameBaseStatus::missing_boundary);
    changed.offsets["field.getter_3680d4"].value = 0x1000;

    constexpr Rva wrappers[]{0x322580,0x366c30,0x366ccc,0x366d7c,0x366e38,0x366ef0,
        0x36817c,0x36a238,0x36b004,0x36b6cc,0x370b50,0x373c60,0x374168,0x36a0e0,
        0x36bacc,0x36b9a0,0x36c274,0x36c0f0};
    for (const auto wrapper : wrappers) {
        const auto key = profile_direct_key(wrapper);
        assert(!key.empty());
        Address before{}, after{};
        assert(profile_resolve_direct_address(loaded, wrapper, base, before));
        assert(before == base + loaded.offsets[re::ReString(key)].value);
        assert(set_profile_offset(changed, key, "0x120"));
        assert(profile_resolve_direct_address(changed, wrapper, base, after));
        assert(after == base + 0x120 && after != before);
    }
    Address unchanged = 0x42;
    assert(profile_resolve_direct_address(loaded, 0xdeadbeef, base, unchanged).error == ProfileError::missing_key);
    assert(profile_resolve_direct_address(wrong_module, 0x36817c, base, unchanged).error == ProfileError::module_mismatch);
    assert(profile_resolve_direct_address(loaded, 0x36817c, re::ReNumericLimits<Address>::max(), unchanged).error == ProfileError::overflow);
    assert(unchanged == 0x42);
}
}
