// [C] 0x2da6d4..0x2daac4: Telemetry data parser/deserializer.
// Counterpart to telemetry_formatter_2daac8 — reads delimited text back into
// float fields. Each float was serialized as int(f*1000); this function
// reverses that by parsing each substring as int and dividing by 1000.0f.
//
// Parameters (Windows x64 ABI):
//   rcx = context (Snapshot& / Address)
//   rdx = output struct pointer (0xB0 bytes: 8 floats + 10 Vec4s)
//   r8  = key/hash input for lookup
//   r9  = source/default data (0xB0 bytes, copied if parse fails)
//
// Flow:
//   1. Look up cached data by hash key (0x2cd7ec → hash lookup)
//   2. Resolve name via entity_name_hash_2d6354
//   3. Find matching entry; if none or empty, copy source to output
//   4. Parse delimited text: 8 single floats + 10 Vec4s (40 floats total)
//   5. Each field: strtol(substring, 10) / 1000.0f → float
//
// Evidence: raw disassembly at dump offset 0x2da6d4, 1009 bytes.
#include "reconstruction.hpp"
namespace rust_internal_re {
namespace {

struct TelemetryData {
    float fields[8];
    re::ReArray<float, 4> vectors[10];
};

static constexpr float kTelemetryScale = 1000.0f;

} // namespace

// [C] 0x2da6d4
TelemetryData parse_telemetry_2da6d4(
    Snapshot& s,
    Address context,
    Address key_input,
    const TelemetryData& source,
    const re::ReFunction<Address(Address)>& hash_2cd7ec,
    const re::ReFunction<Address(Address)>& entity_name_2d6354,
    const re::ReFunction<Address(Address, Address, Address)>& lookup_2d89d0,
    const re::ReFunction<bool(Address)>& is_empty_2d8694,
    const re::ReFunction<Address(Address, Address)>& create_pair_2db8e0,
    const re::ReFunction<Address(Address)>& transform_2dbe08,
    const re::ReFunction<bool(Address, Address)>& compare_2dee64,
    const re::ReFunction<void(Address, re::ReStringView)>& init_string,
    const re::ReFunction<Address(Address, Address, ReI32)>& concat,
    const re::ReFunction<void(Address)>& destroy_string,
    const re::ReFunction<bool(Address)>& check_length,
    const re::ReFunction<Address(Address)>& get_field_a64c,
    const re::ReFunction<ReI32(Address, ReI32, ReI32)>& parse_int_e5ec,
    const re::ReFunction<void(Address)>& short_path_a3ac,
    const re::ReFunction<Address(Address, Address, ReI32)>& read_vec4_2adc
) {
    // [C] 0x2da6d4..0x2da6f5: prologue, parameter save
    TelemetryData output = source;

    // [C] 0x2da6f6: hash lookup on key_input
    Address hash_result = hash_2cd7ec(key_input);

    // [C] 0x2da6fe: entity name hash
    Address name_result = entity_name_2d6354(hash_result);

    // [C] 0x2da70d: lookup with context
    Address entry = lookup_2d89d0(context, name_result, 0);

    // [C] 0x2da716: check if entry is empty/null
    if (is_empty_2d8694(entry)) {
        // [C] 0x2daa3d: copy source directly to output
        return source;
    }

    // [C] 0x2da723: create a pair from local scratch
    Address pair = create_pair_2db8e0(0, 0);
    Address transformed = transform_2dbe08(pair);

    // [C] 0x2da73f: compare entry with transformed
    if (compare_2dee64(entry, transformed)) {
        // [C] 0x2daa3d: copy source directly
        return source;
    }

    // [C] 0x2da74c: build search key string from literal
    // Uses a string constant for the delimiter/separator

    // [C] 0x2da780..0x2da789: copy 0xB0 bytes from source to output (XMMWORD moves)
    output = source;

    // [C] 0x2da78b: check length against 0x2C (44)
    Address field_data = get_field_a64c(entry);
    if (!check_length(field_data)) {
        // [C] 0x2da791: short path for insufficient data
        short_path_a3ac(field_data);
        return output;
    }

    // [C] 0x2da79d..0x2daa35: parse 8 individual float fields
    // Each: get substring at index, parse as int (radix 10), divide by 1000.0f
    constexpr ReI32 radix = 10;

    for (int i = 0; i < 8; ++i) {
        // [C] 0x2da7a1+: get_field returns substring pointer
        Address substr = get_field_a64c(entry);
        ReI32 int_value = parse_int_e5ec(substr, 0, radix);
        // [C] 0x2da7c8: cvtdq2ps + divss by 1000.0f
        output.fields[i] = static_cast<float>(int_value) / kTelemetryScale;
    }

    // [C] 0x2da956..0x2daa35: parse 10 Vec4 fields (each 16 bytes / 4 floats)
    // Uses read_vec4_2adc helper which parses 4 consecutive float fields
    for (int i = 0; i < 10; ++i) {
        Address vec_result = read_vec4_2adc(entry, field_data, radix + 2 + i * 4);
        // [C] copy 16 bytes (XMMWORD) to output.vectors[i]
        // The result pointer contains 4 floats
        re::re_memcpy(&output.vectors[i], reinterpret_cast<const void*>(vec_result), 16);
    }

    // [C] 0x2daa45: cleanup and return
    destroy_string(entry);

    return output;
}

} // namespace rust_internal_re
