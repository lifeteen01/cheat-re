#include "frame_game_bindings.hpp"
namespace rust_internal_re {
namespace {
template<class T>T frame_value(GameBaseResult<T> result) {
    if(result.status!=GameBaseStatus::complete)__builtin_trap();
    return result.value;
}
Address argument(re::ReSpan<const UnityValue> args,Rva r) {
    if(args.empty()||!re::re_holds_alternative<Address>(args[0]))
        __builtin_trap();
    return re::re_get<Address>(args[0]);
}
UnityValue field_value(const Snapshot& im,const FieldGetterSpec& spec,Address receiver) {
    switch(spec.kind) {
    case FieldGetterKind::pointer:return frame_value(read_pointer_getter(im,spec.getter,receiver));
    case FieldGetterKind::raw_u32:return re::re_bit_cast<ReI32>(frame_value(read_u32_getter(im,spec.getter,receiver)));
    case FieldGetterKind::byte:return ReI32(frame_value(read_byte_getter(im,spec.getter,receiver)));
    case FieldGetterKind::scalar:return frame_value(read_scalar_getter(im,spec.getter,receiver));
    case FieldGetterKind::predicate:return frame_value(read_predicate_getter(im,spec.getter,receiver));
    }
    __builtin_trap();
}
}
FrameDependencyApi bind_frame_game_helpers(Snapshot& im,const GameHelperEnvironment& env,
    const GameHelperApi& effects,WorldNameState& names,WorldNameBackend& rng,
    FrameDependencyResult& last,FrameDependencyApi api) {
    const auto prior=api.unity.external;
    api.unity.external=[&im,env,effects,&names,&rng,&last,prior](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        const FieldGetterSpec* spec=nullptr;
        for(const auto& field:field_getter_specs())if(field.getter==r){spec=&field;break;}
        const bool object=r==0x369324||r==0x3722f0||r==0x371c38||r==0x368a84;
        if(!spec&&!object&&r!=0x37224c&&r!=0x369040&&r!=0x372398)return prior?prior(r,args):re::re_nullopt;
        last={};
        {
            const auto receiver=argument(args,r);
            if(spec)return field_value(im,*spec,receiver);
            if(r==0x369040)return frame_value(player_name_369040(im,receiver,env.module,names,rng,env.limits.string_bytes));
            if(r==0x372398)return frame_value(item_name_372398(im,receiver,env.limits.string_bytes));
            if(r==0x37224c)return re::re_bit_cast<ReI32>(frame_value(game_helper_integer(im,r,receiver,env,effects)));
            ReU32 index=0;
            if(r==0x3722f0) {
                if(args.size()<2||!re::re_holds_alternative<ReI32>(args[1]))
                    __builtin_trap();
                index=re::re_bit_cast<ReU32>(re::re_get<ReI32>(args[1]));
            }
            return frame_value(game_helper_object(im,r,receiver,env,effects,index));
        }
    };
    return api;
}
} // namespace rust_internal_re
