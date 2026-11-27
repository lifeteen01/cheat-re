// RVA 0x2daac8 — Telemetry/debug data formatter (1699 bytes)
// Serializes a float array (player state: position, rotation, velocity etc.) into a
// delimited text string for logging/diagnostics. Each float is multiplied by 1000
// and truncated to int for the first 8 values; the remaining 3 are formatted as floats.
// The result is passed to a text output sink.
// Decompiled from 7ffa2a960000.cheat.dll via Ghidra; semantically reconstructed.
#include "internal_analysis.hpp"
namespace rust_internal_re {
namespace {

struct TelemetryFormatCalls {
    re::ReFunction<re::ReString(Address)> get_category;        // thunk 0x1d08e4 -> category label
    re::ReFunction<ReU32(re::ReString)> format_mode;           // 0x1f9754 -> numeric format selector
    re::ReFunction<re::ReString(float)> format_float;          // 0x1e0c30 -> float-to-string
    re::ReFunction<re::ReString(int)> format_int;              // 0x1ec910 -> int-to-string
    re::ReFunction<re::ReString(re::ReString, re::ReStringView)> append_separator; // 0x1ee138 -> concat with separator
    re::ReFunction<re::ReString(re::ReString, re::ReString)> concat;              // 0x1f2340 -> string concat
    re::ReFunction<void(Address, ReU32, re::ReString)> output; // 0x1ec728 -> final text output sink
    re::ReStringView separator;  // DAT at 0x3e09e0 — typically "," or "|"
};

// [C] 0x2daac8: Formats 11 float fields from param_3 into a delimited string.
// [C] Fields [0..7] are scaled by 1000.0 and truncated to int.
// [C] Fields [8..10] at param_3 offsets +0x20, +0x24, +0x28 are formatted as raw floats.
// [I] The function is called from the Client.LateUpdate body to log player telemetry.
void format_telemetry_2daac8(Address context, Address category_source,
                              const float *data, const TelemetryFormatCalls &calls) {
    auto category_label = calls.get_category(category_source);
    auto format_mode = calls.format_mode(re::re_move(category_label));

    auto int_field = [&](int index) -> re::ReString {
        return calls.format_int(static_cast<int>(data[index] * 1000.0f));
    };
    auto float_field = [&](int index) -> re::ReString {
        return calls.format_float(data[index]);
    };

    // Build: int[0] | sep | int[1] | sep | ... | int[7] | sep | float[8] | sep | float[9] | sep | float[10]
    auto result = int_field(0);
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(1));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(2));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(3));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(4));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(5));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(6));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), int_field(7));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), float_field(8));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), float_field(9));
    result = calls.append_separator(re::re_move(result), calls.separator);
    result = calls.concat(re::re_move(result), float_field(10));

    calls.output(context, format_mode, re::re_move(result));
}

} // anon
} // namespace rust_internal_re
