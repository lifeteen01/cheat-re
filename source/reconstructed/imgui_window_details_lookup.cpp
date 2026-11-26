#include "imgui_window_details_internal.hpp"
namespace rust_internal_re {
// [C]3bd06c..3bd113: both previously specialized recompute modes.
void imgui_window_details_menu_columns_3bd06c(ImguiWindowDetailsState &s, Address p,
                                              bool update_offsets) {
    using namespace window_details;
    ReU16 total = 0;
    bool any = false;
    for (unsigned i = 0; i < 4; ++i) {
        const auto value =
            read<ReU16>(s, p + 0x12 + i * 2, update_offsets ? 0x3bd0b1 : 0x3bd07f);
        if (any && value)
            total = ReU16(
                total + read<ReU16>(s, p + 8, update_offsets ? 0x3bd0c1 : 0x3bd08f));
        any = any || value != 0;
        if (update_offsets && i)
            write(s, p + 0xa + i * 2, total, 0x3bd0d5);
        total = ReU16(total + value);
    }
    write(s, p + 4, ReU32(total), 0x3bd10e);
}
// [C]391dd0..391df6 plus391d84/39ee58: signed cached index or ordered chunk scan.
Address imgui_window_details_settings_391dd0(ImguiWindowDetailsState &s, Address w) {
    using namespace window_details;
    const auto offset = read<ReI32>(s, w + 0x294, 0x391dd0);
    if (offset != -1)
        return read<Address>(s, context(s) + 0x5c28, 0x38bb73) + Address(ReI64(offset));
    const auto id = read<ReU32>(s, w + 0x10, 0x391dee);
    const auto vector = context(s) + 0x5c20;
    const auto data = read<Address>(s, vector + 8, 0x39e390);
    auto record = data ? data + 4 : 0;
    for (ReUSize iterations = 0; record && iterations < 100000; ++iterations) {
        if (read<ReU32>(s, record, 0x391da5) == id &&
            !read<ReU8>(s, record + 0xe, 0x391da9))
            return record;
        const auto bytes = read<ReI32>(s, record - 4, 0x39e3b8);
        record += Address(ReI64(bytes));
        const auto count = read<ReI32>(s, vector, 0x39ebac);
        const auto end = Address(ReI64(count)) + read<Address>(s, vector + 8, 0x39ebaf) + 4;
        if (record == end)
            record = 0;
    }
    if (record)
        { __builtin_trap(); }
    return 0;
}
} // namespace rust_internal_re
