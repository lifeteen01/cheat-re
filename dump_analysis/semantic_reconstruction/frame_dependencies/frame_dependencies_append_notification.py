from pathlib import Path
p=Path('/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu.cpp');s=p.read_text();pos=s.rindex('} // namespace rust_internal_re')
new=r'''
namespace {
float notification_time(const FrameMainMenuApi& a) {
    if(!a.effects.time)stop(UnityStatus::missing_dependency,0x31581c);
    const auto t=a.effects.time(0x31581c);if(!t)stop(UnityStatus::missing_dependency,0x31581c);return *t;
}
std::int32_t cvtt(float x) {
    if(!std::isfinite(x)||x< -2147483648.0f||x>=2147483648.0f)return std::numeric_limits<std::int32_t>::min();
    return static_cast<std::int32_t>(x);
}
void notification(FrameMenuState& s,const FrameMainMenuApi& a,Address draw,const FrameNotification& n,std::array<Vec2,4>& anchors) {
    const float now=notification_time(a);float alpha=n.expires-now;
    if(alpha>5) {const float age=now-(n.expires-6.0f);alpha=1.0f<age?1.0f:age;}
    else if(alpha>0)alpha=alpha*6.0f/6.0f;
    else alpha=0;
    constexpr std::array<std::string_view,3> titles={"SUCCESS","ERROR","INFO"};
    // [I] Native signed indices outside these small stack arrays would read
    // indeterminate/out-of-bounds data; the owned replay reports that boundary.
    if(n.kind<0||n.kind>2||n.extra<0||n.extra>3)stop(UnityStatus::indeterminate_native_data,0x37f22d);
    const auto kind=static_cast<std::size_t>(n.kind),anchor=static_cast<std::size_t>(n.extra);
    const std::string title(titles[kind]);const auto style=get<Address>(a,0x392ca4);
    alpha=alpha<0?0:(1.0f<alpha?1.0f:alpha);
    constexpr float scale=std::bit_cast<float>(0x3b808081u);
    const float red=float(cvtt(read<float>(a,style+0xe8,0x37f1a5)*255.0f))*scale;
    const float green=float(cvtt(read<float>(a,style+0xec,0x37f18d)*255.0f))*scale;
    const float blue=float(cvtt(read<float>(a,style+0xf0,0x37f182)*255.0f))*scale;
    const float quant_alpha=float(cvtt(alpha*255))*scale;
    const std::array<ClipRect,3> colors={{{red,green,blue,quant_alpha},{194*scale,55*scale,55*scale,quant_alpha},{55*scale,86*scale,194*scale,quant_alpha}}};
    auto measured=get<Vec2>(a,0x38f79c,{n.text,Address(0),false,-1.0f});
    const auto header=get<Vec2>(a,0x38f79c,{title,Address(0),false,-1.0f});
    const Vec2 size{300,(header.y+37)+measured.y};
    std::array<Vec2,4> corners={anchors[0],Vec2{anchors[1].x-size.x,anchors[1].y},
        Vec2{anchors[2].x-size.x,anchors[2].y-size.y},Vec2{anchors[3].x,anchors[3].y-size.y}};
    const Vec2 start=corners[anchor],end=add(start,size);
    const ClipRect bg{std::bit_cast<float>(0x3e24a4a5u),std::bit_cast<float>(0x3e30b0b1u),std::bit_cast<float>(0x3e28a8a9u),alpha};
    rect(a,draw,start,end,std::bit_cast<std::int32_t>(packed_color(bg)),4,0);
    call(a,0x3a7268,{draw,start,end,true});
    const auto packed=std::bit_cast<std::int32_t>(packed_color(colors[kind]));
    call(a,0x3a1410,{draw,add(start,{20,20}),15.0f,packed,200.0f,Vec2{0,0},std::int32_t(0),std::int32_t(12)});
    call(a,0x3a6e34,{draw});
    const auto font=bucket_font(s,2,16);
    call(a,0x3a31f8,{draw,font,16.0f,add(start,{16,14}),packed,std::string("I"),Address(0),0.0f,Address(0)});
    auto text_color=color(a,1,alpha);
    call(a,0x3a31bc,{draw,add(start,{40,14}),text_color,title,Address(0)});
    text_color=color(a,2,alpha);const float available=(end.y-start.y)-14;
    measured=get<Vec2>(a,0x38f79c,{n.text,Address(0),false,-1.0f});
    call(a,0x3a31bc,{draw,add(start,{16,available-measured.y}),text_color,n.text,Address(0)});
    measured=get<Vec2>(a,0x38f79c,{n.text,Address(0),false,-1.0f});
    const auto header_again=get<Vec2>(a,0x38f79c,{title,Address(0),false,-1.0f});
    const float offset=(header_again.y+47)+measured.y;
    if(anchor<2)anchors[anchor].y=offset+anchors[anchor].y;
    else anchors[anchor].y=anchors[anchor].y-offset;
}
}
FrameDependencyResult frame_render_notifications_37f990(FrameMenuState& s,FrameDependencyState& files,const FrameMainMenuApi& a,Address draw) {
    return protect([&] {
        if(files.notifications.empty())return;
        const auto io=get<Address>(a,0x3926ac);const auto display=read<Vec2>(a,io+8,0x37f9e2);
        std::array<Vec2,4> anchors={Vec2{20,20},Vec2{display.x-20,20},Vec2{display.x-20,display.y-20},Vec2{20,display.y-20}};
        for(std::size_t i=0;i<files.notifications.size();++i) {
            const auto copied=files.notifications[i];
            if(notification_time(a)>copied.expires) {
                files.notifications.erase(files.notifications.begin()+static_cast<std::ptrdiff_t>(i));
                // [C]37fade increments even after erase: the shifted next record
                // is skipped during THIS call, matching the native controller.
            } else notification(s,a,draw,copied,anchors);
        }
    });
}
FrameDependencyResult replay_frame_menu_35d5ac(FrameMenuState& s,FrameMainMenuState& m,FrameDependencyState& files,const FrameMainMenuApi& a) {
    return protect([&] {
        check(frame_hotkey_window_35d5ac(s,a.effects));
        const bool chinese=integer(s,0x3fd0e8)==2;
        if(chinese)call(a,0x398a98,{s.fonts[3]});
        const auto draw=get<Address>(a,0x392198);check(frame_render_notifications_37f990(s,files,a,draw));
        // [C] The native closed-menu alternate exit intentionally does NOT pop
        // the language font. Preserve it rather than silently balancing stacks.
        if(!flag(s,0x218818))return;
        check(frame_menu_text_event_35f203(s,a.effects));check(frame_main_menu_35fc8b(s,m,a));
        if(chinese)call(a,0x39881c);
    });
}
UnityFrameApi bind_frame_menu(FrameMenuState& s,FrameMainMenuState& m,FrameDependencyState& files,const FrameMainMenuApi& a,FrameDependencyResult& result,UnityFrameApi frame) {
    const auto prior=frame.domain;
    frame.domain=[&s,&m,&files,a,&result,prior](Rva r,std::span<const UnityValue> args)->std::optional<UnityValue> {
        if(r!=0x35d5ac)return prior?prior(r,args):std::nullopt;
        result=replay_frame_menu_35d5ac(s,m,files,a);if(result.status!=UnityStatus::complete)return {};
        return std::monostate{};
    };return frame;
}
'''
s=s[:pos]+new+s[pos:];p.write_text(s)
