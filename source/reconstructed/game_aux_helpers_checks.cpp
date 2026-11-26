#include "game_aux_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
void expect(bool v, const char *why) {
    if (!v)
        { __builtin_trap(); }
}
template <class T> T get(const Snapshot &im, Address p) {
    const auto v = im.read<T>(p);
    expect(bool(v), "aux fixture read");
    return *v;
}
template <class T> void put(Snapshot &im, Address p, T v) {
    expect(im.write(p, v), "aux fixture write");
}
struct Fixture {
    static constexpr Address p = 0x100000;
    Snapshot game{p, re::ReVector<ReByte>(0x1000)};
    Snapshot globals{0, re::ReVector<ReByte>(0x400000)};
};
} // namespace
void check_game_aux_helpers_reconstruction() {
    for (const auto &s : game_aux_vector_specs()) {
        Fixture f;
        const re::ReArray<ReU32, 3> words{0x80000000u, 0x7fc12345u, 0xff800000u};
        put(f.game, f.p + s.offset, words);
        const auto v = game_aux_vector(f.game, s.getter, f.p);
        expect(v.status == GameBaseStatus::complete &&
                   re::re_bit_cast<re::ReArray<ReU32, 3>>(v.value) == words,
               "vector getters retain all twelve raw bytes");
        const auto out = f.p + 0xe00;
        const auto r = game_aux_vector_into(f.game, s.getter, f.p, out);
        expect(r.status == GameBaseStatus::complete && r.value == out &&
                   get<re::ReArray<ReU32, 3>>(f.game, out) == words,
               "vector into returns actual numeric output and copies8+4");
        put(f.game, out, re::ReArray<ReU32, 3>{1, 2, 3});
        expect(game_aux_vector_into(f.game, s.getter, 0, out).status == GameBaseStatus::complete &&
                   get<re::ReArray<ReU32, 3>>(f.game, out) == re::ReArray<ReU32, 3>{},
               "invalid receiver reaches actual3c7bbc zero8+4 body");
        const auto source = f.p + s.offset;
        put(f.game, source, re::ReArray<ReU32, 3>{1, 2, 3});
        expect(game_aux_vector_into(f.game, s.getter, f.p, source + 4).status ==
                       GameBaseStatus::complete &&
                   get<re::ReArray<ReU32, 3>>(f.game, source + 4) ==
                       re::ReArray<ReU32, 3>{1, 2, 2},
               "overlap retains8-byte store before final4-byte read");
    }
    {
        Snapshot im{0x100000, re::ReVector<ReByte>(8, ReByte(0xff))};
        const auto r = game_aux_vector_into(im, 0x3740e0, 0, 0x100000);
        expect(r.status == GameBaseStatus::missing_bytes && r.site == 0x3c7bc1 &&
                   get<ReU64>(im, 0x100000) == 0,
               "invalid zero path retains first8-byte write when tail missing");
        expect(game_aux_vector(im, 0x3740e0, 0).status == GameBaseStatus::complete &&
                   game_aux_vector(im, 0x3740e0, 0).value.z == 0,
               "invalid value projection does not require receiver bytes");
        expect(game_aux_vector(im, 0x3740e4, 0).status == GameBaseStatus::missing_boundary,
               "unknown vector role never gets generic zero success");
    }
    {
        Snapshot im{0x100000, re::ReVector<ReByte>(0x200)};
        const Address p = 0x100000 + 0x200 - 0x178 - 8;
        put(im, p + 0x178, ReU64(0x123456789abcdef0));
        const auto r = game_aux_vector_into(im, 0x3740e0, p, 0x100000);
        expect(r.status == GameBaseStatus::missing_bytes && r.site == 0x374114 &&
                   get<ReU64>(im, 0x100000) == 0x123456789abcdef0,
               "valid vector partial write survives missing source tail");
    }
    {
        Fixture f;
        put(f.game, f.p + 0x200, Address(0x123456789));
        expect(game_aux_pointer_37628c(f.game, f.p).value == 0x123456789 &&
                   game_aux_pointer_37628c(f.game, 0).value == 0,
               "37628c guarded pointer uses exact+200 field");
        expect(game_aux_pointer_37628c(f.game, 0x200000).status == GameBaseStatus::missing_bytes,
               "valid numeric receiver with missing copied field stops");
        put(f.game, f.p + 0x708, 0x87654321u);
        expect(game_aux_write(f.game, 0x36ad68, f.p, 0x100).value &&
                   get<unsigned>(f.game, f.p + 0x708) == 0x87654321u,
               "flag setter tests DL only, clearing bit4 when low byte zero");
        (void)game_aux_write(f.game, 0x36ad68, f.p, 0x80);
        expect(get<unsigned>(f.game, f.p + 0x708) == 0x87654325u,
               "flag4 set preserves unrelated bits");
        (void)game_aux_write(f.game, 0x36ae90, f.p, 0);
        expect(get<unsigned>(f.game, f.p + 0x708) == 0x87654305u,
               "flag20 clear preserves other flags");
        put(f.game, f.p + 0x24, 0x80000000u);
        (void)game_aux_write(f.game, 0x372c1c, f.p, 0x12345678);
        expect(get<unsigned>(f.game, f.p + 0x24) == 0x92345678u,
               "372c1c retains all32 OR operand bits");
        expect(!game_aux_write(f.game, 0x372c1c, 0, ~0u).value,
               "invalid setter receiver has no writes");
    }
    {
        struct Test {
            Rva r;
            Address offset;
            re::ReOptional<unsigned> final;
        };
        for (const auto t : {Test{0x315a24, 0xf0c8518, {}}, Test{0x32957c, 0xf0e86e8, 0x28},
                             Test{0x329714, 0xf0a3650, 0x20}, Test{0x329a38, 0xf0083d0, {}}}) {
            constexpr Address module = 0x200000000, base = 0x100000000;
            const Address data = base + t.offset, klass = data + 0x100, fields = data + 0x300;
            Snapshot globals{module + 0x3d6f00, re::ReVector<ReByte>(8)};
            Snapshot game{data, re::ReVector<ReByte>(0x1000)};
            put(globals, module + 0x3d6f00, base);
            put(game, data, klass);
            put(game, klass + 0xb8, fields);
            if (t.final)
                put(game, fields + *t.final, Address(77));
            const auto result = game_aux_static_pointer(globals, game, t.r, {module});
            expect(result.status == GameBaseStatus::complete &&
                       result.value == (t.final ? 77 : fields),
                   "static root keeps literal GameAssembly offset, module relocation and "
                   "optional+20/+28 hop");
            put(game, klass + 0xb8, Address(1));
            expect(game_aux_static_pointer(globals, game, t.r, {module}).value == (t.final ? 0 : 1),
                   "only two-hop statics validate static-fields pointer; final pointers not "
                   "invented-guarded");
            put(game, data, Address(0));
            expect(game_aux_static_pointer(globals, game, t.r, {module}).value == 0,
                   "invalid first class root stops before reading+b8");
        }
    }
    {
        Fixture f;
        put(f.globals, 0x28d24c, 0.0f);
        put(f.globals, 0x2a8ecc, 1.0f);
        put(f.game, f.p + 0x144, 1.0f);
        put(f.game, f.p + 0x188, 0.5f);
        expect(game_aux_predicate_374268(f.globals, f.game, f.p).value,
               "predicate composes existing two scalar getter bodies");
        put(f.game, f.p + 0x188, 1.0f);
        expect(!game_aux_predicate_374268(f.globals, f.game, f.p).value,
               "predicate upper threshold strict inequality");
        put(f.game, f.p + 0x188, re::ReNumericLimits<float>::quiet_NaN());
        expect(!game_aux_predicate_374268(f.globals, f.game, f.p).value,
               "predicate upper unordered COMISS rejectsNaN");
        put(f.game, f.p + 0x144, 0.0f);
        Snapshot zero{0x28d24c, re::ReVector<ReByte>(4)};
        expect(game_aux_predicate_374268(zero, f.game, f.p).status == GameBaseStatus::complete,
               "first false comparison short-circuits absent upper threshold");
        put(f.game, f.p + 0x144, re::ReNumericLimits<float>::quiet_NaN());
        expect(!game_aux_predicate_374268(zero, f.game, f.p).value,
               "first unordered COMISS short-circuits");
        put(f.game, f.p + 0x144, re::ReNumericLimits<float>::infinity());
        put(f.game, f.p + 0x188, -re::ReNumericLimits<float>::infinity());
        expect(game_aux_predicate_374268(f.globals, f.game, f.p).value,
               "predicate ordered infinities follow native comparisons");
        const auto missing = game_aux_predicate_374268(zero, f.game, f.p);
        expect(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x374293,
               "missing actual threshold bytes remain required");
    }
    {
        Fixture f;
        put(f.game, f.p + 0x200, Address(55));
        put(f.game, f.p + 0x178, Vec3{1, 2, 3});
        put(f.globals, 0x28d24c, 0.0f);
        put(f.globals, 0x2a8ecc, 1.0f);
        put(f.game, f.p + 0x144, 1.0f);
        put(f.game, f.p + 0x188, 0.0f);
        AimWeaponCalls prior;
        prior.vector = [](Rva r, Address) -> Vec3 {
            expect(r == 0x123456, "aux fallback role retained");
            return {9, 8, 7};
        };
        const auto aim = bind_game_aux_aim(f.globals, f.game, {}, prior);
        expect(aim.vector(0x3740e0, f.p).z == 3 && aim.vector(0x123456, 0).x == 9 &&
                   aim.object(0x37628c, f.p) == 55,
               "aim binding handles known data and preserves foreign fallthrough");
        const auto proj = bind_game_aux_projectile(f.globals, f.game);
        expect(proj.vector(0x3740e0, f.p, -1).y == 2 && proj.predicate(0x374268, f.p),
               "projectile vector/predicate generic roles are concrete");
        const auto interact = bind_game_aux_interaction(f.globals, f.game);
        expect(interact.object({0x37628c, f.p}) == 55,
               "interaction object route consumes own receiver");
        InteractionCall action{0x372c1c, f.p};
        action.integer = -1;
        interact.action(action);
        expect(get<unsigned>(f.game, f.p + 0x24) == 0xffffffffu,
               "interaction signed projection preserves32 write bits");
        const auto movement = bind_game_aux_movement(f.globals, f.game);
        re::ReArray<MovementMainArgument, 2> args{Address(f.p), ReU32(0x100)};
        movement.effect(0x36ae90, args);
        expect(!(get<unsigned>(f.game, f.p + 0x708) & 0x20u) &&
                   movement.vector(0x3740e0, re::ReSpan(args).subspan(0, 1)).x == 1,
               "movement validates borrowed arguments and native low byte");
        bool stopped = false;
        {
            movement.pointer(0x37628c, {});
        }
        expect(stopped, "missing required receiver is explicit typed failure");
        stopped = false;
        {
            aim.object(0x37628c, 0x200000);
        }
        expect(stopped, "bound getter propagates precise missing read site");
        const auto unity = bind_game_aux_frame(f.globals, f.game);
        const re::ReArray<UnityValue, 1> a{Address(f.p)};
        expect(re::re_get<Address>(*unity.external(0x37628c, a)) == 55 &&
                   re::re_get<Vec3>(*unity.external(0x3740e0, a)).z == 3 &&
                   !unity.external(0x123456, {}),
               "frame typed values produced; unrelated missing role staysmissing");
    }
}
} // namespace rust_internal_re
