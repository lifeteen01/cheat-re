#include "frame_dependencies_overlay.hpp"
namespace rust_internal_re {
void check_frame_overlay_path_tests() {
    auto require=[](bool value) {if(!value){ /* FREESTANDING_TODO: was throw runtime_error("frame overlay path fixture") */ }};
    constexpr Address base=0x1000000,player=base+0x100,camera=base+0x1000,local=base+0x2000,
        inventory=base+0x3000,container=base+0x4000,item=base+0x5000,definition=base+0x6000,texture=base+0x7000;
    Snapshot im(base,re::ReVector<ReByte>(0x8000));
    require(im.write(player+0x48,Address(1)));require(im.write(item+0x10,definition));
    require(im.write(item+0xd8,4.0f));require(im.write(item+0xb4,re::ReNumericLimits<float>::quiet_NaN()));
    const re::ReArray<TargetRecord,1> records={{{player,0}}};
    FrameOverlayRequest req;req.game=&im;req.targets.records=records;req.targets.camera_2e069c=camera;req.targets.local_2dda9c=local;
    req.target_config.hotbar_options[0]=true;req.target_config.hotbar_options[3]=true;
    req.target_config.eligibility.scientist=true;req.target_config.eligibility.sleepers=true;
    req.target_config.eligibility.fov=100;req.target_config.eligibility.player_maximum_distance=100;
    req.target_api.calls.game.valid_2e0e9c=[](Address) {return true;};
    req.target_api.calls.game.predicate=[](Rva,Address,ReU8) {return false;};
    req.target_api.calls.game.bone_368be8=[](Address,int) {return Vec3{1,2,3};};
    req.target_api.calls.game.object=[](Rva,Address) {return Address(base+0x7800);};
    req.target_api.calls.record_kind=[](Address,ReU8) {return ReU32(0);};
    req.target_api.calls.project_36cd20=[](Address,Vec3,Vec2& p,ProjectionBounds) {p={0,0};return true;};
    req.target_api.width_2e0af0=[] {return 0;};req.target_api.height_2e09f0=[] {return 0;};
    FrameMenuState s;s.values[0x3edde8]=re::re_bit_cast<ReU32>(2.0f);
    FrameDependencyResult getter_last;
    auto fields=bind_frame_inventory_fields(im,getter_last);
    const re::ReArray<UnityValue,1> field_args={item};
    require(re::re_get<ReI32>(*fields.unity.external(0x371294,field_args))==0);
    const re::ReArray<UnityValue,1> invalid_args={Address(base+0x9000)};
    require(!fields.unity.external(0x371294,invalid_args)&&getter_last.status==UnityStatus::unreadable_snapshot);
    FrameDependencyApi a;re::ReVector<Rva> calls;re::ReVector<Vec2> bar_start;Vec2 image_start{};bool begin=true,empty_items=false;unsigned images=0;
    re::ReVector<re::ReArray<ReI32,4>> gradients;
    a.unity.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        calls.push_back(r);
        switch(r) {
        case 0x369324:require(re::re_get<Address>(args[0])==player);return inventory;
        case 0x373dc8:return container;
        case 0x37224c:return ReI32(2);
        case 0x3722f0:if(empty_items)return Address(0);return re::re_get<ReI32>(args[1])==0?Address(0):item;
        case 0x371294:return ReI32(2);
        case 0x371c38:return texture;
        case 0x372184:return true;
        case 0x38cfa4:return begin;
        case 0x392ef8:return Vec2{10,20};
        case 0x392ecc:return Address(999);
        case 0x3a1244:bar_start.push_back(re::re_get<Vec2>(args[1]));return re::ReMonostate{};
        case 0x3a0168:image_start=re::re_get<Vec2>(args[2]);++images;return re::ReMonostate{};
        case 0x38f79c:return Vec2{4,5};
        case 0x39b770:if(re::re_get<ReI32>(args[1])==0)require(re::re_get<Vec2>(args[0]).x==390.0f);return re::ReMonostate{};
        case 0x369040:return re::ReString("Fixture");
        case 0x39246c:return Vec2{10,20};
        case 0x392f14:return Vec2{140,80};
        case 0x392424:case 0x392448:return 10.0f;
        case 0x368a84:return Address(0);
        case 0x3a12d8:gradients.push_back({re::re_get<ReI32>(args[3]),re::re_get<ReI32>(args[4]),re::re_get<ReI32>(args[5]),re::re_get<ReI32>(args[6])});return re::ReMonostate{};
        default:return re::ReMonostate{};
        }
    };
    auto r=replay_frame_inventory_307638(s,a,req);
    require(r.status==UnityStatus::complete&&images==1&&image_start.x==16.0f&&image_start.y==21.0f);
    require(bar_start.size()==2&&bar_start[1].y==20.0f); // MINSS NaN selects literal1.
    require(s.values[0x3efdf8]==re::re_bit_cast<ReU32>(10.0f));
    unsigned pops=0,ends=0;for(auto role:calls) {pops+=role==0x39890c;ends+=role==0x390994;}
    require(pops==1&&ends==1);
    req.target_config.hotbar_options[3]=false;empty_items=true;
    r=replay_frame_inventory_307638(s,a,req);
    constexpr auto dark=re::re_bit_cast<ReI32>(0xff49993eu);
    require(r.status==UnityStatus::complete&&gradients.size()==2);
    require((gradients[0]==re::ReArray<ReI32,4>{0,dark,dark,0}));
    require((gradients[1]==re::ReArray<ReI32,4>{dark,0,0,dark}));
    req.target_config.hotbar_options[3]=true;empty_items=false;
    begin=false;calls.clear();r=replay_frame_inventory_307638(s,a,req);
    require(r.status==UnityStatus::complete);for(auto role:calls)require(role!=0x390994);
}
} // namespace rust_internal_re
