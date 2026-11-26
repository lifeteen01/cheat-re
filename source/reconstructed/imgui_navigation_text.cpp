#include "imgui_navigation_internal.hpp"
namespace rust_internal_re {
using namespace navigation_detail;
namespace {
ReI32 increment(ReI32 value) {
    return re::re_bit_cast<ReI32>(ReU32(value) + 1);
}
void copy(MenuControlsState &s, Address destination, Address source, ReI64 count,
          ReUSize maximum, Rva site) {
    if (count < 0 || ReU64(count) > maximum)
        { __builtin_trap(); }
    if (!count)
        return;
    if (!s.image || !s.image->contains(source, ReUSize(count)) ||
        !s.image->contains(destination, ReUSize(count)))
        { __builtin_trap(); }
    // [I] Owned copy models initialized bytes; arbitrary memcpy overlap is excluded.
    re::ReVector<ReByte> bytes;
    bytes.reserve(ReUSize(count));
    for (ReI64 i = 0; i < count; ++i)
        bytes.push_back(read<ReByte>(s, source + Address(i), site));
    for (ReI64 i = 0; i < count; ++i)
        write(s, destination + Address(i), bytes[ReUSize(i)], site);
}
void resize(MenuControlsState &s, const ImguiNavigationApi &api, Address vector,
            ReI32 requested) {
    const auto capacity = read<ReI32>(s, vector + 4, 0x37ace3);
    if (requested > capacity) {
        const auto grown = draw_core_growth_362efc(capacity, requested);
        if (grown > read<ReI32>(s, vector + 4, 0x37a6b1)) {
            if (grown < 0 || ReU64(grown) > api.maximum_text_bytes)
                __builtin_trap();
            const auto replacement =
                draw_core_allocate_395158(*s.image, ReUSize(grown), api.allocate);
            const auto old = read<Address>(s, vector + 8, 0x37a6be);
            if (old) {
                copy(s, replacement, old, read<ReI32>(s, vector, 0x37a6ca),
                     api.maximum_text_bytes, 0x37a6d0);
                draw_core_free_39517c(*s.image, read<Address>(s, vector + 8, 0x37a6d5), api.free);
            }
            write(s, vector + 8, replacement, 0x37a6de);
            write(s, vector + 4, grown, 0x37a6e2);
        }
    }
    write(s, vector, requested, 0x37acf7);
}
} // namespace
void imgui_navigation_deactivate_3c04d0(MenuControlsState &s, const ImguiNavigationApi &api,
                                        ReU32 id) {
    if (!id)
        return;
    const auto c = context(s);
    const auto active = read<ReU32>(s, c + 0x4c20, 0x3c04e0);
    if (active != id)
        return;
    write(s, c + 0x5aa8, active, 0x3c04ea);
    const auto wanted = increment(read<ReI32>(s, c + 0x4c28, 0x3c04f7));
    resize(s, api, c + 0x5ab0, wanted);
    const auto source = read<Address>(s, c + 0x4c48, 0x3c0504);
    const auto destination = read<Address>(s, c + 0x5ab8, 0x3c0512);
    const auto count = increment(read<ReI32>(s, c + 0x4c28, 0x3c0520));
    copy(s, destination, source ? source : 0x28d328, count, api.maximum_text_bytes, 0x3c052b);
}
} // namespace rust_internal_re
