#include "re_compat.h"
#include "frame_dependencies_main_menu.hpp"
namespace rust_internal_re {
void check_frame_main_menu_dependencies() {
    auto require=[](bool b) {if(!b){ /* FREESTANDING_TODO: was throw runtime_error("main menu fixture") */ }};
    FrameMenuState s;FrameMainMenuState m;FrameMainMenuApi a;
    require(frame_interpolate_33565c(0,1,2)==2); // Native interpolation overshoots.
    const auto first=frame_lowercase_389e84(m,"FiRST");
    const auto second=frame_lowercase_389e84(m,"SECOND");require(first=="first"&&second=="second");
    require(frame_lowercase_389e84(m,re::re_string_fill(5000,'A')).size()==4095);
    require(frame_lowercase_389e84(m,re::ReStringView("A\0B",3))=="a");
    auto r=frame_initialize_points_3873f0(m,a);require(r.stopped_at==0x3349ac&&m.random_cache.flags==1);
    // [C] Resolution bit stays set after failure. The retry reaches context,
    // retaining the unresolved numeric target, exactly as the native wrapper.
    bool detected=false;
    a.effects.unity.detect_context=[&](const UnityCacheSpec& spec,Address target) {
        require(spec.flags==0x4036e8&&spec.target==0x4036e0&&spec.context==0x4036f0&&target==0);detected=true;return true;
    };
    unsigned random_calls=0;
    a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        require(role==0x388a14);const auto phase=random_calls++%4;
        require(re::re_get<float>(args[0])==(phase<2?0.0f:-5.0f));return phase<2?.5f:2.0f;
    };
    require(frame_initialize_points_3873f0(m,a).status==UnityStatus::complete&&detected&&random_calls==576);
    require(m.points[0].x==425&&m.points[143].y==290&&m.velocities[10].x==10&&m.velocities[10].y==10);
    m={};m.categories.resize(7);unsigned visited=0;
    a.page=[&](Rva role,FrameMenuState& state,FrameMainMenuState& menu) {
        require(role==menu.categories[state.values[0x3fc100]].pages[0]);++visited;return FrameDependencyResult{};
    };
    a.effects.unity.resolve_target=[&](const UnityCacheSpec& spec)->MetadataResult {
        require(spec.method=="Range"&&spec.klass=="Random");return {123};
    };
    a.effects.unity.detect_context=[&](const UnityCacheSpec&,Address p) {require(p==123);return true;};
    a.effects.unity.external=[](Rva role,re::ReSpan<const UnityValue>)->re::ReOptional<UnityValue> {
        if(role==0x388a14)return 0.0f;
        return {};
    };
    // [C] Failure at first ImGui call comes AFTER all21 registrations, seven
    // do/while page visits (zero subtabs still visit once), and both once flags.
    r=frame_main_menu_35fc8b(s,m,a);
    require(r.stopped_at==0x398c60&&visited==7&&s.values[0x3fd7b8]==1&&s.values[0x3fdab8]==1);
    require(m.categories[0].pages.size()==3&&m.categories[1].pages.size()==6&&m.categories[6].pages.size()==1);
    require(s.values[0x3fc100]==0&&m.categories[6].selected==0);
    constexpr Address base=0x100000;Snapshot ui(base,re::ReVector<ReByte>(0x5000));a.imgui=&ui;
    require(ui.write(base+0x10,.5f));a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue>)->re::ReOptional<UnityValue> {
        if(role==0x3926ac)return base;
        return {};
    };
    auto put=[&](Rva role,float v) {s.values[role]=re::re_bit_cast<ReU32>(v);};
    put(0x3fcaf8,2);put(0x3fc0f8,0);put(0x3fc0fc,0);put(0x27fa10,0);put(0x27fa14,0);
    s.values[0x402dd4]=3;m.categories[3].requested=4;
    require(frame_menu_animations_3872e8(s,m,a).status==UnityStatus::complete);
    require(s.values[0x3fc100]==3&&m.categories[3].selected==4);
    put(0x3fc0f8,re::ReNumericLimits<float>::quiet_NaN());put(0x3fc0fc,1);put(0x27fa14,1);s.values[0x402dd4]=5;
    require(frame_menu_animations_3872e8(s,m,a).status==UnityStatus::complete&&s.values[0x3fc100]==3);
    s.values[0x3fc518]=1;m.categories[5].requested=2;
    require(frame_menu_animations_3872e8(s,m,a).status==UnityStatus::complete&&s.values[0x3fc100]==5&&m.categories[5].selected==2);
    m.categories[5].selected=-1;require(frame_menu_page_388b4c(s,m,a).status==UnityStatus::complete);
    // Full main controller fixture, including concrete category/subtab helpers.
    s={};m={};m.categories.resize(7);m.categories[0].subtabs={"First"};m.categories[0].pages={0x3354c0};
    for(unsigned i=0;i<7;++i) {m.categories[i].name="Category"+re::re_to_string(i);m.categories[i].icon="I";}
    for(unsigned i=0;i<144;++i)m.points[i]={float(i)*100,1000};
    a.context=base;require(ui.write(base+0x10,0.0f));
    constexpr Address window=base+0x100,style=base+0x600;
    require(ui.write(window+0x20,100.0f));require(ui.write(window+0x24,100.0f));
    require(ui.write(window+0x28,200.0f));require(ui.write(window+0x2c,50.0f));
    require(ui.write(window+0x100,Vec2{4,5}));require(ui.write(window+0x298,Address(321)));
    require(ui.write(base+0x37d0,1.0f));require(ui.write(base+0x3c30,18.0f));
    put(0x248ee8,2);put(0x3fc0f8,1);put(0x3fc0fc,1);put(0x27fa10,1);put(0x27fa14,1);
    s.values[0x3fd7b8]=s.values[0x3fdab8]=1;s.font_buckets[2].fonts[16]=777;
    unsigned pages=0,buttons=0;re::ReVector<re::ReString> children;
    a.page=[&](Rva role,FrameMenuState&,FrameMainMenuState&) {require(role==0x3354c0);++pages;return FrameDependencyResult{};};
    a.button_3bc7e0=[&](ClipRect bounds,ReI32,ReI32 flags)->re::ReOptional<FrameMenuButton> {
        require(bounds.z>=bounds.x&&flags==0);++buttons;return FrameMenuButton{};
    };
    a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        switch(role) {
        case 0x3926ac:return base;
        case 0x35d200:return window;
        case 0x392ca4:return style;
        case 0x392ecc:return Address(321);
        case 0x392614:return ReI32(42);
        case 0x39334c:return re::re_get<ReI32>(args[2]); // Hash collision aliases intentionally retained.
        case 0x392298:return re::re_bit_cast<ReI32>(0xfffefdfcu);
        case 0x38f79c:return Vec2{40,16};
        case 0x392f14:return Vec2{180,50};
        case 0x392ef8:return Vec2{10,20};
        case 0x392f34:return 20000.0f;
        case 0x392ee4:return 10000.0f;
        case 0x392424:return 10.0f;
        case 0x38cfa4:case 0x3948dc:case 0x3c2d5c:return true;
        case 0x39408c:case 0x3947ec:return false;
        case 0x38e97c:children.push_back(re::re_get<re::ReString>(args[0]));return true;
        case 0x391c50:return Address(0);
        default:return re::ReMonostate{};
        }
    };
    r=frame_main_menu_35fc8b(s,m,a);
    require(r.status==UnityStatus::complete&&pages==1&&buttons==8);
    require((children==re::ReVector<re::ReString>{"header","name","navbar","main","subtabs","content"}));
    require(m.category_animation.size()==1&&m.subtab_animation.size()==1); // Separate seed4/5 registries.
    // Read-only search copy: unsupported widget kinds still balance Push/Pop.
    s.strings[0x3fd3a8]="FIR";FrameSearchWidget unknown;unknown.type="unknown";unknown.label="First";
    m.search_groups={{0,0,"I","Group",{unknown}}};
    children.clear();buttons=0;
    const auto effects=a.effects.unity.external;
    a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(role==0x38f224) {require(re::re_get<Vec2>(args[0]).x==-40);return Vec2{400,0};}
        if(role==0x3a3874)return Vec2{16,16};
        return effects(role,args);
    };
    r=frame_main_menu_35fc8b(s,m,a);
    require(r.status==UnityStatus::complete&&pages==1&&buttons==7);
    require(children.size()==6&&children[4]=="Group##searchmain"&&children[5]=="Group##search");
    require(m.search_child_registered.size()==1);
    FrameDependencyState files;files.notifications={{"expired",0,5,0},{"shifted",1,6,0},{"drawn",2,15,3}};
    require(ui.write(base+8,Vec2{800,600}));
    unsigned time_reads=0,notification_rects=0;re::ReVector<re::ReString> drawn_text;
    a.effects.time=[&](Rva role)->re::ReOptional<float> {require(role==0x31581c);++time_reads;return 10.0f;};
    const auto search_effects=a.effects.unity.external;
    a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(role==0x3a1244) {
            ++notification_rects;const auto start=re::re_get<Vec2>(args[1]);const auto end=re::re_get<Vec2>(args[2]);
            require(start.x==20&&start.y==511&&end.x==320&&end.y==580);
        }
        if(role==0x3a31bc)drawn_text.push_back(re::re_get<re::ReString>(args[3]));
        return search_effects(role,args);
    };
    r=frame_render_notifications_37f990(s,files,a,321);
    require(r.status==UnityStatus::complete&&files.notifications.size()==2&&files.notifications[0].text=="shifted");
    require(time_reads==3&&notification_rects==1&&(drawn_text==re::ReVector<re::ReString>{"INFO","drawn"}));
    files.notifications.clear();s.values[0x218818]=0;s.values[0x3fd0e8]=2;s.fonts[3]=999;
    re::ReVector<Rva> prefix_calls;
    a.effects.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        prefix_calls.push_back(role);
        if(role==0x398a98) {require(re::re_get<Address>(args[0])==999);return re::ReMonostate{};}
        if(role==0x392198)return Address(321);
        return {};
    };
    require(replay_frame_menu_35d5ac(s,m,files,a).status==UnityStatus::complete);
    require((prefix_calls==re::ReVector<Rva>{0x398a98,0x392198}));
    FrameDependencyResult bound_result;auto frame=bind_frame_menu(s,m,files,a,bound_result);
    require(frame.domain(0x35d5ac,{}).has_value()&&bound_result.status==UnityStatus::complete);
}
} // namespace rust_internal_re
