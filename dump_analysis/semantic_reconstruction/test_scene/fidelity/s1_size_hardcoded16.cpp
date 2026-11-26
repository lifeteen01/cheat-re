#include "world_esp_analysis.hpp"
namespace rust_internal_re {
std::array<WorldPlayerLabel, 6>
prepare_copied_world_labels(std::array<WorldPlayerLabel, 6> labels,
                            const std::array<std::string, 6> &texts,
                            std::optional<std::uint32_t> held_identifier) {
    // [C] 312b1b..312d8c updates first matching keys, then 312e17 onward
    // draws vector indices. Key order and draw order need not be identical.
    constexpr std::array<std::string_view, 6> keys{"DisplayName", "HeldEntity", "Indicator",
                                                   "Indicator0",  "Indicator2", "Indicator3"};
    constexpr std::array<Rva, 6> finds{0x2ee154, 0x2ee1d0, 0x2ee24c, 0x2ee2c8, 0x2ee344, 0x2ee0d8};
    for (std::size_t i = 0; i < keys.size(); ++i) {
        const auto found = std::find_if(labels.begin(), labels.end(),
                                        [&](const auto &label) { return label.key == keys[i]; });
        if (found == labels.end())
            throw WorldEspMissingInput(0x312b1b, finds[i], "required copied widget key missing");
        found->text = texts[i];
        if (i == 1 && held_identifier)
            found->icon_id = *held_identifier;
    }
    return labels;
}
void draw_world_corner_box_37b724(const std::array<Vec2, 4> &p, std::array<float, 4> color,
                                  float fraction, WorldDrawOutput out) {
    out = out.capture_background(0x37b77b);
    constexpr std::array<std::array<std::size_t, 2>, 8> pairs{
        {{0, 3}, {0, 1}, {1, 2}, {3, 2}, {3, 0}, {1, 0}, {2, 3}, {2, 1}}};
    constexpr std::array<Rva, 8> sites{0x37b84e, 0x37b8e2, 0x37b976, 0x37ba0a,
                                       0x37ba9c, 0x37bb2b, 0x37bbb9, 0x37bc47};
    for (std::size_t i = 0; i < pairs.size(); ++i) {
        const auto a = p[pairs[i][0]], z = p[pairs[i][1]];
        const Vec2 to{(z.x - a.x) * fraction + a.x, (z.y - a.y) * fraction + a.y};
        out.emplace_back(WorldLineDraw{sites[i], a, to, color, 1.25f});
    }
}
WorldPlayerLabelLayout draw_world_player_label_37bc98(const std::array<Vec2, 4> &p,
                                                      const WorldPlayerLabel &label,
                                                      std::array<float, 4> color,
                                                      const WorldEspConfig &c,
                                                      WorldPlayerLabelState &state,
                                                      WorldPlayerBackend &b, WorldDrawOutput out) {
    WorldPlayerLabelLayout result;
    if (!b.label_fonts || !b.background_draw_list_392198)
        throw WorldEspMissingInput(
            0x37bcfa, 0x392198,
            "copied font/global state and background draw-list callback required");
    auto &fonts = *b.label_fonts;
    b.background_draw_list_392198(fonts);
    const auto selected = fonts.current_405b28_3c28;
    const auto font = fonts.fonts.find(selected);
    if (font == fonts.fonts.end())
        throw WorldEspMissingInput(0x37bd19, 0, "selected font nominal size missing");
    const float nominal = font->second.nominal_14;
    const bool indicator =
        label.key == "Indicator0" || label.key == "Indicator2" || label.key == "Indicator3";
    const bool small = indicator && c.integer(0x3eed38) == 2;
    const float line = small ? 10.0f : 16.0f;
    if (!b.measure_font_3a3874)
        throw WorldEspMissingInput(0x37be21, 0x3a3874, "font measurement dependency absent");
    fonts.current_405b28_3c28 = selected;
    font->second.scale_64 = line / nominal;
    result.measured =
        b.measure_font_3a3874({selected, label.text, line, std::numeric_limits<float>::max(), 0});
    if (label.side < 0 || label.side > 4)
        throw WorldEspMissingInput(0x37bea8, 0, "label side outside observed five positions");
    const auto side = std::size_t(label.side);
    const auto count = state.counters_3e5cc8[side];
    const float offset = float(count) * line, spacing = c.real(0x3ed7a8);
    const auto midpoint = [](Vec2 a, Vec2 z) {
        return Vec2{(a.x + z.x) / 2.0f, (a.y + z.y) / 2.0f};
    };
    const auto top = midpoint(p[0], p[3]), bottom = midpoint(p[1], p[2]);
    const std::array<Vec2, 5> positions{
        {{},
         {(p[0].x - spacing) - result.measured.x, p[0].y + offset},
         {p[3].x + spacing, p[3].y + offset},
         {top.x - result.measured.x * 0.5f, ((top.y - spacing) - result.measured.y) - offset},
         {bottom.x - result.measured.x * 0.5f, (bottom.y + spacing) + offset}}};
    result.position = positions[side];
    if (!label.text.empty())
        state.counters_3e5cc8[side] = std::bit_cast<std::int32_t>(std::uint32_t(count) + 1);
    const auto restore = [&]() {
        fonts.current_405b28_3c28 = selected;
        font->second.scale_64 = font->second.nominal_14 / nominal;
    };
    if (label.key == "HeldEntity" && label.icon_id != 0 && !label.text.empty() &&
        c.boolean(0x3e76a8) && c.boolean(0x3e76f8)) {
        const auto font = world_item_font_height_2fd04b(c.integer(0x3fcd78), 1);
        const auto global = c.integer(0x3eed38);
        float icon_font = font;
        if (global == 0 || small)
            icon_font = 10;
        else if (global == 2)
            icon_font = 11;
        else if (global == 3)
            icon_font = 16;
        const float size = icon_font * c.real(0x3fca08);
        const Vec2 maximum{result.position.x + result.measured.x,
                           result.position.y + result.measured.y};
        Vec2 icon = result.position;
        if (label.side == 1)
            icon.x = maximum.x - size * 0.5f;
        else if (label.side == 2)
            icon.x = result.position.x + size * 0.5f;
        constexpr char hex[] = "0123456789abcdef";
        std::string key(8, '0');
        auto id = label.icon_id;
        for (int i = 7; i >= 0; --i) {
            key[std::size_t(i)] = hex[id & 15];
            id >>= 4;
        }
        if (!b.icon_2cc8d0)
            throw WorldEspMissingInput(0x37c1d3, 0x2cc8d0, "icon cache/texture callback absent");
        if (b.icon_2cc8d0(key, icon, size)) {
            out.record(WorldIconDraw{0x37c1d3, icon, {size, size}, key});
            result.icon = true;
            restore();
            return result;
        }
    }
    auto command =
        WorldTextDraw{0x37c20a, result.position, label.text, color, small ? 4u : 0u, line};
    command.helper = 0x361bcc;
    command.font = selected;
    command.rectangle_max = {result.position.x + result.measured.x,
                             result.position.y + result.measured.y};
    out.emplace_back(std::move(command));
    restore();
    return result;
}
std::array<std::string, 6> world_player_label_texts_31265f(const WorldPlayerLabelData &d,
                                                           const WorldEspConfig &c) {
    std::array<std::string, 6> text{};
    // [C] 2cd32c literal0 means TeamID cannot add a suffix; NPC path still reads name if TeamID alone enabled.
    if (d.special_npc) {
        if (c.boolean(0x3e7798))
            text[0] = "Scientist";
    } else if (c.boolean(0x3e7798) || (d.npc && c.boolean(0x3e7748)))
        text[0] = d.name;
    if (c.boolean(0x3e76a8) && !d.dead)
        text[1] = d.held_name;
    if (c.boolean(0x3e77e8))
        text[2] = std::to_string(world_cvttss2si(d.distance)) + "m";
    if (d.flag_100 && c.boolean(0x3e7388))
        text[3] = "Online";
    if (!d.friend_record && !d.npc && !d.dead && d.outside && c.boolean(0x3e7298))
        text[4] = "Outside";
    if (d.model_wounded)
        text[5] = "Crawling";
    else if (d.wounded)
        text[5] = "Wounded";
    if (d.special_npc)
        text[3] = text[4] = text[5] = "";
    return text;
}
} // namespace rust_internal_re
