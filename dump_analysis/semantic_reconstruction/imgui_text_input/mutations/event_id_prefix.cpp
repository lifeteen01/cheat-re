#include "imgui_text_input_internal.hpp"
namespace rust_internal_re {
FrameDependencyResult imgui_text_input_scroll_38cd28(MenuControlsState &s,
                                                     const ImguiTextInputApi &api, Address io,
                                                     float horizontal, float vertical) {
    using namespace text_input_detail;
    FrameDependencyResult result;
    try {
        if (!read<std::uint8_t>(s, io + 0x37b1, 0x38cd2e))
            return result;
        // [C] UCOMISS admits NaNs. Both signed zeroes compare equal and return.
        if (horizontal == 0.0f && vertical == 0.0f)
            return result;
        const auto c = read<Address>(s, io + 0xdf8, 0x38cd58);
        const auto identifier = read<std::uint32_t>(s, c + 0x3ea4, 0x38cd69);
        write(s, c + 0x3ea4, identifier, 0x38cd87);
        const auto source = read<std::uint32_t>(s, c + 0x3ea0, 0x38cd8d);
        // [C]38afa8 zeros28bytes (overlapping16byte stores); native event
        // type2/source1/ID/X/Y/mouse-source overwrite the first24bytes.
        const std::array<std::uint32_t, 7> event{2,
                                                 1,
                                                 identifier,
                                                 std::bit_cast<std::uint32_t>(horizontal),
                                                 std::bit_cast<std::uint32_t>(vertical),
                                                 source,
                                                 0};
        const auto descriptor = c + 0x3e80;
        const auto count = read<std::int32_t>(s, descriptor, 0x39eff0);
        const auto capacity = read<std::int32_t>(s, descriptor + 4, 0x39eff2);
        if (count < 0 || capacity < count || std::size_t(count) >= api.maximum_characters)
            throw Stop{UnityStatus::analysis_limit, 0x39eff0};
        if (count == capacity)
            (void)reserve_vector(s, api, descriptor, count + 1, 28);
        const auto live_count = read<std::int32_t>(s, descriptor, 0x39f008);
        const auto data = read<Address>(s, descriptor + 8, 0x39f012);
        const auto live_capacity = read<std::int32_t>(s, descriptor + 4, 0x39f012);
        if (live_count < 0 || live_count >= live_capacity ||
            std::size_t(live_count) >= api.maximum_characters)
            throw Stop{UnityStatus::analysis_limit, 0x39f008};
        write(s, data + Address(live_count) * 28, event, 0x39f016);
        write(s, descriptor, live_count + 1, 0x39f023);
    } catch (const Stop &e) {
        result = {e.status, e.site};
    } catch (const RendererMissing &e) {
        frame_record_failure(result, e);
    } catch (const SnapshotBindingFailure &e) {
        frame_record_failure(result, e);
    } catch (const MetadataWrapperFailure &e) {
        frame_record_failure(result, e);
    }
    return result;
}
} // namespace rust_internal_re
