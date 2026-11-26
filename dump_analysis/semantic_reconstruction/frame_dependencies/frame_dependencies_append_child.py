from pathlib import Path
p=Path('/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu.cpp');s=p.read_text();pos=s.index('FrameDependencyResult frame_main_menu_35fc8b(')
new=r'''
FrameDependencyResult frame_search_child_384df0(FrameMenuState& s,FrameMainMenuState& m,const FrameMainMenuApi& a,std::string icon,std::string label,Vec2 request,bool register_search) {
    return protect([&] {
        const bool transparent=.99f>number(s,0x3fc0f8)||.99f>number(s,0x3fc0fc);
        const auto hash=get<std::int32_t>(a,0x39334c,{label,Address(0),std::int32_t(0x1465)});
        auto& registered=m.search_child_registered[std::bit_cast<std::uint32_t>(hash)];
        call(a,0x398c60,{std::int32_t(2),Vec2{0,0}});
        const float available=get<float>(a,0x392f34);const float scale=number(s,0x248ee8);
        const float default_width=available*.5f-context(a,0x381c,0x384ecb)*.5f-scale*20;
        const auto size=get<Vec2>(a,0x38f224,{request,default_width,0.0f});
        (void)get<bool>(a,0x38e97c,{label+"main",size,true,std::int32_t(transparent?0x48:0x40)});
        if(register_search&&!registered) {
            FrameSearchGroup group;group.category=integer(s,0x3fc100);group.subtab=category(s,m).selected;
            group.id=icon;group.label=label;m.search_groups.push_back(std::move(group));registered=true;
        }
        const auto pos=get<Vec2>(a,0x392ef8);const float width=get<float>(a,0x392f34);const float header=scale*44;
        auto draw=get<Address>(a,0x392ecc);const float rounding=context(a,0x37fc,0x38500b);auto c=color(a,8,1);
        rect(a,draw,pos,add(pos,{width,header}),c,rounding,0x30);
        draw=get<Address>(a,0x392ecc);c=color(a,6,1);
        rect(a,draw,add(pos,{0,header-scale}),add(pos,{width,header}),c,0,0);
        const auto font=bucket_font(s,2,16);Vec2 icon_size;
        if(font)icon_size=get<Vec2>(a,0x3a3874,{font,scale*16,std::numeric_limits<float>::max(),0.0f,icon,Address(0),Address(0)});
        else icon_size=get<Vec2>(a,0x38f79c,{icon,Address(0),false,-1.0f});
        const auto text_size=get<Vec2>(a,0x38f79c,{label,Address(0),false,-1.0f});
        const float icon_y=(header-icon_size.y)*.5f+pos.y;
        const float text_y=(header-text_size.y)*.5f+pos.y;
        draw=get<Address>(a,0x392ecc);c=color(a,0,1);
        call(a,0x3a31f8,{draw,font,scale*16,Vec2{pos.x+scale*14,icon_y},c,icon,Address(0),0.0f,Address(0)});
        draw=get<Address>(a,0x392ecc);const auto end=get<Address>(a,0x391c50,{label,false});c=color(a,1,1);
        call(a,0x3a31bc,{draw,Vec2{pos.x+scale*38,text_y},c,label,end});
        const bool content_transparent=.99f>number(s,0x3fc0f8)||.99f>number(s,0x3fc0fc);
        call(a,0x39b44c,{scale*44});call(a,0x398c60,{std::int32_t(2),Vec2{scale*14,scale*14}});
        // [C] Exact zero (including -0) retains zero; unordered/nonzero gives -1.
        const float height=request.y==0?request.y:-1.0f;
        (void)get<bool>(a,0x38e97c,{label,Vec2{0,height},false,std::int32_t(content_transparent?0x10088:0x10080)});
        call(a,0x39896c,{std::int32_t(1)});call(a,0x398c60,{std::int32_t(14),Vec2{scale*14,scale*14}});
    });
}
'''
s=s[:pos]+new+s[pos:]
s=s.replace('child(a,"##subtabs"','child(a,"subtabs"').replace('child(a,"##pages"','child(a,"content"').replace('std::string("/")','std::string(" / ")')
s=s.replace('''                // [U]384df0 is sample-local child renderer, kept explicit pending
                // its branch translation; not attributed to third-party ImGui.
                call(a,0x384df0,{group.id,group.label+"##search",Vec2{-20*scale,0},std::int32_t(0)});''','''                check(frame_search_child_384df0(s,m,a,group.id,group.label+"##search",{-20*scale,0},false));''')
p.write_text(s)
