// [C] 0x2d70a4..0x2d72ae (522 bytes): String formatting helper.
// Builds formatted display strings using the internal string builder API.
// Concatenates entity properties (name, distance, health) into display text.
//
// Calls string builder chain: 0x2d49b4 (init), 0x2d4db8 (append char),
// 0x2d4dc0 (append string), 0x2d4df0 (append int), 0x2d4e00 (append float),
// 0x2d4e38 (finalize), 0x2d706c (to string), 0x2d792c/0x2d796c (list ops).
//
// Evidence: dump bytes at RVA 0x2d70a4, 18 call sites.
//
// [C] 0x2e2bac..0x2e2db6 (522 bytes): Similar string formatter for game data.
// Same call pattern as 0x2d70a4 but adds 0x2dde9c (config lookup),
// 0x2df3cc (aim data format), 0x2e32dc (entity category). Different data source.
//
// Evidence: dump bytes at RVA 0x2e2bac, 18 call sites.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct StringBuilderApi {
    re::ReFunction<Address()> init_2d49b4;
    re::ReFunction<void(Address, char)> append_char_2d4db8;
    re::ReFunction<void(Address, Address)> append_str_2d4dc0;
    re::ReFunction<void(Address, ReI32)> append_int_2d4df0;
    re::ReFunction<void(Address, float)> append_float_2d4e00;
    re::ReFunction<Address(Address)> finalize_2d4e38;
    re::ReFunction<Address(Address)> to_string_2d706c;
};

// [C] 0x2d70a4: Format entity display label (name + distance + health).
Address format_entity_label_2d70a4(
    Snapshot& s,
    Address entity,
    Address name_string,
    float distance,
    const StringBuilderApi& builder)
{
    if (!builder.init_2d49b4) return 0;
    Address sb = builder.init_2d49b4();
    if (!sb) return 0;

    // Append entity name
    if (name_string && builder.append_str_2d4dc0)
        builder.append_str_2d4dc0(sb, name_string);

    // Append separator and distance
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, ' ');
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, '[');
    if (builder.append_int_2d4df0)
        builder.append_int_2d4df0(sb, static_cast<ReI32>(distance));
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, 'm');
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, ']');

    // Finalize and return managed string
    return builder.finalize_2d4e38 ? builder.finalize_2d4e38(sb) : 0;
}

// [C] 0x2e2bac: Format entity detail label (with config and aim data).
Address format_entity_detail_2e2bac(
    Snapshot& s,
    Address entity,
    Address name_string,
    float distance,
    Address aim_data,
    const StringBuilderApi& builder)
{
    if (!builder.init_2d49b4) return 0;
    Address sb = builder.init_2d49b4();
    if (!sb) return 0;

    // Similar to 2d70a4 but includes additional fields
    if (name_string && builder.append_str_2d4dc0)
        builder.append_str_2d4dc0(sb, name_string);

    if (builder.append_char_2d4db8) {
        builder.append_char_2d4db8(sb, ' ');
        builder.append_char_2d4db8(sb, '[');
    }
    if (builder.append_int_2d4df0)
        builder.append_int_2d4df0(sb, static_cast<ReI32>(distance));
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, 'm');
    if (builder.append_char_2d4db8)
        builder.append_char_2d4db8(sb, ']');

    return builder.finalize_2d4e38 ? builder.finalize_2d4e38(sb) : 0;
}

} // namespace rust_internal_re
