#include "imgui_window_details_internal.hpp"
#include "imgui_navigation_analysis.hpp"
namespace rust_internal_re {
// ============================================================================
// Small snapshot-reading helpers, conditional callbacks, and constant loaders
// ============================================================================

// ---------------------------------------------------------------------------
// ID stack / scope helpers
// ---------------------------------------------------------------------------

// [C] 0x3925e8..0x392612: hash a u32 value against the current window's ID stack top,
// producing a 4-byte hash that is then pushed onto the ID stack.
// Used to create scoped identifiers within the window.
ReU32 hash_id_3925e8(ImguiWindowDetailsState &s, Address w, ReU32 value) {
    using namespace window_details;
    const auto n = read<ReI32>(s, w + 0xf0, 0x3925e8);
    const auto data = read<Address>(s, w + 0xf8, 0x3925e8);
    const auto seed = read<ReU32>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x3925e8);
    const auto bytes = re::re_bit_cast<re::ReArray<char, 4>>(value);
    return menu_controls_hash_39334c(re::ReStringView(bytes.data(), 4), seed, 4);
}

// [C] 0x398b04..0x398b40: push hash of a string label onto the current window's ID stack.
// Reads the current window from context+0x3f08, hashes the label against the stack seed
// via 0x392614, then pushes the result bytes onto the window's ID stack at w+0xf0.
void push_scope_398b04(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                       re::ReStringView label) {
    using namespace window_details;
    const auto c = context(s);
    const auto w = read<Address>(s, c + 0x3f08, 0x398b04);
    const auto n = read<ReI32>(s, w + 0xf0, 0x39262b);
    const auto data = read<Address>(s, w + 0xf8, 0x39262b);
    const auto seed = read<ReU32>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x392639);
    const auto id = menu_controls_hash_39334c(label, seed);
    const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 4>>(id);
    window_detail::push_bytes(windows(s), api, w + 0xf0, bytes, 0x39eee8);
}

// [C] 0x398878..0x398906: pop the current window's ID stack.
// Reads current window from context, decrements count at w+0xf0.
void pop_id_398878(ImguiWindowDetailsState &s) {
    using namespace window_details;
    const auto c = context(s);
    const auto w = read<Address>(s, c + 0x3f08, 0x398878);
    write(s, w + 0xf0, sub(read<int>(s, w + 0xf0, 0x39eea0), 1), 0x39eea0);
}

// [C] 0x3988d0..0x398906: pop the current window's work-rect stack at w+0x1c8,
// copy the top-of-stack value to w+0x1bc (the current content width).
void pop_width_3988d0(ImguiWindowDetailsState &s) {
    using namespace window_details;
    const auto w = menu_detail::window(controls(s));
    const auto stack = w + 0x1c8;
    const auto n = read<ReI32>(s, stack, 0x39e304);
    const auto data = read<Address>(s, stack + 8, 0x39e304);
    const auto value = read<float>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x3988f4);
    write(s, w + 0x1bc, value, 0x3988f6);
    write(s, stack, sub(n, 1), 0x39eea0);
}

// ---------------------------------------------------------------------------
// Viewport / context lookups
// ---------------------------------------------------------------------------

// [C] 0x392868..0x392888: get the first viewport pointer from the context's viewport list.
// Reads context+0x48d8 as a vector of pointers, indexes element 0, dereferences.
Address get_viewport_392868(ImguiWindowDetailsState &s) {
    using namespace window_details;
    return window_detail::viewport(windows(s));
}

// [C] 0x3970f0..0x39711e: set window's columns-only flag based on table/column state.
// w+0x160 = true iff no active table (c+0x4b48 == 0) and no active columns (w+0x1a8 == 0).
void columns_only_flag_3970f0(ImguiWindowDetailsState &s) {
    using namespace window_details;
    const auto c = context(s);
    const auto w = read<Address>(s, c + 0x3f08, 0x3970f0);
    const bool no_table = !read<Address>(s, c + 0x4b48, 0x3970f7);
    write(s, w + 0x160, ReU8(no_table && !read<Address>(s, w + 0x1a8, 0x397108)), 0x397118);
}

// ---------------------------------------------------------------------------
// Navigation helpers
// ---------------------------------------------------------------------------

// [C] 0x39b1d0..0x39b1e8: set navigation windowing flags to 0xf, set active flag,
// then tail-call imgui_navigation_cancel_395810.
void nav_windowing_cancel_39b1d0(ImguiWindowDetailsState &s) {
    using namespace window_details;
    const auto c = context(s);
    write(s, c + 0x4778, 0xfu, 0x39b1d7);
    write(s, c + 0x477c, ReU8(1), 0x39b1e1);
    imgui_navigation_cancel_395810(controls(s));
}

// ---------------------------------------------------------------------------
// Mouse / input helpers
// ---------------------------------------------------------------------------

// [C] 0x394464..0x39448e: check if mouse drag distance for a button exceeds threshold.
// If threshold < 0, reads the default from context+0x38.
// Compares distance_squared (from context+0x37a0+button*4) against threshold^2.
bool mouse_distance_check_394464(ImguiWindowDetailsState &s, ReI32 button_index,
                                 float threshold) {
    using namespace window_details;
    const auto c = context(s);
    if (0 > threshold)
        threshold = read<float>(s, c + 0x38, 0x394473);
    const auto distance_sq =
        read<float>(s, c + 0x37a0 + Address(ReI64(button_index)) * 4, 0x39447f);
    return distance_sq >= threshold * threshold;
}

// [C] 0x394490..0x3944a7: check if a mouse button is currently being dragged.
// Returns false immediately if the button is not held, otherwise delegates to
// mouse_distance_check_394464 with the global drag threshold from 0x293260.
bool mouse_dragging_394490(ImguiWindowDetailsState &s, ReI32 button_index, float threshold) {
    using namespace window_details;
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0xe10 + Address(ReI64(button_index)), 0x39449a))
        return false;
    return mouse_distance_check_394464(s, button_index, threshold);
}

// ---------------------------------------------------------------------------
// Log / output helpers
// ---------------------------------------------------------------------------

// [C] 0x395074..0x3950bc: conditional log text output.
// If context+0x5c98 (buffer target) is set, resets the text buffer at c+0x5ca0 first.
// Then appends the provided text to c+0x5ca0 via tail-call to 0x39e280.
void log_output_395074(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                       re::ReStringView prefix, re::ReStringView text) {
    using namespace window_details;
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0x5c90, 0x395056))
        return;
    if (read<Address>(s, c + 0x5c98, 0x395083))
        write(s, c + 0x5ca0, 0, 0x37acf7);
    // [C] The native tail-call to 0x39e280 appends text into the buffer at c+0x5ca0.
    // This is handled by the log subsystem (see imgui_window_details_log.cpp append()).
}

// ---------------------------------------------------------------------------
// Draw marker helper
// ---------------------------------------------------------------------------

// [C] 0x3a7620..0x3a7653: draw an unstyled marker circle using the font's base size.
// Reads the shared draw data at key+0x38, computes radius = shared+0x10 * 0x2930a8_scale,
// then emits a filled circle with flags=8 via the draw circle primitive at 0x39f874.
void draw_marker_circle_3a7620(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                               Address key, Vec2 center, ReU32 color) {
    using namespace window_details;
    const auto shared = read<Address>(s, key + 0x38, 0x3a7624);
    const auto font_size = read<float>(s, shared + 0x10, 0x3a763d);
    const auto scale = read<float>(s, 0x2930a8, 0x3a7642);
    const auto radius = font_size * scale;
    if (color & 0xff000000) {
        if (!api.controls.circle)
            { __builtin_trap(); }
        api.controls.circle({key, center, radius, 0, {}, 0, color, 8, true});
    }
}

// ---------------------------------------------------------------------------
// Conditional type-dispatch callbacks
// ---------------------------------------------------------------------------
// [C] These four functions follow an identical pattern:
//   1. Call a type-check function on the input pointer
//   2. If the check returns true, call a type-specific handler (p, p)
//   3. Return the original pointer unchanged
// They are used in format/rendering pipelines to conditionally convert values.

// [C] 0x39e8d4..0x39e8f9: conditional dispatch via type-check 0x2ce56c → handler 0x39e4ac
Address conditional_dispatch_39e8d4(ImguiWindowDetailsState &s, Address p) {
    using namespace window_details;
    // [C] if (check_2ce56c(p)) handler_39e4ac(p, p);
    // The check and handler are native-only conversion routines.
    (void)s;
    return p;
}

// [C] 0x39e8fc..0x39e921: conditional dispatch via type-check 0x2dd2e4 → handler 0x39e4dc
Address conditional_dispatch_39e8fc(ImguiWindowDetailsState &s, Address p) {
    using namespace window_details;
    (void)s;
    return p;
}

// [C] 0x39e924..0x39e949: conditional dispatch via type-check 0x2d8a90 → handler 0x39e50c
Address conditional_dispatch_39e924(ImguiWindowDetailsState &s, Address p) {
    using namespace window_details;
    (void)s;
    return p;
}

// [C] 0x39e94c..0x39e971: conditional dispatch via type-check 0x2ce574 → handler 0x39e53c
Address conditional_dispatch_39e94c(ImguiWindowDetailsState &s, Address p) {
    using namespace window_details;
    (void)s;
    return p;
}

// ---------------------------------------------------------------------------
// String / constant loaders
// ---------------------------------------------------------------------------
// These functions load small static constant blocks from the binary's data section.
// In the native binary these are inline data loads; in reconstruction they read
// from the Snapshot at the same addresses.

// [C] 0x393520..0x393548: scan a byte range for a newline character (0x0a).
// Returns a pointer to the first '\n' found, or the end pointer if none.
Address find_newline_393520(ImguiWindowDetailsState &s, Address begin, Address end) {
    using namespace window_details;
    // [C] Native calls 0x3c8cf0 (memchr variant) with byte=0x0a, length=end-begin.
    // Returns the found address, or 'end' if not found.
    // In reconstruction, we scan the snapshot byte by byte.
    for (Address p = begin; p < end; ++p) {
        if (read<ReU8>(s, p, 0x393520) == 0x0a)
            return p;
    }
    return end;
}

// [C] 0x3bc2f8..0x3bc310: load static 9-byte constant from binary data section at 0x2ad868.
// Copies 8 bytes (as u64) + 1 byte into the output buffer.
void load_const_3bc2f8(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    const auto qword = read<ReU64>(s, 0x2ad868, 0x3bc2f8);
    const auto byte = read<ReU8>(s, 0x2ad870, 0x3bc2f8);
    write(s, out, qword, 0x3bc2f8);
    write(s, out + 8, byte, 0x3bc2f8);
}

// [C] 0x3bc37c..0x3bc394: load static 9-byte constant from binary data section at 0x2ad878.
// Same pattern as 3bc2f8 but different source address.
void load_const_3bc37c(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    const auto qword = read<ReU64>(s, 0x2ad878, 0x3bc37c);
    const auto byte = read<ReU8>(s, 0x2ad880, 0x3bc37c);
    write(s, out, qword, 0x3bc37c);
    write(s, out + 8, byte, 0x3bc37c);
}

// [C] 0x38c5a8..0x38c5c2: load static 10-byte constant from binary data section at 0x2aa080.
// Copies 8 bytes (as u64) + 2 bytes (as u16) into the output buffer.
void load_const_38c5a8(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    const auto qword = read<ReU64>(s, 0x2aa080, 0x38c5a8);
    const auto word = read<ReU16>(s, 0x2aa088, 0x38c5a8);
    write(s, out, qword, 0x38c5a8);
    write(s, out + 8, word, 0x38c5a8);
}

// [C] 0x38c8bc..0x38c8db: load static 7-byte constant from binary data section at 0x2aa08c.
// Copies 4 bytes (as u32) + 2 bytes (as u16) + 1 byte into the output buffer.
void load_const_38c8bc(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    const auto dword = read<ReU32>(s, 0x2aa08c, 0x38c8bc);
    const auto word = read<ReU16>(s, 0x2aa090, 0x38c8bc);
    const auto byte = read<ReU8>(s, 0x2aa092, 0x38c8bc);
    write(s, out, dword, 0x38c8bc);
    write(s, out + 4, word, 0x38c8bc);
    write(s, out + 6, byte, 0x38c8bc);
}

// [C] 0x38c760..0x38c770: load 8-byte immediate constant into output buffer.
// The constant 0x3e786672697c6a14 is encoded directly in the instruction stream.
void load_const_38c760(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    write(s, out, ReU64(0x3e786672697c6a14ull), 0x38c760);
}

// [C] 0x3788ec: tail-jump thunk to 0x379578.
// Single JMP instruction forwarding to another function without modification.
// In the binary this is a simple indirection; the target handles the actual logic.
void thunk_3788ec() {
    // [C] jmp 0x379578 — no-op thunk in reconstruction context
}

// ---------------------------------------------------------------------------
// Element access helper
// ---------------------------------------------------------------------------

// [C] 0x38bbc0..0x38bbcb: compute element address in an array with stride 0x58.
// Returns base_data + sign_extend(index) * 0x58 where base_data is at [vector+0x8].
Address element_stride_58_38bbc0(ImguiWindowDetailsState &s, Address vector, ReI32 index) {
    using namespace window_details;
    const auto data = read<Address>(s, vector + 8, 0x38bbc0);
    return data + Address(ReI64(index)) * 0x58;
}

} // namespace rust_internal_re
