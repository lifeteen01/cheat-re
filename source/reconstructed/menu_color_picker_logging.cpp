#include "re_compat.h"
#include "menu_color_picker_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace picker_detail;
void append(MenuControlsState &s, const MenuColorPickerApi &api, re::ReStringView text,
            ReI32 indentation, bool newline) {
    // [C]395038 checks the live enabled byte independently for every append.
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0x5c90, 0x395056))
        return;
    const auto reset = read<Address>(s, c + 0x5c98, 0x395083) != 0;
    const auto buffer = c + 0x5ca0;
    if (reset)
        write(s, buffer, ReI32(0), 0x37acd4);
    // [C]39e280 returns before resizing when formatted length is nonpositive.
    const auto visible = text.substr(0, text.find('\0'));
    const auto spaces = newline           ? ReU64(0)
                        : indentation < 0 ? ReU64(-ReI64(indentation))
                                          : ReU64(indentation);
    if (!spaces && visible.empty())
        return;
    if (!api.logs)
        { __builtin_trap(); }
    auto &store = *api.logs;
    if (!store.buffers.contains(buffer)) {
        const auto count = read<ReI32>(s, buffer, 0x39e280);
        if (count < 0 || ReUSize(count) > store.maximum_bytes)
            { __builtin_trap(); }
        re::ReString imported;
        if (count > 0) {
            const auto data = read<Address>(s, buffer + 8, 0x39e280);
            for (ReI32 i = 0; i + 1 < count; ++i)
                imported.push_back(char(read<ReU8>(s, data + Address(i), 0x39e280)));
        }
        store.buffers.insert(buffer, re::re_move(imported));
    }
    auto &owned = store.buffers[buffer];
    if (reset)
        owned.clear();
    // [C] Recovered %*s%.*s retains native signed indentation.
    if (spaces > store.maximum_bytes || visible.size() > store.maximum_bytes - spaces ||
        owned.size() > store.maximum_bytes - spaces - visible.size())
        { __builtin_trap(); }
    owned += re::re_string_fill(ReUSize(spaces), ' ');
    owned.append(visible);
    write(s, buffer, ReI32(owned.size() + 1), 0x39e280);
}
void log(MenuControlsState &s, const MenuColorPickerApi &api, re::ReOptional<Vec2> position,
         re::ReStringView text, ReUSize &iterations, ReUSize depth) {
    if (depth > 1000)
        { __builtin_trap(); }
    for (;;) {
        if (++iterations > 1000000)
            { __builtin_trap(); }
        const auto c = context(s);
        const auto suffix = read<Address>(s, c + 0x5cb8, 0x394e80);
        const auto prefix = read<Address>(s, c + 0x5cb0, 0x394e87);
        const auto w = read<Address>(s, c + 0x3f08, 0x394e8e);
        write(s, c + 0x5cb8, Address(0), 0x394e9a);
        write(s, c + 0x5cb0, Address(0), 0x394ea5);
        if (position) {
            const auto threshold =
                read<float>(s, c + 0x5cc0, 0x394ece) + read<float>(s, c + 0x3810, 0x394ed2) + 1.0f;
            const bool new_line = position->y > threshold;
            write(s, c + 0x5cc0, position->y, 0x394efc);
            if (new_line) {
                append(s, api, "\r\n", 0, true);
                write(s, c + 0x5cc4, ReU8(1), 0x394f0e);
            }
        }
        if (prefix)
            log(s, api, position, raw_text(s, prefix), iterations, depth + 1);
        const auto window_depth = read<ReI32>(s, w + 0x188, 0x394f31);
        const auto baseline = read<ReI32>(s, c + 0x5cc8, 0x394f39);
        if (baseline > window_depth)
            write(s, c + 0x5cc8, window_depth, 0x394f43);
        const auto delta = ReU32(read<ReI32>(s, w + 0x188, 0x394f4d)) -
                           ReU32(re::re_min(baseline, window_depth));
        const auto indentation = re::re_bit_cast<ReI32>(delta << 2);
        ReUSize begin = 0;
        for (;;) {
            const auto found = text.find('\n', begin);
            const auto end = found == re::ReStringView::npos ? text.size() : found;
            if (begin != end || end != text.size()) {
                const auto spaces = read<ReU8>(s, c + 0x5cc4, 0x394f74) ? indentation : 1;
                append(s, api, text.substr(begin, end - begin), spaces, false);
                write(s, c + 0x5cc4, ReU8(0), 0x394fbc);
                if (end < text.size() && text[end] == '\n') {
                    append(s, api, "\r\n", 0, true);
                    write(s, c + 0x5cc4, ReU8(1), 0x394fd5);
                }
            }
            if (end == text.size())
                break;
            begin = end + 1;
        }
        if (!suffix)
            return;
        // [C] Tail loop reacquires context/prefix/suffix, retaining the same position.
        // Keep the new owned bytes alive through the recursive tail invocation.
        const auto owned_suffix = raw_text(s, suffix);
        log(s, api, position, owned_suffix, iterations, depth + 1);
        return;
    }
}
} // namespace
void menu_color_picker_log_text_394e5c(MenuControlsState &s, const MenuColorPickerApi &api,
                                       re::ReOptional<Vec2> position, re::ReStringView text) {
    ReUSize iterations = 0;
    log(s, api, position, text, iterations, 0);
}
} // namespace rust_internal_re
