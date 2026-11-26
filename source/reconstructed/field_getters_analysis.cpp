#include "field_getters_analysis.hpp"
namespace rust_internal_re {
re::ReSpan<const FieldGetterSpec> field_getter_specs() {
    // [C] Complete branches audited against virtual-layout DLL bytes; ranges
    // are exclusive. 372184's COMISS/SETA returns bool, not its intermediate float.
    static constexpr re::ReArray<FieldGetterSpec,28> specs{{
        {0x3680d4,0x3680fd,0x320,FieldGetterKind::pointer,0},
        {0x3693b0,0x3693d4,0x2c0,FieldGetterKind::byte,0},
        {0x3693d4,0x3693ff,0x2d0,FieldGetterKind::scalar,0},
        {0x369400,0x369429,0x350,FieldGetterKind::pointer,0},
        {0x3696e4,0x36970c,0x708,FieldGetterKind::raw_u32,0},
        {0x36970c,0x369737,0x2cc,FieldGetterKind::scalar,0},
        {0x369738,0x369761,0x778,FieldGetterKind::pointer,0},
        {0x369764,0x36978d,0x300,FieldGetterKind::pointer,0},
        {0x36a2c8,0x36a2f1,0x4e8,FieldGetterKind::pointer,0},
        {0x36a2f4,0x36a31d,0x6d0,FieldGetterKind::pointer,0},
        {0x371294,0x3712bc,0x30,FieldGetterKind::raw_u32,0},
        {0x3715d8,0x371601,0x10,FieldGetterKind::pointer,0},
        {0x371604,0x37162d,0x88,FieldGetterKind::raw_u32,0xffffffffu},
        {0x372184,0x3721b4,0xd8,FieldGetterKind::predicate,0},
        {0x372220,0x372249,0x2f8,FieldGetterKind::raw_u32,0xffffffffu},
        {0x37236c,0x372395,0x58,FieldGetterKind::raw_u32,0xffffffffu},
        {0x37261c,0x372644,0x20,FieldGetterKind::raw_u32,0},
        {0x372bcc,0x372bf4,0x24,FieldGetterKind::raw_u32,0},
        {0x373dc8,0x373df1,0x28,FieldGetterKind::pointer,0},
        {0x373df4,0x373e1d,0x20,FieldGetterKind::pointer,0},
        {0x373e20,0x373e49,0x30,FieldGetterKind::pointer,0},
        {0x373e4c,0x373e75,0x50,FieldGetterKind::pointer,0},
        {0x374210,0x374239,0x128,FieldGetterKind::pointer,0},
        {0x37423c,0x374267,0x144,FieldGetterKind::scalar,0},
        {0x3742ac,0x3742d4,0x138,FieldGetterKind::raw_u32,0},
        {0x3742d4,0x3742fd,0x120,FieldGetterKind::pointer,0},
        {0x374300,0x37432b,0x188,FieldGetterKind::scalar,0},
        {0x374348,0x374370,0x40,FieldGetterKind::raw_u32,0},
    }};
    return specs;
}
namespace {
const FieldGetterSpec* spec_for(Rva r,FieldGetterKind kind) {
    for(const auto& s:field_getter_specs())if(s.getter==r&&s.kind==kind)return &s;
    return nullptr;
}
template<class T> GameBaseResult<T> load_field(const Snapshot& im,Rva r,Address p,FieldGetterKind kind) {
    const auto* s=spec_for(r,kind);
    if(!s)return {{},GameBaseStatus::missing_boundary,r};
    // [C] 2caf08 numeric guard precedes 2dee3c (receiver+offset) and the load.
    if(!sample_pointer_range(p))return {static_cast<T>(s->invalid_u32)};
    const auto value=im.read<T>(p+s->offset);
    if(!value)return {{},GameBaseStatus::missing_bytes,r};
    return {*value};
}
template<class T> T value(GameBaseResult<T> result) {
    if(result.status!=GameBaseStatus::complete){ (void)(result.status,result.site); __builtin_trap(); }
    return result.value;
}
template<class F,class... A> auto foreign(const F& f,Rva r,A&&... args) {
    if(!f){ (void)(GameBaseStatus::missing_boundary,r); __builtin_trap(); }
    return f(r,re::re_forward<A>(args)...);
}
bool predicate_known(Rva r) {return r==0x372184||r==0x3693b0;}
Address movement_receiver(Rva r,MovementMainArguments args) {
    // [I] These native getters consume the receiver only; malformed analysis
    // arguments are explicit missing dependencies, never a fabricated receiver.
    if(args.empty()||!re::re_holds_alternative<Address>(args.front()))
        { (void)(GameBaseStatus::missing_boundary,r); __builtin_trap(); }
    return re::re_get<Address>(args.front());
}
}
GameBaseResult<Address> read_pointer_getter(const Snapshot& im,Rva r,Address p) {
    // [C] Share already translated field bodies where their native widths match.
    if(r==0x369400||r==0x369738||r==0x36a2c8) {
        const auto v=r==0x369400?model_state_369400(im,p):r==0x369738?input_object_369738(im,p):movement_record_36a2c8(im,p);
        if(!v)return {0,GameBaseStatus::missing_bytes,r};
        return {*v};
    }
    return load_field<Address>(im,r,p,FieldGetterKind::pointer);
}
GameBaseResult<ReU32> read_u32_getter(const Snapshot& im,Rva r,Address p) {
    if(r==0x37261c||r==0x37236c) {
        const auto v=r==0x37261c?definition_id_37261c(im,p):definition_category_37236c(im,p);
        if(!v)return {0,GameBaseStatus::missing_bytes,r};
        return {*v};
    }
    return load_field<ReU32>(im,r,p,FieldGetterKind::raw_u32);
}
GameBaseResult<ReU8> read_byte_getter(const Snapshot& im,Rva r,Address p) {
    if(r==0x3693b0) {
        const auto v=dead_byte_3693b0(im,p);
        if(!v)return {0,GameBaseStatus::missing_bytes,r};
        return {*v};
    }
    return {0,GameBaseStatus::missing_boundary,r};
}
GameBaseResult<float> read_scalar_getter(const Snapshot& im,Rva r,Address p) {
    return load_field<float>(im,r,p,FieldGetterKind::scalar);
}
GameBaseResult<bool> read_predicate_getter(const Snapshot& im,Rva r,Address p) {
    if(r==0x3693b0) {
        const auto v=read_byte_getter(im,r,p);return {v.value!=0,v.status,v.site};
    }
    if(r!=0x372184)return {false,GameBaseStatus::missing_boundary,r};
    if(!sample_pointer_range(p))return {false};
    const auto v=im.read<float>(p+0xd8);
    if(!v)return {false,GameBaseStatus::missing_bytes,r};
    // [C] 3721a5: 0f 2f 05 a0 b0 f1 ff; threshold 28d24c = 00000000.
    // [C] SETA rejects equality and unordered NaNs, and accepts positive infinity.
    return {*v>0.0f};
}
AimWeaponCalls bind_field_getters_aim(const Snapshot& im,AimWeaponCalls f) {
    auto out=f;
    out.object=[&im,f](Rva r,Address p){return spec_for(r,FieldGetterKind::pointer)?value(read_pointer_getter(im,r,p)):foreign(f.object,r,p);};
    out.integer=[&im,f](Rva r,Address p){return spec_for(r,FieldGetterKind::raw_u32)?value(read_u32_getter(im,r,p)):foreign(f.integer,r,p);};
    out.scalar=[&im,f](Rva r,Address p){return spec_for(r,FieldGetterKind::scalar)?value(read_scalar_getter(im,r,p)):foreign(f.scalar,r,p);};
    out.predicate=[&im,f](Rva r,Address p,ReU8 b){return predicate_known(r)?value(read_predicate_getter(im,r,p)):foreign(f.predicate,r,p,b);};
    return out;
}
ProjectileBoundaries bind_field_getters_projectile(const Snapshot& im,ProjectileBoundaries f) {
    auto out=f;
    out.address=[&im,f](Rva r,Address p,ReI32 n){return spec_for(r,FieldGetterKind::pointer)?value(read_pointer_getter(im,r,p)):foreign(f.address,r,p,n);};
    out.integer=[&im,f](Rva r,Address p,ReI32 n){return spec_for(r,FieldGetterKind::raw_u32)?value(read_u32_getter(im,r,p)):foreign(f.integer,r,p,n);};
    out.scalar=[&im,f](Rva r,Address p,ReI32 a,ReI32 b){return spec_for(r,FieldGetterKind::scalar)?value(read_scalar_getter(im,r,p)):foreign(f.scalar,r,p,a,b);};
    out.predicate=[&im,f](Rva r,Address p){return predicate_known(r)?value(read_predicate_getter(im,r,p)):foreign(f.predicate,r,p);};
    return out;
}
InteractionCalls bind_field_getters_interaction(const Snapshot& im,InteractionCalls f) {
    auto out=f;
    out.object=[&im,f](const InteractionCall& c){
        if(spec_for(c.rva,FieldGetterKind::pointer))return value(read_pointer_getter(im,c.rva,c.self));
        if(!f.object){ (void)(GameBaseStatus::missing_boundary,c.rva); __builtin_trap(); }
        return f.object(c);
    };
    out.integer=[&im,f](const InteractionCall& c)->ReI32 {
        if(spec_for(c.rva,FieldGetterKind::raw_u32))return re::re_bit_cast<ReI32>(value(read_u32_getter(im,c.rva,c.self)));
        if(!f.integer){ (void)(GameBaseStatus::missing_boundary,c.rva); __builtin_trap(); }
        return f.integer(c);
    };
    out.scalar=[&im,f](const InteractionCall& c){
        if(spec_for(c.rva,FieldGetterKind::scalar))return value(read_scalar_getter(im,c.rva,c.self));
        if(!f.scalar){ (void)(GameBaseStatus::missing_boundary,c.rva); __builtin_trap(); }
        return f.scalar(c);
    };
    out.predicate=[&im,f](const InteractionCall& c){
        if(predicate_known(c.rva))return value(read_predicate_getter(im,c.rva,c.self));
        if(!f.predicate){ (void)(GameBaseStatus::missing_boundary,c.rva); __builtin_trap(); }
        return f.predicate(c);
    };
    return out;
}
MovementMainCalls bind_field_getters_movement(const Snapshot& im,MovementMainCalls f) {
    auto out=f;
    out.pointer=[&im,f](Rva r,MovementMainArguments a){return spec_for(r,FieldGetterKind::pointer)?value(read_pointer_getter(im,r,movement_receiver(r,a))):foreign(f.pointer,r,a);};
    out.integer=[&im,f](Rva r,MovementMainArguments a){return spec_for(r,FieldGetterKind::raw_u32)?value(read_u32_getter(im,r,movement_receiver(r,a))):foreign(f.integer,r,a);};
    out.scalar=[&im,f](Rva r,MovementMainArguments a){return spec_for(r,FieldGetterKind::scalar)?value(read_scalar_getter(im,r,movement_receiver(r,a))):foreign(f.scalar,r,a);};
    out.predicate=[&im,f](Rva r,MovementMainArguments a){return predicate_known(r)?value(read_predicate_getter(im,r,movement_receiver(r,a))):foreign(f.predicate,r,a);};
    return out;
}
} // namespace rust_internal_re
