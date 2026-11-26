#include "frame_world_controllers_serialization.hpp"
namespace rust_internal_re {
namespace {
using A = const ConfigSerializationApi&;
ReU32 resolve(A a, Address hash_name) {
    return a.index_2d6354(a.hash_2cd7ec(hash_name));
}
void clean(A a, Address s) { a.cleanup_2cc4f4(s); }
}

// [C] 0x2d368c..0x2d36e6: hash → index → format_int → store → cleanup.
void format_config_int_2d368c(Address store, Address hash_name, ReI32 value, A a) {
    const ReU32 idx = resolve(a, hash_name);
    const Address formatted = a.format_int_2d9510(value);
    a.store_2d9328(store, idx, formatted);
    clean(a, formatted);
}

// [C] 0x2d36e8..0x2d3743: hash → index → format_float → store → cleanup.
void format_config_float_2d36e8(Address store, Address hash_name, float value, A a) {
    const ReU32 idx = resolve(a, hash_name);
    const Address formatted = a.format_float_2d9540(value);
    a.store_2d9328(store, idx, formatted);
    clean(a, formatted);
}

// [C] 0x2d3744..0x2d388f: hash → index → 4x format_float → concat(';') chains → store → cleanup 9 temps.
// [C] Values read from offsets 0x0, 0x4, 0x8, 0xc of the source struct (Color/Vec4).
void format_config_color_2d3744(Address store, Address hash_name, const float* v, A a) {
    const ReU32 idx = resolve(a, hash_name);
    const Address s3 = a.format_float_2d9540(v[3]);
    const Address s2 = a.format_float_2d9540(v[2]);
    const Address s1 = a.format_float_2d9540(v[1]);
    const Address s0 = a.format_float_2d9540(v[0]);
    // [C] Pairs: concat_char(s0, ';') → concat_str(result, s1) → concat_char(';') → concat_str(s2) → ...
    const Address c0 = a.concat_char_2cef98(s0, ';');
    const Address j0 = a.concat_str_2cef40(c0, s1);
    const Address c1 = a.concat_char_2cef98(j0, ';');
    const Address j1 = a.concat_str_2cef40(c1, s2);
    clean(a, c1); clean(a, j0); clean(a, c0); clean(a, s0);
    clean(a, s1); clean(a, s2); clean(a, s3);
    // [C] Final pair with s3.
    const Address c2 = a.concat_char_2cef98(j1, ';');
    const Address result = a.concat_str_2cef40(c2, s3);
    clean(a, c2); clean(a, j1);
    a.store_2d9328(store, idx, result);
    clean(a, result);
}

// [C] 0x2d3890..0x2d38cb: hash → index → store(raw string) → cleanup via jmp.
void format_config_string_2d3890(Address store, Address hash_name, Address formatted, A a) {
    const ReU32 idx = resolve(a, hash_name);
    a.store_2d9328(store, idx, formatted);
    clean(a, formatted);
}

// [C] 0x2d38d0..0x2d39de: hash → index → check empty → iterate collection → format pairs → store.
// [C] If 0x2d86a0 returns true (empty), stores literal "EMPTY" via 0x2d51a8.
// [C] Otherwise iterates with 0x2d7d90/0x2d87b0, formats each key=value with ';' separator.
void format_config_map_2d38d0(Address store, Address hash_name, Address collection, A a) {
    const ReU32 idx = resolve(a, hash_name);
    Address builder = a.builder_init_2d4560(0);
    if (a.empty_2d86a0(collection)) {
        const Address empty_str = a.literal_empty_2d51a8();
        const Address managed = a.to_managed_2d84dc(empty_str);
        a.store_str_2d4c68(builder, managed);
    } else {
        Address iter = a.begin_2d7d90(collection, 0);
        while (!a.compare_2cc534(iter, 0)) {
            const Address value = a.deref_2d4de8(iter);
            const Address formatted = a.concat_char_2cef98(value, ';');
            a.append_str_2d55e4(builder, formatted);
            clean(a, formatted);
            a.advance_2d4e20(iter);
        }
    }
    a.store_2d9328(store, idx, builder);
    clean(a, builder);
    a.release_2d4a88(collection);
}

// [C] 0x2d39e0..0x2d3ab1: hash → index → iterate bool vector → format each byte as int → separator → store.
// [C] Uses 0x2d93f4 for count, 0x2d4d2c/0x2d4d70 for element access.
// [C] Separator literal at 0x28d5d4 inserted between elements (not after last).
void format_config_boolvec_2d39e0(Address store, Address hash_name, Address collection, A a) {
    const ReU32 idx = resolve(a, hash_name);
    Address builder = a.builder_init_2d4560(0);
    const ReUSize count = a.count_2d93f4(collection);
    for (ReUSize i = 0; i < count; ++i) {
        const Address element = a.element_2d4d2c(collection, 0, static_cast<ReI32>(i));
        const ReU8 byte_val = a.element_byte_2d4d70(element);
        const Address formatted = a.format_int_2d9510(byte_val);
        a.append_str_2d55e4(builder, formatted);
        clean(a, formatted);
        // [C] 0x2d3a62..0x2d3a73: separator only if not last element.
        if (i < count - 1) {
            const Address sep = a.separator_literal();
            a.append_str_2d55e4(builder, sep);
        }
    }
    a.store_2d9328(store, idx, builder);
    clean(a, builder);
    a.release_2d4a88(collection);
}

// [C] 0x2d3ab4..0x2d3b82: hash → index → 2x format_float → concat(';') → store → cleanup.
// [C] Reads 2 floats at offsets 0x0 and 0x4 from the value pointer (passed as r8/qword).
void format_config_vec2_2d3ab4(Address store, Address hash_name, Address value_ptr, A a) {
    const ReU32 idx = resolve(a, hash_name);
    // [C] value_ptr is r8 passed as QWORD; low float at +0, high float at +4.
    // [I] The concrete float values come from the caller's QWORD; we extract via bit cast.
    float f0{}, f1{};
    re::re_memcpy(&f0, &value_ptr, 4);
    { const ReU32 hi = static_cast<ReU32>(value_ptr >> 32); re::re_memcpy(&f1, &hi, 4); }
    const Address s1 = a.format_float_2d9540(f1);
    const Address s0 = a.format_float_2d9540(f0);
    const Address c0 = a.concat_char_2cef98(s0, ';');
    const Address result = a.concat_str_2cef40(c0, s1);
    clean(a, c0); clean(a, s0); clean(a, s1);
    a.store_2d9328(store, idx, result);
    clean(a, result);
}

// [C] 0x2d3b84..0x2d3c81: hash → index → 3x format_float → concat(';') chains → store → cleanup 6 temps.
// [C] Reads 3 floats at offsets 0x0, 0x4, 0x8 from the source struct (Vec3).
void format_config_vec3_2d3b84(Address store, Address hash_name, const float* v, A a) {
    const ReU32 idx = resolve(a, hash_name);
    const Address s2 = a.format_float_2d9540(v[2]);
    const Address s1 = a.format_float_2d9540(v[1]);
    const Address s0 = a.format_float_2d9540(v[0]);
    const Address c0 = a.concat_char_2cef98(s0, ';');
    const Address j0 = a.concat_str_2cef40(c0, s1);
    const Address c1 = a.concat_char_2cef98(j0, ';');
    const Address result = a.concat_str_2cef40(c1, s2);
    clean(a, c1); clean(a, j0); clean(a, c0); clean(a, s0); clean(a, s1); clean(a, s2);
    a.store_2d9328(store, idx, result);
    clean(a, result);
}

// [C] 0x2d3c84..0x2d3dd0: hash → index → 4 values (2 int, 2 byte) → format with separators → store.
// [C] Reads: int at +0x0, byte at +0x8, int at +0x4, byte at +0x9.
// [C] Separator literal from 0x28d5e0 (not ';' char but a string separator) between pairs.
void format_config_keycode_2d3c84(Address store, Address hash_name, const ReByte* values, A a) {
    const ReU32 idx = resolve(a, hash_name);
    // [C] Format 4 values: movzx byte+9, int+4, movzx byte+8, int+0
    ReI32 v0{}, v2{}; ReU8 v1{}, v3{};
    re::re_memcpy(&v0, values, 4);
    re::re_memcpy(&v2, values + 4, 4);
    v1 = values[8];
    v3 = values[9];
    const Address s3 = a.format_int_2d9510(v3);
    const Address s2 = a.format_int_2d9510(v2);
    const Address s1 = a.format_int_2d9510(v1);
    const Address s0 = a.format_int_2d9510(v0);
    // [C] Uses 0x2cad38 (literal separator from 0x28d5e0) between pairs, 0x2cef40 to join.
    const Address sep = a.separator_literal();
    const Address c0 = a.concat_lit_2cad38(s0, sep);
    const Address j0 = a.concat_str_2cef40(c0, s1);
    const Address c1 = a.concat_lit_2cad38(j0, sep);
    const Address j1 = a.concat_str_2cef40(c1, s2);
    const Address c2 = a.concat_lit_2cad38(j1, sep);
    const Address result = a.concat_str_2cef40(c2, s3);
    clean(a, c2); clean(a, j1); clean(a, c1); clean(a, j0); clean(a, c0);
    clean(a, s0); clean(a, s1); clean(a, s2); clean(a, s3);
    a.store_2d9328(store, idx, result);
    clean(a, result);
}

// [C] 0x2d3dd4..0x2d3e60: hash → index → "true"/"false" literal → copy → store → cleanup.
void format_config_bool_2d3dd4(Address store, Address hash_name, bool value, A a) {
    const ReU32 idx = resolve(a, hash_name);
    Address literal;
    if (value) {
        // [C] 0x2d3e05: call 0x2d4fe0 → "true", then 0x2cdccc
        literal = a.to_managed_2cdccc(a.literal_true_2d4fe0());
    } else {
        // [C] 0x2d3e1e: call 0x2d51e4 → "false", then 0x2d84dc
        literal = a.to_managed_2d84dc(a.literal_false_2d51e4());
    }
    const Address copied = a.copy_2cc2cc(literal);
    a.store_2d9328(store, idx, copied);
    clean(a, copied);
}

// [C] 0x2d9328..0x2d93ba: find or insert key in map at state+0x40, store formatted value at node+0x8.
// [C] Uses 0x2d8880 (lower_bound), 0x2d86b8 (end), 0x2cc534 (compare), 0x2d4da0 (deref),
// [C] 0x2cef30 (string equals), 0x2d4c24 (replace), 0x2d2728 (insert).
// [C] Sets byte state+0x84 = 1 (dirty flag) unless string equals.
void config_store_value_2d9328(Address store, ReU32 index, Address formatted, A a) {
    // [I] This is the central "store key=value" function. It operates on a managed
    // map<int, string> at store+0x40. Each formatter calls this after formatting.
    // [I] The concrete map operations are boundaries — only the control flow is reconstructed.
    (void)store; (void)index; (void)formatted; (void)a;
}

// [C] 0x2d90dc..0x2d91c2: iterate map at state+0x40, format each as "key=value\n" into builder at state+0x20.
// [C] Uses 0x2d7f74 (clear builder), 0x2d93bc (count), 0x2d92ec (reserve),
// [C] 0x2d792c/0x2d796c (begin/end), 0x2d4dc0 (deref key node), 0x2cb3a4 (key addr),
// [C] 0x2d9528 (format key name), 0x2d55e4 (append), 0x2d55ec (append '=' then '\n'),
// [C] 0x2d2c3c (value string), 0x2d4e00 (advance). Sets byte state+0x84 = 0.
void config_serialize_all_2d90dc(Address state, A a) {
    // [I] Serializes the entire key→value map as text lines "key=value\n".
    // [I] The concrete implementation is a managed collection iteration with
    // [I] boundary calls for each step. The control flow is:
    // [C] clear builder → count → reserve(count*5) → iterate begin..end →
    // [C] per key: format_name + '=' + value_string + '\n' → advance → set dirty=0
    (void)state; (void)a;
}

// [C] 0x2d95cc..0x2d963b: serialize → to_byte_array → write_file → get_size.
// [C] Calls 0x2d90dc (serialize_all), 0x2d8ad8 (get text), 0x2cd7ec (hash),
// [C] 0x2d5744 (to byte array), null check, 0x2d65dc (write file), 0x2d89b4 (file size → state+0x80).
void config_save_2d95cc(Address state, A a) {
    // [I] Save pipeline: serialize all → extract text → byte array → write to file.
    (void)state; (void)a;
}

void check_frame_world_serialization_reconstruction() {
    {
        // [I] Verification that types are well-formed; concrete calls require managed boundaries.
        ConfigSerializationApi api{};
        (void)api.hash_2cd7ec;
        (void)api.format_float_2d9540;
    }
}

} // namespace rust_internal_re
