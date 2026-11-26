#include "menu_tooltip_analysis.hpp"
#include "menu_tooltip_fixture.hpp"
namespace rust_internal_re {
void check_menu_tooltip_reconstruction() {
    using namespace menu_test_detail;
    {
        MenuFixture f;
        MenuTooltipState state;
        MenuTooltipApi api{f.api, [] { return Address{0x41000}; }};
        f.put(MenuFixture::c + 0xe08, Vec2{100, 100});
        const auto result = menu_tooltip_389f18(f.state, state, api, "tip", "details", "?");
        expect(result.result.status == UnityStatus::complete && !result.pressed,
               "tooltip nonhover path completes");
        expect(f.texts.size() == 1 && f.rectangles.empty() && f.texts[0].text == "?" &&
                   f.texts[0].font == MenuFixture::font && f.texts[0].size == 16,
               "tooltip glyph explicit cached font, no absent hover bubble");
        expect(state.animation_405880.size() == 1, "tooltip inserts hash-keyed animation");
    }
    {
        MenuFixture f;
        MenuTooltipState state;
        re::ReVector<Address> foreground;
        MenuTooltipApi api{f.api, [&] {
                               const Address draw = 0x41000 + foreground.size() * 0x100;
                               foreground.push_back(draw);
                               return draw;
                           }};
        f.cursor({10, 20});
        f.put(MenuFixture::c + 0xe08, Vec2{12, 22});
        const auto result = menu_tooltip_389f18(f.state, state, api, "tip", "ab", "?");
        expect(result.result.status == UnityStatus::complete && foreground.size() == 3,
               "tooltip repeats foreground acquisition for fill/outline/text");
        expect(state.animation_405880.at(menu_controls_hash_39334c("tip"))[1] == 0.14f,
               "tooltip hover animation native14*DeltaTime");
        expect(f.rectangles.size() == 2 && f.texts.size() == 2,
               "tooltip bubble emits fill then outline then description");
        const auto &fill = f.rectangles[0];
        expect(fill.draw_list == foreground[0] && fill.filled && fill.minimum.x == 10 &&
                   fill.minimum.y == 40 && fill.maximum.x == 36 && fill.maximum.y == 66 &&
                   fill.rounding == 3,
               "tooltip literal scaled16/20/4 padding and measured description bounds");
        expect(f.rectangles[1].draw_list == foreground[1] && !f.rectangles[1].filled &&
                   f.rectangles[1].thickness == 1 && f.texts[1].draw_list == foreground[2] &&
                   f.texts[1].position.x == 18 && f.texts[1].position.y == 48,
               "tooltip outline and8/12 padded description preserve distinct draw lists");
    }
    {
        MenuFixture f;
        MenuTooltipState state;
        MenuTooltipApi api{f.api, {}};
        const auto result = menu_tooltip_389f18(f.state, state, api, "tip", "ab", "?");
        expect(result.result.status == UnityStatus::missing_dependency &&
                   result.result.stopped_at == 0x3925a4 && f.texts.size() == 1 &&
                   state.animation_405880.at(menu_controls_hash_39334c("tip"))[1] == 0.14f,
               "missing bubble foreground retains glyph and animation, fails exact local target");
        bool failed = false;
        {
            bind_menu_tooltip(f.state, state, api).tooltip_389f18("tip", "ab", "?");
        }
        expect(failed, "frozen void-tooltip adapter propagates concrete failure");
    }
    {
        MenuFixture f;
        MenuTooltipState state;
        MenuTooltipApi api{f.api, [] { return Address{0x41000}; }};
        api.controls.rectangle = [&](const MenuControlRectangle &rectangle) {
            f.rectangles.push_back(rectangle);
            if (rectangle.filled)
                __builtin_trap();
        };
        const auto result = menu_tooltip_389f18(f.state, state, api, "tip", "ab", "?");
        expect(result.result.status == UnityStatus::unreadable_snapshot &&
                   result.result.stopped_at == 0x123456 && f.rectangles.size() == 1 &&
                   f.texts.size() == 1,
               "tooltip typed downstream failure retains earlier ordered geometry");
    }
}
} // namespace rust_internal_re
