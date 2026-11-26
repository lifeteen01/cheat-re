from pathlib import Path
p=Path('/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu.cpp')
s=p.read_text();pos=s.index('FrameDependencyResult frame_main_menu_35fc8b(')
new=r'''
namespace {
std::uint32_t packed_color(ClipRect value) {
    const auto byte=[](float v) {
        // [C]3789fc: COMISS zero then MINSS(1,v), so NaN propagates.
        const float clamped=v<0?0:(1.0f<v?1.0f:v);
        const float scaled=clamped*255.0f+.5f;
        if(!std::isfinite(scaled))return std::uint32_t(0x80000000u);
        return static_cast<std::uint32_t>(static_cast<std::int32_t>(scaled));
    };
    return byte(value.x)|(byte(value.y)<<8)|(byte(value.z)<<16)|(byte(value.w)<<24);
}
ClipRect unpack(std::int32_t packed) {
    const auto x=std::bit_cast<std::uint32_t>(packed);constexpr float scale=std::bit_cast<float>(0x3b808081u);
    return {float(x&255)*scale,float((x>>8)&255)*scale,float((x>>16)&255)*scale,float(x>>24)*scale};
}
ClipRect color_lerp(ClipRect from,ClipRect to,float t) {
    // [C]3795a4 quantizes through39045c and3364d4 after EVERY lerp.
    const ClipRect v{frame_interpolate_33565c(from.x,to.x,t),frame_interpolate_33565c(from.y,to.y,t),
        frame_interpolate_33565c(from.z,to.z,t),frame_interpolate_33565c(from.w,to.w,t)};
    return unpack(std::bit_cast<std::int32_t>(packed_color(v)));
}
void save_color(std::array<float,12>& state,std::size_t at,ClipRect c) {
    state[at]=c.x;state[at+1]=c.y;state[at+2]=c.z;state[at+3]=c.w;
}
ClipRect current_color(const std::array<float,12>& state,std::size_t at) {return {state[at],state[at+1],state[at+2],state[at+3]};}
FrameMenuButton button(const FrameMainMenuApi& a,Address window,const std::string& label,ClipRect bounds) {
    const auto id=get<std::int32_t>(a,0x392614,{window,label,Address(0)});
    call(a,0x394b40,{Vec2{bounds.z-bounds.x,bounds.w-bounds.y},-1.0f});
    (void)get<bool>(a,0x3948dc,{bounds,id,Address(0),std::int32_t(0)});
    if(!a.button_3bc7e0)stop(UnityStatus::missing_dependency,0x3bc7e0);
    auto b=a.button_3bc7e0(bounds,id,0);if(!b)stop(UnityStatus::missing_dependency,0x3bc7e0);return *b;
}
void interpolate_state(float& value,bool yes,const FrameMainMenuApi& a) {value=frame_interpolate_33565c(value,yes?1.0f:0.0f,14.0f*delta(a));}
Address bucket_font(FrameMenuState& s,unsigned i,float size) {
    auto& bucket=s.font_buckets[i];const auto f=bucket.fonts.find(size);if(f!=bucket.fonts.end())return f->second;
    if(std::find(bucket.requested.begin(),bucket.requested.end(),size)==bucket.requested.end())bucket.requested.push_back(size);
    return 0;
}
}
FrameDependencyResult frame_category_widget_389830(FrameMenuState& s,FrameMainMenuState& m,const FrameMainMenuApi& a,std::int32_t index,bool& pressed) {
    return protect([&] {
        if(index<0||std::size_t(index)>=m.categories.size())stop(UnityStatus::unreadable_snapshot,0x3367b0);
        const auto icon=m.categories[std::size_t(index)].icon;
        const auto label=m.categories[std::size_t(index)].name;
        const auto window=get<Address>(a,0x35d200);const auto style=get<Address>(a,0x392ca4);
        // [C] GetID occurs before rectangle construction in the native body.
        const auto id=get<std::int32_t>(a,0x392614,{window,label,Address(0)});
        const float scale=number(s,0x248ee8);
        const float width=read<float>(a,window+0x28,0x3898d0)-scale*28;
        const Vec2 start=read<Vec2>(a,window+0x100,0x3898f4);const Vec2 end{start.x+width,start.y+scale*42};
        const ClipRect bounds{start.x,start.y,end.x,end.y};
        call(a,0x394b40,{Vec2{end.x-start.x,end.y-start.y},-1.0f});
        (void)get<bool>(a,0x3948dc,{bounds,id,Address(0),std::int32_t(0)});
        if(!a.button_3bc7e0)stop(UnityStatus::missing_dependency,0x3bc7e0);
        const auto b=a.button_3bc7e0(bounds,id,0);if(!b)stop(UnityStatus::missing_dependency,0x3bc7e0);pressed=b->pressed;
        const bool selected=index==integer(s,0x402dd4);
        if(pressed&&!selected) {store(s,0x27fa10,0);s.values[0x402dd4]=std::bit_cast<std::uint32_t>(index);}
        const auto hash=get<std::int32_t>(a,0x39334c,{label,Address(0),std::int32_t(4)});
        auto& state=m.category_animation[std::bit_cast<std::uint32_t>(hash)];
        interpolate_state(state[0],selected||b->hovered,a);interpolate_state(state[2],selected,a);
        interpolate_state(state[1],b->hovered,a);interpolate_state(state[3],flag(s,0x3fc105),a);
        auto active=unpack(color(a,1,state[3]));auto hovered=unpack(color(a,1,state[3]*.7f));auto base=unpack(color(a,2,state[3]));
        const auto label_color=color_lerp(color_lerp(base,hovered,state[1]),active,state[2]);save_color(state,4,label_color);
        active=unpack(color(a,0,1));hovered=unpack(color(a,1,.7f));base=unpack(color(a,2,1));
        const auto icon_color=color_lerp(color_lerp(base,hovered,state[1]),active,state[2]);save_color(state,8,icon_color);
        auto draw=read<Address>(a,window+0x298,0x389bfc);const float rounding=read<float>(a,style+0x44,0x389c03);
        const auto background_color=color(a,8,state[2]);rect(a,draw,start,end,background_color,rounding,0);
        draw=read<Address>(a,window+0x298,0x389c31);
        const auto font=bucket_font(s,2,16);const Vec2 icon_pos{start.x+scale*13,start.y+scale*13};
        call(a,0x3a31f8,{draw,font,scale*16,icon_pos,std::bit_cast<std::int32_t>(packed_color(icon_color)),icon,Address(0),0.0f,Address(0)});
        draw=read<Address>(a,window+0x298,0x389cd5);const auto text_end=get<Address>(a,0x391c50,{label,false});
        const Vec2 text_pos{start.x+scale*42,(start.y+end.y)*.5f-context(a,0x3c30,0x389d41)*.5f};
        call(a,0x3a31bc,{draw,text_pos,std::bit_cast<std::int32_t>(packed_color(label_color)),label,text_end});
    });
}
FrameDependencyResult frame_subtab_widget_3893b0(FrameMenuState& s,FrameMainMenuState& m,const FrameMainMenuApi& a,std::int32_t index,bool& pressed) {
    return protect([&] {
        auto& cat=category(s,m);if(index<0||std::size_t(index)>=cat.subtabs.size())stop(UnityStatus::unreadable_snapshot,0x2d4d20);
        const auto label=cat.subtabs[std::size_t(index)];const auto window=get<Address>(a,0x35d200);(void)get<Address>(a,0x392ca4);
        const auto id=get<std::int32_t>(a,0x392614,{window,label,Address(0)});
        const float height=read<float>(a,window+0x2c,0x389445);
        const auto measured=get<Vec2>(a,0x38f79c,{label,Address(0),true,-1.0f});
        const auto start=read<Vec2>(a,window+0x100,0x38948f);const Vec2 end{start.x+measured.x,start.y+height};
        const ClipRect bounds{start.x,start.y,end.x,end.y};
        call(a,0x394b40,{Vec2{end.x-start.x,end.y-start.y},-1.0f});
        (void)get<bool>(a,0x3948dc,{bounds,id,Address(0),std::int32_t(0)});
        if(!a.button_3bc7e0)stop(UnityStatus::missing_dependency,0x3bc7e0);
        auto b=a.button_3bc7e0(bounds,id,0);if(!b)stop(UnityStatus::missing_dependency,0x3bc7e0);pressed=b->pressed;
        const bool selected=index==category(s,m).requested;
        if(pressed&&!selected) {store(s,0x27fa14,0);category(s,m).requested=index;}
        const auto hash=get<std::int32_t>(a,0x39334c,{label,Address(0),std::int32_t(5)});
        auto& state=m.subtab_animation[std::bit_cast<std::uint32_t>(hash)];
        interpolate_state(state[0],b->hovered||selected,a);interpolate_state(state[2],selected,a);interpolate_state(state[1],b->hovered,a);
        const auto active=unpack(color(a,1,1));const auto hovered=unpack(color(a,1,.7f));const auto base=unpack(color(a,2,1));
        const auto text_color=color_lerp(color_lerp(base,hovered,state[1]),active,state[2]);save_color(state,3,text_color);
        auto draw=read<Address>(a,window+0x298,0x3896de);const auto c=color(a,0,state[2]);
        rect(a,draw,{start.x,end.y-number(s,0x248ee8)*2},end,c,0,0);
        draw=read<Address>(a,window+0x298,0x38973f);const auto text_end=get<Address>(a,0x391c50,{label,false});
        const auto again=get<Vec2>(a,0x38f79c,{label,Address(0),true,-1.0f});
        const Vec2 text_pos{start.x,(start.y+end.y)*.5f-again.y*.5f};
        call(a,0x3a31bc,{draw,text_pos,std::bit_cast<std::int32_t>(packed_color(text_color)),label,text_end});
    });
}
'''
s=s[:pos]+new+s[pos:]
s=s.replace('for(std::size_t i=0;i<m.categories.size();++i)call(a,0x389830,{std::int32_t(i)});','for(std::size_t i=0;i<m.categories.size();++i) {bool pressed=false;check(frame_category_widget_389830(s,m,a,static_cast<std::int32_t>(i),pressed));}')
s=s.replace('for(std::size_t i=0;i<category(s,m).subtabs.size();++i) {call(a,0x3893b0,{std::int32_t(i)});call(a,0x39ac04,{0.0f,scale*25});}', 'for(std::size_t i=0;i<category(s,m).subtabs.size();++i) {bool pressed=false;check(frame_subtab_widget_3893b0(s,m,a,static_cast<std::int32_t>(i),pressed));call(a,0x39ac04,{0.0f,scale*25});}')
p.write_text(s)
