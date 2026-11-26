#include "game_input_physics_fixture.hpp"
#include "game_input_physics_internal.hpp"

namespace rust_internal_re::game_input_fixture {
using namespace game_input_detail;
void query_checks() {
    Fixture f;
    constexpr Address first = 0x1e0000, second = 0x1e0100;
    const Vec3 initial_first{1, 2, 3}, initial_second{4, 5, 6};
    f.set(first, initial_first);
    f.set(second, initial_second);
    f.on_observe = [&](const GameInputCall &c) {
        require(c.wrapper == 0x2e0f10 && c.target == 0x183118820 &&
                    f.get<ReU32>(0x3e3ea0) == 3,
                "physics base+3118820 and flag prefix precede observer");
        f.set(first, Vec3{7, 8, 9});
        f.set(second, Vec3{10, 11, 12});
        f.set(0x3d5e60, Address(0x87654321));
    };
    unsigned effects = 0;
    f.effects.query = [&](const GameInputCall &c, const GameInputPhysicsRequest &q) {
        ++effects;
        require(q.first.x == 1 && q.first.y == 2 && q.first.z == 3 && q.second.x == 4 &&
                    q.second.y == 5 && q.second.z == 6 && q.mask == 0xfedcba98 &&
                    re::re_bit_cast<ReU32>(q.radius) == 0 &&
                    re::re_bit_cast<ReU32>(q.first_scalar) == 0x7fc12345 &&
                    re::re_bit_cast<ReU32>(q.second_scalar) == 0x80000000 &&
                    q.final_integer == 0 && c.argument_count == 7 && c.dispatcher == 0x87654321 &&
                    c.target == 0x183118820 && c.unmaterialized_argument_bytes[0] == 0xff &&
                    c.unmaterialized_argument_bytes[1] == 0xff &&
                    c.unmaterialized_argument_bytes[2] == 0xf0 &&
                    c.unmaterialized_argument_bytes[6] == 0xf0 &&
                    c.unmaterialized_type_bytes == 0 &&
                    f.get<ReU32>(c.context + 0xd0) == 0x1000000 &&
                    f.get<ReU32>(c.context + 0x98) == 0xfedcba98,
                "copied endpoints precede callback; full mask/zero/NaN/signedzero grouping and "
                "packing");
        return ReU8(0x80);
    };
    require(required(game_input_query_copy_2e2320(f.image, f.image, first, second, 0xfedcba98,
                                                  re::re_bit_cast<float>(0x7fc12345u), -0.f, f.env,
                                                  f.effects)) &&
                effects == 1,
            "physics AL normalization and concrete pointer-copy wrapper");
    // [I]A direct child receives the actual pointers, unlike the copy wrapper.
    // Its final typed pointee projection follows argument writes, preserving aliasing.
    f.effects.query = [&](const GameInputCall &c, const GameInputPhysicsRequest &q) {
        require(q.first.x == 1.f && re::re_bit_cast<ReU32>(q.first.y) == 0xa5a5a5a5 &&
                    q.first.z == 2.f && q.second.x == 10 &&
                    c.unmaterialized_argument_bytes[0] == 0 &&
                    c.unmaterialized_argument_bytes[1] == 0 && q.first_pointer == 0x3e3f48 &&
                    c.target == 0x183118820,
                "direct pointer/context alias consumes post-store pointee bytes and actual pointer "
                "keys");
        return ReU8(1);
    };
    require(required(game_input_query_pointers_2e0f10(f.image, f.image, 0x3e3eb0 + 0x98, second,
                                                      0x3f800000, 2.f, 3.f, 4.f, f.env, f.effects)),
            "direct physics pointer alias result");
    GameInputPhysicsEffects absent;
    auto missing = game_input_query_2e2320(f.image, {}, {}, 0, 0, 0, f.env, absent);
    require(
        missing.status == GameBaseStatus::missing_boundary && missing.site == 0x2e0fd1 &&
            f.get<Address>(0x3e3eb0 + 0x80) == 7,
        "missing final physics result follows all known stores and never becomes false-success");
    Snapshot missing_base(0x3e3e98, re::ReVector<ReByte>(0x300, ReByte(0xa5)));
    require(missing_base.write(0x3e3ea0, ReU32(0)), "missing base flag fixture");
    missing = game_input_query_2e2320(missing_base, {}, {}, 0, 0, 0, {}, {});
    require(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x2e0f3d &&
                missing_base.read<ReU32>(0x3e3ea0) == 0,
            "physics cold base read precedes flag1 store");
    require(missing_base.write(0x3e3ea0, ReU32(1)) &&
                missing_base.write(0x3e3e98, Address(0x1234)),
            "warm base fields");
    missing = game_input_query_2e2320(missing_base, {}, {}, 0, 0, 0, {}, {});
    require(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x2e0f6c &&
                missing_base.read<ReU32>(0x3e3ea0) == 1,
            "physics setup root read precedes flag2 store");
    Fixture short_points;
    Snapshot partial(0x1000, re::ReVector<ReByte>(8));
    missing = game_input_query_copy_2e2320(short_points.image, partial, UINT64_MAX, 0x1000, 0, 0, 0,
                                           short_points.env, short_points.effects);
    require(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x2e2328 &&
                short_points.get<ReU32>(0x3e3ea0) == 0,
            "second endpoint QWORD then DWORD failure precedes any first-endpoint/cache reads");
}
} // namespace rust_internal_re::game_input_fixture
