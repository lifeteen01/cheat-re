#include "menu_pages_analysis.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva site;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
void check(FrameDependencyResult r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class T>
T get(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.frame.effects.unity.external)
        stop(UnityStatus::missing_dependency, r);
    auto value =
        a.frame.effects.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!value)
        stop(UnityStatus::missing_dependency, r);
    if (auto p = re::re_get_if<T>(&*value))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
ReU32 raw(const FrameMenuState &s, Rva r) {
    auto p = s.values.find(r);
    return !p ? 0 : **p;
}
ReI32 selected(const FrameMenuState &s) {
    return re::re_bit_cast<ReI32>(raw(s, 0x27f9a0));
}
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
struct Text {
    re::ReStringView english, russian, chinese;
};
#include "menu_pages_config_labels.inc"
re::ReString text(const FrameMenuState &s, ReUSize index) {
    const auto &t = config_labels[index];
    const auto lang = raw(s, 0x3fd0e8);
    return re::ReString(lang == 1 ? t.russian : lang == 2 ? t.chinese : t.english);
}
MenuControlResult control(const MenuPagesApi &a, MenuControlRequest request) {
    if (!a.control)
        stop(UnityStatus::missing_dependency, request.primitive);
    auto result = a.control(request);
    check(result.result);
    return result;
}
bool button(const MenuPagesApi &a, re::ReString label, Vec2 size, Rva site) {
    MenuControlRequest request;
    request.role = MenuControlRole::button;
    request.primitive = 0x3bc7d8;
    request.site = site;
    request.label = re::re_move(label);
    request.size = size;
    return control(a, re::re_move(request)).pressed;
}
void notify(const MenuPagesApi &a, re::ReString text, ReI32 kind = 0) {
    check(frame_notify_37f918(*a.dependency_state, a.frame.effects, re::re_move(text), kind, 0));
}
re::ReString filename(const FrameMenuState &s, const FrameDependencyState &files) {
    const auto index = selected(s);
    if (index < 0 || ReUSize(index) >= files.configs.size())
        stop(UnityStatus::malformed_input, 0x2d4d20);
    return files.configs[static_cast<ReUSize>(index)];
}
void queue(const MenuPagesApi &a, ReI32 operation, re::ReString name) {
    // [C]2d480c constructs its re::ReString from a nullable char*, so embedded
    // NUL terminates queued text.2d8fd4's tail append preserves order.
    if (const auto n = name.find('\0'); n != re::ReString::npos)
        name.resize(n);
    a.state->file_requests.push_back({operation, re::re_move(name)});
}
void select_filename(FrameDependencyState &files, re::ReStringView input) {
    const auto value = normalize_menu_config_name_2d6384(input);
    if (!value.empty())
        files.selected_config = value;
}
bool exists(const MenuPagesApi &a, const re::ReString &path) {
    check(prepare_frame_dependency_cache(*a.dependency_state, a.frame.effects, 0x2d5be4));
    if (!a.frame.effects.exists_2d5be4)
        stop(UnityStatus::missing_dependency, 0x2d5be4);
    auto result = a.frame.effects.exists_2d5be4(path);
    if (!result)
        stop(UnityStatus::missing_dependency, 0x2d5be4);
    return *result;
}
void list(FrameMenuState &s, const MenuPagesApi &a, re::ReString label, float width,
          const re::ReVector<re::ReString> &names) {
    call(a, 0x398c60, {ReI32(2), Vec2{0, number(s, 0x248ee8) * 8}});
    (void)get<bool>(a, 0x38e97c, {re::re_move(label), Vec2{width, 0}, false, ReI32(0x10000)});
    call(a, 0x398c60, {ReI32(14), Vec2{0, 0}});
    for (ReUSize i = 0; i < names.size(); ++i) {
        const auto w = get<float>(a, 0x392f34), h = get<float>(a, 0x3925cc);
        MenuControlRequest request;
        request.role = MenuControlRole::selectable;
        request.primitive = 0x3c38a8;
        request.site = 0x387b4b;
        request.label = names[i];
        request.description = names[i];
        request.minimum = selected(s) == static_cast<ReI32>(i);
        request.size = {w, h};
        request.register_search = true; // [C]387b37 hardcodes1; caller's final bool is unused.
        if (control(a, re::re_move(request)).pressed)
            s.values[0x27f9a0] = static_cast<ReU32>(i);
    }
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
void deletion_popup(FrameMenuState &, const MenuPagesApi &a, bool stash) {
    auto &files = *a.dependency_state;
    auto &records = stash ? files.stashes : files.samsites;
    if (records.empty())
        return;
    const re::ReString popup = stash ? "DeleteStashesPopup" : "DeleteSamsPopup";
    const auto button_label =
        "Delete " + re::re_to_string(records.size()) + (stash ? " Stashes" : " Samsites");
    if (button(a, button_label, {0, 0}, stash ? 0x34d206 : 0x34d46a))
        call(a, 0x3985c8, {popup, ReI32(0)});
    if (!get<bool>(a, 0x38edbc, {popup, ReI32(0)}))
        return;
    const re::ReString question = stash ? "Delete stashes???" : "Delete sams???";
    const auto measured = get<Vec2>(a, 0x38f79c, {question, Address(0), false, -1.0f});
    const float width = get<Vec2>(a, 0x39233c).x;
    call(a, 0x39b410, {(width - measured.x) * .5f});
    call(a, 0x3c4e90, {question});
    if (button(a, "Yes", {50, 0}, stash ? 0x34d2db : 0x34d542)) {
        notify(a, stash ? "DELETED all stashes" : "DELETED all sams");
        records.clear();
        queue(a, 2, stash ? "StashList.bin" : "SamSitelist.bin");
        call(a, 0x390260);
    }
    call(a, 0x39ac04, {0.0f, -1.0f});
    if (button(a, "No", {50, 0}, stash ? 0x34d379 : 0x34d5e1))
        call(a, 0x390260);
    call(a, 0x3910e8);
}
void replay(FrameMenuState &s, FrameMainMenuState &m, const MenuPagesApi &a) {
    if (!a.state)
        stop(UnityStatus::missing_dependency, 0x2189a8);
    if (!a.dependency_state)
        stop(UnityStatus::missing_dependency, 0x218750);
    auto &files = *a.dependency_state;
    if (!s.values.contains(0x27f9a0))
        s.values[0x27f9a0] = 0xffffffffu; // [C] DLL initialized cell.
    call(a, 0x38ec90);
    const auto color = get<ReI32>(a, 0x392298, {ReI32(4), 1.0f});
    call(a, 0x398bec, {ReI32(8), color});
    const auto input = s.strings[0x3fd338];
    const float width = get<Vec2>(a, 0x39233c).x * .5f - 30;
    const auto height = get<float>(a, 0x3925cc);
    (void)get<bool>(a, 0x3c0538,
                    {re::ReString("##Config"), text(s, 0), input, ReI32(input.size()),
                     Vec2{width, height}, ReI32(0x5000), Address(0), Address(0)});
    s.values[0x3fd4f4] = get<bool>(a, 0x39408c) ? 1u : 0u;
    call(a, 0x39890c, {ReI32(1)});
    if (!(raw(s, 0x3fd7c4) & 1))
        s.values[0x3fd7c4] = raw(s, 0x3fd7c4) | 1;
    call(a, 0x398c60, {ReI32(2), Vec2{16, 16}});
    const float left_width = get<Vec2>(a, 0x39233c).x * .5f - 30;
    (void)get<bool>(a, 0x38e97c,
                    {re::ReString("list"), Vec2{left_width, -1}, false, ReI32(0x10000)});
    const float item_width = get<Vec2>(a, 0x39233c).x;
    const auto names = files.configs;
    list(s, a, text(s, 1), item_width, names);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390efc);
    call(a, 0x39ac04, {0.0f, -1.0f});
    check(frame_search_child_384df0(s, m, a.frame, "H", text(s, 2), {0, -1}, true));
    if (!(raw(s, 0x3fd7c4) & 2)) {
        s.values[0x3fd7c4] = raw(s, 0x3fd7c4) | 2;
        s.strings[0x3fd7c8] = "None";
    }
    call(a, 0x3c4e90, {text(s, 3), s.strings[0x3fd7c8]});
    if (button(a, text(s, 4), {0, 0}, 0x34c915)) {
        check(refresh_frame_configs_2d91c4(files, a.frame.effects));
        notify(a, text(s, 5));
    }
    call(a, 0x39ac04, {0.0f, -1.0f});
    if (button(a, text(s, 6), {0, 0}, 0x34c9d9)) {
        re::ReString stash_path, sam_path;
        check(frame_config_path(files, a.frame.effects, true, stash_path));
        check(frame_config_path(files, a.frame.effects, false, sam_path));
        if (exists(a, sam_path)) {
            check(load_frame_config(files, a.frame.effects, false));
            notify(a, text(s, 7));
        } else
            notify(a, text(s, 8), 1);
        if (exists(a, stash_path)) {
            check(load_frame_config(files, a.frame.effects, true));
            notify(a, text(s, 9));
        } else
            notify(a, text(s, 10), 1);
    }
    if (button(a, text(s, 11), {0, 0}, 0x34cbe0) && !input.empty() && input[0] != '\0') {
        const auto normalized = normalize_menu_config_name_2d6384(input);
        if (!normalized.empty()) {
            select_filename(files, normalized);
            queue(a, 1, normalized);
        }
        notify(a, text(s, 12) + input);
        s.strings[0x3fd338].clear();
    }
    if (selected(s) >= 0) {
        call(a, 0x39ac04, {0.0f, -1.0f});
        if (button(a, text(s, 13), {0, 0}, 0x34cd56)) {
            notify(a, text(s, 14) + filename(s, files));
            queue(a, 2, filename(s, files));
            s.values[0x27f9a0] = 0xffffffffu;
        }
        if (button(a, text(s, 15), {0, 0}, 0x34ce87)) {
            const auto normalized = normalize_menu_config_name_2d6384(filename(s, files));
            if (!normalized.empty()) {
                select_filename(files, normalized);
                queue(a, 1, normalized);
            }
            notify(a, text(s, 16) + filename(s, files));
        }
        call(a, 0x39ac04, {0.0f, -1.0f});
        if (button(a, text(s, 17), {0, 0}, 0x34d009)) {
            for (const Rva r : {0x3e5cbfu, 0x3e5cb9u, 0x3e5cbbu, 0x3e5cbcu, 0x3e5cbdu, 0x3e5cbau,
                                0x3fa7c4u, 0x3e5cbeu})
                s.values[r] = 1;
            s.strings[0x3fd7c8] = filename(s, files);
            select_filename(files, filename(s, files));
            queue(a, 0, filename(s, files));
            notify(a, text(s, 18) + filename(s, files));
        }
    }
    deletion_popup(s, a, true);
    if (!files.stashes.empty() && !files.samsites.empty())
        call(a, 0x39ac04, {0.0f, -1.0f});
    deletion_popup(s, a, false);
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
} // namespace
re::ReString normalize_menu_config_name_2d6384(re::ReStringView input) {
    const auto space = [](unsigned char c) {
        return c <= 32 && ((ReU64(0x100002600) >> c) & 1) != 0;
    };
    ReUSize start = 0, end = input.size();
    while (start < end && space(static_cast<unsigned char>(input[start])))
        ++start;
    while (end > start &&
           (space(static_cast<unsigned char>(input[end - 1])) || input[end - 1] == '.'))
        --end;
    re::ReString name;
    name.reserve(end - start + 4);
    for (ReUSize i = start; i < end; ++i) {
        const auto c = static_cast<unsigned char>(input[i]);
        if (c < 32)
            continue;
        const auto shifted = static_cast<unsigned char>(c - 0x22);
        if ((shifted <= 0x3a && ((ReU64(0x400000035002101) >> shifted) & 1) != 0) ||
            c == '|')
            continue;
        name.push_back(static_cast<char>(c));
    }
    if (name.empty())
        return {};
    bool extension = name.size() >= 4;
    constexpr re::ReStringView suffix = ".bin";
    if (extension)
        for (ReUSize i = 0; i < 4; ++i) {
            auto c = name[name.size() - 4 + i];
            if (c >= 'A' && c <= 'Z')
                c = static_cast<char>(c + 32);
            if (c != suffix[i]) {
                extension = false;
                break;
            }
        }
    if (!extension)
        name += ".bin";
    return name;
}
FrameDependencyResult replay_menu_config_page_34c4b0(FrameMenuState &s, FrameMainMenuState &m,
                                                     const MenuPagesApi &a) {
    {
        replay(s, m, a);
        return {};
    }
}
} // namespace rust_internal_re
