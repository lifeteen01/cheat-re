#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
Vec2 content_max(MenuControlsState &s) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x39238b);
    auto v = read<Vec2>(s, w + 0x250, 0x39239a);
    if (read<Address>(s, w + 0x1a8, 0x392392) || read<Address>(s, c + 0x4b48, 0x3923a8))
        v.x = read<float>(s, w + 0x220, 0x3923b2);
    return v;
}
} // namespace
Address cached_font(MenuControlsState &s, ReI32 family, float size) {
    if (!s.config)
        { __builtin_trap(); }
    if (family < 0 || ReUSize(family) >= s.config->font_buckets.size())
        { __builtin_trap(); }
    return s.config->font_buckets[ReUSize(family)].fonts[size];
}
Vec2 measure_cached(MenuControlsState &s, ReI32 family, float size, re::ReStringView text) {
    if (!cached_font(s, family, size))
        return {};
    const auto font = cached_font(s, family, size);
    const auto metrics = read_renderer_font(*s.image, font);
    const auto end = re::re_min(text.find("##"), text.find('\0'));
    return renderer_measure_3a3874(
               metrics,
               {size * read<float>(s, 0x248ee8, 0x389e2a), re::ReNumericLimits<float>::max(), -1,
                text, end == re::ReStringView::npos ? re::ReOptional<ReUSize>{} : end})
        .size;
}
float item_width(MenuControlsState &s) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x38f389);
    auto width = read<ReU8>(s, c + 0x4790, 0x38f382) & 1
                     ? read<float>(s, c + 0x4794, 0x38f392)
                     : read<float>(s, w + 0x1bc, 0x38f39c);
    if (0 > width)
        width = maxss(1, content_max(s).x - read<float>(s, w + 0x100, 0x38f3c2) + width);
    return float(cvtt(width));
}
Vec2 calculate_size(MenuControlsState &s, Vec2 v, Vec2 default_size) {
    Vec2 available{};
    if (0 > v.x || 0 > v.y)
        available = content_max(s);
    const auto w = read<Address>(s, context(s) + 0x3f08, 0x38f26f);
    if (v.x == 0)
        v.x = default_size.x;
    else if (0 > v.x)
        v.x = maxss(4, available.x - read<float>(s, w + 0x100, 0x38f2d9) + v.x);
    if (v.y == 0)
        v.y = default_size.y;
    else if (0 > v.y)
        v.y = maxss(4, available.y - read<float>(s, w + 0x104, 0x38f31c) + v.y);
    return v;
}
float animate(MenuControlsState &s, float current, float target, float speed) {
    const auto factor = speed * read<float>(s, context(s) + 0x18, 0x335e79);
    return (target - current) * factor + current;
}
re::ReArray<float, 4> unpack_color(ReU32 c) {
    return {float(c & 255) * 0x1.010102p-8f, float((c >> 8) & 255) * 0x1.010102p-8f,
            float((c >> 16) & 255) * 0x1.010102p-8f, float(c >> 24) * 0x1.010102p-8f};
}
ReU32 pack_color(re::ReArray<float, 4> v) {
    re::ReArray<ReU32, 4> i{};
    for (ReUSize n = 0; n < 4; ++n) {
        auto x = v[n];
        if (x < 0)
            x = 0;
        if (x > 1)
            x = 1;
        i[n] = ReU32(cvtt(x * 255.0f + 0.5f));
    }
    return (((i[3] << 8) | i[2]) << 8 | i[1]) << 8 | i[0];
}
ReU32 style_color(MenuControlsState &s, ReU32 index, float factor) {
    const auto c = context(s);
    auto v = read<re::ReArray<float, 4>>(s, c + 0x38b8 + Address(index) * 16, 0x3922b6);
    factor *= read<float>(s, c + 0x37d0, 0x3922ae);
    v[3] *= factor;
    return pack_color(v);
}
re::ReArray<float, 4> lerp_color(re::ReArray<float, 4> a, re::ReArray<float, 4> b, float t) {
    for (ReUSize i = 0; i < 4; ++i)
        a[i] = (b[i] - a[i]) * t + a[i];
    return a;
}
void emit_text(MenuControlsState &, const MenuControlsApi &api, Address draw, Vec2 position,
               ReU32 color_value, re::ReStringView text, bool hide, Address font,
               float size) {
    if (!api.text)
        { __builtin_trap(); }
    const auto n = re::re_min(hide ? text.find("##") : re::ReStringView::npos, text.find('\0'));
    api.text({draw, font, size, position, color_value, re::ReString(text),
              n == re::ReStringView::npos ? re::ReOptional<ReUSize>{} : n});
}
void register_control(MenuControlsState &s, const MenuControlRequest &request, bool &registered) {
    const auto flags = read<ReU32>(s, context(s) + 0x4788, 0x3bd346);
    if (registered || (flags & 0x800))
        return;
    if (!s.main_menu)
        { __builtin_trap(); }
    const auto index = s.search_group.value_or(s.main_menu->search_groups.size() - 1);
    if (index >= s.main_menu->search_groups.size())
        __builtin_trap();
    FrameSearchWidget w;
    w.label = request.label;
    w.key = request.key;
    w.color = request.color;
    w.choices = request.choices;
    switch (request.role) {
    case MenuControlRole::checkbox:
        w.type = "checkbox";
        w.boolean = request.value;
        break;
    case MenuControlRole::combo_cstrings:
        w.type = "combo";
        w.integer = request.value;
        break;
    case MenuControlRole::combo_strings:
        w.type = "combo";
        w.integer = request.value;
        break;
    case MenuControlRole::multiselect:
        w.type = "multi_select";
        w.multi = request.value;
        break;
    case MenuControlRole::slider_integer:
        w.type = "slider_int";
        w.integer = request.value;
        w.minimum = request.minimum;
        w.maximum = request.maximum;
        break;
    case MenuControlRole::slider_float:
        w.type = "slider_float";
        w.scalar = request.value;
        w.minimum_float = request.minimum_float;
        w.maximum_float = request.maximum_float;
        break;
    default:
        { __builtin_trap(); }
    }
    s.main_menu->search_groups[index].widgets.push_back(re::re_move(w));
    s.extended_search.push_back(request);
    registered = true;
}
// [C] 0x387664..0x387a49: favorite star toggle with animation and conditional draw.
void favorite_387664(MenuControlsState &s, const MenuControlsApi &api, const MenuControlRequest &request) {
    const auto c = context(s), w = window(s);
    const auto value = id(s, "like" + request.label);
    const auto p = read<Vec2>(s, w + 0x100, 0x3876cf);
    const ClipRect box{p.x, p.y, p.x + 15, p.y + 15};
    item_size(s, {15, 15}, -1);
    (void)item_add(s, api, box, value);
    const auto interaction = menu_controls_button_behavior_3bc7e0(s, api, box, value, 0);
    auto &a = s.favorite_animation[menu_controls_hash_39334c("like" + request.label)];
    a.enabled = animate(s, a.enabled, a.open ? 1 : 0, 14);
    a.hover = animate(s, a.hover, a.open || interaction.hovered ? 1 : 0, 14);
    // [C] Native search compares widget label (predicate3822f4), first matching erase.
    auto found = re::re_find_if(s.favorites_27f988.begin(), s.favorites_27f988.end(),
                              [&](const auto &q) { return q.label == request.label; });
    if (interaction.pressed) {
        if (!a.open)
            s.favorites_27f988.push_back(request);
        else if (bool(found))
            s.favorites_27f988.erase(found);
        a.open = !a.open;
    } else if (bool(found) && !a.open)
        a.open = true;
    const auto alpha = read<float>(s, c + 0x37d0, 0x3878dd);
    auto base = unpack_color((ReU32(cvtt(alpha * 255.0f)) << 24) | 0x5454a6u);
    auto hover =
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1, 0.7f)), a.hover);
    auto color_value = pack_color(lerp_color(hover, base, a.enabled));
    emit_text(s, api, read<Address>(s, w + 0x298, 0x3878f6), p, color_value, raw_text(s, 0x2a9388),
              false, cached_font(s, 2, 15), 15 * read<float>(s, 0x248ee8, 0x3879af));
}
} // namespace rust_internal_re::menu_detail
