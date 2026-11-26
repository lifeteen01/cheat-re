#include "game_input_physics_fixture.hpp"
#include "game_input_physics_internal.hpp"

namespace rust_internal_re::game_input_fixture {
namespace {
template <class F> Rva stop(F f) {
    {
        f();
    }
    { /* FREESTANDING_TODO: was throw runtime_error("expected raw argument prefix failure") */ }
}
GameInputCall descriptor(Address context) {
    GameInputCall c;
    c.context = context;
    return c;
}
} // namespace
void argument_checks() {
    constexpr Address context = 0x1000;
    constexpr ReU64 stale = 0xa5a5a5a5a5a5a5a5;
    Snapshot image(0, re::ReVector<ReByte>(0x2000, ReByte(0xa5)));
    auto c = game_input_pack_3214f4(image, descriptor(context), 0x123456789abcdef0, 0x80);
    require(image.read<Address>(context + 0x88) == 0x123456789abcdef0 &&
                image.read<Address>(context + 0x90) == 0xa5a5a5a5a5a5a580 &&
                image.read<ReU32>(context + 0xd0) == 0xa5a50000 &&
                image.read<Address>(context + 0x78) == stale && c.argument_count == 2 &&
                c.unmaterialized_argument_bytes[1] == 0xfe && c.unmaterialized_type_bytes == 0xc &&
                c.unmaterialized_return_pointer && !c.target && !c.dispatcher,
            "bool packer writes only one bool byte and keeps actual missing bits explicit");
    const auto nan = re::re_bit_cast<float>(0x7fc12345u);
    c = game_input_pack_32225c(image, descriptor(context), 0xfedcba9876543210, nan);
    require(image.read<ReU32>(context + 0x90) == 0x7fc12345 &&
                image.read<ReU32>(context + 0x94) == 0xa5a5a5a5 &&
                image.read<ReU32>(context + 0xd0) == 0xa5a50100 &&
                c.unmaterialized_argument_bytes[1] == 0xf0,
            "scalar packer preserves NaN payload and uninitialized upper DWORD");
    GameInputStackEvidence supplied;
    supplied.return_pointer = Address(0); // [I]Actual copied numeric zero is different from absent.
    supplied.argument_storage[1] =
        re::ReArray<ReByte, 8>{ReByte(1), ReByte(2), ReByte(3), ReByte(4),
                                 ReByte(5), ReByte(6), ReByte(7), ReByte(8)};
    supplied.type_storage =
        re::ReArray<ReByte, 4>{ReByte(9), ReByte(8), ReByte(7), ReByte(6)};
    c = game_input_pack_3214f4(image, descriptor(context), 0, 0x80, supplied);
    require(image.read<Address>(context + 0x90) == 0x0807060504030280 &&
                image.read<ReU32>(context + 0xd0) == 0x06070000 &&
                image.read<Address>(context + 0x78) == 0 &&
                c.unmaterialized_argument_bytes[1] == 0 && c.unmaterialized_type_bytes == 0 &&
                !c.unmaterialized_return_pointer,
            "explicit copied padding/return bits are consumed rather than normalized or invented");
    c = game_input_pack_32225c(image, c, 0x123, nan);
    require(c.unmaterialized_type_bytes == 0xc && c.unmaterialized_return_pointer &&
                c.unmaterialized_argument_bytes[1] == 0xf0,
            "reusing a call descriptor does not carry earlier materialized stack evidence forward");

    GameInputSixArguments six{0x11, 0x44, 0x80000000, 0xffffffff, 0xdeadbeef, 0, {}};
    c = game_input_pack_2e480c(image, descriptor(context), six);
    require(c.argument_count == 6 && image.read<ReU32>(context + 0x90) == 0x80000000 &&
                image.read<ReU32>(context + 0x98) == 0xffffffff &&
                image.read<Address>(context + 0xa0) == 0x44 &&
                image.read<ReU32>(context + 0xa8) == 0xdeadbeef &&
                image.read<ReU32>(context + 0xd0) == 0 &&
                c.unmaterialized_argument_bytes[1] == 0xf0 &&
                c.unmaterialized_argument_bytes[2] == 0xf0 &&
                c.unmaterialized_argument_bytes[4] == 0xf0 &&
                c.unmaterialized_argument_bytes[5] == 0xf0,
            "six argument pointer/int/int/pointer/int/int widths and integer bits");
    Snapshot before_count(0, re::ReVector<ReByte>(context + 0xc0, ReByte(0xa5)));
    require(stop([&] { game_input_pack_2e480c(before_count, descriptor(context), six); }) ==
                    0x2e4894 &&
                before_count.read<Address>(context + 0x88) == 0x11 &&
                before_count.read<ReU32>(context + 0x90) == 0x80000000 &&
                before_count.read<Address>(context + 0x80) == stale,
            "six argument first SIMD store precedes failing type DWORD and count");
    Snapshot late_six(context + 0x80, re::ReVector<ReByte>(0x54, ReByte(0xa5)));
    require(
        stop([&] { game_input_pack_2e480c(late_six, descriptor(context), six); }) == 0x2e48b6 &&
            late_six.read<Address>(context + 0x80) == 6 &&
            late_six.read<Address>(context + 0xa0) == 0x44 &&
            late_six.read<Address>(context + 0xa8) == stale,
        "six argument count and second SIMD precede missing return pointer, third SIMD follows");
    Snapshot late_bool(context + 0x80, re::ReVector<ReByte>(0x54, ReByte(0xa5)));
    require(stop([&] {
                game_input_pack_3214f4(late_bool, descriptor(context), 0x11, 0x80, supplied);
            }) == 0x321536 &&
                late_bool.read<ReU16>(context + 0xd2) == 0x0607 &&
                late_bool.read<Address>(context + 0x88) == stale &&
                late_bool.read<Address>(context + 0x80) == stale,
            "bool type-tail store precedes missing return pointer; arguments/count remain old");
    Snapshot late_scalar(context + 0x80, re::ReVector<ReByte>(0x54, ReByte(0xa5)));
    require(stop([&] { game_input_pack_32225c(late_scalar, descriptor(context), 0x11, nan); }) ==
                    0x3222a0 &&
                late_scalar.read<ReU16>(context + 0xd0) == 0xa5a5,
            "scalar missing return pointer precedes scalar type-word store");
    Snapshot late_layer(context + 0x80, re::ReVector<ReByte>(0x54, ReByte(0xa5)));
    require(stop([&] { game_input_pack_3232d0(late_layer, descriptor(context), -1, 11, 0x80); }) ==
                    0x32333a &&
                late_layer.read<ReU32>(context + 0x88) == 0xffffffff &&
                late_layer.read<ReU32>(context + 0xd0) == 0xa5000000 &&
                late_layer.read<Address>(context + 0x98) == stale &&
                late_layer.read<Address>(context + 0x80) == stale,
            "layer types and int arguments precede return; byte/count follow");
    GameInputPhysicsRequest q;
    q.first_pointer = 0x11;
    q.second_pointer = 0x22;
    q.mask = 0x87654321;
    q.radius = 0.5f;
    q.first_scalar = 2;
    q.second_scalar = nan;
    Snapshot late_physics(context + 0x80, re::ReVector<ReByte>(0x54, ReByte(0xa5)));
    require(
        stop([&] { game_input_pack_2de874(late_physics, descriptor(context), q); }) == 0x2de922 &&
            late_physics.read<Address>(context + 0x80) == 7 &&
            late_physics.read<ReU32>(context + 0xd0) == 0x1000000 &&
            late_physics.read<ReU32>(context + 0x98) == q.mask &&
            late_physics.read<float>(context + 0xa0) == 0.5f &&
            late_physics.read<Address>(context + 0xa8) == stale,
        "physics pointers/type/count/mask/radius prefix precedes missing return and extra scalars");

    GameInputPhysicsEffects effects;
    const auto missing_effect =
        game_input_apply_32225c(image, descriptor(context), 0x123, nan, effects);
    require(missing_effect.status == GameBaseStatus::missing_boundary &&
                missing_effect.site == 0x3222ca && image.read<Address>(context + 0x80) == 2 &&
                image.read<ReU32>(context + 0x90) == 0x7fc12345,
            "missing typed setter stops after literal argument stores");
    effects.set_byte = [&](const GameInputCall &call, Address receiver, ReU8 byte) {
        require(call.context == context && receiver == 0x123 && byte == 0x80 &&
                    call.unmaterialized_argument_bytes[1] == 0xfe,
                "typed byte effect consumes raw bool byte without executing a numeric key");
    };
    require(game_input_apply_3214f4(image, descriptor(context), 0x123, 0x80, effects).value,
            "concrete known stores compose with required typed effect");
    six.fourth.reset();
    six.fourth_text = "DoUpgradeToGrade";
    require(image.write(context + 0xa0, stale), "unmaterialized fourth fixture backing");
    effects.six_arguments = [&](const GameInputCall &call, const GameInputSixArguments &q) {
        require(!q.fourth && q.fourth_text == "DoUpgradeToGrade" &&
                    call.unmaterialized_argument_bytes[3] == 0xff &&
                    image.read<Address>(context + 0xa0) == stale,
                "typed text is consumed while absent native fourth pointer stays unmaterialized");
    };
    require(game_input_apply_2e480c(image, descriptor(context), six, effects).value,
            "owned fourth-argument text never becomes an invented raw pointer");
}
} // namespace rust_internal_re::game_input_fixture
