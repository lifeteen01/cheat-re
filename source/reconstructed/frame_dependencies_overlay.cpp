#include "frame_dependencies_overlay.hpp"
#include "field_getters_analysis.hpp"
#include "world_esp_analysis.hpp"
#include "analysis_failure.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva r;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
template <class F> FrameDependencyResult protect(F &&f) {
    FrameDependencyResult r;
    {
        f();
    }
    return r;
}
void check(const FrameDependencyResult &r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class T>
T get(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.unity.external)
        stop(UnityStatus::missing_dependency, r);
    const auto v = a.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    if (const auto p = re::re_get_if<T>(&*v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
ReU32 raw(const FrameMenuState &s, Rva r) {
    const auto i = s.values.find(r);
    return !i ? 0 : **i;
}
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
Vec2 pair(const FrameMenuState &s, Rva r) {
    return {number(s, r), number(s, r + 4)};
}
void store(FrameMenuState &s, Rva r, Vec2 p) {
    s.values[r] = re::re_bit_cast<ReU32>(p.x);
    s.values[r + 4] = re::re_bit_cast<ReU32>(p.y);
}
template <class T> T read(const Snapshot &s, Address p, Rva r) {
    const auto v = s.read<T>(p);
    if (!v)
        stop(UnityStatus::unreadable_snapshot, r);
    return *v;
}
bool valid(const Snapshot &s, Address p) {
    const auto b = entity_valid_2e0e9c(s, p);
    if (!b)
        stop(UnityStatus::unreadable_snapshot, 0x2e0e9c);
    return *b;
}
void position(FrameMenuState &s, const FrameDependencyApi &a, Rva pos, Rva force) {
    call(a, 0x39b734, {pair(s, pos), ReI32(2), Vec2{0, 0}});
    if (raw(s, force) & 255) {
        call(a, 0x39b734, {pair(s, pos), ReI32(1), Vec2{0, 0}});
        s.values[force] = 0;
    }
}
void text_center(const FrameDependencyApi &a, re::ReString text, float width) {
    const auto measured = get<Vec2>(a, 0x38f79c, {text, Address(0), false, -1.0f});
    const float x = get<float>(a, 0x392424) + (width - measured.x) * 0.5f;
    call(a, 0x39b410, {x});
    call(a, 0x3c4e90, {re::re_move(text)});
}
constexpr float byte_scale = re::re_bit_cast<float>(0x3b808081u);
constexpr ClipRect green{84.0f * byte_scale, 207.0f * byte_scale, 98.0f * byte_scale,
                         255.0f * byte_scale};
constexpr ClipRect dark{green.x / 1.35f, green.y / 1.35f, green.z / 1.35f, 1.0f};
constexpr ReI32 dark_packed = re::re_bit_cast<ReI32>(0xff49993eu);
void text_window_begin(FrameMenuState &s, const FrameDependencyApi &a, Rva pos, Rva size, Rva force,
                       re::ReString window, re::ReString prefix, Address player) {
    position(s, a, pos, force);
    call(a, 0x39b770, {pair(s, size), ReI32(2)});
    call(a, 0x398c60, {ReI32(2), Vec2{0, 0}});
    (void)get<bool>(
        a, 0x38cfa4,
        {re::re_move(window), Address(0), ReI32((raw(s, 0x218818) & 255) ? 0x2b : 0x2f)});
    const float x = get<Vec2>(a, 0x39246c).x;
    const float y = get<Vec2>(a, 0x39246c).y;
    store(s, pos, {x, y});
    call(a, 0x39896c, {ReI32(1)});
    const float w = get<Vec2>(a, 0x392f14).x;
    const float h = get<Vec2>(a, 0x392f14).y;
    store(s, size, {w, h});
    const auto name = get<re::ReString>(a, 0x369040, {player});
    const auto title = prefix + name + ")";
    call(a, 0x398b84, {ReI32(1), dark});
    text_center(a, title, number(s, size) - 10.0f);
    call(a, 0x39890c, {ReI32(1)});
    auto cursor = get<Vec2>(a, 0x39246c);
    cursor.y -= 16.0f;
    const Vec2 start{cursor.x + 7.0f, cursor.y};
    const Vec2 middle{start.x + (number(s, size) - 14.0f) * 0.5f, start.y + 1.0f};
    const auto draw = get<Address>(a, 0x392ecc);
    call(a, 0x3a12d8,
         {draw, start, middle, ReI32(0), dark_packed, dark_packed, ReI32(0)});
    const Vec2 second{cursor.x + number(s, size) * 0.5f, cursor.y};
    const Vec2 end{second.x + (number(s, size) - 10.0f) * 0.5f, second.y + 1.0f};
    const auto draw2 = get<Address>(a, 0x392ecc);
    call(a, 0x3a12d8,
         {draw2, second, end, dark_packed, ReI32(0), ReI32(0), dark_packed});
    call(a, 0x398c60, {ReI32(14), Vec2{0, 7.5f}});
    call(a, 0x39b44c, {get<float>(a, 0x392448) - 5.7f});
}
void text_window_end(FrameMenuState &s, const FrameDependencyApi &a, Rva size, float h) {
    call(a, 0x39bc6c, {Vec2{number(s, size), h}, ReI32(0)});
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390994);
}
void item_text(FrameMenuState &s, const FrameDependencyApi &a, re::ReString text, float width,
               bool highlight) {
    const auto font = get<Address>(a, 0x39254c);
    re::ReString fitted;
    check(frame_fit_text_318d74(s, a, text, width, font, fitted));
    const auto measured = get<Vec2>(a, 0x38f79c, {fitted, Address(0), false, -1.0f});
    const float x = get<float>(a, 0x392424) + (width - measured.x) * 0.5f;
    call(a, 0x39b410, {x});
    if (highlight)
        call(a, 0x398b84, {ReI32(1), dark});
    call(a, 0x3c4e90, {re::re_move(fitted)});
    if (highlight)
        call(a, 0x39890c, {ReI32(1)});
}
void icon_window(FrameMenuState &s, const FrameDependencyApi &a, const Snapshot &game,
                 Address container, ReI32 count, bool hotbar) {
    const Rva pos = hotbar ? 0x3efdf8 : 0x3efe48, force = hotbar ? 0x3e5cbb : 0x3e5cbc;
    const float scale = number(s, 0x3edde8), height = scale * 90.0f;
    const float width = (static_cast<float>(count) * scale) * 96.0f + 6.0f;
    call(a, 0x39b770, {Vec2{width, height + 2.0f}, ReI32(0)});
    call(a, 0x398b84, {ReI32(54), ClipRect{0, 0, 0, 0}});
    call(a, 0x398b84, {ReI32(3), ClipRect{0, 0, 0, 0}});
    call(a, 0x398cc8, {ReI32(4), 0.0f});
    position(s, a, pos, force);
    if (get<bool>(a, 0x38cfa4,
                  {re::ReString(hotbar ? "Hotbar Icons" : "Clothing Icons"), Address(0),
                   ReI32(0xab)})) {
        const auto cursor = get<Vec2>(a, 0x392ef8);
        store(s, pos, cursor);
        const auto draw = get<Address>(a, 0x392ecc);
        float offset = 0;
        for (ReI32 i = 0; i < count; ++i) {
            const auto item = get<Address>(a, 0x3722f0, {container, i});
            if (!sample_pointer_range(item))
                continue;
            const auto definition = read<Address>(game, item + 0x10, 0x2dee3c);
            if (!sample_pointer_range(definition))
                continue;
            const auto stack = get<ReI32>(a, 0x371294, {item});
            const auto texture = get<Address>(a, 0x371c38, {item});
            if (!sample_pointer_range(texture))
                continue;
            const auto maximum = read<float>(game, item + 0xd8, 0x2dee3c);
            const auto condition = read<float>(game, item + 0xb4, 0x2dee3c);
            const bool has_condition = get<bool>(a, 0x372184, {item});
            const float x = offset + cursor.x;
            if (has_condition) {
                const Vec2 end{x + scale * 6.0f, cursor.y + height};
                call(a, 0x3a1244,
                     {draw, Vec2{x, cursor.y}, end, ReI32(0x4c42876e), 0.0f,
                      ReI32(0)});
                // [C] MINSS selects its SECOND operand1 for unordered ratio.
                const float ratio = condition / maximum;
                const float capped = ratio < 1.0f ? ratio : 1.0f;
                call(a, 0x3a1244,
                     {draw, Vec2{x, cursor.y + (1.0f - capped) * height}, end,
                      re::re_bit_cast<ReI32>(0xcc42876eu), 0.0f, ReI32(0)});
            }
            // [C] Hotbar icon X padding is literal6; clothing scales6.
            const Vec2 top{x + (hotbar ? 6.0f : scale * 6.0f), cursor.y + 1.0f};
            call(a, 0x3a0168,
                 {draw, texture, top, Vec2{top.x + scale * 77.0f, top.y + scale * 77.0f},
                  Vec2{0, 0}, Vec2{1, 1}, ReI32(-1)});
            if (stack > 1) {
                const auto text = re::re_to_string(stack);
                const auto measured = get<Vec2>(a, 0x38f79c, {text, Address(0), false, -1.0f});
                call(a, 0x3a31bc,
                     {draw,
                      Vec2{x + (scale * 91.0f - measured.x),
                           cursor.y + height - scale * 12.0f - 5.0f},
                      re::re_bit_cast<ReI32>(0xc8ffffffu), text, Address(0)});
            }
            offset += scale * 96.0f;
        }
        // [C] Native End occurs only on a true Begin in these icon branches.
        call(a, 0x390994);
    }
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x39890c, {ReI32(1)});
}
} // namespace
FrameDependencyResult frame_fit_text_318d74(FrameMenuState &s, const FrameDependencyApi &a,
                                            re::ReStringView text, float width, Address font,
                                            re::ReString &output) {
    return protect([&] {
        const auto f = s.font_sizes.find(font);
        if (!f)
            stop(UnityStatus::missing_dependency, 0x318db1);
        const auto measure = [&](re::ReStringView value) {
            return get<Vec2>(a, 0x3a3874,
                             {font, **f, re::ReNumericLimits<float>::max(), 0.0f,
                              re::ReString(value), Address(0), Address(0)})
                .x;
        };
        const float original = measure(text);
        if (width >= original) {
            output = text;
            return;
        }
        re::ReString current(text);
        while (current.size() > 3) {
            current.resize(current.size()-1);
            const auto candidate = current + "...";
            if (width >= measure(candidate)) {
                output = candidate;
                return;
            }
        }
        output = "...";
    });
}
FrameDependencyResult replay_frame_inventory_307638(FrameMenuState &s, const FrameDependencyApi &a,
                                                    const FrameOverlayRequest &req) {
    return protect([&] {
        if (!req.game)
            stop(UnityStatus::missing_dependency, 0x307638);
        const auto &game = *req.game;
        const auto selection =
            select_frame_target_314bb4(req.targets, req.target_config, req.target_api);
        check(selection.result);
        const auto player = selection.selected;
        if (!sample_pointer_range(player) || !valid(game, player))
            return;
        const auto inventory = get<Address>(a, 0x369324, {player});
        if (!sample_pointer_range(inventory))
            return;
        const auto &opt = req.target_config.hotbar_options;
        if (opt[2]) {
            const auto parented = read<Address>(game, player + 0x90, 0x2dee3c);
            if (sample_pointer_range(parented)) {
                const auto count = read<ReI32>(game, parented + 0x18, 0x30776b);
                if (count > 0) {
                    text_window_begin(s, a, 0x3efe98, 0x3eff38, 0x3e5cbd, "Parented Window",
                                      "Parented(", player);
                    float height = 36.0f;
                    for (ReI32 i = 0; i < count; ++i) {
                        const auto array = read<Address>(game, parented + 0x10, 0x307c5c);
                        if (!sample_pointer_range(array))
                            continue;
                        const auto item = read<Address>(
                            game, array + 0x20 + static_cast<Address>(i) * 8, 0x307c7a);
                        if (!sample_pointer_range(item))
                            continue;
                        const auto id = prefab_identifier_367668(game, item);
                        if (!id)
                            stop(UnityStatus::unreadable_snapshot, 0x367668);
                        const auto label = world_item_name_316574(*id);
                        if (label.empty())
                            continue;
                        item_text(s, a, re::ReString(label), number(s, 0x3eff38) - 10.0f, false);
                        height += 20.0f;
                    }
                    text_window_end(s, a, 0x3eff38, height);
                }
            }
        }
        if (opt[1]) {
            const auto container = get<Address>(a, 0x373e20, {inventory});
            if (sample_pointer_range(container)) {
                const auto count = get<ReI32>(a, 0x37224c, {container});
                if (count > 0) {
                    if (opt[3])
                        icon_window(s, a, game, container, count, false);
                    else {
                        text_window_begin(s, a, 0x3efe48, 0x3eff88, 0x3e5cbc, "Clothing Window",
                                          "Clothing(", player);
                        float height = 36.0f;
                        for (ReI32 i = 0; i < count; ++i) {
                            const auto item = get<Address>(a, 0x3722f0, {container, i});
                            if (!sample_pointer_range(item))
                                continue;
                            const auto definition = read<Address>(game, item + 0x10, 0x2dee3c);
                            if (!sample_pointer_range(definition))
                                continue;
                            auto label = get<re::ReString>(a, 0x372398, {definition});
                            if (label.empty())
                                continue;
                            const auto stack = get<ReI32>(a, 0x371294, {item});
                            if (stack > 1)
                                label = "(" + re::re_to_string(stack) + ") " + label;
                            item_text(s, a, re::re_move(label), number(s, 0x3eff88) - 10.0f, false);
                            height += 20.0f;
                        }
                        text_window_end(s, a, 0x3eff88, height);
                    }
                }
            }
        }
        if (!opt[0])
            return;
        const auto container = get<Address>(a, 0x373dc8, {inventory});
        if (!sample_pointer_range(container))
            return;
        const auto count = get<ReI32>(a, 0x37224c, {container});
        if (count <= 0)
            return;
        if (opt[3]) {
            icon_window(s, a, game, container, count, true);
            return;
        }
        text_window_begin(s, a, 0x3efdf8, 0x3efee8, 0x3e5cbb, "Hotbar Window", "Hotbar(", player);
        // [C] The highlighted held-item ID is queried once before iteration.
        const auto held = get<Address>(a, 0x368a84, {player});
        const auto held_id = sample_pointer_range(held) ? get<ReI32>(a, 0x372220, {held})
                                                        : ReI32(-90001);
        float height = 36.0f;
        for (ReI32 i = 0; i < count; ++i) {
            const auto item = get<Address>(a, 0x3722f0, {container, i});
            if (!sample_pointer_range(item))
                continue;
            const auto definition = read<Address>(game, item + 0x10, 0x2dee3c);
            if (!sample_pointer_range(definition))
                continue;
            auto label = get<re::ReString>(a, 0x372398, {definition});
            if (label.empty())
                continue;
            const auto uid = get<ReI32>(a, 0x371604, {item});
            const auto stack = get<ReI32>(a, 0x371294, {item});
            if (stack > 1)
                label = "(" + re::re_to_string(stack) + ") " + label;
            item_text(s, a, re::re_move(label), number(s, 0x3efee8) - 10.0f, held_id == uid);
            height += 20.0f;
        }
        text_window_end(s, a, 0x3efee8, height);
    });
}
FrameDependencyApi bind_frame_inventory_fields(const Snapshot &image, FrameDependencyResult &last,
                                               FrameDependencyApi api) {
    const auto prior = api.unity.external;
    api.unity.external = [&image, &last, prior](
                             Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        const FieldGetterSpec *found = nullptr;
        for (const auto &spec : field_getter_specs())
            if (spec.getter == r) {
                found = &spec;
                break;
            }
        if (!found)
            return prior ? prior(r, args) : re::re_nullopt;
        last = {};
        if (args.empty() || !re::re_holds_alternative<Address>(args[0])) {
            last = {UnityStatus::callback_type_mismatch, r};
            return {};
        }
        const auto receiver = re::re_get<Address>(args[0]);
        const auto convert =
            [&]<class T>(const GameBaseResult<T> &value) -> re::ReOptional<UnityValue> {
            if (value.status != GameBaseStatus::complete) {
                last = {value.status == GameBaseStatus::missing_bytes
                            ? UnityStatus::unreadable_snapshot
                            : UnityStatus::missing_dependency,
                        value.site};
                return {};
            }
            if constexpr (re::re_is_same_v<T, ReU32>)
                return re::re_bit_cast<ReI32>(value.value);
            else if constexpr (re::re_is_same_v<T, ReU8>)
                return ReI32(value.value);
            else
                return value.value;
        };
        switch (found->kind) {
        case FieldGetterKind::pointer:
            return convert(read_pointer_getter(image, r, receiver));
        case FieldGetterKind::raw_u32:
            return convert(read_u32_getter(image, r, receiver));
        case FieldGetterKind::byte:
            return convert(read_byte_getter(image, r, receiver));
        case FieldGetterKind::scalar:
            return convert(read_scalar_getter(image, r, receiver));
        case FieldGetterKind::predicate:
            return convert(read_predicate_getter(image, r, receiver));
        }
        return {};
    };
    return api;
}
UnityFrameApi bind_frame_inventory(FrameMenuState &s, const FrameDependencyApi &a,
                                   re::ReFunction<re::ReOptional<FrameOverlayRequest>()> request,
                                   FrameDependencyResult &result, UnityFrameApi frame) {
    const auto prior = frame.domain;
    frame.domain = [&s, a, request, &result,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r != 0x307638)
            return prior ? prior(r, args) : re::re_nullopt;
        if (!request) {
            result = {UnityStatus::missing_dependency, r};
            return {};
        }
        const auto req = request();
        if (!req) {
            result = {UnityStatus::missing_dependency, r};
            return {};
        }
        result = replay_frame_inventory_307638(s, a, *req);
        if (result.status != UnityStatus::complete)
            return {};
        return re::ReMonostate{};
    };
    return frame;
}
} // namespace rust_internal_re
