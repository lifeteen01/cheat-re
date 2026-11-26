#include "imgui_text_input_internal.hpp"
namespace rust_internal_re {
FrameDependencyResult imgui_text_input_scroll_38cd28(MenuControlsState &s,
                                                     const ImguiTextInputApi &api, Address io,
                                                     float horizontal, float vertical) {
    using namespace text_input_detail;
    FrameDependencyResult result;
    {
        if (!read<ReU8>(s, io + 0x37b1, 0x38cd2e))
            return result;
        // [C] UCOMISS admits NaNs. Both signed zeroes compare equal and return.
        if (horizontal == 0.0f && vertical == 0.0f)
            return result;
        const auto c = read<Address>(s, io + 0xdf8, 0x38cd58);
        const auto identifier = read<ReU32>(s, c + 0x3ea4, 0x38cd69);
        write(s, c + 0x3ea4, identifier + 1u, 0x38cd87);
        const auto source = read<ReU32>(s, c + 0x3ea0, 0x38cd8d);
        // [C]38afa8 zeros28bytes (overlapping16byte stores); native event
        // type2/source1/ID/X/Y/mouse-source overwrite the first24bytes.
        const re::ReArray<ReU32, 7> event{2,
                                                 1,
                                                 identifier,
                                                 re::re_bit_cast<ReU32>(horizontal),
                                                 re::re_bit_cast<ReU32>(vertical),
                                                 source,
                                                 0};
        const auto descriptor = c + 0x3e80;
        const auto count = read<ReI32>(s, descriptor, 0x39eff0);
        const auto capacity = read<ReI32>(s, descriptor + 4, 0x39eff2);
        if (count < 0 || capacity < count || ReUSize(count) >= api.maximum_characters)
            __builtin_trap();
        if (count == capacity)
            (void)reserve_vector(s, api, descriptor, count + 1, 28);
        const auto live_count = read<ReI32>(s, descriptor, 0x39f008);
        const auto data = read<Address>(s, descriptor + 8, 0x39f012);
        const auto live_capacity = read<ReI32>(s, descriptor + 4, 0x39f012);
        if (live_count < 0 || live_count >= live_capacity ||
            ReUSize(live_count) >= api.maximum_characters)
            __builtin_trap();
        write(s, data + Address(live_count) * 28, event, 0x39f016);
        write(s, descriptor, live_count + 1, 0x39f023);
    }
    return result;
}
} // namespace rust_internal_re
