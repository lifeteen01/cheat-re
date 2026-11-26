#include "offset_profile_bindings.hpp"
#include <cassert>
#include <iostream>

int main(int argc, char **argv) {
    assert(argc == 2);
    re_base::check_offset_catalog();
    re_base::OffsetProfile profile;
    assert(re_base::load_offset_profile(argv[1], profile));
    assert(re_base::validate_catalog_profile(profile));
    assert(profile.offsets.size() == re_base::offset_catalog_specs().size());
    for (const auto &spec : re_base::offset_catalog_specs()) {
        std::uint64_t value{};
        assert(re_base::get_profile_offset(profile, spec.key, spec.kind, value));
        assert(value == spec.reference_value);
    }
    // Editing JSON text, parsing it, and reading copied bytes proves that the
    // external value controls the owned-memory operation, not just UI text.
    auto json = re_base::serialize_offset_profile(profile);
    const auto key = json.find("field.getter_3680d4");
    assert(key != std::string::npos);
    const auto literal = json.find("0x320", key);
    assert(literal != std::string::npos);
    json.replace(literal, 5, "0x900");
    const auto direct_key = json.find("gameassembly.site_3681a3");
    assert(direct_key != std::string::npos);
    const auto direct_literal = json.find("0x3e66250", direct_key);
    assert(direct_literal != std::string::npos);
    json.replace(direct_literal, 9, "0x9000");
    re_base::OffsetProfile edited;
    assert(re_base::parse_offset_profile(json, edited));
    assert(re_base::validate_catalog_profile(edited));
    rust_internal_re::Snapshot image(0x100000, std::vector<std::byte>(0x1000));
    assert(image.write(0x100320, std::uint64_t{0x1111}));
    assert(image.write(0x100900, std::uint64_t{0x2222}));
    assert(rust_internal_re::profile_read_pointer_getter(profile, image, 0x3680d4, 0x100000).value == 0x1111);
    assert(rust_internal_re::profile_read_pointer_getter(edited, image, 0x3680d4, 0x100000).value == 0x2222);
    std::uint64_t before{}, after{};
    assert(rust_internal_re::profile_resolve_direct_address(profile, 0x36817c, 0x100000, before));
    assert(rust_internal_re::profile_resolve_direct_address(edited, 0x36817c, 0x100000, after));
    assert(before == 0x3f66250 && after == 0x109000);
    std::cout << "PASS: 219 entries; 28 changed getter reads; 18 changed direct resolutions; external JSON edits change owned read and RVA resolution; no game execution\n";
}
