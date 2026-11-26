#pragma once
#include "imgui_text_input_analysis.hpp"
#include "menu_controls_internal.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re::text_input_detail {
using namespace menu_detail;
struct Stop {
    UnityStatus status;
    Rva site;
};
template <class F, class... A>
decltype(auto) need(const F &function, Rva site, Rva dependency, A &&...args) {
    if (!function)
        { __builtin_trap(); }
    return function(re::re_forward<A>(args)...);
}
Address reserve_vector(MenuControlsState &, const ImguiTextInputApi &, Address descriptor,
                       ReI32 required, ReUSize stride);
bool key_pressed(MenuControlsState &, ReU32 key, ReU32 owner, bool repeat);
bool route_shortcut(MenuControlsState &, const ImguiTextInputApi &, ReU32 chord,
                    ReU32 owner, ReU32 flags);
bool shortcut(MenuControlsState &, const ImguiTextInputApi &, ReU32 chord,
              ReU32 owner, bool repeat);
struct Frame {
    MenuControlsState &s;
    ImguiTextInputState &state;
    const ImguiTextInputApi &api;
    ImguiTextInputRequest &request;
    ImguiTextInputResult &out;
    Frame(MenuControlsState &a, ImguiTextInputState &b, const ImguiTextInputApi &c_api,
          ImguiTextInputRequest &d, ImguiTextInputResult &e)
        : s(a), state(b), api(c_api), request(d), out(e) {}
    MenuControlsApi controls;
    Address c{}, parent{}, inner{};
    ReU32 flags{}, id{}, item_status{};
    Vec2 label{}, size{}, position{}, text_position{}, text_extent{};
    ClipRect box{}, total{}, clip{};
    re::ReArray<ReByte, 60> saved_item{};
    ImguiTextInputEdit *edit{};
    re::ReString original, display;
    float scroll_y{};
    bool password_pushed{}, use_cached{};
    bool multiline{}, read_only{}, password{}, resize{}, hovered{}, clicked{}, from_nav{},
        from_tab{}, select_everything{}, init{}, scrolling{}, active{}, render_cursor{},
        render_selection{}, deactivate{}, escape{}, hint{}, enter{};
};
void password_font(Frame &);
bool layout(Frame &);
void activate(Frame &);
void process(Frame &);
void commit(Frame &);
void render(Frame &);
void finish(Frame &);
re::ReString buffer_text(const ImguiTextInputRequest &);
ImguiTextInputEdit import_edit(MenuControlsState &, const ImguiTextInputApi &);
void clamp_cursor(ImguiTextInputEdit &);
void select_all(ImguiTextInputEdit &);
bool has_selection(const ImguiTextInputEdit &);
re::RePair<ReI32, ReI32> selection(const ImguiTextInputEdit &);
bool replace(ImguiTextInputEdit &, ReI32 begin, ReI32 end,
             re::ReSpan<const ReU16>, ReU32 flags, bool record = true);
void key(MenuControlsState &, ImguiTextInputEdit &, ReU32 code, ReU32 flags);
ReI32 word_left(const ImguiTextInputEdit &, ReI32);
ReI32 word_right(const ImguiTextInputEdit &, ReI32, bool mac);
float advance(MenuControlsState &, ReU16);
Vec2 measure_wide(MenuControlsState &, re::ReSpan<const ReU16>);
ReI32 locate(MenuControlsState &, const ImguiTextInputEdit &, Vec2);
void click(MenuControlsState &, ImguiTextInputEdit &, Vec2, bool drag);
} // namespace rust_internal_re::text_input_detail
