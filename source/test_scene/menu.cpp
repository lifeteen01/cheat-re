#include "scene.hpp"
#include "imgui_text_input_analysis.hpp"
#include "imgui_window_details_analysis.hpp"
#include "menu_render_bindings.hpp"
#include "menu_pages_analysis.hpp"
#include "imgui_windows_internal.hpp"
#include "font_frame_bindings.hpp"
#include "menu_tooltip_analysis.hpp"

namespace owned_scene {
namespace {
template <class Value> Value copied(const re::Snapshot &image, re::Address address) {
    const auto result = image.read<Value>(address);
    if (!result) __builtin_trap();
    return *result;
}
::re::ReVector<re::Address> copied_windows(const re::Snapshot &image, re::Address descriptor) {
    const auto count = copied<ReI32>(image, descriptor);
    if (count < 0 || count > 10000)
        __builtin_trap();
    const auto data = copied<re::Address>(image, descriptor + 8);
    ::re::ReVector<re::Address> result;
    for (ReI32 index = 0; index < count; ++index)
        result.push_back(copied<re::Address>(image, data + re::Address(index) * 8));
    return result;
}
bool visible_window(const re::Snapshot &image, re::Address window_address) {
    return copied<ReU8>(image, window_address + 0xb6) &&
        !copied<ReU8>(image, window_address + 0xbd);
}
bool contains(re::ClipRect rectangle, re::Vec2 position) {
    return position.x >= rectangle.x && position.x < rectangle.z &&
        position.y >= rectangle.y && position.y < rectangle.w;
}
void sort_display_windows(re::Snapshot &image, re::Address context_address) {
    const auto display = copied_windows(image, context_address + 0x3ea8);
    ::re::ReVector<re::Address> sorted;
    ::re::ReSet<re::Address> visited;
    const auto append = [&](auto &&self, re::Address window_address) -> void {
        if (!visited.insert(window_address))
            __builtin_trap();
        sorted.push_back(window_address);
        if (!copied<ReU8>(image, window_address + 0xb6)) return;
        auto children = copied_windows(image, window_address + 0x190);
        ::re::re_sort(children.begin(), children.end(), [&](re::Address left, re::Address right) {
            const auto left_flags = copied<ReU32>(image, left + 0x14);
            const auto right_flags = copied<ReU32>(image, right + 0x14);
            if ((left_flags & 0x4000000u) != (right_flags & 0x4000000u))
                return (left_flags & 0x4000000u) < (right_flags & 0x4000000u);
            if ((left_flags & 0x2000000u) != (right_flags & 0x2000000u))
                return (left_flags & 0x2000000u) < (right_flags & 0x2000000u);
            return copied<ReI16>(image, left + 0xc6) < copied<ReI16>(image, right + 0xc6);
        });
        const auto child_data = copied<re::Address>(image, window_address + 0x198);
        for (ReUSize index = 0; index < children.size(); ++index) {
            if (!image.write(child_data + index * 8, children[index]))
                __builtin_trap();
            if (copied<ReU8>(image, children[index] + 0xb6)) self(self, children[index]);
        }
    };
    for (const auto window_address : display)
        if (!copied<ReU8>(image, window_address + 0xb6) ||
            !(copied<ReU32>(image, window_address + 0x14) & 0x1000000u))
            append(append, window_address);
    if (sorted.size() != display.size())
        __builtin_trap();
    const auto display_data = copied<re::Address>(image, context_address + 0x3eb0);
    for (ReUSize index = 0; index < sorted.size(); ++index)
        if (!image.write(display_data + index * 8, sorted[index]))
            __builtin_trap();
}
::re::ReArray<re::Address, 2> hovered_windows(const re::Snapshot &image, re::Address context_address,
                                          re::Vec2 mouse_position) {
    auto moving = copied<re::Address>(image, context_address + 0x3f20);
    re::Address hovered = moving && !(copied<ReU32>(image, moving + 0x14) & 0x200u)
        ? moving : 0;
    re::Address beneath_moving{};
    const auto ordinary_padding = copied<re::Vec2>(image, context_address + 0x3834);
    const auto resize_padding = copied<ReU8>(image, context_address + 0x7e)
        ? copied<re::Vec2>(image, context_address + 0x3efc) : ordinary_padding;
    const auto display = copied_windows(image, context_address + 0x3ea8);
    for (ReUSize ri = display.size(); ri > 0; --ri) {
        const auto candidate = display[ri - 1];
        const auto flags = copied<ReU32>(image, candidate + 0x14);
        if (!visible_window(image, candidate) || (flags & 0x200u)) continue;
        const auto padding = flags & 0x1000042u ? ordinary_padding : resize_padding;
        auto rectangle = copied<re::ClipRect>(image, candidate + 0x1e8);
        rectangle.x -= padding.x;
        rectangle.y -= padding.y;
        rectangle.z += padding.x;
        rectangle.w += padding.y;
        if (!contains(rectangle, mouse_position)) continue;
        const auto hole_width = copied<ReI16>(image, candidate + 0x258);
        if (hole_width) {
            const auto position = copied<re::Vec2>(image, candidate + 0x20);
            const auto hole_left = position.x + copied<ReI16>(image, candidate + 0x25c);
            const auto hole_top = position.y + copied<ReI16>(image, candidate + 0x25e);
            if (contains(re::ClipRect{hole_left, hole_top, hole_left + float(hole_width),
                          hole_top + float(copied<ReI16>(image, candidate + 0x25a))}, mouse_position))
                continue;
        }
        if (!hovered) hovered = candidate;
        if (!beneath_moving && (!moving || copied<re::Address>(image, candidate + 0x378) !=
                                            copied<re::Address>(image, moving + 0x378)))
            beneath_moving = candidate;
        if (hovered && beneath_moving) break;
    }
    return {hovered, beneath_moving};
}
::re::ReVector<re::Address> visible_lists(const re::Snapshot &image, re::Address context_address,
                                       const re::DrawCoreStore &draw) {
    if (copied<re::Address>(image, context_address + 0x4a50) ||
        copied<re::Address>(image, context_address + 0x4a60))
        __builtin_trap();
    ::re::ReArray<::re::ReVector<re::Address>, 2> layers;
    ::re::ReSet<re::Address> visited;
    const auto collect = [&](auto &&self, re::Address window_address, unsigned layer) -> void {
        if (!visible_window(image, window_address)) return;
        if (!visited.insert(window_address))
            __builtin_trap();
        const auto draw_address = copied<re::Address>(image, window_address + 0x298);
        const auto &list = draw.lists.at(draw_address);
        if (list.commands.size && (list.commands.size != 1 || list.commands.at(0).element_count ||
                                  list.commands.at(0).callback))
            layers[layer].push_back(draw_address);
        for (const auto child_address : copied_windows(image, window_address + 0x190))
            self(self, child_address, layer);
    };
    for (const auto window_address : copied_windows(image, context_address + 0x3ea8)) {
        const auto flags = copied<ReU32>(image, window_address + 0x14);
        if (!(flags & 0x1000000u)) collect(collect, window_address, (flags >> 25) & 1u);
    }
    ::re::ReVector<re::Address> result{Resources::esp_list};
    for (const auto &layer : layers) result.insert(result.end(), layer.begin(), layer.end());
    return result;
}
}
struct InternalMenu::State {
    static constexpr re::Address context = 0x10000, window = 0x20000,
        id_stack = 0x80000, order = 0x81000, character_queue = 0x82000;
    static constexpr re::Rva esp_key = 0x410000, boxes_key = 0x410004,
        names_key = 0x410008, distance_key = 0x41000c;
    Resources &resources;
    re::Snapshot image{0, ::re::ReVector<ReByte>(0x420000)};
    re::FrameMenuState config;
    re::FrameMainMenuState main_menu;
    re::FrameDependencyState dependencies;
    re::MenuControlsState controls;
    re::MenuControlsApi api;
    re::ImguiTextInputState editors;
    re::ImguiTextInputApi editor_api;
    re::ImguiWindowsState windows;
    re::ImguiWindowDetailsState details;
    re::ImguiWindowsApi window_api;
    re::MenuColorPickerApi picker;
    re::FrameMainMenuApi frame_api;
    re::MenuPagesState pages;
    re::MenuTooltipState tooltips;
    re::FrameDependencyResult window_result;
    ReI32 frame_number{};
    re::Address allocation_next{0x100000};
    ::re::ReMap<re::Address, ReUSize> allocations;
    ::re::ReMap<re::Address, ReUSize> free_blocks;
    MenuTelemetry *telemetry{};
    re::ClipRect clip{};
    float down_time{-1};
    unsigned last_width{}, last_height{};
    bool was_open{};
    re::Vec2 previous_mouse{-100, -100}, click_position{-100, -100};
    double elapsed{};
    float click_time{-1};
    ReU16 click_count{};
    ::re::ReString clipboard;
    re::Address preview_window{}, popup_window{};
    bool preview_recorded{};
    bool cold_start{true};
    bool prepared{}, external_preparation{};
    ReU32 random_state{0x6d2b79f5};
    ::re::ReSet<re::Rva> initialized_pages;

    template <class T> void put(re::Address address, T value) {
        if (!image.write(address, value))
            __builtin_trap();
    }
    template <class T> T get(re::Address address) const {
        const auto result = image.read<T>(address);
        if (!result)
            __builtin_trap();
        return *result;
    }
    static void require(re::FrameDependencyResult result, ::re::ReStringView stage = "page") {
        (void)stage;
        if (result.status != re::UnityStatus::complete)
            __builtin_trap();
    }
    void hit(::re::ReStringView name) { resources.trace.hit(name); }
    void bounds(::re::ReString name, re::ClipRect box) {
        if (get<ReU8>(current_window() + 0xbd)) return;
        const auto native_clip = get<re::ClipRect>(current_window() + 0x238);
        box.x = ::re::re_max(box.x, native_clip.x);
        box.y = ::re::re_max(box.y, native_clip.y);
        box.z = ::re::re_min(box.z, native_clip.z);
        box.w = ::re::re_min(box.w, native_clip.w);
        box.x = ::re::re_clamp(box.x, 0.0f, float(last_width));
        box.z = ::re::re_clamp(box.z, 0.0f, float(last_width));
        box.y = ::re::re_clamp(box.y, 0.0f, float(last_height));
        box.w = ::re::re_clamp(box.w, 0.0f, float(last_height));
        if (box.z > box.x && box.w > box.y)
            telemetry->controls[::re::re_move(name)] = box;
    }
    re::Address allocate(ReUSize bytes) {
        bytes = (bytes + 15u) & ~ReUSize(15u);
        for (auto block = free_blocks.begin(); block != free_blocks.end(); ++block) {
            if (block->value < bytes)
                continue;
            const auto address = block->key;
            const auto size = block->value;
            free_blocks.erase(block);
            allocations[address] = size;
            return address;
        }
        if (bytes > 0x210000 - allocation_next)
            __builtin_trap();
        const auto address = allocation_next;
        allocation_next += bytes;
        allocations[address] = bytes;
        return address;
    }
    re::Address current_window() const { return get<re::Address>(context + 0x3f08); }
    re::Address current_draw() const { return get<re::Address>(current_window() + 0x298); }
    void register_draw(re::Address draw) {
        resources.shared[draw] = resources.shared.at(Resources::menu_list);
        resources.shapes[draw] = resources.shapes.at(Resources::menu_list);
        resources.shadows[draw] = resources.shadows.at(Resources::menu_list);
    }
    explicit State(Resources &owned) : resources(owned) {
        controls.image = &image;
        controls.config = &config;
        controls.main_menu = &main_menu;
        controls.draw = &resources.draw;
        main_menu.search_groups.emplace_back();
        const ::re::ReArray<::re::ReString, 7> category_names{
            "Aim", "Visuals", "Radar", "Miscellaneous", "Settings", "Players", "Favorites"};
        const ::re::ReArray<ReUSize, 7> page_counts{3, 6, 1, 5, 2, 3, 1};
        for (ReUSize index = 0; index < category_names.size(); ++index) {
            re::FrameMenuCategory category;
            category.name = category_names[index];
            { char ch = char('A' + index); category.icon = index == 6 ? "G" : ::re::ReString(&ch, 1); }
            if (page_counts[index] > 1)
                for (ReUSize subtab = 0; subtab < page_counts[index]; ++subtab)
                    category.subtabs.push_back("Page " + ::re::re_to_string(subtab + 1));
            main_menu.categories.push_back(::re::re_move(category));
        }
        put(0x405b28, context);
        put(context + 0x3f08, window);
        put(context + 0x48e8, window);
        put(context + 0x3c28, Resources::font);
        put(context + 0x3c30, 14.0f);
        put(context + 0x3c34, 14.0f);
        put(context + 0x60, 1.0f);
        put(context + 0x68, Resources::font);
        put(context + 0x37d0, 1.0f);
        put(context + 0x380c, re::Vec2{4, 3});
        put(context + 0x3814, 3.0f);
        put(context + 0x381c, re::Vec2{8, 10});
        put(context + 0x384c, 10.0f);
        put(context + 0x3c, 0.25f);
        put(context + 0x40, 0.1f);
        put(window, context);
        put(window + 0x10, re::menu_controls_hash_39334c("Owned ESP"));
        put(window + 0x298, Resources::menu_list);
        put(window + 0xf0, 1);
        put(window + 0xf4, 1);
        put(window + 0xf8, id_stack);
        put(id_stack, re::menu_controls_hash_39334c("Owned ESP"));
        put(window + 0x378, window);
        put(window + 0x390, window);
        put(window + 0x1b4, 1u);
        put(window + 0x1b0, -1);
        put(window + 0x260, -1);
        put(window + 0xdc, ReU8(15));
        put(window + 0xdd, ReU8(15));
        put(window + 8, re::Address(0x84000));
        const ::re::ReString window_name = "Owned ESP";
        for (ReUSize index = 0; index <= window_name.size(); ++index)
            put(0x84000 + index, index == window_name.size() ? char(0) : window_name[index]);
        windows.window_ids[re::menu_controls_hash_39334c(window_name)] = window;
        put(window + 0xb7, ReU8(1));
        put(window + 0x290, 1.0f);
        put(context + 0x3eb8, 1);
        put(context + 0x3ebc, 1);
        put(context + 0x3ec0, order);
        put(context + 0x3ea8, 1);
        put(context + 0x3eac, 1);
        put(context + 0x3eb0, order);
        put(order, window);
        put(0x248ee8, 1.0f);
        put(0x2930a8, 0.1f);
        put(0x2930ac, 0.25f);
        put(0x2a823c, 17.0f);
        put(0x2a868c, 0.72f);
        put(0x28e1c8, 0.3f);
        put(0x28db28, 40.0f);
        put(0x28db30, 60.0f);
        put(0x28db54, ::re::ReNumericLimits<float>::max());
        put(0x28d254, 1.0f);
        put(0x28d250, 0.5f);
        put(0x293260, -1.0f);
        put(0x293134, 2.0f);
        put(0x2941b0, 0.6f);
        put(0x2a9444, -::re::ReNumericLimits<float>::max());
        put(0x293178, 4.0f);
        put(0x2931bc, 16.0f);
        put(0x2931a4, 11.0f);
        put(0x293144, 2.5f);
        put(0x2930bc, ::re::re_bit_cast<float>(0x3ee66666u));
        put(0x2a9424, ::re::re_bit_cast<float>(0x3fc90fdbu));
        put(0x2a9428, ::re::re_bit_cast<float>(0x4096cbe4u));
        put(0x2931e8, 36.0f);
        put(0x2a8204, 1.1f);
        put(0x28d6e4, 255.0f);
        put(0x293238, 230.0f);
        put(context + 0x37e8, re::Vec2{16, 16});
        put(context + 0x37d8, re::Vec2{18, 14});
        put(context + 0x48d8, 1);
        put(context + 0x48dc, 1);
        put(context + 0x48e0, re::Address(0x85000));
        put(0x85000, re::Address(0x85100));
        put(Resources::font + 0x40, Resources::atlas);
        put(Resources::atlas + 8, Resources::texture);
        put(Resources::menu_list + 0x38, context + 0x3c38);
        put(context + 0x3c64, 1u | 4u | 8u);
        put(0x27fa18, re::Address(0xa110c));
        put(0x27fa20, re::Address(0xf4ee));
        for (const auto index : {0u, 2u, 3u, 11u, 13u, 14u}) {
            const auto meta = re::Address(0x2a9930 + index * 12);
            put(meta, 8u);
            put(meta + 4, index == 0 || index == 3 || index == 13 ? 1u : 2u);
            put(meta + 8, index == 0 ? 0u : index == 2 ? 8u : index == 3 ? 0x10u :
                              index == 11 ? 0x3cu : index == 13 ? 0x48u : 0x4cu);
        }
        for (ReU32 key = 0x200; key <= 0x28b; ++key) {
            put(context + 0x4240 + re::Address(key) * 2, ReU16(0xffff));
            put(context + 0x3fb0 + re::Address(key - 0x200) * 12, 0xffffffffu);
            put(context + 0x3fb0 + re::Address(key - 0x200) * 12 + 4, 0xffffffffu);
            put(context + 0xe2c + re::Address(key) * 16 + 4, -1.0f);
        }
        const ::re::ReArray<::re::ReArray<float, 4>, 9> palette{{
            {0.30f, 0.90f, 0.65f, 1}, {0.92f, 0.95f, 1, 1},
            {0.48f, 0.55f, 0.64f, 1}, {0.10f, 0.13f, 0.18f, 1},
            {0.10f, 0.13f, 0.18f, 1}, {0.18f, 0.24f, 0.31f, 1},
            {0.25f, 0.31f, 0.39f, 1}, {0, 0, 0, 0.3f}, {0.08f, 0.10f, 0.15f, 1}}};
        for (ReUSize index = 0; index < palette.size(); ++index)
            put(context + 0x38b8 + index * 16, palette[index]);
        for (auto &bucket : config.font_buckets)
            for (float size : {10.0f, 12.0f, 14.0f, 15.0f, 16.0f})
                bucket.fonts[size] = Resources::font;
        resources.write_font_snapshot(image);
        config.values[0x248ee8] = ::re::re_bit_cast<ReU32>(1.0f);
        // Owned configuration input: the real Settings initializer copies this
        // percentage into3fd7bc before deriving248ee8. No init flag is seeded.
        config.values[0x3fcc88] = 100;
        config.values[0x3fc0f8] = config.values[0x3fc0fc] = ::re::re_bit_cast<ReU32>(1.0f);
        config.values[0x27fa10] = config.values[0x27fa14] = ::re::re_bit_cast<ReU32>(1.0f);
        config.values[0x3fcaf8] = ::re::re_bit_cast<ReU32>(14.0f);
        config.fonts.fill(Resources::font);
        api = re::bind_menu_controls_snapshot(controls);
        api = re::bind_menu_shape_primitives(image, resources.draw, resources.shapes, api);
        const auto rectangle = api.rectangle;
        api.rectangle = [this, rectangle](const re::MenuControlRectangle &request) {
            if (preview_window && current_window() == preview_window && !preview_recorded) {
                preview_recorded = true;
                hit("menu_controls_color_386438");
                hit("menu_detail::color@386438");
                bounds("color_preview", {request.minimum.x, request.minimum.y,
                                          request.maximum.x, request.maximum.y});
            }
            rectangle(request);
        };
        api = re::bind_menu_shadows(resources.draw, resources.shapes, resources.shadows, api);
        const auto shadow_rectangle = api.glow_rectangle_3a2010;
        api.glow_rectangle_3a2010 = [shadow_rectangle](const re::MenuControlGlowRectangle &request) {
            shadow_rectangle(request);
        };
        const auto circle = api.circle;
        api.circle = [circle](const re::MenuControlCircle &request) {
            circle(request);
        };
        api = re::bind_menu_controls_text(resources.fonts, resources.sink, api);
        re::MenuTooltipApi tooltip_api;
        tooltip_api.controls = api;
        api = re::bind_menu_tooltip(controls, tooltips, tooltip_api, api);
        re::ImguiNavigationApi navigation;
        navigation.allocate = [this](re::Address, re::Address, ReUSize bytes) {
            return allocate(bytes);
        };
        navigation.free = [this](re::Address, re::Address, re::Address address) {
            const auto allocation = allocations.find(address);
            if (allocation) {
                free_blocks[address] = **allocation;
                allocations.erase(address);
            }
        };
        api = re::bind_imgui_navigation(controls, navigation, api);
        const auto deactivate_text = api.deactivate_text_3c04d0;
        api.deactivate_text_3c04d0 = [this, deactivate_text](re::Address editor_id) {
            const bool exported = editor_id && get<ReU32>(context + 0x4c20) == editor_id;
            deactivate_text(editor_id);
            if (exported) {
                if (get<ReU32>(context + 0x5aa8) != editor_id)
                    __builtin_trap();
                hit("owned_menu_text_deactivation_export_3c04d0");
            }
        };
        windows.controls = &controls;
        details.windows = &windows;
        re::ImguiWindowDetailsApi detail_api;
        detail_api.fonts = &resources.fonts;
        detail_api.text_sink = &resources.sink;
        detail_api.shape_resources = &resources.shapes;
        window_api.controls = api;
        window_api.reserve_storage = [this](ReUSize bytes) { return allocate(bytes); };
        window_api.allocation_leaf = navigation.allocate;
        window_api.free_leaf = navigation.free;
        window_api = re::bind_imgui_window_details(details, detail_api, window_api);
        window_api.create_window_3908d4 = [this](::re::ReStringView name, ReU32 flags) {
            hit("imgui_window_create_3908d4");
            const auto created = re::window_detail::create_window(windows, window_api, name, flags);
            const auto initial_position = get<re::Vec2>(created + 0x20);
            if (initial_position.x == 60 && initial_position.y == 60)
                hit("owned_menu_constructor_position_60");
            register_draw(created + 0x2a0);
            return created;
        };
        api = re::bind_imgui_windows(windows, window_api, api);
        const auto begin_child = api.begin_child_38e97c;
        api.begin_child_38e97c = [this, begin_child](const re::MenuControlChild &request) {
            if (request.id == "cbESP")
                bounds("esp", get<re::ClipRect>(context + 0x47b0));
            const auto window_address = current_window();
            const auto position = get<re::Vec2>(window_address + 0x100);
            const auto end = get<re::Vec2>(window_address + 0x250);
            auto size = request.size;
            if (size.x <= 0) size.x = ::re::re_max(4.0f, end.x - position.x + size.x);
            if (size.y <= 0) size.y = ::re::re_max(4.0f, end.y - position.y + size.y);
            put(context + 0x47e0, get<ReU32>(context + 0x47e0) | 2u);
            put(context + 0x4800, size);
            put(context + 0x47e8, 1u);
            hit("imgui_window_child_38e97c");
            begin_child(request);
            if (request.id == "cbESP") {
                preview_window = current_window();
                preview_recorded = false;
            }
        };
        const auto end_child = api.end_child_390a88;
        api.end_child_390a88 = [this, end_child] {
            hit("imgui_window_end_child_390a88");
            end_child();
        };
        const auto begin_popup = api.begin_window_38cfa4;
        api.begin_window_38cfa4 = [this, begin_popup](::re::ReStringView name, ReU32 flags) {
            hit("menu_color_popup_begin_3868be");
            hit("imgui_window_begin_38cfa4");
            begin_popup(name, flags);
            popup_window = current_window();
            if (get<ReU8>(popup_window + 0xbc)) hit("owned_menu_popup_appearing");
        };
        const auto end_popup = api.end_window_390994;
        api.end_window_390994 = [this, end_popup] {
            hit("menu_color_popup_end_386961");
            hit("imgui_window_end_390994");
            end_popup();
        };
        const auto position_popup = api.window_position_39bb20;
        api.window_position_39bb20 = [this, position_popup](re::Vec2 position) {
            hit("menu_color_popup_position_386911");
            hit("imgui_window_position_39bb20");
            position_popup(position);
        };
        const auto focus_popup = api.bring_focus_38f160;
        api.bring_focus_38f160 = [this, focus_popup](re::Address window_address) {
            hit("menu_color_popup_focus_38691e");
            focus_popup(window_address);
        };
        const auto display_popup = api.bring_display_38f0bc;
        api.bring_display_38f0bc = [this, display_popup](re::Address window_address) {
            hit("menu_color_popup_display_38692b");
            display_popup(window_address);
        };
        const auto hovered_popup = api.window_hovered_3947ec;
        api.window_hovered_3947ec = [this, hovered_popup](ReU32 flags) {
            hit("menu_color_popup_hover_386932");
            return hovered_popup(flags);
        };
        const auto clicked_popup = api.mouse_clicked_3943e4;
        api.mouse_clicked_3943e4 = [this, clicked_popup](ReI32 button, bool repeat) {
            hit("menu_color_popup_outside_click_38693f");
            return clicked_popup(button, repeat);
        };
        editor_api.controls = api;
        put(context + 0xb0, re::Address(0x83000));
        put(context + 0xb8, re::Address(0x83008));
        editor_api.clipboard_get = [this](re::Address, re::Address) {
            return ::re::ReOptional<::re::ReString>(clipboard);
        };
        editor_api.clipboard_set = [this](re::Address, re::Address, ::re::ReStringView value) {
            clipboard = value;
        };
        editor_api.allocation = navigation;
        editor_api.window_api = &window_api;
        editor_api = re::bind_imgui_text_input_text(resources.fonts, resources.sink, editor_api);
        picker.controls = api;
        picker.shapes = &resources.shapes;
        picker = re::bind_imgui_text_input_picker(controls, editors, editor_api, picker);
        const auto hex = picker.hex_input_3c0538;
        picker.hex_input_3c0538 = [this, hex](re::MenuColorPickerHexInput &input) {
            hit("replay_imgui_text_input_3c0538");
            const auto changed = hex(input);
            bounds("color_hex", get<re::ClipRect>(context + 0x47b0));
            const auto window_address = current_window();
            const auto position = get<re::Vec2>(window_address + 0x100);
            const auto padding = get<float>(context + 0x37d8);
            const auto width = 230.0f - 2 * padding;
            const auto height = (get<float>(window_address + 0x28) - 2 * padding) * 0.5f;
            const auto spacing = get<float>(context + 0x3820);
            bounds("color", {position.x, position.y, position.x + width, position.y + height});
            bounds("color_sv", {position.x, position.y, position.x + width, position.y + height});
            auto component_y = ::re::re_floorf(position.y + height + spacing);
            const auto hue_width = get<float>(window_address + 0x28) -
                (position.x - get<float>(window_address + 0x20)) - padding;
            bounds("color_hue", {position.x, component_y, position.x + hue_width, component_y + 8});
            component_y = ::re::re_floorf(component_y + 8 + spacing);
            bounds("color_alpha", {position.x, component_y, position.x + width, component_y + 8});
            return changed;
        };
        api = re::bind_menu_color_picker(controls, picker, api);
        const auto popup_picker = api.color_picker_379680;
        api.color_picker_379680 = [this, popup_picker](::re::ReStringView label,
                                                      ::re::ReArray<float, 4> &rgba) {
            hit("menu_color_popup_picker_386959");
            hit("menu_color_picker_379680");
            const auto position = get<re::Vec2>(popup_window + 0x20);
            const auto size = get<re::Vec2>(popup_window + 0x28);
            bounds("color_popup", {position.x, position.y, position.x + size.x, position.y + size.y});
            const auto changed = popup_picker(label, rgba);
            hit("menu_color_picker_sv_37afd4");
            hit("menu_color_picker_hue_37a0b8");
            hit("menu_color_picker_alpha_378f1c");
            return changed;
        };
        frame_api = re::bind_menu_controls_frame(controls, api);
        frame_api.effects.unity = re::bind_imgui_windows_frame(windows, window_api, window_result);
        frame_api.effects.unity = re::bind_font_frame(image, config, resources.fonts, resources.sink,
            {0, 0x86000, 0x86100, 0x87000, 0x87020, 1024}, frame_api.effects.unity);
        frame_api.effects.unity = re::bind_draw_shapes_frame(resources.draw, resources.shapes,
                                                             frame_api.effects.unity);
        const auto effects = frame_api.effects.unity.external;
        frame_api.effects.unity.external = [this, effects](re::Rva role,
            ::re::ReSpan<const re::UnityValue> args) -> ::re::ReOptional<re::UnityValue> {
            switch (role) {
            case 0x392198: return Resources::esp_list;
            case 0x3926ac: return context + 8;
            case 0x392ca4: return context + 0x37d0;
            case 0x392f14: return get<re::Vec2>(current_window() + 0x28);
            case 0x392ee4: return get<float>(current_window() + 0x2c);
            case 0x39246c: return get<re::Vec2>(current_window() + 0x100);
            case 0x392424:
                return get<float>(current_window() + 0x100) - get<float>(current_window() + 0x20) +
                    get<float>(current_window() + 0x88);
            case 0x39233c:
                return get<re::Vec2>(current_window() + 0x250) -
                    get<re::Vec2>(current_window() + 0x100);
            case 0x3925cc: return get<float>(context + 0x3c30) + 2 * get<float>(context + 0x3810);
            case 0x392614:
                return ::re::re_bit_cast<ReI32>(re::menu_detail::id(controls, ::re::re_get<::re::ReString>(args[1])));
            case 0x394b40:
                re::menu_detail::item_size(controls, ::re::re_get<re::Vec2>(args[0]), ::re::re_get<float>(args[1]));
                return ::re::ReMonostate{};
            case 0x3bfe4c: {
                if (get<ReU8>(current_window() + 0xbb)) return ::re::ReMonostate{};
                const auto position = get<re::Vec2>(current_window() + 0x100);
                const auto size = ::re::re_get<re::Vec2>(args[0]);
                re::menu_detail::item_size(controls, size, -1);
                (void)re::menu_detail::item_add(controls, api,
                    {position.x, position.y, position.x + size.x, position.y + size.y}, 0);
                return ::re::ReMonostate{};
            }
            case 0x3948dc:
                return re::menu_detail::item_add(controls, api, ::re::re_get<re::ClipRect>(args[0]),
                    ::re::re_bit_cast<ReU32>(::re::re_get<ReI32>(args[1])));
            case 0x3947ec: return api.window_hovered_3947ec(ReU32(::re::re_get<ReI32>(args[0])));
            case 0x398cc8:
                api.push_float_398cc8(ReU32(::re::re_get<ReI32>(args[0])), ::re::re_get<float>(args[1]));
                return ::re::ReMonostate{};
            case 0x398bec:
                api.push_color_398bec(ReU32(::re::re_get<ReI32>(args[0])),
                    ::re::re_bit_cast<ReU32>(::re::re_get<ReI32>(args[1])));
                return ::re::ReMonostate{};
            case 0x39890c:
                api.pop_color_39890c(::re::re_get<ReI32>(args[0]));
                return ::re::ReMonostate{};
            case 0x38ec90:
            case 0x390efc:
                api.local_layout(role);
                return ::re::ReMonostate{};
            case 0x39b704:
                api.next_item_width_39b704(::re::re_get<float>(args[0]));
                return ::re::ReMonostate{};
            case 0x39ac04:
                re::menu_detail::same_line(controls, ::re::re_get<float>(args[0]), ::re::re_get<float>(args[1]));
                return ::re::ReMonostate{};
            case 0x39b3b8: {
                const auto window_address = re::menu_detail::window(controls);
                put(window_address + 0x100, get<re::Vec2>(window_address + 0x20) -
                    get<re::Vec2>(window_address + 0x88) + ::re::re_get<re::Vec2>(args[0]));
                put(window_address + 0x141, ReU8(1));
                return ::re::ReMonostate{};
            }
            case 0x39b410: {
                const auto window_address = re::menu_detail::window(controls);
                put(window_address + 0x100, get<float>(window_address + 0x20) -
                    get<float>(window_address + 0x88) + ::re::re_get<float>(args[0]));
                put(window_address + 0x141, ReU8(1));
                return ::re::ReMonostate{};
            }
            case 0x3c4e90:
            case 0x3c4eb8: {
                const auto &text = ::re::re_get<::re::ReString>(args[0]);
                const auto position = get<re::Vec2>(current_window() + 0x100);
                const auto size = re::renderer_measure_38f79c(image, context, text, {}, false, -1).size;
                re::menu_detail::item_size(controls, size, 0);
                if (re::menu_detail::item_add(controls, api,
                    {position.x, position.y, position.x + size.x, position.y + size.y}, 0))
                    api.text({current_draw(), 0, 0, position,
                        re::menu_detail::style_color(controls, 1), text, {}});
                return ::re::ReMonostate{};
            }
            case 0x3c0538:
            case 0x3c2d5c: {
                re::ImguiTextInputRequest request;
                request.label = ::re::re_get<::re::ReString>(args[0]);
                const bool sized = args.size() == 8 && ::re::re_holds_alternative<re::Vec2>(args[4]);
                const bool hinted = role == 0x3c2d5c || sized;
                const auto offset = hinted ? 1u : 0u;
                if (hinted) request.hint = ::re::re_get<::re::ReString>(args[1]);
                const auto &text = ::re::re_get<::re::ReString>(args[1 + offset]);
                request.buffer.assign(text.begin(), text.end());
                const auto capacity = sized ? re::Address(::re::re_max(0, ::re::re_get<ReI32>(args[3])))
                                            : ::re::re_get<re::Address>(args[2 + offset]);
                request.buffer.resize(::re::re_max<ReUSize>(text.size() + 1,
                    capacity), 0);
                if (sized) request.size = ::re::re_get<re::Vec2>(args[4]);
                request.flags = ReU32(::re::re_get<ReI32>(args[sized ? 5 : 3 + offset]));
                const auto result = re::replay_imgui_text_input_3c0538(controls, editors, editor_api, request);
                require(result.result, "root text input");
                if (hinted) bounds("search", get<re::ClipRect>(context + 0x47b0));
                return result.return_value;
            }
            case 0x39408c:
                return get<ReU32>(context + 0x47a4) != 0 &&
                    get<ReU32>(context + 0x47a4) == get<ReU32>(context + 0x3f68);
            case 0x388a14: {
                random_state ^= random_state << 13;
                random_state ^= random_state >> 17;
                random_state ^= random_state << 5;
                const auto low = ::re::re_get<float>(args[0]), high = ::re::re_get<float>(args[1]);
                return low + (high - low) * float(random_state >> 8) * 0x1p-24f;
            }
            case 0x39334c:
                return ::re::re_bit_cast<ReI32>(re::menu_controls_hash_39334c(
                    ::re::re_get<::re::ReString>(args[0]),
                    ::re::re_bit_cast<ReU32>(::re::re_get<ReI32>(args[2])),
                    ::re::re_get<re::Address>(args[1])
                        ? ::re::ReOptional<ReUSize>(::re::re_get<re::Address>(args[1])) : ::re::ReOptional<ReUSize>()));
            case 0x398c60:
                api.push_vec2_398c60(ReU32(::re::re_get<ReI32>(args[0])),
                                    ::re::re_get<re::Vec2>(args[1]));
                return ::re::ReMonostate{};
            case 0x39896c:
                api.pop_style_39896c(::re::re_get<ReI32>(args[0]));
                return ::re::ReMonostate{};
            case 0x392f34:
                return get<float>(current_window() + 0x28);
            case 0x392ef8:
                return get<re::Vec2>(current_window() + 0x20);
            case 0x392ecc:
                return current_draw();
            case 0x35d200:
                return re::menu_detail::window(controls);
            case 0x392298: {
                const auto index = ReU32(::re::re_get<ReI32>(args[0]));
                return ::re::re_bit_cast<ReI32>(re::menu_detail::style_color(
                    controls, index, ::re::re_get<float>(args[1])));
            }
            case 0x38f224:
                return re::menu_detail::calculate_size(controls, ::re::re_get<re::Vec2>(args[0]),
                    {::re::re_get<float>(args[1]), ::re::re_get<float>(args[2])});
            case 0x39b44c: {
                const auto window_address = re::menu_detail::window(controls);
                const auto component_y = get<float>(window_address + 0x24) - get<float>(window_address + 0x88) + ::re::re_get<float>(args[0]);
                put(window_address + 0x104, component_y);
                put(window_address + 0x141, ReU8(1));
                return ::re::ReMonostate{};
            }
            case 0x3a1244:
                api.rectangle({::re::re_get<re::Address>(args[0]), ::re::re_get<re::Vec2>(args[1]),
                    ::re::re_get<re::Vec2>(args[2]),
                    ::re::re_bit_cast<ReU32>(::re::re_get<ReI32>(args[3])),
                    ::re::re_get<float>(args[4]), 1,
                    ReU32(::re::re_get<ReI32>(args[5])), true});
                return ::re::ReMonostate{};
            case 0x38e97c: {
                hit("imgui_window_child_38e97c");
                auto size = ::re::re_get<re::Vec2>(args[1]);
                const auto window_address = current_window();
                const auto position = get<re::Vec2>(window_address + 0x100), end = get<re::Vec2>(window_address + 0x250);
                if (size.x <= 0) size.x = ::re::re_max(4.0f, end.x - position.x + size.x);
                if (size.y <= 0) size.y = ::re::re_max(4.0f, end.y - position.y + size.y);
                put(context + 0x47e0, get<ReU32>(context + 0x47e0) | 2u);
                put(context + 0x4800, size);
                put(context + 0x47e8, 1u);
                return effects(role, args);
            }
            case 0x390a88:
                hit("imgui_window_end_child_390a88");
                return effects(role, args);
            case 0x38cfa4:
                hit("imgui_window_begin_38cfa4");
                return effects(role, args);
            case 0x390994:
                hit("imgui_window_end_390994");
                return effects(role, args);
            default:
                return effects ? effects(role, args) : ::re::ReOptional<re::UnityValue>();
            }
        };
        re::MenuPagesApi page_api;
        page_api.frame = frame_api;
        page_api.state = &pages;
        page_api.dependency_state = &dependencies;
        page_api.bool_vector = [this](re::Rva key) -> ::re::ReOptional<::re::ReVector<bool>> {
            const auto found = controls.multiselect_values.find(key);
            if (!found) return {};
            return ::re::ReVector<bool>((*found)->begin(), (*found)->end());
        };
        page_api.favorites_27f988 = [this] {
            return ::re::ReOptional<::re::ReVector<re::MenuControlRequest>>(controls.favorites_27f988);
        };
        page_api.control = [this](const re::MenuControlRequest &request) {
            const auto key = request.value == esp_key ? "esp" : request.value == boxes_key ? "boxes"
                : request.value == names_key ? "names" : request.value == distance_key ? "distance" : nullptr;
            if (!key) {
                if (!cold_start)
                    return re::MenuControlResult{{re::UnityStatus::missing_dependency, request.primitive}};
                if (request.value && !config.values.contains(request.value))
                    config.values[request.value] = 0;
                if (request.key && !config.values.contains(request.key))
                    config.values[request.key] = 0;
                if (request.color && !controls.colors.contains(request.color))
                    controls.colors[request.color] = ::re::ReArray<float, 4>{};
                if (request.role == re::MenuControlRole::color && !controls.colors.contains(request.value))
                    controls.colors[request.value] = ::re::ReArray<float, 4>{};
                if (request.role == re::MenuControlRole::multiselect && !controls.multiselect_values.contains(request.value))
                    controls.multiselect_values[request.value].resize(request.choices.size(), 0);
                const auto result = re::menu_controls_apply(controls, api, request);
                require(result.result, "cold control " + request.label);
                if (result.changed || result.pressed)
                    __builtin_trap();
                hit("owned_menu_cold_original_control");
                return result;
            }
            return control(key, request);
        };
        frame_api = re::bind_menu_pages(page_api, frame_api);
        const auto original_page = frame_api.page;
        frame_api.page = [this, original_page](re::Rva entry, re::FrameMenuState &state,
                                               re::FrameMainMenuState &menu) {
            if (!cold_start && entry != 0x3354b4)
                return re::FrameDependencyResult{re::UnityStatus::missing_dependency, entry};
            if (entry == 0x3354b4) {
                hit("replay_menu_page_3354b4");
                hit("replay_menu_page_35013c");
            }
            const auto result = original_page(entry, state, menu);
            require(result, "page " + ::re::re_to_string(entry));
            if (cold_start && result.status == re::UnityStatus::complete) {
                initialized_pages.insert(entry);
                hit("owned_menu_cold_page:" + ::re::re_to_string(entry));
            }
            return result;
        };
        const auto category_button = frame_api.button_3bc7e0;
        frame_api.button_3bc7e0 = [this, category_button](re::ClipRect rectangle,
            ReI32 identifier, ReI32 flags) {
            const auto result = category_button(rectangle, identifier, flags);
            if (!result || cold_start) return result;
            auto permitted = *result;
            const auto favorite_id = re::menu_detail::id(controls, "Favorites");
            if (::re::re_bit_cast<ReU32>(identifier) != favorite_id) {
                if (permitted.pressed) hit("owned_menu_unavailable_category_press");
                permitted.pressed = false;
            }
            bounds(::re::re_bit_cast<ReU32>(identifier) == favorite_id ? "category_favorites" :
                "category_unavailable_" + ::re::re_to_string(::re::re_bit_cast<ReU32>(identifier)), rectangle);
            hit("frame_category_widget_389830");
            return ::re::ReOptional<re::FrameMenuButton>(permitted);
        };
        frame_api.effects.unity.resolve_target = [this](const re::UnityCacheSpec &spec) {
            if (spec.klass == "Random" && spec.method == "Range") {
                hit("owned_menu_random_range_binding");
                return re::MetadataResult{0x88000, re::MetadataStatus::complete};
            }
            return re::MetadataResult{0, re::MetadataStatus::missing_dependency};
        };
        frame_api.effects.unity.detect_context = [this](const re::UnityCacheSpec &spec, re::Address target) {
            const bool owned = spec.klass == "Random" && spec.method == "Range" && target == 0x88000;
            if (owned) hit("owned_menu_random_range_context");
            return owned;
        };
        for (const auto &[value, label] : ::re::ReArray<::re::RePair<re::Rva, const char *>, 4>{{
            {esp_key, "ESP"}, {boxes_key, "Boxes"}, {names_key, "Names"}, {distance_key, "Distance"}}}) {
            re::MenuControlRequest request;
            request.value = value;
            request.label = label;
            request.role = value == distance_key ? re::MenuControlRole::slider_float : re::MenuControlRole::checkbox;
            request.minimum_float = 10;
            request.maximum_float = 200;
            request.format = "%.0f m";
            request.color = value == esp_key ? esp_key : 0;
            controls.favorites_27f988.push_back(::re::re_move(request));
        }
    }
    re::MenuControlResult control(::re::ReStringView key, const re::MenuControlRequest &request) {
        const auto role = request.role;
        hit("menu_controls_apply");
        hit(role == re::MenuControlRole::checkbox ? "menu_controls_checkbox_3bd114"
                                                : "menu_controls_slider_float_3c43f4");
        hit(role == re::MenuControlRole::checkbox ? "menu_detail::checkbox@3bd114"
                                                : "menu_detail::slider@3c4478");
        const auto result = re::menu_controls_apply(controls, api, request);
        require(result.result, key);
        auto box = get<re::ClipRect>(context + 0x47b0);
        if (role == re::MenuControlRole::slider_float) {
            hit("menu_controls_slider_3c4478");
            const auto width = get<float>(current_window() + 0x1bc);
            const auto center = (box.y + box.w) * 0.5f;
            box = {box.z - width * 0.5f, center - 3, box.z, center + 3};
        } else {
            hit("menu_controls_button_behavior_3bc7e0");
        }
        if (!request.color)
            bounds(::re::ReString(key), box);
        return result;
    }
    void bootstrap(unsigned width, unsigned height) {
        MenuTelemetry startup;
        telemetry = &startup;
        put(context + 0xe08, re::Vec2{-100, -100});
        put(context + 0xe10, ReU8(0));
        put(context + 0x3748, ReU8(0));
        put(context + 0x3766, ReU8(0));
        for (const auto key : {esp_key, boxes_key, names_key, distance_key}) config.values[key] = 0;
        controls.colors[esp_key] = {};
        put(context + 0x47e0, 3u);
        put(context + 0x47e4, 1u);
        put(context + 0x47f0, re::Vec2{20, 20});
        put(context + 0x47e8, 1u);
        put(context + 0x4800, re::Vec2{850, 580});
        require(re::imgui_window_begin_38cfa4(windows, window_api,
            {"Owned ESP", {}, 0x2bu}).result, "bootstrap fallback Begin");
        config.values[0x218818] = 1;
        hit("replay_frame_menu_35d5ac");
        hit("frame_main_menu_35fc8b");
        require(re::replay_frame_menu_35d5ac(config, main_menu, dependencies, frame_api), "cold root");
        require(re::imgui_window_end_390994(windows, window_api), "bootstrap fallback End");
        if (initialized_pages.size() != 21 || !config.values[0x3fd7b8] || !config.values[0x3fdab8])
            __builtin_trap();
        hit("owned_menu_cold_graph_21_pages");
        cold_start = false;
        config.values[0x3fc100] = config.values[0x402dd4] = 6;
        config.values[0x248ee0] = config.values[0x248ee4] = ::re::re_bit_cast<ReU32>(20.0f);
        for (const auto &[identifier, window_address] : windows.window_ids) {
            (void)identifier;
            put(window_address + 0xb6, ReU8(0));
            put(window_address + 0xb7, ReU8(0));
            put(window_address + 0xc2, ReU16(0));
            put(window_address + 0x260, -1);
        }
        resources.reset(width, height);
        telemetry = nullptr;
    }
    void prepare_frame(const Input &input) {
        if (prepared) return;
        if (!::re::re_isfinite(input.delta) || input.delta <= 0 ||
            !::re::re_isfinite(input.mouse.x) || !::re::re_isfinite(input.mouse.y))
            __builtin_trap();
        if (input.characters.size() > 256)
            __builtin_trap();
        if (input.clipboard) {
            if (input.clipboard->size() > 4096)
                __builtin_trap();
            clipboard = *input.clipboard;
        }
        resources.select_lists({Resources::esp_list});
        const auto delta = input.delta;
        frame_number = ::re::re_bit_cast<ReI32>(::re::re_bit_cast<ReU32>(frame_number) + 1u);
        elapsed += double(delta);
        put(context + 0x3e60, frame_number);
        put(context + 0x3e58, elapsed);
        const auto active_before = get<ReU32>(context + 0x3f68);
        if (active_before && get<ReU32>(context + 0x3f6c) != active_before &&
            get<ReU32>(context + 0x3f98) == active_before)
            re::menu_detail::set_active(controls, api, 0, 0);
        const auto active = get<ReU32>(context + 0x3f68);
        if (active) put(context + 0x3f70, get<float>(context + 0x3f70) + delta);
        put(context + 0x3fa0, get<re::Address>(context + 0x3f88));
        put(context + 0x3f9d, get<ReU8>(context + 0x3f78));
        put(context + 0x3fac, get<float>(context + 0x3fac) + delta);
        put(context + 0x3f98, active);
        put(context + 0x3f6c, 0u);
        put(context + 0x3f79, ReU8(0));
        put(context + 0x3f9c, ReU8(0));
        put(context + 0x3f74, ReU8(0));
        if (const auto temporary = get<ReU32>(context + 0x5b38); temporary && temporary != active)
            put(context + 0x5b38, 0u);
        if (!active) {
            put(context + 0x4778, 0u);
            put(context + 0x477c, ReU8(0));
            put(context + 0x4780, 0u);
        }
        if (!input.focused || !input.menu_open || !was_open || !input.width || !input.height ||
            last_width != input.width || last_height != input.height) {
            if (get<ReU32>(context + 0x3f68)) {
                hit("owned_menu_cancel_via_set_active_39b0cc");
                re::menu_detail::set_active(controls, api, 0, 0);
            }
            for (unsigned index = 0; index < 3; ++index) {
                put(context + 0x3fb0 + re::Address(0x81 + index) * 12, 0xffffffffu);
                put(context + 0x3fb0 + re::Address(0x81 + index) * 12 + 4, 0xffffffffu);
            }
        }
        was_open = input.menu_open;
        last_width = input.width;
        last_height = input.height;
        const auto width = float(input.width), height = float(input.height);
        const auto left = ::re::re_min(20.0f, width * 0.02f);
        const auto top = ::re::re_min(20.0f, height * 0.02f);
        clip = {left, top, ::re::re_min(left + 340, width), ::re::re_min(top + 580, height)};
        {
            put(context + 0x3ef8, 0u);
            put(context + 0x3f08, re::Address(0));
            put(0x85104, re::Vec2{});
            put(0x8510c, re::Vec2{width, height});
            put(0x85114, re::Vec2{});
            put(0x8511c, re::Vec2{width, height});
            if (cold_start && input.width && input.height) bootstrap(input.width, input.height);
            const auto hovered = input.focused ? hovered_windows(image, context, input.mouse)
                                               : ::re::ReArray<re::Address, 2>{};
            for (const auto &[id, window_address] : windows.window_ids) {
                (void)id;
                put(window_address + 0xb7, get<ReU8>(window_address + 0xb6));
                put(window_address + 0xb6, ReU8(0));
                put(window_address + 0xb8, ReU8(0));
                put(window_address + 0xc4, get<ReU16>(window_address + 0xc2));
                put(window_address + 0xc2, ReU16(0));
            }
            put(context + 0x3f10, hovered[0]);
            put(context + 0x3f18, hovered[1]);
            put(context + 0x3f58, get<ReU32>(context + 0x3f54));
            put(context + 0x3f54, 0u);
            for (unsigned index = 0; index < 3; ++index) {
                const auto owner = context + 0x3fb0 + re::Address(0x81 + index) * 12;
                put(owner, get<ReU32>(owner + 4));
                if (index != 0 || !input.down)
                    put(owner + 4, 0xffffffffu);
                put(owner + 8, ReU16(0));
            }
            const auto mouse = input.mouse;
            put(context + 0xf8, mouse - previous_mouse);
            previous_mouse = mouse;
            if (input.pressed && input.focused) {
                const auto movement = mouse - click_position;
                click_count = click_time >= 0 && elapsed - click_time < 0.30f &&
                              movement.x * movement.x + movement.y * movement.y < 36 &&
                              click_count < ::re::ReNumericLimits<ReU16>::max()
                                  ? ReU16(click_count + 1) : ReU16(1);
                click_time = static_cast<float>(elapsed);
                click_position = mouse;
            }
            put(context + 0x18, delta);
            put(context + 0xe08, mouse);
            put(context + 0xe10, ReU8(input.down && input.focused));
            put(context + 0x3748, ReU8(input.pressed && input.focused));
            put(context + 0x3766, ReU8(input.released));
            put(context + 0x378c, down_time);
            down_time = input.down && input.focused
                ? (input.pressed ? 0 : ::re::re_max(0.0f, down_time) + delta) : -1;
            put(context + 0x3778, down_time);
            put(context + 0x3752, input.pressed && input.focused ? click_count : ReU16(0));
            put(context + 0x375c, click_count);
            put(context + 0xe24, ReU8(input.control && input.focused));
            put(context + 0xe25, ReU8(input.shift && input.focused));
            put(context + 0xe26, ReU8(input.alt && input.focused));
            put(context + 0xe27, ReU8(input.super && input.focused));
            put(context + 0xe28, input.focused ? (input.control ? 0x1000u : 0u) |
                (input.shift ? 0x2000u : 0u) | (input.alt ? 0x4000u : 0u) |
                (input.super ? 0x8000u : 0u) : 0u);
            for (ReU32 index = 0; index < input.keys.size(); ++index) {
                const auto data = context + 0xe2c + re::Address(index + 0x200) * 16;
                const auto duration = get<float>(data + 4);
                const bool down = input.keys[index] && input.focused;
                put(data, ReU8(down));
                put(data + 8, duration);
                put(data + 4, down ? (duration < 0 ? 0.0f : duration + delta) : -1.0f);
                if (index >= 0x81 && index <= 0x83) continue;
                const auto owner = context + 0x3fb0 + re::Address(index) * 12;
                put(owner, get<ReU32>(owner + 4));
                if (!down) put(owner + 4, 0xffffffffu);
                put(owner + 8, ReU16(0));
            }
            const auto routes = get<re::Address>(context + 0x4760);
            const auto route_count = get<ReI32>(context + 0x4758);
            if (route_count < 0 || route_count > 32767)
                __builtin_trap();
            for (ReI32 index = 0; index < route_count; ++index) {
                const auto route = routes + re::Address(index) * 16;
                put(route + 8, get<ReU32>(route + 0xc));
                put(route + 0xc, 0xffffffffu);
                put(route + 4, ReU8(255));
            }
            put(context + 0x37c0, input.focused ? ReI32(input.characters.size()) : 0);
            put(context + 0x37c4, ReI32(256));
            put(context + 0x37c8, character_queue);
            for (ReUSize index = 0; index < input.characters.size(); ++index)
                put(character_queue + index * 2, input.characters[index]);
            put(context + 0x10, re::Vec2{width, height});
            hit("owned_menu_prepare_frame");
            prepared = true;
        }
    }
    void finish_frame() {
        if (!prepared) return;
        if (last_width && last_height) {
            sort_display_windows(image, context);
            resources.select_lists(visible_lists(image, context, resources.draw));
        } else resources.select_lists({Resources::esp_list});
        hit("owned_menu_finish_frame");
        prepared = external_preparation = false;
    }
    re::WorldWindowBackend world_windows() {
        re::WorldWindowBackend backend;
        backend.position_39b734 = [this](re::Vec2 position, ReI32 condition, re::Vec2 pivot) {
            if (!prepared) __builtin_trap();
            const ::re::ReArray<re::UnityValue, 3> arguments{position, condition, pivot};
            if (!frame_api.effects.unity.external(0x39b734, arguments))
                __builtin_trap();
        };
        backend.size_39b770 = [this](re::Vec2 size, ReI32 condition) {
            const ::re::ReArray<re::UnityValue, 2> arguments{size, condition};
            if (!frame_api.effects.unity.external(0x39b770, arguments))
                __builtin_trap();
        };
        backend.style_392ca4 = [this](ReUSize offset, ::re::ReArray<float, 4> color) {
            if (offset > 0x448 || offset % 4)
                __builtin_trap();
            put(context + 0x37d0 + offset, color);
        };
        backend.begin_38cfa4 = [this](::re::ReStringView name, ReU32 flags) {
            if (!prepared) __builtin_trap();
            hit("owned_world_window_begin_38cfa4");
            require(re::imgui_window_begin_38cfa4(windows, window_api,
                {::re::ReString(name), {}, flags}).result, "world Begin");
            hit("owned_world_window_list:" + ::re::ReString(name) + ":" + ::re::re_to_string(current_draw()));
        };
        backend.current_position_39246c = [this] {
            return get<re::Vec2>(current_window() + 0x100);
        };
        backend.end_390994 = [this] {
            require(re::imgui_window_end_390994(windows, window_api), "world End");
            hit("owned_world_window_end_390994");
        };
        return backend;
    }
    MenuTelemetry frame(const Input &input, Settings &settings) {
        prepare_frame(input);
        MenuTelemetry output;
        output.io_mouse = get<re::Vec2>(context + 0xe08);
        output.io_delta = get<float>(context + 0x18);
        output.io_down = get<ReU8>(context + 0xe10) != 0;
        const auto left = ::re::re_min(20.0f, float(input.width) * 0.02f);
        const auto top = ::re::re_min(20.0f, float(input.height) * 0.02f);
        {
            if (!input.menu_open || !input.width || !input.height) {
                down_time = -1;
                if (input.width && input.height) {
                    config.values[0x218818] = 0;
                    hit("replay_frame_menu_35d5ac");
                    require(re::replay_frame_menu_35d5ac(config, main_menu, dependencies, frame_api),
                            "closed root");
                }
                if (!external_preparation) finish_frame();
                return output;
            }
            output.visible = true;
            telemetry = &output;
            config.values[esp_key] = settings.esp;
            config.values[boxes_key] = settings.boxes;
            config.values[names_key] = settings.names;
            config.values[distance_key] = ::re::re_bit_cast<ReU32>(settings.distance);
            controls.colors[esp_key] = settings.color;
            put(context + 0x47e0, 3u);
            put(context + 0x47e4, 1u);
            put(context + 0x47f0, re::Vec2{left, top});
            put(context + 0x47f8, re::Vec2{});
            put(context + 0x47e8, 1u);
            put(context + 0x4800, re::Vec2{850, 580});
            config.values[0x218818] = 1;
            hit("replay_frame_menu_35d5ac");
            hit("frame_main_menu_35fc8b");
            hit("frame_menu_page_388b4c");
            require(re::replay_frame_menu_35d5ac(config, main_menu, dependencies, frame_api), "root");
            if (get<ReI32>(context + 0x3ed8) || get<ReI32>(context + 0x4880) ||
                get<re::Address>(context + 0x3f08) || !controls.style_stack.empty() ||
                !controls.groups.empty() || !controls.color_stack.empty())
                __builtin_trap();
            hit("owned_menu_balanced_window_focus_style_group_stacks");
            const Settings before = settings;
            settings.esp = (config.values.at(esp_key) & 255) != 0;
            settings.boxes = (config.values.at(boxes_key) & 255) != 0;
            settings.names = (config.values.at(names_key) & 255) != 0;
            settings.distance = ::re::re_bit_cast<float>(config.values.at(distance_key));
            settings.color = controls.colors.at(esp_key);
            output.changed = before.esp != settings.esp || before.boxes != settings.boxes ||
                before.names != settings.names || before.distance != settings.distance ||
                before.color != settings.color;
            const auto editor = editors.editors.find(context);
            if (editor) {
                output.keyboard_capture = (*editor)->id == get<ReU32>(context + 0x3f68);
                output.editor_text = re::imgui_text_input_encode_393c38((*editor)->text);
                output.selection_start = (*editor)->selection_start;
                output.selection_end = (*editor)->selection_end;
            }
        }
        telemetry = nullptr;
        if (!external_preparation) finish_frame();
        return output;
    }
};

void check_menu_native_boundaries() {
    re::Snapshot image{0, ::re::ReVector<ReByte>(0x420000)};
    re::DrawCoreStore draw;
    constexpr re::Address context_address = 0x10000, lower_window = 0x20000,
        higher_window = 0x24000, child_window = 0x26000, display_data = 0x28000,
        child_data = 0x28100, lower_list = 0x41000, higher_list = 0x42000, child_list = 0x43000;
    const auto write = [&image](re::Address address, auto value) {
        if (!image.write(address, value)) __builtin_trap();
    };
    const auto expect = [](bool condition, ::re::ReStringView message) {
        (void)message;
        if (!condition) __builtin_trap();
    };
    write(context_address + 0x3ea8, 2);
    write(context_address + 0x3eb0, display_data);
    write(display_data, higher_window);
    write(display_data + 8, lower_window);
    for (const auto window_address : {lower_window, higher_window, child_window}) {
        write(window_address + 0xb6, ReU8(1));
        write(window_address + 0x1e8, re::ClipRect{10, 10, 80, 80});
        write(window_address + 0x378, window_address);
    }
    write(lower_window + 0x298, lower_list);
    write(higher_window + 0x298, higher_list);
    write(child_window + 0x298, child_list);
    write(child_window + 0x14, 0x1000000u);
    write(higher_window + 0x190, 1);
    write(higher_window + 0x198, child_data);
    write(child_data, child_window);
    for (const auto list_address : {lower_list, higher_list, child_list}) {
        re::DrawCoreCommand command;
        command.element_count = 3;
        draw.lists[list_address].commands.push(command);
    }
    expect(hovered_windows(image, context_address, {40, 40})[0] == lower_window,
           "Native display order failed to override ascending window addresses");
    expect(visible_lists(image, context_address, draw) == ::re::ReVector<re::Address>{
               Resources::esp_list, higher_list, child_list, lower_list},
           "Visible collection failed to follow native root and child order");
    write(lower_window + 0xbd, ReU8(1));
    expect(hovered_windows(image, context_address, {40, 40})[0] == higher_window,
           "Hidden window intercepted native hover selection");
    expect(visible_lists(image, context_address, draw) == ::re::ReVector<re::Address>{
               Resources::esp_list, higher_list, child_list},
           "Hidden window entered the selected draw lists");
    write(higher_window + 0x14, 0x200u);
    expect(!hovered_windows(image, context_address, {40, 40})[0],
           "NoMouseInputs window intercepted native hover selection");
    write(higher_window + 0x14, 0u);
    write(higher_window + 0x258, ReI16(20));
    write(higher_window + 0x25a, ReI16(20));
    write(higher_window + 0x25c, ReI16(30));
    write(higher_window + 0x25e, ReI16(30));
    expect(!hovered_windows(image, context_address, {40, 40})[0],
           "Native hit-test hole failed to reject its interior");
    write(higher_window + 0x258, ReI16(0));
    write(context_address + 0x3834, re::Vec2{3, 3});
    expect(hovered_windows(image, context_address, {9, 9})[0] == higher_window,
           "Native hover padding failed to expand the window rectangle");
    write(child_window + 0xbd, ReU8(1));
    expect(visible_lists(image, context_address, draw) == ::re::ReVector<re::Address>{
               Resources::esp_list, higher_list},
           "Hidden measuring child entered the selected draw lists");
    write(context_address + 0x3ea8, 3);
    write(display_data, child_window);
    write(display_data + 8, higher_window);
    write(display_data + 16, lower_window);
    sort_display_windows(image, context_address);
    expect(copied_windows(image, context_address + 0x3ea8) == ::re::ReVector<re::Address>{
               higher_window, child_window, lower_window},
           "Native finalization sort failed to restore parent before its active child");
}

InternalMenu::InternalMenu(Resources &resources) : state(::re::re_make_unique<State>(resources)) {}
InternalMenu::~InternalMenu() = default;
void InternalMenu::prepare_frame(const Input &input) {
    state->prepare_frame(input);
    state->external_preparation = true;
}
re::WorldWindowBackend InternalMenu::world_windows() { return state->world_windows(); }
void InternalMenu::finish_frame() { state->finish_frame(); }
MenuTelemetry InternalMenu::frame(const Input &input, Settings &settings) {
    return state->frame(input, settings);
}
}
