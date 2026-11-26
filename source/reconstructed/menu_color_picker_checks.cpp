#include "menu_color_picker_analysis.hpp"
#include "menu_tooltip_fixture.hpp"
namespace rust_internal_re {
namespace {
using namespace menu_test_detail;
float field(const DrawVertex &vertex, ReUSize offset) {
    float value;
    re::re_memcpy(&value, vertex.data() + offset, 4);
    return value;
}
ReU32 color(const DrawVertex &vertex) {
    ReU32 value;
    re::re_memcpy(&value, vertex.data() + 16, 4);
    return value;
}
bool close(float a, float b) {
    return re::re_fabs(a - b) < 0.00001f;
}
struct PickerFixture : MenuFixture {
    DrawShapesResources resources;
    MenuColorPickerApi picker;
    PickerFixture() {
        DrawShapesShared shared;
        shared.white_uv = {0.25f, 0.75f};
        shared.circle_error = 0.3f;
        shared.circle_segments.fill(12);
        shared.arc_fast_radius_cutoff = 100;
        for (ReUSize i = 0; i < 48; ++i) {
            const auto angle = float(i) * 0x1.921fb6p+2f / 48.0f;
            shared.arc_fast[i] = {re::re_cosf(angle), re::re_sinf(angle)};
        }
        resources[drawlist] = shared;
        auto &list = draw.lists[drawlist];
        list.fringe_scale = 1;
        list.header.clip = {0, 0, 500, 500};
        draw_core_add_command_39fd18(list);
        picker.controls = api;
        picker.shapes = &resources;
        picker.hex_input_3c0538 = [&](MenuColorPickerHexInput &request) {
            expect(request.label == "##Input" && request.hint.empty() && request.size.x == 230 &&
                       request.size.y == 35 && request.flags == 0,
                   "picker concrete hex editor ordered label/hint/buffer/size/flags");
            cursor({0, 35});
            return false;
        };
        const auto meta = Address(0x2a9930 + 11 * 12);
        put(meta, 8u);
        put(meta + 4, 2u);
        put(meta + 8, 0x3cu);
    }
    void active(re::ReStringView label) {
        const auto id = menu_controls_hash_39334c(label);
        put(c + 0x3f68, id);
        put(c + 0x3f90, 2u);
        put(c + 0x48fc, id);
    }
};
} // namespace
void check_menu_color_picker_reconstruction() {
    using menu_test_detail::expect;
    {
        const auto red = menu_color_picker_rgb_to_hsv_39062c(1, 0, 0);
        const auto green = menu_color_picker_rgb_to_hsv_39062c(0, 1, 0);
        const auto blue = menu_color_picker_rgb_to_hsv_39062c(0, 0, 1);
        expect(red[0] == 0 && red[1] == 1 && red[2] == 1 && close(green[0], 1.0f / 3) &&
                   close(blue[0], 2.0f / 3),
               "native RGB HSV swaps and negative K branches");
        const auto black = menu_color_picker_rgb_to_hsv_39062c(0, 0, 0);
        expect(black == re::ReArray<float, 3>{0, 0, 0}, "RGB HSV epsilon handles black");
        for (const auto rgb :
             {re::ReArray<float, 3>{0.1f, 0.8f, 0.3f}, re::ReArray<float, 3>{0.7f, 0.2f, 0.9f}}) {
            const auto hsv = menu_color_picker_rgb_to_hsv_39062c(rgb[0], rgb[1], rgb[2]);
            const auto actual = menu_color_picker_hsv_to_rgb_3904e0(hsv[0], hsv[1], hsv[2]);
            expect(close(actual[0], rgb[0]) && close(actual[1], rgb[1]) && close(actual[2], rgb[2]),
                   "native HSV sector closure round trip");
        }
        const auto nan = re::re_bit_cast<float>(0x7fc12345u);
        expect(re::re_bit_cast<ReU32>(menu_color_picker_saturate_3789fc(nan)) ==
                       0x7fc12345u &&
                   menu_color_picker_saturate_3789fc(-2) == 0 &&
                   menu_color_picker_saturate_3789fc(2) == 1,
               "saturate MINSS source selection preserves NaN and bounds");
    }
    {
        PickerFixture f;
        f.put(PickerFixture::c + 0x5b50, 0u);
        f.put(PickerFixture::c + 0x5b48, 0.75f);
        f.put(PickerFixture::c + 0x5b4c, 0.5f);
        re::ReArray<float, 3> hsv{};
        menu_color_picker_restore_3795d4(f.state, {0, 0, 0, 1}, hsv);
        expect(hsv[0] == 0.75f && hsv[1] == 0.5f,
               "native cached packed RGB restores black hue and saturation");
        f.put(PickerFixture::c + 0x5b48, 1.0f);
        hsv = {0, 1, 1};
        f.put(PickerFixture::c + 0x5b50, 0xffu);
        menu_color_picker_restore_3795d4(f.state, {1, 0, 0, 0.3f}, hsv);
        expect(hsv[0] == 1, "native hue1 seam restoration ignores alpha");
    }
    {
        PickerFixture f;
        f.active("sv");
        f.put(PickerFixture::c + 0xe08, Vec2{230, 100});
        float saturation = 0.5f, value = 0.5f;
        bool edited = false;
        menu_color_picker_sv_37afd4(f.state, f.picker, {1, 0, 0, 1}, 0, saturation, value, edited);
        expect(edited && saturation == 1 && value == 0.01f,
               "SV active drag uses captured mouse, dimension-minus1 and0.01 minimum");
        const auto &d = f.draw.lists[PickerFixture::drawlist];
        expect(d.vertices.size > 8 && d.indices.size > 12 && field(d.vertices.at(2), 0) == 230 &&
                   field(d.vertices.at(2), 4) == 100 && color(d.vertices.at(0)) == 0xffffffffu &&
                   color(d.vertices.at(1)) == 0xff0000ffu,
               "SV emits actual white-red/transparent-black gradient geometry and indicators");
    }
    {
        PickerFixture f;
        f.active("hue");
        f.put(PickerFixture::c + 0xe08, Vec2{100, 4});
        bool edited = false;
        const auto hue = menu_color_picker_hue_37a0b8(f.state, f.picker, 0, edited);
        expect(edited && hue == 100.0f / 201.0f,
               "hue native denominator is width-plus1, distinct from alpha");
        const auto &d = f.draw.lists[PickerFixture::drawlist];
        expect(d.vertices.size >= 28 && color(d.vertices.at(0)) == 0xff0000ffu &&
                   color(d.vertices.at(1)) == 0xff00ffffu,
               "hue emits six actual ordered RGB gradient segments before border and indicators");
    }
    {
        PickerFixture f;
        f.active("alpha");
        f.put(PickerFixture::c + 0xe08, Vec2{100, 4});
        bool edited = false;
        float alpha = 0;
        menu_color_picker_alpha_378f1c(f.state, f.picker, {1, 0, 0, 0.4f}, alpha, edited);
        expect(edited && alpha == 100.0f / 229.0f &&
                   f.draw.lists[PickerFixture::drawlist].vertices.size > 100,
               "alpha uses width-minus1 and produces checkerboard/gradient/indicator geometry");
    }
    {
        PickerFixture f;
        const re::ReArray<float, 4> initial{0.2f, 0.4f, 0.6f, 0.8f};
        auto rgba = initial;
        const auto result = menu_color_picker_379680(f.state, f.picker, "ignored label", rgba);
        expect(result.result.status == UnityStatus::complete && result.changed && rgba == initial,
               "native picker always returns true even without channel edits");
        expect(f.state.style_stack.empty() && f.state.color_stack.empty(),
               "picker concrete raw color/style pushes balance on success");
    }
    {
        PickerFixture f;
        f.picker.hex_input_3c0538 = [&](MenuColorPickerHexInput &request) {
            expect(re::ReString(request.buffer.data()) == "336699CC",
                   "native captured float-to-integer hex formatting");
            const char edited[] = " #\tFF000001";
            re::re_copy(edited, edited + sizeof(edited), request.buffer.begin());
            f.cursor({0, 35});
            return true;
        };
        re::ReArray<float, 4> rgba{0.2f, 0.4f, 0.6f, 0.8f};
        const auto result = menu_color_picker_379680(f.state, f.picker, "", rgba);
        expect(result.result.status == UnityStatus::complete && rgba[0] == 1 && rgba[1] == 0 &&
                   rgba[2] == 0 && rgba[3] == 0.8f,
               "hex RGB mutates after conversion; native parsed fourth byte is discarded");
        expect(f.get<ReU32>(PickerFixture::c + 0x5b50) == 0x996633u,
               "picker cache color records precommit RGB, not new converted channels");
    }
    {
        PickerFixture f;
        f.put(PickerFixture::c + 0x37d0, 0.5f);
        float alpha = 0.4f;
        bool edited = false;
        menu_color_picker_alpha_378f1c(f.state, f.picker, {1, 0, 0, 1}, alpha, edited);
        const auto &d = f.draw.lists[PickerFixture::drawlist];
        expect(color(d.vertices.at(0)) == 0x7fccccccu,
               "checkerboard3922dc truncates style alpha; it does not round127.5 to128");
    }
    for (bool paste : {false, true}) {
        PickerFixture f;
        const auto button_id = menu_controls_hash_39334c(paste ? "PASTE" : "COPY");
        f.put(PickerFixture::c + 0x48fc, button_id);
        f.put(PickerFixture::c + 0x4900, button_id);
        const re::ReArray<float, 4> saved{0.9f, 0.8f, 0.7f, 0.6f};
        f.put(0x402d10, saved);
        re::ReArray<float, 4> rgba{0.2f, 0.4f, 0.6f, 0.8f};
        const auto before = rgba;
        const auto result = menu_color_picker_379680(f.state, f.picker, "", rgba);
        expect(result.result.status == UnityStatus::complete && result.changed,
               "picker concrete button nav activation reaches copy/paste");
        expect(paste ? rgba == saved : f.get<re::ReArray<float, 4>>(0x402d10) == before,
               "copy/paste each transfers four native-width float cells");
    }
    {
        PickerFixture f;
        f.put(PickerFixture::c + 0x5c90, ReU8(1));
        re::ReArray<float, 4> rgba{0.2f, 0.4f, 0.6f, 0.8f};
        const auto result = menu_color_picker_379680(f.state, f.picker, "", rgba);
        expect(result.result.status == UnityStatus::missing_dependency &&
                   result.result.stopped_at == 0x39e280 && f.texts.size() == 1 &&
                   f.state.color_stack.size() == 1 && f.state.style_stack.size() == 1,
               "missing owned logging storage fails after prefix text before pops");
    }
    {
        PickerFixture f;
        MenuColorPickerLogStore logs;
        f.picker.logs = &logs;
        f.put(PickerFixture::c + 0x5c90, ReU8(1));
        f.put(PickerFixture::c + 0x5cc4, ReU8(1));
        f.put(PickerFixture::w + 0x188, ReI32(3));
        f.put(PickerFixture::c + 0x5cc8, ReI32(1));
        constexpr Address prefix = 0x35000, suffix = 0x35100;
        f.put(prefix, re::ReArray<char, 4>{'p', 'r', 'e', 0});
        f.put(suffix, re::ReArray<char, 4>{'s', 'u', 'f', 0});
        f.put(PickerFixture::c + 0x5cb0, prefix);
        f.put(PickerFixture::c + 0x5cb8, suffix);
        menu_color_picker_log_text_394e5c(f.state, f.picker, Vec2{0, 0}, "one\ntwo");
        expect(
            logs.buffers.at(PickerFixture::c + 0x5ca0) == "        pre one\r\n        two suf" &&
                f.get<Address>(PickerFixture::c + 0x5cb0) == 0 &&
                f.get<Address>(PickerFixture::c + 0x5cb8) == 0,
            "concrete logger clears prefix/suffix, recurses and preserves line/depth formatting");
        f.put(PickerFixture::c + 0x5c98, Address(1));
        menu_color_picker_log_text_394e5c(f.state, f.picker, {}, "a\nb");
        expect(logs.buffers.at(PickerFixture::c + 0x5ca0) == "        b",
               "logger nonnull5c98 clears formatted buffer before every append");
    }
    {
        PickerFixture f;
        f.picker.hex_input_3c0538 = {};
        re::ReArray<float, 4> rgba{0.2f, 0.4f, 0.6f, 0.8f};
        const auto result = menu_color_picker_379680(f.state, f.picker, "", rgba);
        expect(
            result.result.status == UnityStatus::missing_dependency &&
                result.result.stopped_at == 0x3c0538 && f.state.style_stack.size() == 1 &&
                f.state.color_stack.size() == 1 &&
                f.get<re::ReArray<float, 4>>(PickerFixture::c + 0x38b8 + 8 * 16)[3] == 0.03f,
            "untranslated hex local target fails explicitly after exact unquantized opacity push");
        bool failed = false;
        {
            (void)bind_menu_color_picker(f.state, f.picker).color_picker_379680("", rgba);
        }
        expect(failed, "frozen picker bool adapter does not fabricate successful missing editor");
    }
}
} // namespace rust_internal_re
