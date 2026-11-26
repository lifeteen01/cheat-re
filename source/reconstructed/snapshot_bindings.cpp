#include "snapshot_bindings.hpp"
namespace rust_internal_re {
namespace {
template<class T> T required(re::ReOptional<T> v,Rva r) {
    if(!v)__builtin_trap();
    return *v;
}
template<class T> T required(GameBaseResult<T> v) {
    if(v.status!=GameBaseStatus::complete)__builtin_trap();
    return v.value;
}
template<class F,class... A> auto foreign(const F& f,Rva r,A&&... args) {
    if(!f)__builtin_trap();
    return f(re::re_forward<A>(args)...);
}
re::ReString narrow_name(const Snapshot& im,Address p) {
    re::ReString text;
    for(ReUSize i=0;i<4096;++i) {
        const char ch=required(im.read<char>(p+i),0x2d6354);
        if(!ch)return text;
        text.push_back(ch);
    }
    __builtin_trap();
}
Address classify(const Snapshot& im,const AimWeaponCalls& c,Rva r,Address held) {
    // [C] 0x371464/0x3721b4/0x371eb8/0x3716e0: ID test precedes category read.
    if(!sample_pointer_range(held))return 0;
    const Address def=foreign(c.object,0x37154c,0x37154c,held);
    if(!sample_pointer_range(def))return 0;
    const auto id=required(definition_id_37261c(im,def),0x37261c);
    bool member=false;
    switch(r) {
    case 0x3721b4:member=melee_id_371828(id);break;
    case 0x371464:member=projectile_id_3719e8(id);break;
    case 0x371eb8:member=id==0x1a65e87c||id==0xb18f8a5b||id==0xbd092660;break;
    case 0x3716e0:member=id==0x0892448f||id==0x5cc4424c||id==0x6db8b70a||id==0xc827b4ca||id==0x5345536b||id==0x4b55e423;break;
    default:__builtin_trap();
    }
    if(!member)return 0;
    const auto category=required(definition_category_37236c(im,def),0x37236c);
    if(category==0)return held;
    if(r==0x3721b4&&required(definition_category_37236c(im,def),0x37236c)==5)return held;
    return 0;
}
}
re::ReOptional<ReU32> definition_id_37261c(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return ReU32(0);
    return im.read<ReU32>(p+0x20);
}
re::ReOptional<ReU32> definition_category_37236c(const Snapshot& im,Address p) {
    if(!sample_pointer_range(p))return UINT32_MAX;
    return im.read<ReU32>(p+0x58);
}
GameBaseResult<Vec3> bone_position_368be8(const Snapshot& im,Address entity,ReI32 index,
    const re::ReFunction<Vec3(Address)>& position) {
    GameBaseResult<Vec3> out;
    {
        if(!sample_pointer_range(entity)||index==-1)return out;
        const Address model=required(im.read<Address>(entity+0x1d0),0x368c03);
        if(!sample_pointer_range(model))return out;
        const Address array=required(im.read<Address>(model+0x50),0x368c16);
        if(!sample_pointer_range(array))return out;
        const auto offset=re::re_bit_cast<ReI32>(ReU32(index)*8u);
        const Address transform=required(im.read<Address>(array+0x20+Address(ReI64(offset))),0x368c31);
        if(sample_pointer_range(transform))out.value=foreign(position,0x3747d4,transform);
    }
    return out;
}
AimWeaponCalls bind_snapshot_aim(const Snapshot& im,SnapshotBindingQueries q) {
    AimWeaponCalls out=q.foreign;
    out.valid_2e0e9c=[&im](Address p){return required(entity_valid_2e0e9c(im,p),0x2e0e9c);};
    out.object=[&im,q](Rva r,Address p)->Address {
        switch(r) {
        case 0x369738:return required(input_object_369738(im,p),r);
        case 0x36a2c8:return required(movement_record_36a2c8(im,p),r);
        case 0x369400:return required(model_state_369400(im,p),r);
        case 0x371464:case 0x3721b4:case 0x371eb8:case 0x3716e0:return classify(im,q.foreign,r,p);
        default:return foreign(q.foreign.object,r,r,p);
        }
    };
    out.integer=[&im,q](Rva r,Address p)->ReU32 {
        switch(r) {
        case 0x367668:return required(prefab_identifier_367668(im,p),r);
        case 0x37261c:return required(definition_id_37261c(im,p),r);
        case 0x37236c:return required(definition_category_37236c(im,p),r);
        default:return foreign(q.foreign.integer,r,r,p);
        }
    };
    out.predicate=[&im,q](Rva r,Address p,ReU8 b) {
        switch(r) {
        case 0x3693b0:return required(dead_byte_3693b0(im,p),r)!=0;
        case 0x36a178:return required(npc_predicate_36a178(im,p),r);
        case 0x36acb8:return required(safe_zone_36acb8(im,p),r);
        case 0x36b288:return required(wounded_flag_36b288(im,p),r);
        case 0x36a20c:return required(sleeping_flag_36a20c(im,p,b),r);
        default:return foreign(q.foreign.predicate,r,r,p,b);
        }
    };
    out.vector=[&im,q](Rva r,Address p) {
        if(r==0x36ca34)return required(camera_position_36ca34(im,p),r);
        return foreign(q.foreign.vector,r,r,p);
    };
    out.scalar=[&im,q](Rva r,Address p) {
        if(r==0x36b504)return required(charged_scale_36b504(im,p),r);
        if(r==0x36b758)return required(attachment_velocity_36b758(im,p,q.increase_velocity,q.attachments));
        return foreign(q.foreign.scalar,r,r,p);
    };
    out.class_hash_2e5a54_2d6354=[&im](Address p)->re::ReOptional<ReU64> {
        const Address name=required(entity_class_name_2e5a54(im,p),0x2e5a54);
        if(!sample_pointer_range(name))return {};
        return entity_name_hash_2d6354(narrow_name(im,name));
    };
    const auto position=[q](Address p){return foreign(q.foreign.vector,0x3747d4,0x3747d4,p);};
    out.bone_368be8=[&im,position](Address p,int n){return required(bone_position_368be8(im,p,n,position));};
    auto bones=q.bones;
    if(!bones.transform_position_3747d4)bones.transform_position_3747d4=position;
    if(!bones.camera_position_36ca34)bones.camera_position_36ca34=[&im](Address p){return required(camera_position_36ca34(im,p),0x36ca34);};
    if(!bones.bone_position_368be8)bones.bone_position_368be8=out.bone_368be8;
    if(!bones.project_36cd20)bones.project_36cd20=[projection=q.projection](Address p,Vec3 v,Vec2& o,ProjectionBounds b){return required(project_screen_36cd20(p,v,o,b,projection));};
    out.choose_bone_368cb0=[&im,bones,bounds=q.bounds](Address p,int n){return required(choose_bone_368cb0(im,p,n,bounds,bones));};
    // [U] Quaternion retrieval remains a foreign call; only Euler conversion is bound.
    return out;
}
} // namespace rust_internal_re
