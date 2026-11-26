#include "game_field_controllers.hpp"

namespace rust_internal_re {
namespace {
void expect(bool value, const char *why) {
    if (!value)
        { __builtin_trap(); }
}
template <class T> void put(Snapshot &im, Address p, T v) {
    expect(im.write(p, v), "field controller fixture write");
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    GameHelperEnvironment env;
    GameHelperApi api;
    static constexpr Address held = 0x100100, model = 0x110100, eyes = 0x120100;
    Address definition = 0x200100;
    ReUSize objects = 0, vectors = 0;
    Fixture() {
        put(image, held + 0x350, model);
        put(image, model + 0x24, 0x1001u);
        put(image, held + 0x708, 0x10000000u);
        put(image, 0x3d5e60, Address(0x1234));
        for (const auto &s : game_helper_direct_specs()) {
            put(image, s.flags, 3u);
            put(image, s.target, Address(0x123456));
        }
        api.object = [&](const GameHelperCall &q) {
            ++objects;
            expect(q.receiver == held, "classifier/direction receiver is preserved");
            if (q.wrapper == 0x37154c)
                return definition;
            expect(q.wrapper == 0x369298, "direction uses existing eyes wrapper");
            return eyes;
        };
        api.vector = [&](const GameHelperCall &q) {
            ++vectors;
            expect(q.wrapper == 0x373a68 && q.receiver == eyes,
                   "direction uses existing typed direct-vector wrapper");
            return Vec3{3, 4, 5};
        };
    }
    void item(ReU32 id, ReU32 category) {
        put(image, definition + 0x20, id);
        put(image, definition + 0x58, category);
    }
};
} // namespace
void check_game_field_controllers() {
    {
        Fixture f;
        for (const Rva r : {0x368244u, 0x368468u, 0x372ba4u}) {
            const auto p = r == 0x372ba4 ? f.model : f.held;
            expect(game_field_predicate(f.image, r, p).value,
                   "player/model bit helpers compose guarded fields");
        }
        expect(game_field_predicate(f.image, 0x372bf4, f.model, 0x1000).value &&
                   !game_field_predicate(f.image, 0x372bf4, f.model, 0x2000).value &&
                   game_field_predicate(f.image, 0x36a1e4, f.held).value,
               "full DWORD mask and player bit0x10000000 remain distinct");
        put(f.image, f.model + 0x24, 0x80000000u);
        expect(game_field_predicate(f.image, 0x372bf4, f.model, 0x80000000u).value,
               "high mask bits survive the raw predicate API");
        put(f.image, f.held + 0x350, Address(1));
        expect(!game_field_predicate(f.image, 0x368244, f.held).value,
               "invalid model pointer bypasses deeper field reads");
        expect(!game_field_predicate(Snapshot(0, {}), 0x36a1e4, 1).value &&
                   game_field_predicate(Snapshot(0, {}), 0x368468, f.held).status ==
                       GameBaseStatus::missing_bytes,
               "invalid receivers return zero while missing valid fields fail");
    }
    {
        Fixture f;
        const re::ReArray<re::RePair<Rva, ReU32>, 8> rows{{{0x371688, 0x2f6656f8},
                                                                 {0x371688, 0xb9ece859},
                                                                 {0x371688, 0x6e10f78c},
                                                                 {0x3717c0, 0x05ef97b9},
                                                                 {0x3717c0, 0xc652dc60},
                                                                 {0x371df4, 0x40547fde},
                                                                 {0x371df4, 0x847b9bf0},
                                                                 {0x3714c4, 0x5f867078}}};
        for (const auto &[r, id] : rows) {
            const auto category = r == 0x3717c0 ? 1u : r == 0x371df4 ? 6u : 5u;
            f.item(id, category);
            const auto result = game_field_weapon(f.image, r, f.held, f.env, f.api);
            expect(result.status == GameBaseStatus::complete && result.value == f.held,
                   "all literal weapon ID branches retain their category conditions");
            f.item(0, category);
            expect(game_field_weapon(f.image, r, f.held, f.env, f.api).value == 0,
                   "nonmember IDs return zero rather than the receiver");
        }
        f.item(0x7eaadd59, 5);
        expect(game_field_weapon(f.image, 0x3714c4, f.held, f.env, f.api).value == f.held,
               "combined classifier accepts projectile ID with category5");
        f.item(0x7eaadd59, 0);
        expect(game_field_weapon(f.image, 0x3714c4, f.held, f.env, f.api).value == f.held,
               "combined classifier accepts category0 before repeated category5 test");
        f.item(0x05ef97b9, 6);
        expect(game_field_weapon(f.image, 0x3717c0, f.held, f.env, f.api).value == 0,
               "weapon category mismatch rejects an otherwise matching ID");
        f.definition = 0;
        expect(game_field_weapon(f.image, 0x3717c0, f.held, f.env, f.api).value == 0,
               "invalid definition result is checked before ID read");
    }
    {
        Fixture f;
        f.definition = 0x420000 - 0x24;
        put(f.image, f.definition + 0x20, 0x6e10f78cu);
        expect(game_field_weapon(f.image, 0x371688, f.held, f.env, f.api).value == f.held,
               "three-ID classifier never requires category bytes");
        put(f.image, f.definition + 0x20, 0u);
        const auto rejected = game_field_weapon(f.image, 0x3717c0, f.held, f.env, f.api);
        expect(rejected.status == GameBaseStatus::complete && rejected.value == 0,
               "ID rejection precedes unavailable category bytes");
        put(f.image, f.definition + 0x20, 0x05ef97b9u);
        const auto missing = game_field_weapon(f.image, 0x3717c0, f.held, f.env, f.api);
        expect(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x37236c,
               "matching ID reaches the real missing category dependency");
    }
    {
        Fixture f;
        const auto result = game_field_direction_3691c0(f.image, f.held, f.env, f.api);
        expect(result.status == GameBaseStatus::complete && result.value.x == 3 &&
                   result.value.y == 4 && result.value.z == 5 && f.objects == 1 && f.vectors == 1,
               "direction composes concrete eyes and vector cache controllers");
        const auto invalid = game_field_direction_3691c0(f.image, 0, f.env, f.api);
        expect(invalid.value.x == 0 && invalid.value.y == 0 && invalid.value.z == 0 &&
                   f.objects == 1,
               "invalid direction receiver clears logical output without effects");
    }
    {
        Fixture f;
        for (const auto &s : game_helper_direct_specs())
            for (Address i = 0; i < 0xd4; ++i)
                put(f.image, Address(s.context) + i, ReU8(0xaa));
        f.api.object = [&](const GameHelperCall &q) {
            expect(f.image.read<ReU64>(q.context + 0x80) == 1 &&
                       f.image.read<Address>(q.context + 0x88) == f.held &&
                       f.image.read<ReU32>(q.context + 0xd0) == 0xaaaaaa00u &&
                       f.image.read<Address>(q.context + 0x78) == 0xaaaaaaaaaaaaaaaaULL,
                   "shared direct getter stages known one-argument fields before its effect");
            return q.wrapper == 0x37154c ? f.definition : f.eyes;
        };
        f.api.vector = [&](const GameHelperCall &q) {
            expect(f.image.read<ReU64>(q.context + 0x80) == 2 &&
                       f.image.read<Address>(q.context + 0x88) == f.eyes &&
                       f.image.read<Address>(q.context + 0x90) == 0xaaaaaaaaaaaaaaaaULL &&
                       f.image.read<ReU32>(q.context + 0xd0) == 0xaaaa0000u,
                   "shared vector stages receiver/count/types while leaving raw output unknown");
            return Vec3{1, 2, 3};
        };
        f.item(0x2f6656f8, 0);
        expect(game_field_weapon(f.image, 0x371688, f.held, f.env, f.api).value == f.held &&
                   game_field_direction_3691c0(f.image, f.held, f.env, f.api).value.z == 3,
               "field composites consume shared known-argument staging");
        f.api.object = {};
        const auto missing = game_helper_object(f.image, 0x37154c, f.held, f.env, f.api);
        expect(missing.status == GameBaseStatus::missing_boundary && missing.site == 0x37154c &&
                   f.image.read<Address>(0x400b60 + 0x88) == f.held,
               "missing final getter effect retains staged native receiver");
    }
    {
        constexpr Address context = 0x401a60;
        Snapshot prefix(0x3d5e60, re::ReVector<ReByte>(context + 0x98 - 0x3d5e60));
        put(prefix, 0x3d5e60, Address(0x1234));
        put(prefix, 0x401a50, 3u);
        put(prefix, 0x401a48, Address(0x123456));
        put(prefix, context + 0x88, Address(0xaaaaaaaa));
        const auto missing = game_helper_vector(prefix, 0x373a68, Fixture::eyes, {}, {});
        expect(missing.status == GameBaseStatus::missing_bytes && missing.site == 0x2d20cb &&
                   prefix.read<Address>(context + 0x88) == 0xaaaaaaaa,
               "shared vector unknown type span failure precedes receiver argument store");
    }
    {
        Snapshot globals(0x401c28, re::ReVector<ReByte>(8));
        constexpr Address p = 0x100020;
        Snapshot game(p, re::ReVector<ReByte>(0x220));
        put(game, p + 0x210, 0u);
        put(game, p + 0x200, 0xdeadbeefu);
        expect(game_field_backup_373eb4(globals, game, p, 0).status == GameBaseStatus::complete,
               "backup captures raw DWORD values");
        put(game, p + 0x210, 0x1234u);
        put(game, p + 0x200, 0x5678u);
        (void)game_field_backup_373eb4(globals, game, p, 0);
        expect(globals.read<ReU32>(0x401c28) == 0x1234u &&
                   globals.read<ReU32>(0x401c2c) == 0xdeadbeefu,
               "zero cache remains a recapture sentinel while nonzero cache is retained");
        (void)game_field_backup_373eb4(globals, game, p, 2);
        expect(game.read<ReU32>(p + 0x210) == 0x1234u &&
                   game.read<ReU32>(p + 0x200) == 0xdeadbeefu,
               "noncanonical restore byte restores both raw captured words");
        put(globals, 0x401c28, 0u);
        Snapshot partial_globals(0x401c28, re::ReVector<ReByte>(4));
        const auto prefix = game_field_backup_373eb4(partial_globals, game, p, 1);
        expect(prefix.status == GameBaseStatus::missing_bytes && prefix.site == 0x373edb &&
                   partial_globals.read<ReU32>(0x401c28) == 0x1234u,
               "missing second cache word retains the first capture store");
    }
    {
        constexpr Address record = 0x10000, slot = 0x10100;
        Snapshot im(record, re::ReVector<ReByte>(0x200));
        put(im, slot, Address(0xabcdef));
        expect(game_field_hook_32308c(im, record, slot, 0x123456).value &&
                   im.read<Address>(record) == 0xabcdef && im.read<Address>(slot) == 0x123456 &&
                   im.read<ReU32>(record + 0x30) == 4,
               "copied hook retains old target, writes replacement, then kind4");
        expect(game_field_hook_32308c(im, record, 0, 0).value,
               "nonzero hook kind bypasses all slot reads and still returns true");
        Snapshot overlap(record, re::ReVector<ReByte>(0x40));
        put(overlap, record + 0x30, Address(0));
        expect(
            game_field_hook_32308c(overlap, record, record + 0x30, 0x1122334455667788ULL).value &&
                overlap.read<Address>(record) == 0 &&
                overlap.read<Address>(record + 0x30) == 0x1122334400000004ULL,
            "hook kind store follows overlapping replacement write literally");
        Snapshot short_record(record, re::ReVector<ReByte>(0x32));
        const auto fail = game_field_hook_32308c(short_record, record, 0, 1);
        expect(fail.status == GameBaseStatus::missing_bytes && fail.site == 0x3164fc,
               "hook kind bounds failure precedes source slot access");
    }
    {
        Fixture f;
        f.item(0x2f6656f8, 0);
        const auto aim = bind_game_fields_aim(f.image, f.env, f.api);
        const auto projectile = bind_game_fields_projectile(f.image, f.env, f.api);
        const auto interaction = bind_game_fields_interaction(f.image, f.env, f.api);
        expect(aim.object(0x371688, f.held) == f.held &&
                   projectile.address(0x371688, f.held, 0) == f.held &&
                   interaction.object({0x371688, f.held}) == f.held,
               "weapon helpers bind into all existing direct result APIs");
        auto movement = bind_game_fields_movement(f.image, f.env, f.api);
        const re::ReArray<MovementMainArgument, 2> args{Address(f.model), ReU32(0x1000)};
        expect(movement.predicate(0x372bf4, args), "movement binder retains full DWORD mask");
        const re::ReArray<MovementMainArgument, 2> backup{Address(f.held), ReU32(0x100)};
        put(f.image, 0x401c28, 31u);
        put(f.image, 0x401c2c, 32u);
        put(f.image, f.held + 0x210, 0x4321u);
        put(f.image, f.held + 0x200, 0x5678u);
        movement.effect(0x373eb4, backup);
        expect(f.image.read<ReU32>(0x401c28) == 31u &&
                   f.image.read<ReU32>(f.held + 0x210) == 0x4321u &&
                   f.image.read<ReU32>(f.held + 0x200) == 0x5678u,
               "movement backup adapter uses low byte rather than whole integer restore truth");
        const auto frame = bind_game_fields_frame(f.image, f.env, f.api);
        const re::ReArray<UnityValue, 1> frame_args{Address(f.held)};
        expect(re::re_get<Address>(*frame.external(0x371688, frame_args)) == f.held &&
                   !frame.external(0x123456, {}),
               "frame adapter preserves types and unknown-role fallback absence");
    }
}
} // namespace rust_internal_re
