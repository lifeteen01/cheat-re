#include "game_runtime_wrappers_internal.hpp"
#include "game_runtime_wrappers_domains.hpp"
namespace rust_internal_re {
namespace {
void expect(bool v, const char *why) {
    if (!v)
        { __builtin_trap(); }
}
template <class T> T get(const Snapshot &s, Address p) {
    const auto v = s.read<T>(p);
    expect(bool(v), "runtime fixture read");
    return *v;
}
template <class T> void put(Snapshot &s, Address p, T v) {
    expect(s.write(p, v), "runtime fixture write");
}
re::ReString text(const Snapshot &im, Address p) {
    re::ReString s;
    for (unsigned n = 0; n < 512; ++n) {
        const auto c = get<char>(im, p + n);
        if (!c)
            return s;
        s.push_back(c);
    }
    { /* FREESTANDING_TODO: was throw runtime_error("runtime literal bound") */ }
}
void text(Snapshot &im, Address p, re::ReStringView s) {
    for (ReUSize i = 0; i < s.size(); ++i)
        put(im, p + i, ReU8(s[i]));
    put(im, p + s.size(), ReU8(0));
}
const GameRuntimeSpec &spec(Rva r) {
    const auto *s = runtime_detail::spec(r);
    expect(bool(s), "fixture knownspec");
    return *s;
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    static constexpr Address assembly = 0x100000000, cell = assembly + 0xf0a3650,
                             klass = cell + 0x100, fields = cell + 0x300, p = cell + 0x500,
                             out = cell + 0x700, in = cell + 0x800, in2 = cell + 0x900,
                             temp = cell + 0xa00;
    Snapshot game{cell, re::ReVector<ReByte>(0x1000)};
    GameRuntimeEnvironment env{0, 0x180000, 512, {}};
    GameRuntimeEffects fx;
    const GameRuntimeSpec &s;
    unsigned resolved = 0, observed = 0, called = 0, counted = 0;
    GameRuntimeCall last;
    Fixture(Rva r) : s(spec(r)) {
        put(image, 0x3d6f00, assembly);
        put(game, cell, klass);
        put(game, klass + 0xb8, fields);
        put(game, fields + 0x20, p);
        put(image, 0x3d5e60, Address(11));
        put(image, 0x120000, Address(0xabcdef));
        put(image, 0x120018, Address(0x121000));
        text(image, 0x121000, s.method);
        for (Address o = 0x78; o < 0xd8; ++o)
            put(image, s.context + o, ReU8(0xcc));
        fx.metadata.domain_get_33479c = []() { return Address(1); };
        fx.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
        fx.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
        fx.metadata.class_from_name_334528 = [&](Address image_key, Address ns, Address k) {
            ++resolved;
            expect(image_key == 3 && text(image, ns) == s.namespc && text(image, k) == s.klass,
                   "native class/namespace literal order");
            expect(get<unsigned>(image, s.flags) & 1u, "bit1 committed before metadata callback");
            return Address(0x110000);
        };
        fx.metadata.next_method_334660 = [](Address k, Address &iter) {
            expect(k == 0x110000, "class consumed by method selector");
            if (iter)
                return Address(0);
            iter = 1;
            return Address(0x120000);
        };
        fx.metadata.parameter_count_335140 = [&](Address) {
            ++counted;
            expect(s.selector == 0x334a90, "negative parameter index must not query count");
            return 1;
        };
        fx.observe_context = [&](const GameRuntimeCall &c) {
            ++observed;
            expect(c.dispatcher == 11 && (get<unsigned>(image, s.flags) & 3u) == 3u,
                   "dispatcher read precedes bit2 store and observer sees both flags");
            put(image, 0x3d5e60, Address(22));
        };
        const auto save = [&](const GameRuntimeCall &c) {
            ++called;
            last = c;
            expect(c.wrapper == s.wrapper && c.executor == s.executor && c.target == 0xabcdef &&
                       c.context == s.context && c.dispatcher == 22,
                   "typed effect consumes exact savedtarget/context/reloaded dispatcher");
        };
        fx.scalar = [save](const auto &c) {
            save(c);
            return 0.25f;
        };
        fx.object = [save](const auto &c) {
            save(c);
            return Address(0x123456);
        };
        fx.integer = [save](const auto &c) {
            save(c);
            return 0xffffffffu;
        };
        fx.predicate = [save](const auto &c) {
            save(c);
            return ReU8(2);
        };
        fx.set_integer = [save](const auto &c, unsigned v) {
            save(c);
            expect(v == 0xffffffffu, "integer setter retains raw32bits");
        };
        fx.set_byte = [save](const auto &c, ReU8 v) {
            save(c);
            expect(v == 2, "boolean setter forwards raw lowbyte, not normalized boolean");
        };
        fx.set_scalar = [save](const auto &c, float v) {
            save(c);
            expect(re::re_bit_cast<unsigned>(v) == 0x7fc12345u,
                   "scalar setter retains rawNaN payload");
        };
        fx.set_vector = [save](const auto &c, Vec3 v) {
            save(c);
            expect(v.x == 1 && v.y == 2 && v.z == 3, "vector setter consumes typed owned value");
        };
        fx.lerp = [save](const auto &c, Vec3 a, Vec3 b, float f) {
            save(c);
            expect(a.x == 1 && b.y == 5 && f == 0.75f, "Lerp preserves both vectors and factor");
            return Vec3{7, 8, 9};
        };
        fx.transform = [save](const auto &c, Vec3 a) {
            save(c);
            expect(a.x == 1 && a.y == 2 && a.z == 3, "inverse transform consumes actual vector");
            return Vec3{7, 8, 9};
        };
        fx.inverse = [save](const auto &c, Orientation a) {
            save(c);
            expect(a.x == 1 && a.w == 4, "inverse preserves all orientation input words");
            return Orientation{5, 6, 7, 8};
        };
    }
    GameRuntimeRequest request() {
        GameRuntimeRequest q;
        q.receiver = p;
        q.integer = 0xffffffffu;
        q.byte = 2;
        q.scalar = re::re_bit_cast<float>(0x7fc12345u);
        q.first = {1, 2, 3};
        q.second = {4, 5, 6};
        q.rotation = {1, 2, 3, 4};
        if (s.role == GameRuntimeRole::lerp)
            q.scalar = 0.75f;
        return q;
    }
    auto run(GameRuntimeRequest q) {
        return game_runtime_wrapper(image, game, s.wrapper, q, env, fx);
    }
    void warm() {
        put(image, s.flags, 3u);
        put(image, s.target, Address(0xabcdef));
        put(image, 0x3d5e60, Address(22));
    }
};
} // namespace
void check_game_runtime_wrappers_reconstruction() {
    expect(game_runtime_specs().size() == 21, "all21whole roots present in stable catalogue");
    for (const auto &s : game_runtime_specs()) {
        Fixture f(s.wrapper);
        auto q = f.request();
        auto result = f.run(q);
        expect(result.status == GameBaseStatus::complete && f.resolved == 1 && f.observed == 1 &&
                   f.called == 1 && get<unsigned>(f.image, s.flags) == 3,
               "every root follows concrete cold cache and produced/effect result path");
        expect(f.counted == (s.selector == 0x334a90 ? 1u : 0u),
               "only Quaternion.Inverse exactcount selector queries count");
        result = f.run(q);
        expect(result.status == GameBaseStatus::complete && f.resolved == 1 && f.observed == 1 &&
                   f.called == 2,
               "warm calls reread cache target/dispatcher while bypassing metadata/context setup");
        const auto count = get<Address>(f.image, s.context + 0x80);
        const auto arity = s.role == GameRuntimeRole::lerp        ? 4u
                           : s.role == GameRuntimeRole::transform ? 3u
                           : s.executor == 0x2d2094 || s.executor == 0x3214f4 ||
                                   s.executor == 0x32225c || s.executor == 0x32b1c8
                               ? 2u
                           : s.executor == 0x2cb9fc ? 1u
                                                    : 0u;
        expect(count == arity && f.last.unmaterialized_return_pointer,
               "known arity written; unknown stack return pointer explicit");
        if (s.executor == 0x3214f4)
            expect(get<ReU64>(f.image, s.context + 0x90) == 0xcccccccccccccc02ULL &&
                       f.last.unmaterialized_argument_bytes[1] == 0xfe,
                   "byte slot writes1byte and preserves seven unknown bytes");
        if (s.executor == 0x32225c)
            expect(get<ReU64>(f.image, s.context + 0x90) == 0xcccccccc7fc12345ULL &&
                       f.last.unmaterialized_argument_bytes[1] == 0xf0,
                   "scalar slot writes4bytes and preserves unknown highDWORD");
        if (s.executor == 0x32b1c8)
            expect(get<ReU64>(f.image, s.context + 0x90) == 0xccccccccffffffffULL,
                   "integer slot does not synthesize highDWORD");
        if (s.role == GameRuntimeRole::transform)
            expect(
                f.last.unmaterialized_argument_bytes[0] == 0xff &&
                    f.last.unmaterialized_argument_bytes[2] == 0xff &&
                    get<Address>(f.image, s.context + 0x88) == 0xccccccccccccccccULL,
                "value-only transform leaves temp/input raw addresses explicitly unmaterialized");
        if (s.guard == GameRuntimeGuard::receiver) {
            q.receiver = 0;
            const auto before = f.called;
            result = f.run(q);
            expect(
                result.status == GameBaseStatus::complete && f.called == before,
                "invalid receiver returns before cache/effect, without fabricated callback work");
        }
    }
    {
        Fixture f(0x2e081c);
        f.fx.metadata.next_method_334660 = {};
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::missing_boundary &&
                   get<unsigned>(f.image, f.s.flags) == 1 && f.observed == 0 && f.called == 0,
               "failed method acquisition preserves bit1 and does not synthesize target/result");
    }
    {
        Fixture f(0x2e6240);
        f.fx.scalar = {};
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::missing_boundary && r.site == f.s.effect_site &&
                   get<unsigned>(f.image, f.s.flags) == 3,
               "missing actualUnityeffect stops after cache and known packaging writes");
    }
    {
        Fixture f(0x315924);
        const auto target = Address(0xabcdef);
        f.fx.observe_context = [&](const auto &) {
            put(f.image, f.s.target, Address(77));
            put(f.image, 0x3d5e60, Address(22));
        };
        f.fx.object = [&](const GameRuntimeCall &c) {
            expect(c.target == target && c.dispatcher == 22,
                   "savedtarget survives observer cachemutation while dispatcher is reloaded");
            return Address(55);
        };
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::complete && re::re_get<Address>(r.value) == 55 &&
                   get<Address>(f.image, f.s.target) == 77,
               "actual effect output consumed and cache mutation retained");
    }
    {
        Fixture f(0x315a54);
        f.fx.metadata.class_from_name_334528 = [&](Address, Address, Address) {
            put(f.image, f.s.flags, 0x83u);
            put(f.image, 0x3d5e60, Address(22));
            return Address(0x110000);
        };
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::complete && f.observed == 0 &&
                   get<unsigned>(f.image, f.s.flags) == 0x83,
               "postmetadata flag reload preserves callback mutation and suppresses already-set "
               "context branch");
    }
    {
        Fixture f(0x3247cc);
        put(f.game, f.fields + 0x20, Address(0));
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::complete && re::re_get<ReU8>(r.value) == 0 &&
                   f.resolved == 0,
               "get_enabled composes329714 before touching wrapper cache");
    }
    {
        Fixture f(0x329920);
        auto q = f.request();
        q.receiver = 0;
        const auto r = f.run(q);
        expect(r.status == GameBaseStatus::complete && f.called == 1,
               "RaycastHit value receiver has no invented numeric range gate");
    }
    {
        Fixture f(0x31492c);
        f.warm();
        put(f.game, f.out, Vec3{1, 2, 3});
        put(f.game, f.in2, Vec3{4, 5, 6});
        auto q = f.request();
        q.output_address = f.out;
        q.first_address = f.out;
        q.second_address = f.in2;
        q.return_address = f.out + 0x30;
        f.fx.lerp = [&](const GameRuntimeCall &c, Vec3 a, Vec3 b, float n) {
            expect(a.x == 0 && a.y == 0 && a.z == 0 && b.y == 5 && n == 0.75f,
                   "Lerp clears caller output before loading aliased first input");
            expect(c.unmaterialized_argument_bytes[0] == 0 &&
                       c.unmaterialized_argument_bytes[1] == 0 && !c.unmaterialized_return_pointer,
                   "copied numeric keys materialized without invented pointers");
            return Vec3{7, 8, 9};
        };
        const auto r = f.run(q);
        expect(r.status == GameBaseStatus::complete && get<Vec3>(f.game, f.out).z == 9 &&
                   get<Address>(f.image, f.s.context + 0x78) == *q.return_address,
               "Lerp writes owned output and actual return key");
    }
    {
        Fixture f(0x31492c);
        f.warm();
        auto q = f.request();
        q.output_address = 0x3d5e60;
        f.fx.lerp = [&](const GameRuntimeCall &c, Vec3, Vec3, float) {
            expect(c.dispatcher == 0,
                   "native clear precedes dispatcher reread even if caller output aliases it");
            return Vec3{1, 2, 3};
        };
        const auto r = game_runtime_wrapper(f.image, f.image, f.s.wrapper, q, f.env, f.fx);
        expect(r.status == GameBaseStatus::complete,
               "raw Lerp output alias follows native ordering");
    }
    {
        Fixture f(0x374bf8);
        f.warm();
        put(f.game, f.out, Vec3{11, 12, 13});
        put(f.game, f.in, Vec3{1, 2, 3});
        put(f.game, f.temp, Vec3{8, 8, 8});
        auto q = f.request();
        q.output_address = f.out;
        q.temporary_address = f.temp;
        q.first_address = f.in;
        f.fx.transform = [&](const GameRuntimeCall &c, Vec3 v) {
            expect(
                get<Vec3>(f.game, f.temp).x == 0 && get<Vec3>(f.game, f.out).x == 11 && v.x == 1,
                "transform clears local temp while caller output remains untouched before effect");
            expect(c.unmaterialized_argument_bytes[0] == 0 &&
                       c.unmaterialized_argument_bytes[2] == 0,
                   "actual temp and input pointer keys retained");
            return Vec3{7, 8, 9};
        };
        const auto r = f.run(q);
        expect(r.status == GameBaseStatus::complete && get<Vec3>(f.game, f.temp).z == 9 &&
                   get<Vec3>(f.game, f.out).z == 9,
               "transform commits temporary then caller output from produced value");
    }
    {
        Fixture f(0x3738cc);
        f.warm();
        put(f.game, f.out, Orientation{1, 2, 3, 4});
        auto q = f.request();
        q.output_address = f.out;
        q.first_address = f.out;
        f.fx.inverse = [&](const GameRuntimeCall &, Orientation v) {
            expect(get<Orientation>(f.game, f.out).w == 4 && v.x == 1,
                   "quaternion inverse does not preclear aliased input/output");
            return Orientation{5, 6, 7, 8};
        };
        const auto r = f.run(q);
        expect(r.status == GameBaseStatus::complete && get<Orientation>(f.game, f.out).w == 8,
               "inverse output is actual typed effect result");
    }
    {
        const auto &s = spec(0x315a54);
        Snapshot im{0, re::ReVector<ReByte>(s.context + 0x90)};
        Snapshot game{0, {}};
        put(im, s.flags, 3u);
        put(im, s.target, Address(1));
        put(im, 0x3d5e60, Address(2));
        GameRuntimeRequest q;
        q.receiver = 0x100000;
        const auto r = game_runtime_wrapper(im, game, s.wrapper, q, {}, {});
        expect(r.status == GameBaseStatus::missing_bytes && r.site == 0x2cba36 &&
                   get<Address>(im, s.context + 0x80) == 1 &&
                   get<Address>(im, s.context + 0x88) == q.receiver,
               "one-argument missing tag preserves earlier arity and pointer stores");
    }
    {
        Fixture f(0x2e081c);
        f.warm();
        const auto movement = bind_game_runtime_movement(f.image, f.game, f.env, f.fx);
        expect(movement.scalar(f.s.wrapper, {}) == 0.25f,
               "movement scalar route consumes actual time wrapper");
        const auto frame = bind_game_runtime_frame(f.image, f.game, f.env, f.fx);
        expect(re::re_get<float>(*frame.external(f.s.wrapper, {})) == 0.25f,
               "frame role returns typed produced value");
        const auto dep = bind_game_runtime_dependencies(f.image, f.game, f.env, f.fx);
        expect(dep.time(f.s.wrapper) == re::ReOptional<float>(0.25f),
               "frame dependency time route uses cache/body, not direct bypass");
    }
    {
        Fixture f(0x374d60);
        f.warm();
        const auto proj = bind_game_runtime_projectile(f.image, f.game, f.env, f.fx);
        expect(proj.transform(f.s.wrapper, f.p, {1, 2, 3}).y == 8,
               "projectile transforms compose concrete wrapper then real effect");
    }
    {
        Fixture f(0x31581c);
        f.warm();
        const auto tick = bind_game_runtime_tick(f.image, f.game, f.env, f.fx);
        expect(tick.time_31581c() == 0.25f,
               "legacy movement tick time consumes same concrete wrapper");
        const auto world = bind_game_runtime_world_overlay(f.image, f.game, f.env, f.fx);
        expect(world.realtime_31581c() == 0.25f, "world overlay realtime composes native wrapper");
        const auto raid = bind_game_runtime_raid(f.image, f.game, f.env, f.fx);
        expect(raid.frame.effects.time(0x31581c) == re::ReOptional<float>(0.25f),
               "raid time is bound through frame dependency interface");
    }
    {
        Fixture f(0x2e6240);
        re::ReVector<Address> targets;
        f.fx.scalar = [&](const GameRuntimeCall &c) {
            targets.push_back(c.target);
            return 42.0f;
        };
        const auto original = f.fx.metadata.class_from_name_334528;
        f.fx.metadata.class_from_name_334528 = [&](Address a, Address n, Address k) {
            const auto nested = f.run(f.request());
            expect(nested.status == GameBaseStatus::complete &&
                       re::re_get<float>(nested.value) == 42.0f,
                   "metadata reentry sees committed bit1 and can finish warm target-zero local "
                   "branch");
            return original(a, n, k);
        };
        const auto r = f.run(f.request());
        expect(r.status == GameBaseStatus::complete &&
                   targets == re::ReVector<Address>{0, 0xabcdef} && f.observed == 1 &&
                   get<unsigned>(f.image, f.s.flags) == 3,
               "outer cache rereads flags after reentry and retains its freshly resolved target");
    }
    {
        Fixture f(0x315a54);
        f.warm();
        const auto aim = bind_game_runtime_aim(f.image, f.game, f.env, f.fx);
        expect(aim.object(f.s.wrapper, f.p) == 0x123456,
               "aim object generic role consumes concrete runtime wrapper");
    }
    {
        Fixture f(0x36cbe4);
        f.warm();
        const auto movement = bind_game_runtime_movement(f.image, f.game, f.env, f.fx);
        const re::ReArray<MovementMainArgument, 2> a{Address(f.p), ReI32(-1)};
        movement.effect(f.s.wrapper, a);
        expect(f.called == 1 && get<unsigned>(f.image, f.s.context + 0x90) == 0xffffffffu,
               "movement raw negative mask materializes native lowDWORD and invokes actual setter");
    }
    {
        Fixture f(0x36ce18);
        f.warm();
        const auto frame = bind_game_runtime_frame(f.image, f.game, f.env, f.fx);
        const re::ReArray<UnityValue, 2> a{Address(f.p), ReI32(0x102)};
        expect(re::re_holds_alternative<re::ReMonostate>(*frame.external(f.s.wrapper, a)) &&
                   f.called == 1,
               "frame setter preserves DL2 rather than normalizing it");
    }
    {
        Fixture f(0x3738cc);
        f.warm();
        const auto orientation = bind_game_runtime_orientation(f.image, f.game, f.env, f.fx);
        expect(orientation.inverse_3738cc({1, 2, 3, 4}).w == 8,
               "shared OrientationApi inverse consumes concrete wrapper");
        const auto movement = bind_game_runtime_movement(f.image, f.game, f.env, f.fx);
        const re::ReArray<MovementMainArgument, 1> a{re::ReArray<float, 4>{1, 2, 3, 4}};
        expect(movement.quaternion(f.s.wrapper, a)[2] == 7,
               "movement quaternion value projection retains all four words");
    }
    {
        Fixture f(0x2e0bf0);
        f.warm();
        const auto interaction = bind_game_runtime_interaction(f.image, f.game, f.env, f.fx);
        expect(interaction.scalar({f.s.wrapper, 0}) == 0.25f,
               "interaction smooth delta composes native local cache");
        AimWeaponCalls prior;
        prior.scalar = [](Rva r, Address p) {
            expect(r == 0x123456 && p == 77, "fallback exact role/receiver");
            return 9.0f;
        };
        const auto aim = bind_game_runtime_aim(f.image, f.game, f.env, f.fx, prior);
        expect(aim.scalar(0x123456, 77) == 9.0f, "unrelated callback is preserved");
    }
}
} // namespace rust_internal_re
