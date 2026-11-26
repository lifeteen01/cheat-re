#include "imgui_window_details_internal.hpp"
#include "aim_iteration_analysis.hpp"
namespace rust_internal_re {
// ============================================================================
// Format string processing subsystem
// ============================================================================

// [C] 0x3ca49c: single-character output callback for format processor.
// Writes byte at output[position] if position < capacity, otherwise discards.
// Native signature: (cl=byte, rdx=buffer, r8=position, r9=capacity) → void.
void format_char_3ca49c(ReByte ch, Address buffer, ReU64 position, ReU64 capacity) {
    // In the binary this writes directly to the buffer via: mov [rdx+r8], cl
    // In the reconstruction this is a pure description; the native callback
    // is never invoked from managed replay code.
    (void)ch;
    (void)buffer;
    (void)position;
    (void)capacity;
}

// [C] 0x3c9ab0..0x3ca266: printf-style format string processor.
// Iterates format string character by character, dispatching on conversion
// specifiers to sub-formatters for integers, floats, strings, and pointers.
// 533 ASM lines; event projection captures the control flow structure.
StaticDispatchResult describe_format_process_3c9ab0() {
    StaticDispatchResult out{};
    out.events.push_back(
        {0x3c9ab0, "[C] entry: set up output callback (r11=rcx if rdx!=0, else static 0x2cd050), "
                   "begin scanning format string from r9"});
    out.events.push_back(
        {0x3c9af3, "[C] literal character: if byte != '%', emit via callback and advance"});
    out.events.push_back(
        {0x3c9b0d, "[C] format specifier: parse flag characters in loop: "
                   "' '→0x8, '#'→0x10, '+'→0x4, '-'→0x2, '0'→0x1"});
    out.events.push_back(
        {0x3c9b5b, "[C] width field: if digit, call 0x3c8f3c to parse decimal; "
                   "if '*', read width from va_args (negative→set '-' flag and negate)"});
    out.events.push_back(
        {0x3c9b97, "[C] precision field: if '.', parse precision digits or '*' from va_args; "
                   "set bit 0x400 to indicate explicit precision"});
    out.events.push_back(
        {0x3c9c54, "[C] length modifier: h→0x80, hh→0xc0, l→0x100, ll→0x300, "
                   "j/t/z→0x200 (size_t width flag)"});
    out.events.push_back(
        {0x3c9cc2, "[C] conversion specifier dispatch via nested subtraction chain: "
                   "handles %%/c/s/S/d/i/u/o/x/X/b/e/E/f/F/g/G/p and unknown (emit literal)"});
    out.events.push_back(
        {0x3c9d26, "[C] 'c' specifier: emit character with left/right space padding to width"});
    out.events.push_back(
        {0x3c9e1b, "[C] 's'/'S' specifier: read string pointer from va_args; "
                   "'S' calls 0x3cab84 for wide-string length (stride=2), "
                   "'s' calls 0x3c9a94 for byte-string length (stride=1); "
                   "truncate to precision, left/right pad to width"});
    out.events.push_back(
        {0x3c9f92, "[C] 'p' specifier: emit pointer value as hex via 0x3c98c4 "
                   "with base=16 and flags=0x21"});
    out.events.push_back(
        {0x3c9fdb, "[C] unsigned integer specifiers (u/o/x/X/b): determine base "
                   "(o→8, b→2, x/X→16, default→10); 'X' sets uppercase flag 0x20; "
                   "read value as u8/u16/u32/u64 per length modifier; "
                   "call 0x3c97e8 (u32) or 0x3c98c4 (u64) to format"});
    out.events.push_back(
        {0x3ca0e3, "[C] signed integer specifiers (d/i): read value as i8/i16/i32/i64 "
                   "per length modifier; compute absolute value and sign byte; "
                   "call 0x3c97e8 (i32) or 0x3c98c4 (i64) to format with sign prefix"});
    out.events.push_back(
        {0x3ca191, "[C] float specifiers (e/E/g/G): 'G'/'g' sets trim flag 0x800; "
                   "'E'/'G' sets uppercase flag 0x20; read double from va_args; "
                   "call 0x3c8f74 for scientific/general formatting"});
    out.events.push_back(
        {0x3ca1e4, "[C] float specifiers (f/F): 'F' sets uppercase flag 0x20; "
                   "read double from va_args; call 0x3c92d8 for decimal formatting"});
    out.events.push_back(
        {0x3ca232, "[C] loop continuation: advance format pointer, test for null terminator"});
    out.events.push_back(
        {0x3ca23a, "[C] epilogue: emit null terminator at min(count, capacity-1); "
                   "return total character count (may exceed capacity)"});
    return out;
}

// [C] 0x3ca500..0x3ca522: snprintf-style wrapper.
// Sets the output callback to format_char_3ca49c (LEA to 0x3ca49c)
// and delegates to the main format processor at 0x3c9ab0.
// Native signature: (rcx=fmt, rdx=buf, r8=size, r9=arg0, [rsp+0x20]=arg1).
StaticDispatchResult describe_format_snprintf_3ca500() {
    StaticDispatchResult out{};
    out.events.push_back(
        {0x3ca500, "[C] pass [rsp+0x20]=r9 (extra va_arg), set r9=r8 (size), "
                   "r8=rdx (buffer), rdx=rcx (format), rcx=&format_char_3ca49c; "
                   "tail-call format_process_3c9ab0"});
    return out;
}

// [C] 0x3ca828..0x3ca83c: argument reorder wrapper for snprintf.
// Reorders Windows x64 ABI arguments from (rdx=buf, r8=size, rcx=fmt, r9=arg0, [rsp+0x30]=arg1)
// to the format used by 3ca500 and tail-calls it.
StaticDispatchResult describe_format_reorder_3ca828() {
    StaticDispatchResult out{};
    out.events.push_back(
        {0x3ca828, "[C] reorder: rcx←rdx(buf), rdx←r8(size→fmt?), shuffle remaining args; "
                   "tail-jump to format_snprintf_3ca500"});
    return out;
}

// [C] 0x2d963c: return address of static format data/vtable at 0x3d6548.
// Single LEA instruction; the target is a read-only data region in the binary.
Address format_table_2d963c() {
    return Address(0x3d6548);
}

// [C] 0x2d96c0..0x2d970d: load format table, invoke format with arguments.
// Calls format_table_2d963c to get the vtable pointer, reads the first entry,
// then delegates to format_reorder_3ca828 with up to two trailing arguments.
// Returns the formatted character count, clamped to -1 on negative.
ReI32 describe_format_invoke_2d96c0() {
    // Native logic:
    //   table = format_table_2d963c();     // → 0x3d6548
    //   result = format_reorder_3ca828(*table, buf, size, arg0, arg1);
    //   return result < 0 ? -1 : result;
    return -1; // placeholder; event projection below describes the real flow
}

// [C] 0x3214dc..0x3214f1: format invocation wrapper with null fourth argument.
// Passes r9=0 to format_invoke_2d96c0, forwarding all other arguments.
StaticDispatchResult describe_format_invoke_null_3214dc() {
    StaticDispatchResult out{};
    out.events.push_back(
        {0x3214dc, "[C] set [rsp+0x20]=r9 (from caller), clear r9=0, "
                   "tail-call format_invoke_2d96c0"});
    return out;
}

} // namespace rust_internal_re
