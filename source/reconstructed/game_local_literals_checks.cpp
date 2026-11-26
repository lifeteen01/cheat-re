#include "game_local_literals_analysis.hpp"
#include "game_direct_wrappers_internal.hpp"
#include "entities_analysis.hpp"
namespace rust_internal_re {
namespace {
void expect(bool v, const char *why) {
    if (!v)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Snapshot im{0, re::ReVector<ReByte>(0x420000)}, game{0, re::ReVector<ReByte>(0x220000)};
    GameLocalLiteralEnvironment env;
    GameDirectEffects fx;
    re::ReVector<re::ReString> strings;
    re::ReVector<GameDirectCall> calls;
    template <class T> void put(Address p, T v) {
        expect(im.write(p, v), "image fixture write");
    }
    template <class T> void field(Address p, T v) {
        expect(game.write(p, v), "game fixture write");
    }
    template <class T> T get(Address p) {
        auto v = game.read<T>(p);
        expect(bool(v), "game fixture read");
        return *v;
    }
    void put_bytes(Address p, std::initializer_list<ReU8> bytes) {
        for (auto b : bytes)
            put(p++, b);
    }
    Fixture() {
#include "game_local_literals_fixture_data.inc"
        put(0x3d6f00, Address(0x700000000));
        put(0x3d5e60, Address(0x1234));
        put(0x3d5e70, 3u);
        put(0x3d5e68, Address(0x4567));
        fx.shared.string_new_2ce718 = [&](re::ReStringView s) {
            strings.emplace_back(s);
            return Address(0x1e0000 + strings.size() * 0x100);
        };
        fx.action = [&](const auto &c, auto) { calls.push_back(c); };
        field(0x180218, Address(0x190000));
        Address p = 0x1a0000;
        for (const auto &s : game_local_literal_specs()) {
            env.aliases[s.getter] = p;
            p += 128;
        }
    }
};
constexpr re::ReArray<re::ReStringView, 49> golden{"Generic",
                                                  "attack2",
                                                  "Flesh",
                                                  "TryUnlock",
                                                  "RPC_TakeLock",
                                                  "RPC_Unlock",
                                                  "RPC_TakeLock",
                                                  "RPC_OpenDoor",
                                                  "RPC_PickupStart",
                                                  "drop",
                                                  "refill",
                                                  "refill",
                                                  "drop",
                                                  "DoUpgradeToGrade",
                                                  "AcceptClicked",
                                                  "Bike",
                                                  "VehicleModuleSeating",
                                                  "VehicleModuleEngine",
                                                  "Minicopter",
                                                  "AttackHelicopter",
                                                  "ScrapTransportHelicopter",
                                                  "CH47Helicopter",
                                                  "BasicCar",
                                                  "RidableHorse",
                                                  "MotorRowboat",
                                                  "Flesh",
                                                  "Kayak",
                                                  "RHIB",
                                                  "ModularCar",
                                                  "AttackHelicopter",
                                                  "Minicopter",
                                                  "ScrapTransportHelicopter",
                                                  "CH47Helicopter",
                                                  "BasicCar",
                                                  "Bike",
                                                  "VehicleModuleEngine",
                                                  "VehicleModuleSeating",
                                                  "ModularCar",
                                                  "RidableHorse",
                                                  "MotorRowboat",
                                                  "Kayak",
                                                  "RHIB",
                                                  "Glass",
                                                  "Metal",
                                                  "Wood",
                                                  "Flesh",
                                                  "Dirt",
                                                  "Snow",
                                                  "ScientistNPC2"};
} // namespace
void check_game_local_literals_reconstruction() {
    {
        Fixture f;
        ReUSize i = 0;
        for (const auto &s : game_local_literal_specs()) {
            const auto r = game_local_literal(f.im, f.game, s.getter, s.converter, f.env);
            expect(r.status == GameBaseStatus::complete && r.value.terminated &&
                       r.value.text == golden[i++],
                   "all49 literal constructors and actual converters match independent plaintext "
                   "catalogue");
            expect(r.value.address == f.env.aliases[s.getter] && r.value.bytes.size() == s.count,
                   "producer retains mapped address/count");
            for (ReUSize j = 0; j < s.count; ++j)
                expect(r.value.bytes[j] &&
                           f.get<ReU8>(*r.value.address + j) == *r.value.bytes[j],
                       "mapped decoded bytes agree with owned known-byte projection");
        }
    }
    {
        Fixture f;
        f.env.aliases.clear();
        const auto r = game_local_literal(f.im, f.game, 0x2e5254, 0, f.env);
        expect(r.status == GameBaseStatus::complete && !r.value.address &&
                   r.value.text == "TryUnlock",
               "owned literal needs no invented raw buffer pointer");
        const auto b = bind_game_local_literals_projectile(f.im, f.game, f.env, f.fx);
        bool failed = false;
        {
            (void)b.material(0x3302b0, 0x2d84dc);
        }
        expect(failed, "raw material pointer API explicitly requires actual mapped scratch alias");
    }
    {
        Fixture f;
        const auto specs = game_local_literal_specs();
        const auto s = *re::re_find_if(specs.begin(), specs.end(),
                                     [](const auto &x) { return x.getter == 0x2e5270; });
        f.env.aliases[s.getter] = f.game.size() - 9;
        for (Address p = f.game.size() - 9; p < f.game.size(); ++p)
            f.field(p, ReU8(0xaa));
        const auto r = game_local_literal(f.im, f.game, s.getter, s.converter, f.env);
        expect(r.status == GameBaseStatus::missing_bytes &&
                   f.get<ReU64>(f.game.size() - 9) != 0xaaaaaaaaaaaaaaaaULL &&
                   f.get<ReU8>(f.game.size() - 1) == 0xaa,
               "full-width later store failure retains earlier QWORD and does not partially "
               "overwrite failing DWORD");
    }
    {
        Fixture f;
        const Address at = 0x200000;
        f.field(at, re::ReArray<char, 5>{'B', 'i', 'k', 'e', 0});
        auto r = game_local_literal_compare(f.im, f.game, at, 0x330128, 0x2cdccc, f.env);
        expect(r.status == GameBaseStatus::complete && r.value == 0,
               "native zero-equality class comparison");
        f.field(at, ReU8(0xff));
        r = game_local_literal_compare(f.im, f.game, at, 0x330128, 0x2cdccc, f.env);
        expect(r.status == GameBaseStatus::complete && r.value == -1 - 'B',
               "comparison uses signed int8 difference, not unsigned strcmp ordering");
        const auto bad = game_local_literal_compare(f.im, f.game, 0xfffffffffffffff0ULL, 0x330128,
                                                    0x2cdccc, f.env);
        expect(bad.status == GameBaseStatus::missing_bytes &&
                   f.get<char>(f.env.aliases[0x330128]) == 'B',
               "class read failure occurs after concrete literal buffer writes");
    }
    {
        Fixture f;
        const Address at = 0x200000;
        f.field(at, re::ReArray<ReU8, 3>{0xff, 'A', 0});
        const auto h = game_local_name_hash_2d6354(f.game, at);
        expect(h.status == GameBaseStatus::complete && h.value == 0xf7c9d2f84b1141ddULL,
               "name FNV preserves sign-extended high bytes");
        const auto l =
            game_local_literal_hash(f.im, f.game, 0x330614, 0x2dd188, 0x123456789abcdef0ULL, f.env);
        expect(l.status == GameBaseStatus::complete && l.value == 0xf99e5743bb2011a1ULL,
               "recursive literal hash fold preserves supplied64bit seed");
    }
    {
        Fixture f;
        auto b = bind_game_local_literals_interaction(f.im, f.game, f.env, f.fx);
        for (Rva literal : {0x2e5254u, 0x2e52e8u, 0x2e59d8u}) {
            InteractionCall c{0x366c30, 0x180000};
            c.literal = literal;
            b.action(c);
        }
        expect(f.strings ==
                       re::ReVector<re::ReString>{"TryUnlock", "RPC_TakeLock", "AcceptClicked"} &&
                   f.calls.size() == 3,
               "Interaction RPC producer→direct managed conversion→game action composition");
        InteractionCall c{0x36c274, 0x180000};
        c.literal = 0x2dfc44;
        b.action(c);
        expect(f.strings[f.strings.size() - 2] == "attack2" && f.strings.back() == "attack2",
               "attack literal feeds both concrete36c274 managed conversions");
        c = {0x2ce5dc};
        c.literal = 0x2dfbcc;
        const auto p = b.object(c);
        expect(sample_pointer_range(p) && f.strings.back() == "Generic",
               "hit material local literal reaches typed managed-string leaf");
    }
    {
        Fixture f;
        auto b = bind_game_local_literals_projectile(f.im, f.game, f.env, f.fx);
        const auto p = b.material(0x3302b0, 0x2d84dc);
        expect(p == f.env.aliases[0x3302b0] && f.get<char>(p) == 'F',
               "projectile material returns real mapped raw char key");
        const auto managed = b.managed_string_2ce5dc(p);
        expect(sample_pointer_range(managed) && f.strings.back() == "Flesh",
               "managed material conversion remains explicit typed final effect");
    }
    {
        Fixture f;
        const auto p = f.env.aliases[0x3302b0];
        f.im = Snapshot(0x3d5e60, re::ReVector<ReByte>(0xf1));
        f.put(0x3d5e60, Address(0x1234));
        f.put(0x3d5e68, Address(0x4567));
        f.put(0x3d5e70, 3u);
        f.put(0x3d5f50, ReU8(0xa5));
        const auto b = bind_game_local_literals_projectile(f.im, f.game, f.env, f.fx);
        bool failed = false;
        {
            (void)b.managed_string_2ce5dc(p);
        }
        expect(failed && f.im.read<Address>(0x3d5f00) == 1 && f.im.read<Address>(0x3d5f08) == p &&
                   f.im.read<ReU8>(0x3d5f50) == 0xa5 && f.strings.empty(),
               "projectile binder translates argument span failure with stores retained and "
               "unmaterialized native DWORD untouched");
    }
    {
        Fixture f;
        f.put(0x294c08, ReU32(0));
        f.put(0x294c0c, ReU16(0));
        const auto r = game_local_literal(f.im, f.game, 0x3302b0, 0x2d84dc, f.env);
        expect(r.status == GameBaseStatus::complete && r.value.terminated && r.value.text.empty() &&
                   re::re_all_of(r.value.bytes.begin(), r.value.bytes.end(),
                               [](const auto &b) { return b && *b == 0; }),
               "zero guard byte skips XOR after actual constructor copies");
    }
    {
        Fixture f;
        f.env.aliases[0x3302b0] = 0x294c0a;
        const auto r = game_local_literal(f.im, f.im, 0x3302b0, 0x2d84dc, f.env);
        expect(r.status == GameBaseStatus::complete && !r.value.terminated &&
                   r.value.text == "Flesgu",
               "overlapping literal destination changes later native source WORD load instead of "
               "flattened copy");
    }
    {
        Fixture f;
        f.put(0x3d5e70, 1u);
        const auto alias = f.env.aliases[0x3302b0];
        f.fx.observe_context = [&](const GameDirectCall &c) {
            if (c.wrapper == 0x2ce718)
                f.field(alias, re::ReArray<char, 6>{'G', 'l', 'a', 's', 's', 0});
        };
        const auto r = game_local_literal_managed(f.im, f.game, 0x3302b0, 0x2d84dc, f.env, f.fx);
        expect(r.status == GameBaseStatus::complete &&
                   f.strings == re::ReVector<re::ReString>{"Glass"} &&
                   f.im.read<Address>(0x3d5e80 + 0x88) == alias,
               "managed string leaf rereads aliased literal bytes after context callback mutation");
    }
    {
        Fixture f;
        const auto last = f.game.size() - 1;
        f.field(last, char('X'));
        const auto r = game_local_literal_compare(f.im, f.game, last, 0x330128, 0x2cdccc, f.env);
        expect(r.status == GameBaseStatus::complete && r.value == 'X' - 'B',
               "first-byte class mismatch does not require unmapped classname terminator");
        f.fx.shared.string_new_2ce718 = {};
        const auto bad = game_local_literal_managed(f.im, f.game, 0x2dfbcc, 0x2e3614, f.env, f.fx);
        expect(bad.status == GameBaseStatus::missing_boundary && bad.site == 0x2ce78b &&
                   f.im.read<Address>(0x3d5e80 + 0x80) == 1,
               "missing final managed leaf preserves concrete literal and argument prefix");
    }
    {
        Fixture f;
        f.env.aliases.clear();
        f.put(0x294c0d, ReU8(*f.im.read<ReU8>(0x294c0d) ^ 1));
        const auto b = bind_game_local_literals_interaction(f.im, f.game, f.env, f.fx);
        InteractionCall c{0x366c30, 0x180000};
        c.literal = 0x3302b0;
        bool failed = false;
        {
            b.action(c);
        }
        expect(failed && f.strings.empty() && f.calls.empty() && f.im.read<Address>(0x3d5f00) == 1,
               "owned unterminated RPC text stops at managed leaf after staging instead of "
               "inventing a terminator");
    }
}
} // namespace rust_internal_re
