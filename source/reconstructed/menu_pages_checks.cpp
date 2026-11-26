#include "menu_pages_analysis.hpp"
namespace rust_internal_re {
void check_menu_pages_reconstruction() {
    auto require = [](bool b) {
        if (!b)
            __builtin_trap();
    };
    require(normalize_menu_config_name_2d6384(" \talpha?.BIN. \t") == "alpha.BIN");
    require(normalize_menu_config_name_2d6384("a.| ") == "a..bin");
    require(normalize_menu_config_name_2d6384("\r\n/?:*<>|\\\"").empty());
    require(normalize_menu_config_name_2d6384(".hidden") == ".hidden.bin");
    re::ReString shared = "first";
    MenuPageTextPool pool(shared);
    pool.put(-10, re::ReStringView("abcdef\0", 7));
    MenuPageTextRef buffer_ref{&pool, -10, false}, wide_ref{&pool, 0, true};
    const re::ReString copied_before = buffer_ref;
    pool.put(-7, re::ReStringView("Z\0", 2));
    shared = "second";
    require(re::ReString(buffer_ref) == "abcZ" && copied_before == "abcdef" &&
            re::ReString(wide_ref) == "second");
    FrameMenuState s;
    FrameMainMenuState m;
    MenuPagesState owned;
    FrameDependencyState files;
    MenuPagesApi a;
    a.state = &owned;
    a.dependency_state = &files;
    m.categories.resize(7);
    constexpr Address base = 0x1000000, window = base + 0x100, io = base + 0x1000;
    Snapshot imgui(base, re::ReVector<ReByte>(0x6000));
    a.frame.imgui = &imgui;
    a.frame.context = base;
    require(imgui.write(window + 0x100, Vec2{10, 20}));
    require(imgui.write(base + 0x3c30, 16.0f));
    a.bool_vector = [](Rva) -> re::ReOptional<re::ReVector<bool>> {
        return re::ReVector<bool>(64, false);
    };
    a.frame.effects.time = [](Rva) -> re::ReOptional<float> { return 10.0f; };
    re::ReVector<MenuControlRequest> calls;
    re::ReVector<re::ReString> child_labels;
    bool popup = false;
    a.frame.effects.unity.external =
        [&](Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        switch (role) {
        case 0x392f34:
            return 800.0f;
        case 0x3925cc:
            return 30.0f;
        case 0x392ee4:
            return 600.0f;
        case 0x392424:
        case 0x392448:
            return 10.0f;
        case 0x39233c:
            return Vec2{800, 600};
        case 0x392ef8:
        case 0x392f14:
            return Vec2{20, 30};
        case 0x392ca4:
            return base;
        case 0x35d200:
            return window;
        case 0x3926ac:
            return io;
        case 0x392ecc:
        case 0x391c50:
            return Address(123);
        case 0x39334c:
            return re::re_get<ReI32>(args[2]);
        case 0x392298:
            return ReI32(-1);
        case 0x38f79c:
        case 0x3a3874:
            return Vec2{40, 16};
        case 0x38f224:
            return re::re_get<Vec2>(args[0]);
        case 0x38e97c:
            child_labels.push_back(re::re_get<re::ReString>(args[0]));
            return true;
        case 0x39408c:
            return false;
        case 0x38edbc:
            return popup;
        case 0x3c0538:
            return false;
        default:
            return re::ReMonostate{};
        }
    };
    const auto default_control = [&](const MenuControlRequest &r) {
        calls.push_back(r);
        return MenuControlResult{};
    };
    a.control = default_control;
    const auto reset = [&] {
        s = {};
        m = {};
        m.categories.resize(7);
        calls.clear();
        child_labels.clear();
        owned = {};
        files = {};
        s.values[0x248ee8] = re::re_bit_cast<ReU32>(1.0f);
        s.values[0x3fc0f8] = s.values[0x3fc0fc] = re::re_bit_cast<ReU32>(1.0f);
        s.values[0x3fcc88] = 100;
        s.font_buckets[2].fonts[16] = 777;
        popup = false;
    };
    const auto complete = [&](Rva page) {
        const auto r = replay_menu_page(page, s, m, a);
        if (r.status != UnityStatus::complete)
            __builtin_trap();
    };
    // Every page root executes with supplied typed UI effects and owned data.
    constexpr Rva roots[] = {0x359098, 0x336868, 0x337e7c, 0x338f30, 0x33a6f8, 0x33ac78, 0x33c768,
                             0x33e738, 0x3400b0, 0x341bd8, 0x3429f4, 0x3455b4, 0x346ccc, 0x34841c,
                             0x349db4, 0x34aedc, 0x34c4b0, 0x34d784, 0x34e554, 0x34f35c, 0x35013c};
    a.favorites_27f988 = []() -> re::ReOptional<re::ReVector<MenuControlRequest>> {
        return re::ReVector<MenuControlRequest>{};
    };
    for (const auto root : roots)
        for (ReU32 language = 0; language < 3; ++language) {
            reset();
            s.values[0x3fd0e8] = language;
            complete(root);
        }
    for (ReU32 language = 0; language < 3; ++language) {
        reset();
        s.values[0x3fd0e8] = language;
        complete(0x359098);
        auto first = re::re_find_if(calls.begin(), calls.end(),
                                  [](const auto &r) { return r.site == 0x3591f0; });
        require(bool(first));
        require(language ? first->description == first->label
                         : first->description == "Snaps onto your target");
    }
    reset();
    s.values[0x3fd0e8] = 2;
    complete(0x33a6f8);
    require(calls.size() == 9 && calls[0].label == "石矿" && calls[1].color == 0x3eb738 &&
            calls[2].color == 0x3eb6d8);
    require(calls.back().value == 0x3ee888 && calls.back().minimum == 0 &&
            calls.back().maximum == 500 && calls.back().format == "%d");
    calls.clear();
    s.values[0x3e6b68] = 1;
    complete(0x33a6f8);
    bool icon_size = false;
    for (const auto &r : calls)
        if (r.value == 0x3ed2f8) {
            icon_size = true;
            require(r.minimum_float == 1.5f && r.maximum_float == 2.5f);
        }
    require(icon_size); // Exact OtherIcons gate from33aaee, independently audited.
    reset();
    bool legit_size = false, ordinary_size = false;
    a.control = [&](const MenuControlRequest &r) {
        calls.push_back(r);
        if (r.value == 0x3d7ec8 || r.value == 0x3f9488)
            s.values[r.value] = 1; // Interaction mutation precedes later native branch reread.
        if (r.value == 0x3f9528) {
            legit_size = true;
            require(r.minimum_float == 0 && r.maximum_float == re::re_bit_cast<float>(0x3ff9374cu));
        }
        if (r.value == 0x3f3dd8)
            ordinary_size = true;
        return MenuControlResult{};
    };
    complete(0x336868);
    require(legit_size && !ordinary_size);
    reset();
    a.control = [&](const MenuControlRequest &r) {
        if (r.site == 0x34b3c8)
            s.values[r.value] = 150;
        return MenuControlResult{};
    };
    complete(0x34aedc);
    require(re::re_bit_cast<float>(s.values[0x248ee8]) == 1.5f && s.values[0x3fc106] == 1);
    reset();
    require(imgui.write(base + 0x3f68, ReU32(1)));
    complete(0x34aedc);
    require(re::re_bit_cast<float>(s.values[0x248ee8]) == 1.0f && s.values[0x3fc106] == 0);
    require(imgui.write(base + 0x3f68, ReU32(0)));
    reset();
    MenuControlRequest stored;
    stored.role = MenuControlRole::slider_float;
    stored.label = "stored";
    stored.value = 0x123;
    stored.format = "%.9g";
    a.control = default_control;
    a.favorites_27f988 = [&]() -> re::ReOptional<re::ReVector<MenuControlRequest>> {
        return re::ReVector<MenuControlRequest>{stored};
    };
    complete(0x35013c);
    require(calls.size() == 1 && calls[0].format == "%.9g" && calls[0].flags == 0);
    reset();
    owned.players = {{"Alice", "111", "A1", 7}, {"Alice", "222", "B2", 8}};
    owned.player_status = {{"111", 2}, {"222", 1}};
    bool status_cell = false;
    a.control = [&](const MenuControlRequest &r) {
        if (r.role == MenuControlRole::combo_strings && r.primitive == 0x3bf008) {
            require(r.owned_integer == &owned.player_status["111"]);
            *r.owned_integer = 0;
            status_cell = true;
        }
        return MenuControlResult{};
    };
    complete(0x34e554);
    require(status_cell && owned.string_vectors[0x3fc0b0] == re::ReVector<re::ReString>{"Alice"} &&
            owned.player_status["111"] == 0);
    s.strings[0x3fd2c8] = "AL";
    complete(0x34d784);
    require(owned.string_vectors[0x3fc098].empty());
    s.strings[0x3fd2c8] = "al";
    a.control = default_control;
    complete(0x34d784);
    require(owned.string_vectors[0x3fc098].size() == 2);
    reset();
    owned.players = {{"Alice", "123", "A1", 7}};
    re::ReString copied;
    a.control = [&](const MenuControlRequest &r) {
        MenuControlResult result;
        result.pressed = r.site == 0x34df0c || r.site == 0x34df83;
        return result;
    };
    a.frame.effects.unity.resolve_target = [&](const UnityCacheSpec &spec) -> MetadataResult {
        require(spec.flags == 0x3fd7e8 && spec.target == 0x3fd7f0 && spec.context == 0x3fd800 &&
                spec.method == "set_systemCopyBuffer");
        return {42};
    };
    a.frame.effects.unity.detect_context = [&](const UnityCacheSpec &, Address p) {
        require(p == 42);
        return true;
    };
    a.clipboard = [&](re::ReStringView text) -> re::ReOptional<bool> {
        copied = text;
        return false;
    };
    complete(0x34d784);
    require(owned.players.empty() && copied == "https://steamcommunity.com/profiles/123" &&
            s.values[0x3fd7e8] == 7);
    reset();
    owned.players = {{"Alice", "123", "A1", 7}};
    a.clipboard = {};
    const auto missing_clipboard = replay_menu_page(0x34d784, s, m, a);
    require(missing_clipboard.status == UnityStatus::missing_dependency &&
            missing_clipboard.stopped_at == 0x34e0c0 && s.values[0x3fd7e8] == 7);
    reset();
    s.strings[0x3fd338] = " \talpha?.BIN. \t";
    a.control = [&](const MenuControlRequest &r) {
        MenuControlResult result;
        result.pressed = r.site == 0x34cbe0;
        return result;
    };
    complete(0x34c4b0);
    require(owned.file_requests.size() == 1 && owned.file_requests[0].operation == 1 &&
            owned.file_requests[0].filename == "alpha.BIN");
    require(files.selected_config == "alpha.BIN" && s.strings[0x3fd338].empty() &&
            files.notifications.size() == 1);
    reset();
    files.configs = {"one.bin"};
    s.values[0x27f9a0] = 0;
    a.control = [&](const MenuControlRequest &r) {
        MenuControlResult result;
        result.pressed = r.site == 0x34cd56 || r.site == 0x34ce87;
        return result;
    };
    const auto after_delete = replay_menu_page(0x34c4b0, s, m, a);
    require(after_delete.status == UnityStatus::malformed_input &&
            after_delete.stopped_at == 0x2d4d20 && owned.file_requests.size() == 1 &&
            owned.file_requests[0].operation == 2 && s.values[0x27f9a0] == 0xffffffffu);
    reset();
    files.stashes.resize(2);
    files.samsites.resize(3);
    popup = true;
    a.control = [&](const MenuControlRequest &r) {
        MenuControlResult result;
        result.pressed = r.site == 0x34d2db || r.site == 0x34d542;
        return result;
    };
    complete(0x34c4b0);
    require(files.stashes.empty() && files.samsites.empty() && owned.file_requests.size() == 2 &&
            owned.file_requests[0].filename == "StashList.bin" &&
            owned.file_requests[1].filename == "SamSitelist.bin");
    reset();
    a.control = default_control;
    require(menu_page_specs().size() == 21);
    auto bound = bind_menu_pages(a);
    require(bool(bound.effects.unity.external));
    require(bound.page(0x3353f4, s, m).status == UnityStatus::complete);
    unsigned fallback = 0;
    auto prior = a.frame;
    prior.page = [&](Rva role, FrameMenuState &, FrameMainMenuState &) {
        require(role == 0x123);
        ++fallback;
        return FrameDependencyResult{};
    };
    auto partial = a;
    partial.control = {};
    bound = bind_menu_pages(partial, prior);
    const auto known = bound.page(0x3353f4, s, m);
    require(known.status == UnityStatus::missing_dependency && known.stopped_at == 0x3bd114 &&
            fallback == 0);
    require(bound.page(0x123, s, m).status == UnityStatus::complete && fallback == 1);
}
} // namespace rust_internal_re
