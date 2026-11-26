#include "field_getters_analysis.hpp"
namespace rust_internal_re {
void check_field_getters_reconstruction() {
    constexpr Address base=0x100000;
    Snapshot im(base,re::ReVector<ReByte>(0x1000));
    Snapshot absent(base,{});
    assert(field_getter_specs().size()==28);
    for(const auto& s:field_getter_specs()) {
        assert(s.end>s.getter);
        switch(s.kind) {
        case FieldGetterKind::pointer:
            assert(im.write(base+s.offset,Address{0xfedcba9876543210ULL}));
            assert(read_pointer_getter(im,s.getter,base).value==0xfedcba9876543210ULL);
            assert(read_pointer_getter(absent,s.getter,base).status==GameBaseStatus::missing_bytes);
            assert(read_pointer_getter(absent,s.getter,0).value==0);
            break;
        case FieldGetterKind::raw_u32:
            // [I] Adjacent bytes differ: verifies DWORD, not QWORD/float/signed conversion.
            assert(im.write(base+s.offset,ReU64{0xaabbccddf1234567ULL}));
            assert(read_u32_getter(im,s.getter,base).value==0xf1234567u);
            assert(read_u32_getter(absent,s.getter,base).status==GameBaseStatus::missing_bytes);
            assert(read_u32_getter(absent,s.getter,0).value==s.invalid_u32);
            break;
        case FieldGetterKind::byte:
            assert(im.write(base+s.offset,ReU32{0xaabbcc80}));
            assert(read_byte_getter(im,s.getter,base).value==0x80);
            assert(read_predicate_getter(im,s.getter,base).value);
            assert(read_byte_getter(absent,s.getter,base).status==GameBaseStatus::missing_bytes);
            assert(read_byte_getter(absent,s.getter,0).value==0);
            break;
        case FieldGetterKind::scalar:
            for(const auto bits:{0x80000000u,0x7fc12345u,0x3fa00000u}) {
                assert(im.write(base+s.offset,bits));
                assert(re::re_bit_cast<ReU32>(read_scalar_getter(im,s.getter,base).value)==bits);
            }
            assert(read_scalar_getter(absent,s.getter,base).status==GameBaseStatus::missing_bytes);
            assert(re::re_bit_cast<ReU32>(read_scalar_getter(absent,s.getter,0).value)==0);
            break;
        case FieldGetterKind::predicate:
            for(float v:{-1.0f,-0.0f,0.0f,1.0f,re::ReNumericLimits<float>::infinity(),re::ReNumericLimits<float>::quiet_NaN()}) {
                assert(im.write(base+s.offset,v));
                assert(read_predicate_getter(im,s.getter,base).value==(v>0.0f));
            }
            assert(read_predicate_getter(absent,s.getter,base).status==GameBaseStatus::missing_bytes);
            assert(!read_predicate_getter(absent,s.getter,0).value);
            break;
        }
    }
    for(Address invalid:{Address{0},base-1,Address{0x7ffffffffff},Address{0xffffffffffffffffULL}})
        assert(read_u32_getter(absent,0x371604,invalid).value==0xffffffffu);
    assert(read_u32_getter(absent,0x371604,0x7fffffffffeULL).status==GameBaseStatus::missing_bytes);
    assert(read_scalar_getter(im,0x372184,base).status==GameBaseStatus::missing_boundary);
    assert(read_pointer_getter(im,0xdeadbeef,base).status==GameBaseStatus::missing_boundary);
    // [C] ProjectileID is +138; neighboring +13c bytes must not enter the result.
    assert(im.write(base+0x138,ReU64{0x11223344fedcba98ULL}));
    assert(bind_field_getters_projectile(im).integer(0x3742ac,base,3)==0xfedcba98u);
    assert(im.write(base+0x88,ReU32{0xf1234567}));
    InteractionCall c;c.rva=0x371604;c.self=base;
    assert(re::re_bit_cast<ReU32>(bind_field_getters_interaction(im).integer(c))==0xf1234567u);
    assert(bind_field_getters_aim(im).integer(0x371604,base)==0xf1234567u);
    const re::ReArray<MovementMainArgument,1> args{base};
    assert(bind_field_getters_movement(im).integer(0x371604,args)==0xf1234567u);
    AimWeaponCalls foreign;
    foreign.object=[](Rva r,Address p){assert(r==0xabcdef&&p==0x42);return Address{0x123};};
    assert(bind_field_getters_aim(im,foreign).object(0xabcdef,0x42)==0x123);
    bool failed=false;
    { (void)bind_field_getters_aim(absent).integer(0x371604,base); }
    assert(failed);
    failed=false;
    {(void)bind_field_getters_aim(im).object(0xabcdef,base);}
    assert(failed);
    failed=false;
    {(void)bind_field_getters_movement(im).integer(0x371604,{});}
    assert(failed);
}
} // namespace rust_internal_re
