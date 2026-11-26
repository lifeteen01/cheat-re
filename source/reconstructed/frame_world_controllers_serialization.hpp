#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [I] Config value serialization pipeline. Each formatter resolves a key hash
// via 0x2cd7ec → 0x2d6354, formats the value as text, and stores via 0x2d9328.
// [C] String operations (concat, cleanup) are boundaries in the managed runtime.

struct ConfigSerializationApi {
    re::ReFunction<Address(Address)> hash_2cd7ec;       // [C] key hash lookup
    re::ReFunction<ReU32(Address)> index_2d6354;         // [C] hash → index
    re::ReFunction<Address(float)> format_float_2d9540;  // [C] float → string
    re::ReFunction<Address(ReI32)> format_int_2d9510;    // [C] int → string
    re::ReFunction<Address(Address, char)> concat_char_2cef98;   // [C] str + char separator
    re::ReFunction<Address(Address, Address)> concat_str_2cef40; // [C] str + str
    re::ReFunction<Address(Address, Address)> concat_lit_2cad38; // [C] str + literal separator
    re::ReFunction<void(Address, ReU32, Address)> store_2d9328;  // [C] store key=value
    re::ReFunction<void(Address)> cleanup_2cc4f4;        // [C] free temporary string
    re::ReFunction<Address(Address)> copy_2cc2cc;        // [C] copy string
    re::ReFunction<Address(Address)> to_managed_2cdccc;  // [C] to managed string (variant 1)
    re::ReFunction<Address(Address)> to_managed_2d84dc;  // [C] to managed string (variant 2)
    // [C] Collection iteration boundaries for list/bool-vector formatters.
    re::ReFunction<ReUSize(Address)> count_2d93f4;       // [C] collection count
    re::ReFunction<Address(Address, Address, ReI32)> element_2d4d2c; // [C] get element
    re::ReFunction<ReU8(Address)> element_byte_2d4d70;   // [C] element → byte value
    re::ReFunction<void(Address, Address)> append_str_2d55e4; // [C] append string to builder
    re::ReFunction<void(Address, char)> append_char_2d55ec; // [C] append char to builder
    re::ReFunction<Address(Address)> builder_init_2d4560;   // [C] init string builder, returns handle
    re::ReFunction<void(Address)> release_2d4a88;        // [C] release collection ref
    // [C] Iterator boundaries for map/list formatters.
    re::ReFunction<bool(Address)> empty_2d86a0;
    re::ReFunction<Address(Address, ReI32)> init_iter_2d4d20;
    re::ReFunction<Address(Address, Address)> begin_2d7d90;
    re::ReFunction<bool(Address, Address)> end_2d87b0;
    re::ReFunction<Address(Address)> deref_2d4de8;
    re::ReFunction<void(Address)> advance_2d4e20;
    re::ReFunction<bool(Address, Address)> compare_2cc534;
    re::ReFunction<void(Address, Address)> store_str_2d4c24;
    re::ReFunction<void(Address, Address)> store_str_2d4c68;
    // [C] "true"/"false" literal constructors.
    re::ReFunction<Address()> literal_true_2d4fe0;
    re::ReFunction<Address()> literal_false_2d51e4;
    // [C] "EMPTY" literal.
    re::ReFunction<Address()> literal_empty_2d51a8;
    // [C] Separator literal at RVA 0x28d5d4 and 0x28d5e0.
    re::ReFunction<Address()> separator_literal;
};

// [C] 0x2d368c: format integer config value.
void format_config_int_2d368c(Address store, Address hash_name, ReI32 value,
                              const ConfigSerializationApi&);
// [C] 0x2d36e8: format float config value.
void format_config_float_2d36e8(Address store, Address hash_name, float value,
                                const ConfigSerializationApi&);
// [C] 0x2d3744: format Color/Vec4 config value (4 floats, ';'-separated).
void format_config_color_2d3744(Address store, Address hash_name, const float* values,
                                const ConfigSerializationApi&);
// [C] 0x2d3890: format raw string config value.
void format_config_string_2d3890(Address store, Address hash_name, Address formatted,
                                 const ConfigSerializationApi&);
// [C] 0x2d38d0: format map/collection config value (key/value pairs, ';'-separated).
void format_config_map_2d38d0(Address store, Address hash_name, Address collection,
                              const ConfigSerializationApi&);
// [C] 0x2d39e0: format bool-vector config value (byte values, separator-delimited).
void format_config_boolvec_2d39e0(Address store, Address hash_name, Address collection,
                                  const ConfigSerializationApi&);
// [C] 0x2d3ab4: format Vec2 config value (2 floats, ';'-separated).
void format_config_vec2_2d3ab4(Address store, Address hash_name, Address value_ptr,
                               const ConfigSerializationApi&);
// [C] 0x2d3b84: format Vec3 config value (3 floats, ';'-separated).
void format_config_vec3_2d3b84(Address store, Address hash_name, const float* values,
                               const ConfigSerializationApi&);
// [C] 0x2d3c84: format keycode config value (2 ints + 2 bytes, separator-delimited).
void format_config_keycode_2d3c84(Address store, Address hash_name, const ReByte* values,
                                  const ConfigSerializationApi&);
// [C] 0x2d3dd4: format bool config value ("true"/"false").
void format_config_bool_2d3dd4(Address store, Address hash_name, bool value,
                               const ConfigSerializationApi&);
// [C] 0x2d9328: central store: find/insert key in map, store formatted value.
void config_store_value_2d9328(Address state, ReU32 index, Address formatted,
                               const ConfigSerializationApi&);
// [C] 0x2d90dc: serialize all keys in map as "key=value\n" into builder.
void config_serialize_all_2d90dc(Address state, const ConfigSerializationApi&);
// [C] 0x2d95cc: save config to file: serialize → byte array → write → size.
void config_save_2d95cc(Address state, const ConfigSerializationApi&);

void check_frame_world_serialization_reconstruction();
} // namespace rust_internal_re
