#include "game_base_analysis.hpp"
namespace rust_internal_re {
namespace {
struct BaseStop {GameBaseStatus status;Rva site;};
template<class T> T base_read(const Snapshot& image,Address p,Rva site) {
    const auto value=image.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
template<class F> const F& base_need(const F& callback,Rva site) {
    if(!callback)__builtin_trap();
    return callback;
}
template<class T> T base_value(const GameBaseResult<T>& result) {
    if(result.status!=GameBaseStatus::complete)__builtin_trap();
    return result.value;
}
template<class T> T base_optional(re::ReOptional<T> value,Rva site) {
    if(!value)__builtin_trap();
    return *value;
}
re::ReOptional<Address> address_field(const Snapshot& image,Address object,ReU32 offset) {
    if(!sample_pointer_range(object))return Address(0);
    return image.read<Address>(object+offset);
}
}
// [C] Literal numeric guards and field widths from the named native routines.
re::ReOptional<bool> entity_valid_2e0e9c(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return false;
    const auto field=im.read<Address>(p+0x48);if(!field)return {};
    return *field!=0;
}
re::ReOptional<Address> entity_class_name_2e5a54(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return Address(0);
    const auto klass=im.read<Address>(p);if(!klass)return {};
    if(!sample_pointer_range(*klass))return Address(0);
    return im.read<Address>(*klass+0x10);
}
re::ReOptional<ReU32> prefab_identifier_367668(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return ReU32(0);
    return im.read<ReU32>(p+0x54);
}
re::ReOptional<ReU8> dead_byte_3693b0(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return ReU8(0);
    return im.read<ReU8>(p+0x2c0);
}
re::ReOptional<bool> player_mask_369df4(const Snapshot& im,Address p,ReU32 mask) {
    if(!sample_pointer_range(p))return false;
    const auto flags=im.read<ReU32>(p+0x708);if(!flags)return {};
    return (*flags&mask)!=0;
}
re::ReOptional<bool> npc_predicate_36a178(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return false;
    const auto id=prefab_identifier_367668(im,p);if(!id)return {};
    return *id!=0xf4e1d514u;
}
re::ReOptional<bool> safe_zone_36acb8(const Snapshot& im,Address p) {return player_mask_369df4(im,p,0x20000);}
re::ReOptional<bool> wounded_flag_36b288(const Snapshot& im,Address p) {return player_mask_369df4(im,p,0x40);}
re::ReOptional<bool> sleeping_flag_36a20c(const Snapshot& im,Address p,ReU8 bypass) {
    if(!sample_pointer_range(p)||bypass)return false;
    return player_mask_369df4(im,p,0x10);
}
re::ReOptional<Address> input_object_369738(const Snapshot& im,Address p) {return address_field(im,p,0x778);}
// [C] Full36b504..36b52e: numeric pointer guard, +3ac read, ADDSS literal1.
re::ReOptional<float> charged_scale_36b504(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return 0.0f;
    const auto value=im.read<float>(p+0x3ac);
    if(!value)return {};
    return *value+1.0f;
}
re::ReOptional<Address> movement_record_36a2c8(const Snapshot& im,Address p) {return address_field(im,p,0x4e8);}
re::ReOptional<Address> model_state_369400(const Snapshot& im,Address p) {return address_field(im,p,0x350);}
re::ReOptional<Vec3> camera_position_36ca34(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return Vec3{};
    const auto native=im.read<Address>(p+0x10);if(!native)return {};
    if(!sample_pointer_range(*native))return Vec3{};
    return im.read<Vec3>(*native+0x444);
}
// [C] 0x2d7e18 -> 0x2cee44 -> 0x2cf59c -> 0x2cf7e4 copies LOW bytes.
// [I] Owned string replaces native SSO/allocator storage, preserving embedded NUL bytes.
GameBaseResult<re::ReString> managed_name_bytes_2d7e18(const Snapshot& im,Address object,ReUSize maximum) {
    GameBaseResult<re::ReString> out;
    const Address chars=object+0x14;
    if(!sample_pointer_range(chars))return out;
    for(ReUSize n=0;n<maximum;++n) {
        const auto word=im.read<ReU16>(chars+n*2);
        if(!word) {out.status=GameBaseStatus::missing_bytes;out.site=0x2d7e57;return out;}
        if(!*word)return out;
        out.value.push_back(static_cast<char>(*word&255));
    }
    out.status=GameBaseStatus::analysis_limit;out.site=0x2d7e57;return out;
}
// [C] 0x2e3c50..0x2e3c86. NEG INT_MIN wraps, then the signed JLE skips the loop.
GameBaseResult<float> integer_power_2e3c50(float x,ReI32 exponent,ReUSize maximum) {
    const bool negative=exponent<0;
    const auto magnitude=re::re_bit_cast<ReI32>(negative?0u-ReU32(exponent):ReU32(exponent));
    GameBaseResult<float> out{1};
    if(magnitude>0) {
        if(ReU32(magnitude)>maximum) {out.status=GameBaseStatus::analysis_limit;out.site=0x2e3c70;return out;}
        for(ReI32 n=0;n<magnitude;++n)out.value*=x;
    }
    if(negative)out.value=1.0f/out.value;
    return out;
}
GameBaseResult<float> wrap_degrees_320cd0(float value,ReUSize maximum) {
    GameBaseResult<float> out{value};
    ReUSize steps=0;
    const auto step=[&](float delta) {
        if(steps++>=maximum) {out.status=GameBaseStatus::analysis_limit;return false;}
        const float next=out.value+delta;
        if(next==out.value) {out.status=GameBaseStatus::nonprogressing_math;return false;}
        out.value=next;return true;
    };
    while(out.value>360.0f)if(!step(-360.0f)) {out.site=0x320cda;return out;}
    while(0.0f>out.value)if(!step(360.0f)) {out.site=0x320cec;return out;}
    return out;
}
// [C] 0x31530c..0x315514, including singularities and distinct degree constant.
GameBaseResult<Vec3> quaternion_euler_31530c(Orientation q,ReUSize maximum) {
    const float xx=q.x*q.x,yy=q.y*q.y,zz=q.z*q.z;
    const float xy_square=yy+xx;
    const float unit=((xy_square+zz)+q.w*q.w);
    const float test=q.x*q.w-q.z*q.y;
    GameBaseResult<Vec3> out;
    if(test>unit*re::re_bit_cast<float>(0x3effbe77u)) {
        const float angle=approximate_atan2_3c86ac(q.y,q.x);
        out.value={re::re_bit_cast<float>(0x3fc90fdbu),angle+angle,0};
    } else if(unit*re::re_bit_cast<float>(0xbeffbe77u)>test) {
        out.value={re::re_bit_cast<float>(0xbfc90fdbu),approximate_atan2_3c86ac(q.y,q.x)*-2.0f,0};
    } else {
        const float twice_w=q.w+q.w;
        const float yaw=approximate_atan2_3c86ac((q.z+q.z)*q.x+twice_w*q.y,1.0f-(xy_square+xy_square));
        const float pitch=approximate_asin_3c85e8(test+test);
        const float twice_x=q.x+q.x;
        const float sum=zz+xx;
        const float roll=approximate_atan2_3c86ac(twice_x*q.y+twice_w*q.z,1.0f-(sum+sum));
        out.value={pitch,yaw,roll};
    }
    const float degrees=re::re_bit_cast<float>(0x42652ee6u);
    out.value=out.value*degrees;
    for(float* component:{&out.value.x,&out.value.y,&out.value.z}) {
        const auto wrapped=wrap_degrees_320cd0(*component,maximum);
        *component=wrapped.value;
        if(wrapped.status!=GameBaseStatus::complete) {out.status=wrapped.status;out.site=wrapped.site;return out;}
    }
    return out;
}
// [C] 0x36c638..0x36c66d lower-inclusive, upper-exclusive, rejects unordered.
bool contains_projection_36c638(ProjectionBounds r,Vec3 point) {
    return point.x>=r.x&&r.x+r.width>point.x&&point.y>=r.y&&r.y+r.height>point.y;
}
GameBaseResult<bool> project_screen_36cd20(Address camera,Vec3 point,Vec2& output,ProjectionBounds bounds,const ProjectionQueries& queries) {
    GameBaseResult<bool> out;
    {
        Vec3 projected{}; // [C] 0x36c445 zeroes the temporary before external dispatch.
        base_need(queries.world_to_screen_36c3d4,0x36cd4f)(camera,point,projected);
        if(0.001f>projected.z||!contains_projection_36c638(bounds,projected))return out;
        const auto height=base_need(queries.screen_height_2e09f0,0x36cd85)();
        output={projected.x,float(height)-projected.y};out.value=true;
    }
    return out;
}
GameBaseResult<ReI32> choose_bone_368cb0(const Snapshot& im,Address entity,ReI32 priority,
    ProjectionBounds bounds,const BoneQueries& calls,ReUSize maximum) {
    GameBaseResult<ReI32> out{-1};
    {
        const Address camera=base_need(calls.camera_2e069c,0x368ce0)();
        if(!sample_pointer_range(camera)||!sample_pointer_range(entity))return out;
        if(!base_optional(entity_valid_2e0e9c(im,entity),0x368d0b))return out;
        if(!sample_pointer_range(base_need(calls.local_2dda9c,0x368d18)()))return out;
        const Address model=base_read<Address>(im,entity+0x1d0,0x368d2d);
        if(!sample_pointer_range(model))return out;
        const Address array=base_read<Address>(im,model+0x50,0x368d44);
        if(!sample_pointer_range(array))return out;
        const auto count=base_read<ReI32>(im,array+0x18,0x368d58);
        if(count<=0)return out;
        if(ReU32(count)>maximum||count>INT32_MAX/8)__builtin_trap();
        float best=re::ReNumericLimits<float>::max();
        Vec2 scratch{}; // [I] Only consumed after a successful projector result.
        for(ReI32 index=0;index<count;++index) {
            const Address transform=base_read<Address>(im,array+0x20+ReU32(index)*8u,0x368d80);
            if(!sample_pointer_range(transform)||(ReU32(index)-43u)<=1u)continue;
            const Vec3 point=base_need(calls.transform_position_3747d4,0x368da8)(transform);
            const auto mask=base_need(calls.mask_2e6a6c,0x368dad)();
            const Vec3 origin=base_need(calls.camera_position_36ca34,0x368dcb)(camera);
            if(!base_need(calls.query_2e2320,0x368df4)(origin,point,mask,0,0))continue;
            if(!base_need(calls.project_36cd20,0x368e2c)(camera,point,scratch,bounds))continue;
            const float center_x=float(base_need(calls.width_2e0af0,0x368e35)())*0.5f;
            const float center_y=float(base_need(calls.height_2e09f0,0x368e49)())*0.5f;
            const float dy=center_y-scratch.y,dx=center_x-scratch.x;
            const float squared_y=base_value(integer_power_2e3c50(dy,2));
            const float squared_x=base_value(integer_power_2e3c50(dx,2));
            const float distance=sample_sqrt_2e3c88(squared_y+squared_x);
            if(best>distance) {best=distance;out.value=index;}
        }
        if(priority!=0) {
            const Vec3 point=base_need(calls.bone_position_368be8,0x368ec8)(entity,priority);
            const auto mask=base_need(calls.mask_2e6a6c,0x368ecd)();
            const Vec3 origin=base_need(calls.camera_position_36ca34,0x368eeb)(camera);
            if(base_need(calls.query_2e2320,0x368f14)(origin,point,mask,0,0))out.value=priority;
        }
    }
    return out;
}
GameBaseResult<float> attachment_velocity_36b758(const Snapshot& im,Address weapon,bool increase,
    const AttachmentQueries& calls,ReUSize maximum) {
    GameBaseResult<float> out;
    {
        if(!sample_pointer_range(weapon))return out;
        const Address list=base_read<Address>(im,weapon+0x90,0x36b793);
        if(!sample_pointer_range(list))return out;
        const auto count=base_read<ReI32>(im,list+0x18,0x36b7a6);
        if(count<=0)return out;
        if(ReU32(count)>maximum||count>INT32_MAX/8)__builtin_trap();
        float total=0;ReU32 qualifying=0;
        const auto mod_hash=entity_name_hash_2d6354("ProjectileWeaponMod");
        const auto gas_hash=entity_name_hash_2d6354("assets/prefabs/weapon mods/gascompressionoverdrive/gascompressionoverdrive.entity.prefab");
        for(ReI32 index=0;index<count;++index) {
            const Address array=base_read<Address>(im,list+0x10,0x36b7c4);
            if(!sample_pointer_range(array))continue;
            const Address mod=base_read<Address>(im,array+0x20+ReU32(index)*8u,0x36b7e2);
            if(!sample_pointer_range(mod))continue;
            const Address class_name=base_optional(entity_class_name_2e5a54(im,mod),0x36b7fa);
            if(!sample_pointer_range(class_name))continue;
            re::ReString text;
            for(ReUSize n=0;;++n) {
                if(n==4096)__builtin_trap();
                const char c=base_read<char>(im,class_name+n,0x36b815);
                if(!c)break;
                text.push_back(c);
            }
            if(entity_name_hash_2d6354(text)!=mod_hash)continue;
            const Address managed_name=base_need(calls.name_37361c,0x36b84a)(mod);
            if(!sample_pointer_range(managed_name))continue;
            const auto name=base_value(managed_name_bytes_2d7e18(im,managed_name));
            const auto hash=entity_name_hash_2d6354(name);
            const auto enabled=base_read<ReU8>(im,mod+0x230,0x36b8ad);
            if(enabled||hash==gas_hash) {
                total+=base_read<float>(im,mod+0x248,0x36b8bb);++qualifying;
            }
        }
        float mean=qualifying?total/float(qualifying):1.0f;
        if(increase&&mean==1.025f)mean-=0.05f;
        out.value=mean==1.0f?0.0f:mean;
    }
    return out;
}
namespace {
// [C] Shared literal gates in 0x2f7dd0..0x2f800e and 0x2f824c..0x2f84bd.
GameBaseResult<bool> instant_predicate(const Snapshot& im,const InstantHitInput& p,const InstantHitQueries& c,bool timed) {
    GameBaseResult<bool> out;
    {
        if(!p.enabled)return out;
        const Address local=base_need(c.local_2dda9c,timed?0x2f8284:0x2f7e03)();
        if(!sample_pointer_range(local))return out;
        const auto get=[&](Rva callee,Address receiver) {
            return base_need(c.game.object,callee)(callee,receiver);
        };
        const auto vector=[&](Rva callee,Address receiver) {
            return base_need(c.game.vector,callee)(callee,receiver);
        };
        const Address held=get(0x368a84,local);
        if(!sample_pointer_range(held))return out;
        const Address weapon=get(0x371464,held);
        if(!sample_pointer_range(weapon))return out;
        const Address ammo=get(0x36b938,weapon);
        if(!sample_pointer_range(ammo))return out;
        float base=base_read<float>(im,weapon+0x3ac,timed?0x2f82ed:0x2f7e6c);
        const Address definition=get(0x37154c,held);
        // [C] An invalid definition SKIPS this override; it does not reject the predicate.
        if(sample_pointer_range(definition)&&base_read<ReU32>(im,definition+0x20,0x37263d)==0x34b73d71u)
            base=base_read<float>(im,weapon+0x3ac,0x36b519)+1.0f;
        const float a44=base_read<float>(im,ammo+0x44,timed?0x2f8328:0x2f7ea5);
        const float a40=base_read<float>(im,ammo+0x40,timed?0x2f832e:0x2f7eab);
        const Address target=base_need(c.target_2e02b0,timed?0x2f8334:0x2f7eb1)();
        if(!sample_pointer_range(target)||!base_optional(entity_valid_2e0e9c(im,target),0x2e0eb9))return out;
        const Vec3 point=vector(0x369790,target);
        if(point.x==0&&point.y==0&&point.z==0)return out; // [C] 0x2df5b0 equality.
        const auto mask=base_need(c.mask_2e6a6c,timed?0x2f8385:0x2f7f02)();
        const Vec3 origin=vector(0x369164,local);
        const bool query=base_need(c.query_2e2320,timed?0x2f83ce:0x2f7f4b)(point,origin,mask,0,0);
        if(!query&&!p.fat_hit)return out;
        if(!p.byte_3e5e79&&p.fat_hit)return out;
        const Vec3 current=vector(0x369164,local);
        const Vec3 bone=base_need(c.game.bone_368be8,timed?0x2f840f:0x2f7f8c)(target,7);
        const Vec3 delta=current-(bone+Vec3{0,-0.9f,0});
        const float distance=sample_sqrt_2e3c88((delta.y*delta.y+delta.x*delta.x)+delta.z*delta.z);
        const float speed=((a44+a40)*base)*1.495f;
        float allowance;
        if(timed)allowance=(((p.elapsed_3d72ec+0.033333334f)*1.5f)+0.1f)*speed;
        else allowance=speed*re::re_bit_cast<float>(0x3f9f5c2au); // [C] RVA0x2930f4 differs from 1.245f.
        const float extra=base_need(c.game.scalar,timed?0x2f8488:0x2f7fe9)(0x32bb60,held);
        if(!(extra+allowance>distance)||!(0.95f>p.scalar_3e4254))return out;
        out.value=!timed||0.73f>=p.elapsed_3d72ec;
    }
    return out;
}
}
GameBaseResult<bool> instant_fixed_2f7dd0(const Snapshot& im,const InstantHitInput& p,const InstantHitQueries& q) {
    return instant_predicate(im,p,q,false);
}
GameBaseResult<bool> instant_timed_2f824c(const Snapshot& im,const InstantHitInput& p,const InstantHitQueries& q) {
    return instant_predicate(im,p,q,true);
}
} // namespace rust_internal_re
