#include "world_snapshot_bindings.hpp"
namespace rust_internal_re {
namespace {
template<class F,class... Args> auto required_world(const F& callback,Rva r,Args&&... args) {
    if(!callback)__builtin_trap();
    return callback(re::re_forward<Args>(args)...);
}
template<class T> T required_world(GameBaseResult<T> result) {
    if(result.status!=GameBaseStatus::complete)__builtin_trap();
    return result.value;
}
AimWeaponCalls world_calls(Snapshot& im,const GameHelperEnvironment& env,const GameHelperApi& api,
    SnapshotBindingQueries queries) {
    // [I] The snapshot classifiers capture their fallback at binding time.
    // Compose composite helpers first, so classifier->37154c reaches that
    // concrete wrapper rather than an earlier empty foreign callback.
    queries.foreign=bind_game_helpers_aim(im,env,api,re::re_move(queries.foreign));
    return bind_snapshot_aim(im,re::re_move(queries));
}
re::ReOptional<re::ReString> class_text(const Snapshot& im,Address p,ReUSize limit) {
    const auto name=entity_class_name_2e5a54(im,p);
    if(!name)__builtin_trap();
    if(!sample_pointer_range(*name))return {};
    re::ReString out;
    for(ReUSize n=0;n<limit;++n) {
        const auto byte=im.read<char>(*name+n);
        if(!byte)__builtin_trap();
        if(!*byte)return out;
        out.push_back(*byte);
    }
    __builtin_trap();
}
}
WorldSimulationBackend bind_world_simulation_helpers(Snapshot& im,const GameHelperEnvironment& env,
    const GameHelperApi& api,SnapshotBindingQueries queries,WorldSimulationBackend out) {
    const auto calls=world_calls(im,env,api,re::re_move(queries));
    const auto object=[calls](Rva r){return [calls,r](Address p){return required_world(calls.object,r,r,p);};};
    const auto vector=[calls](Rva r){return [calls,r](Address p){return required_world(calls.vector,r,r,p);};};
    out.held_368a84=object(0x368a84);out.object_3716e0=object(0x3716e0);
    out.object_371eb8=object(0x371eb8);out.object_3721b4=object(0x3721b4);
    out.object_371464=object(0x371464);out.magazine_371630=object(0x371630);
    out.projectile_372abc=object(0x372abc);out.modification_36b938=object(0x36b938);
    out.thrown_projectile_372b30=object(0x372b30);out.held_item_37154c=object(0x37154c);
    out.direction_368100=vector(0x368100);out.local_position_369164=vector(0x369164);
    out.item_identifier_37261c=[calls](Address p){return required_world(calls.integer,0x37261c,0x37261c,p);};
    out.charge_speed_36b504=[calls](Address p){return required_world(calls.scalar,0x36b504,0x36b504,p);};
    out.attachments_36b758=[calls](Address p){return required_world(calls.scalar,0x36b758,0x36b758,p);};
    out.class_name_2e5a54=[&im,limit=env.limits.string_bytes](Address p){return class_text(im,p,limit);};
    return out;
}
WorldPlayerRunBackend bind_world_player_helpers(Snapshot& im,const GameHelperEnvironment& env,
    const GameHelperApi& api,SnapshotBindingQueries queries,WorldPlayerRunBackend out) {
    const auto calls=world_calls(im,env,api,re::re_move(queries));
    out.entity_valid_2e0e9c=calls.valid_2e0e9c;
    out.visible_36b244=[&im,env,api](Address p){return required_world(game_helper_predicate(im,0x36b244,p,env,api));};
    out.rotation_36920c=[&im,env,api](Address p){
        const auto q=required_world(game_helper_orientation(im,0x36920c,p,env,api,env.direction_scratch));
        return re::ReArray<float,4>{q.x,q.y,q.z,q.w};
    };
    out.player.bone_368be8=[calls](Address p,ReI32 n)->re::ReOptional<Vec3> {
        return required_world(calls.bone_368be8,0x368be8,p,n);
    };
    return out;
}
} // namespace rust_internal_re
