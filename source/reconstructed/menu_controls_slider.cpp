#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
double fs_strtod(const char* s, char**) {
    double result = 0.0, frac = 0.0, divisor = 1.0;
    bool negative = false, in_frac = false;
    while (*s == ' ') ++s;
    if (*s == '-') { negative = true; ++s; } else if (*s == '+') ++s;
    for (; *s; ++s) {
        if (*s >= '0' && *s <= '9') {
            if (in_frac) { frac = frac * 10.0 + (*s - '0'); divisor *= 10.0; }
            else result = result * 10.0 + (*s - '0');
        } else if (*s == '.' && !in_frac) { in_frac = true; }
        else break;
    }
    result += frac / divisor;
    if (*s == 'e' || *s == 'E') {
        ++s; bool eneg = false; int exp = 0;
        if (*s == '-') { eneg = true; ++s; } else if (*s == '+') ++s;
        for (; *s >= '0' && *s <= '9'; ++s) exp = exp * 10 + (*s - '0');
        double m = 1.0; for (int i = 0; i < exp; ++i) m *= 10.0;
        result = eneg ? result / m : result * m;
    }
    return negative ? -result : result;
}
ReI32 wrap_sub(ReI32 a, ReI32 b) {
    return re::re_bit_cast<ReI32>(ReU32(a) - ReU32(b));
}
ReI32 wrap_add(ReI32 a, ReI32 b) {
    return re::re_bit_cast<ReI32>(ReU32(a) + ReU32(b));
}
float saturate(float v) {
    return 0 > v ? 0 : minss(1, v);
}
re::RePair<ReUSize, ReUSize> conversion(re::ReStringView text) {
    for (ReUSize i = 0; i < text.size(); ++i)
        if (text[i] == '%') {
            if (i + 1 < text.size() && text[i + 1] == '%') {
                ++i;
                continue;
            }
            for (auto j = i + 1; j < text.size(); ++j) {
                const auto c = text[j];
                if (re::ReStringView("diuoxXfFeEgGaA").find(c) != re::ReStringView::npos)
                    return {i, j + 1};
                if (c == '*' || c == '$' || c == 'n' || c == 's' || c == 'p' || c == 'l' ||
                    c == 'h' || c == 'L')
                    { __builtin_trap(); }
            }
            { __builtin_trap(); }
        }
    return {text.size(), text.size()};
}
re::ReString format(ReU32 value, bool floating, re::ReStringView text,
                   bool round_only = false) {
    auto [begin, end] = conversion(text);
    if (begin == text.size())
        return round_only ? re::ReString{} : re::ReString(text);
    const auto spec = text[end - 1];
    if (floating != (re::ReStringView("fFeEgGaA").find(spec) != re::ReStringView::npos))
        { __builtin_trap(); }
    const re::ReString fmt(round_only ? text.substr(begin, end - begin) : text);
    re::ReArray<char, 64> b{};
    int length;
    if (floating)
        length =
            re::re_snprintf(b.data(), b.size(), fmt.c_str(), double(re::re_bit_cast<float>(value)));
    else if (spec == 'd' || spec == 'i')
        length = re::re_snprintf(b.data(), b.size(), fmt.c_str(), re::re_bit_cast<ReI32>(value));
    else
        length = re::re_snprintf(b.data(), b.size(), fmt.c_str(), value);
    if (length < 0)
        { __builtin_trap(); }
    return re::ReString(b.data(), re::re_min<ReUSize>(ReUSize(length), 63));
}
float rounded(float v, re::ReStringView text) {
    const auto output = format(re::re_bit_cast<ReU32>(v), true, text, true);
    return output.empty() ? v : float(fs_strtod(output.c_str(), nullptr));
}
int precision(re::ReStringView text) {
    auto [i, e] = conversion(text);
    if (i == text.size())
        return 3;
    const auto spec = text[e - 1];
    if (spec == 'e' || spec == 'E')
        return -1;
    const auto dot = text.substr(i, e - i).find('.');
    if (dot == re::ReStringView::npos)
        return spec == 'g' || spec == 'G' ? -1 : 3;
    ReU32 n = 0;
    auto j = i + dot + 1;
    for (; j < e && text[j] >= '0' && text[j] <= '9'; ++j)
        n = n * 10 + ReU32(text[j] - '0');
    return n > 99 ? 3 : int(n);
}
bool key_down(MenuControlsState &s, int key) {
    return read<ReU8>(s, key_data(s, key), 0x394243) && key_owner(s, key, 0);
}
float nav_delta(MenuControlsState &s) {
    const auto c = context(s);
    const bool gamepad = read<ReU32>(s, c + 0x491c, 0x392937) == 3;
    const int negative = gamepad ? 0x26f : 0x201, positive = gamepad ? 0x270 : 0x202;
    const auto delay = read<float>(s, c + 0x3c, 0x392d6d) * read<float>(s, 0x2a868c, 0x392d73),
               rate = read<float>(s, c + 0x40, 0x392d7f) * read<float>(s, 0x28e1c8, 0x392d85);
    const auto amount = [&](int key) {
        const auto data = key_data(s, key);
        if (!read<ReU8>(s, data, 0x3927ec))
            return 0;
        const auto duration = read<float>(s, data + 4, 0x3927f5);
        return menu_controls_typematic_38f85c(duration - read<float>(s, c + 0x18, 0x39280c),
                                              duration, delay, rate);
    };
    float value = float(amount(positive)) - float(amount(negative));
    if (value != 0 && key_down(s, negative) && key_down(s, positive))
        value = 0;
    return value;
}
struct Scalar {
    bool floating{};
    ReU32 bits{};
    float minimum{}, maximum{};
    ReI32 mini{}, maxi{};
};
float ratio(const Scalar &q) {
    if (q.floating) {
        if (q.minimum == q.maximum)
            return 0;
        const auto value = re::re_bit_cast<float>(q.bits);
        float lo, hi;
        if (q.maximum > q.minimum) {
            lo = q.minimum;
            hi = q.maximum;
        } else {
            lo = q.maximum;
            hi = q.minimum;
        }
        const auto clamped = lo > value ? lo : minss(hi, value);
        return (clamped - q.minimum) / (q.maximum - q.minimum);
    }
    if (q.mini == q.maxi)
        return 0;
    const auto v = re::re_bit_cast<ReI32>(q.bits);
    const auto lo = re::re_min(q.mini, q.maxi), hi = re::re_max(q.mini, q.maxi);
    const auto clamped = v < lo ? lo : (v > hi ? hi : v);
    return float(wrap_sub(clamped, q.mini)) / float(wrap_sub(q.maxi, q.mini));
}
ReU32 from_ratio(const Scalar &q, float t, re::ReStringView fmt) {
    if (q.floating) {
        float value;
        if (0 >= t || q.minimum == q.maximum)
            value = q.minimum;
        else if (t >= 1)
            value = q.maximum;
        else
            value = (q.maximum - q.minimum) * t + q.minimum;
        return re::re_bit_cast<ReU32>(rounded(value, fmt));
    }
    if (0 >= t || q.mini == q.maxi)
        return re::re_bit_cast<ReU32>(q.mini);
    if (t >= 1)
        return re::re_bit_cast<ReU32>(q.maxi);
    const auto offset = float(wrap_sub(q.maxi, q.mini)) * t + (q.mini > q.maxi ? -0.5f : 0.5f);
    return re::re_bit_cast<ReU32>(wrap_add(cvtt(offset), q.mini));
}
struct Behavior {
    bool changed{};
    ClipRect grab;
};
Behavior scalar_behavior(MenuControlsState &s, const MenuControlsApi &api, ClipRect box,
                         ReU32 value, Scalar &q, re::ReStringView fmt) {
    const auto c = context(s);
    if (read<ReU32>(s, c + 0x47a8, 0x3c408a) & 0x80)
        return {};
    const float range =
        q.floating ? (q.maximum > q.minimum ? q.maximum - q.minimum : q.minimum - q.maximum)
                   : float(q.mini < q.maxi ? wrap_sub(q.maxi, q.mini) : wrap_sub(q.mini, q.maxi));
    const float length = box.z - box.x - 4;
    float grab_size = read<float>(s, c + 0x384c, 0x3b96c5);
    if (!q.floating && range >= 0)
        grab_size = maxss(length / (range + 1), grab_size);
    grab_size = minss(grab_size, length);
    const float half = grab_size * 0.5f, usable = length - grab_size, low = box.x + 2 + half,
                high = box.z - 2 - half;
    Behavior out;
    bool apply = false;
    float t = 0;
    if (read<ReU32>(s, c + 0x3f68, 0x3b97f0) == value) {
        const auto source = read<ReU32>(s, c + 0x3f90, 0x3b97f9);
        if (source == 1) {
            if (!read<ReU8>(s, c + 0xe10, 0x3b9808))
                set_active(s, api, 0, 0);
            else {
                const auto mouse = read<float>(s, c + 0xe08, 0x3b9877);
                if (read<ReU8>(s, c + 0x3f74, 0x3b9860)) {
                    const auto position = (high - low) * ratio(q) + low;
                    const auto offset =
                        mouse >= position - half - 1 && position + half + 1 >= mouse && q.floating
                            ? mouse - position
                            : 0.0f;
                    write(s, c + 0x5b94, offset, 0x3b990e);
                }
                if (usable > 0)
                    t = saturate((mouse - read<float>(s, c + 0x5b94, 0x3b9927) - low) / usable);
                apply = true;
            }
        } else if (source - 2 <= 1) {
            if (read<ReU8>(s, c + 0x3f74, 0x3b9968)) {
                write(s, c + 0x5b98, 0.0f, 0x3b9971);
                write(s, c + 0x5b9c, ReU8(0), 0x3b997b);
            }
            float delta = nav_delta(s);
            if (delta != 0) {
                const bool gamepad = read<ReU32>(s, c + 0x491c, 0x3b99a4) == 3;
                const bool slow = key_down(s, gamepad ? 0x273 : 0x1000),
                           fast = key_down(s, gamepad ? 0x274 : 0x2000);
                if (q.floating && precision(fmt) > 0) {
                    delta /= 100;
                    if (slow)
                        delta /= 10;
                } else if ((range >= -100 && range <= 100) || slow)
                    delta = (delta < 0 ? -1.0f : 1.0f) / range;
                else
                    delta /= 100;
                if (fast)
                    delta *= 10;
                write(s, c + 0x5b98, read<float>(s, c + 0x5b98, 0x3b9a5f) + delta, 0x3b9a6e);
                write(s, c + 0x5b9c, ReU8(1), 0x3b9a67);
            }
            if (read<ReU32>(s, c + 0x4900, 0x3b9a80) == value &&
                !read<ReU8>(s, c + 0x3f74, 0x3b9a89))
                set_active(s, api, 0, 0);
            else if (read<ReU8>(s, c + 0x5b9c, 0x3b9a96)) {
                const auto old = ratio(q), accumulated = read<float>(s, c + 0x5b98, 0x3b9abb);
                float remainder = 0;
                if ((old >= 1 && accumulated > 0) || (0 >= old && 0 > accumulated))
                    apply = false;
                else {
                    apply = true;
                    t = saturate(old + accumulated);
                    auto temp = q;
                    temp.bits = from_ratio(q, t, fmt);
                    const auto difference = ratio(temp) - old;
                    remainder = accumulated - (accumulated > 0 ? minss(difference, accumulated)
                                                               : maxss(difference, accumulated));
                }
                write(s, c + 0x5b98, remainder, 0x3b9bc4);
                write(s, c + 0x5b9c, ReU8(0), 0x3b9bcd);
            }
        }
    }
    if (apply) {
        const auto bits = from_ratio(q, t, fmt);
        out.changed = q.floating ? re::re_bit_cast<float>(q.bits) != re::re_bit_cast<float>(bits)
                                 : q.bits != bits;
        if (out.changed)
            q.bits = bits;
    }
    if (1 > length)
        out.grab = {box.x, box.y, box.x, box.y};
    else {
        const auto position = (high - low) * ratio(q) + low;
        out.grab = {position - half, box.y + 2, position + half, box.w - 2};
    }
    return out;
}
} // namespace
MenuControlResult slider(MenuControlsState &s, const MenuControlsApi &api,
                         const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    const auto scale = read<float>(s, 0x248ee8, 0x3c4527);
    const auto p = read<Vec2>(s, w + 0x100, 0x3c44ea);
    const auto label = renderer_measure_38f79c(*s.image, c, r.label, {}, true, -1).size;
    const auto itemflags = read<ReU32>(s, c + 0x4788, 0x3c4537);
    const auto initial_width = item_width(s);
    const auto width = initial_width - ((itemflags & 0x800) ? 25 * scale : 0);
    const ClipRect row{p.x, p.y, p.x + width, p.y + label.y};
    ClipRect bar{row.z - item_width(s) * 0.5f, row.y + label.y * 0.5f - 3 * scale, row.z,
                 row.y + label.y * 0.5f + 3 * scale};
    item_size(s, {width, label.y}, -1);
    (void)item_add(s, api, row, out.id);
    re::ReString fmt = r.format;
    const bool floating = r.role == MenuControlRole::slider_float;
    if (fmt.empty()) {
        const auto pointer =
            read<Address>(s, 0x27fa60 + Address(floating ? 8 : 4) * 32 + 16, 0x3c4648);
        if (!pointer)
            __builtin_trap();
        fmt = raw_text(s, pointer);
    }
    const bool hovered = hoverable(s, api, bar, out.id);
    const bool clicked = hovered && mouse_clicked(s, 0, out.id, false);
    if (clicked)
        set_key_owner(s, 0x281, out.id, 0);
    if (clicked || read<ReU32>(s, c + 0x48f8, 0x3c4687) == out.id) {
        set_active(s, api, out.id, w);
        set_focus(s, api, out.id, w);
        focus_window(s, api, w, 0);
        write(s, c + 0x4778, read<ReU32>(s, c + 0x4778, 0x3c46b1) | 3u, 0x3c46b1);
    }
    if (!s.config || (!r.owned_integer && !s.config->values.contains(r.value)))
        { __builtin_trap(); }
    Scalar scalar{floating,
                  r.owned_integer ? re::re_bit_cast<ReU32>(*r.owned_integer)
                                  : s.config->values.at(r.value),
                  r.minimum_float,
                  r.maximum_float,
                  r.minimum,
                  r.maximum};
    const auto result = scalar_behavior(s, api, bar, out.id, scalar, fmt);
    out.changed = result.changed;
    if (result.changed) {
        if (r.owned_integer)
            *r.owned_integer = re::re_bit_cast<ReI32>(scalar.bits);
        else
            s.config->values.at(r.value) = scalar.bits;
        const auto active = read<ReU32>(s, c + 0x3f68, 0x395137);
        if (!active || active == out.id)
            write(s, c + 0x3f78, ReU16(0x101), 0x395145);
        write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x39514e) | 4u, 0x39514e);
    }
    const auto value_text = format(scalar.bits, floating, fmt);
    auto &a = s.checkboxes[{3, menu_controls_hash_39334c(r.label, 3)}];
    auto registered_request = r;
    registered_request.format = fmt;
    register_control(s, registered_request, a.registered);
    if (itemflags & 0x800) {
        same_line(s, 0, floating ? 10 : 10 * scale);
        favorite_387664(s, api, registered_request);
    }
    bar.x += 10;
    const bool active = read<ReU32>(s, c + 0x3f68, 0x393ff4) == out.id;
    a.enabled_hover = animate(s, a.enabled_hover, active ? 1 : 0, 14);
    a.hover = animate(s, a.hover, hovered ? 1 : 0, 14);
    a.color = lerp_color(
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1, 0.7f)), a.hover),
        unpack_color(style_color(s, 1)), a.enabled_hover);
    a.checked = animate(s, a.checked, result.grab.z - bar.x, 17);
    const auto draw = read<Address>(s, w + 0x298, 0x3c4b7c);
    if (!api.rectangle)
        { __builtin_trap(); }
    api.rectangle(
        {draw, {bar.x, bar.y}, {bar.z, bar.w}, style_color(s, 6), 2 * scale, 1, 0, false});
    const auto fill_x =
        bar.x + read<float>(s, 0x3fc0f8, 0x3c4bfa) * a.checked * read<float>(s, 0x3fc0fc, 0x3c4c14);
    if (!api.glow_rectangle_3a2010)
        { __builtin_trap(); }
    api.glow_rectangle_3a2010({draw,
                               {bar.x, bar.y},
                               {fill_x, bar.w},
                               style_color(s, 0, 0.4f),
                               20 * scale,
                               {},
                               0,
                               120 * scale});
    api.rectangle({draw, {bar.x, bar.y}, {fill_x, bar.w}, style_color(s, 0), 2, 1, 0, true});
    if (!api.circle)
        { __builtin_trap(); }
    api.circle({draw,
                {fill_x, (bar.y + bar.w) * 0.5f},
                a.enabled_hover + 4 + a.hover,
                0,
                {},
                0,
                style_color(s, 20),
                0,
                true});
    emit_text(s, api, draw, {row.x, row.y}, pack_color(a.color), r.label);
    const auto measured = measure_cached(s, 0, 12, value_text);
    const auto font = cached_font(s, 0, 12);
    emit_text(s, api, draw, {row.z - measured.x, row.w - 12 * scale}, style_color(s, 1), value_text,
              false, font, 12 * scale);
    return out;
}
} // namespace rust_internal_re::menu_detail
