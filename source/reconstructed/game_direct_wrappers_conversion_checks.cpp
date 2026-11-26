#include "game_direct_wrappers_fixture.hpp"
namespace rust_internal_re {
void check_game_direct_wrappers_conversions() {
    using namespace direct_test;
    {
        Fixture f;
        auto q = f.request();
        f.put(0x3d5e70, 0u);
        f.fx.shared.export_target = [&](Rva r) {
            expect(r == 0x2cc164 && f.get<ReU32>(0x3d5e70) == 1,
                   "managed-string export bit1 precedes target resolver callback");
            f.put(0x3d5e70, 5u);
            return Address(0x123456);
        };
        bool seen = false;
        f.fx.observe_context = [&](const GameDirectCall &c) {
            if (c.wrapper == 0x2ce718) {
                expect(f.get<ReU32>(0x3d5e70) == 7 && c.target == 0x123456,
                       "managed converter reloads mutated flags before bit2 prefix");
                f.put(0x3d5e60, Address(0xdef));
                seen = true;
            }
        };
        const auto r = f.run(0x366c30, q);
        expect(
            r.status == GameBaseStatus::complete && seen && f.get<Address>(0x3d5e68) == 0x123456 &&
                f.calls[0].dispatcher == 0xdef,
            "shared export/managed prefix and later direct dispatch preserve callback mutations");
    }
    {
        constexpr Address target = 0x3d5e68;
        Snapshot im{target, re::ReVector<ReByte>(0x200)};
        expect(im.write(0x3d5e70, 1u) && im.write(target, Address(0x1234)),
               "narrow shared conversion fixture");
        GameDirectRequest q;
        GameDirectEnvironment env;
        GameDirectEffects fx;
        bool failed = false;
        {
            (void)direct_detail::managed(im, "text", {}, q, env, fx);
        }
        expect(failed && im.read<ReU32>(0x3d5e70) == 1,
               "native2ce756 dispatcher read failure occurs before managed bit2 store");
    }
    {
        Fixture f;
        auto q = f.request();
        f.put(0x3d5e70, 0u);
        f.fx.shared.export_target = {};
        const auto r = f.run(0x366c30, q);
        expect(r.status == GameBaseStatus::missing_boundary && r.site == 0x2cc164 &&
                   f.get<ReU32>(0x3d5e70) == 1 && f.get<ReU32>(0x3fdb20) == 0,
               "missing export/loader input stops after managed bit1 and before direct wrapper "
               "cache work");
    }
    {
        Fixture f;
        auto q = f.request();
        q.raw_argument_keys[2] = Address(0x1d0000);
        q.raw_argument_keys[3] = Address(0x1d0100);
        q.first_vector = Vec3{1, 2, 3};
        q.second_vector = Vec3{4, 5, 6};
        q.arguments[0] = 0x199000;
        const auto r = f.run(0x366ef0, q);
        const auto *s = direct_detail::spec(0x366ef0);
        expect(r.status == GameBaseStatus::complete &&
                   f.calls[0].unmaterialized_argument_bytes[2] == 0 &&
                   f.calls[0].unmaterialized_argument_bytes[3] == 0 &&
                   f.get<Address>(s->context + 0x98) == 0x1d0000 &&
                   f.get<Address>(s->context + 0xa0) == 0x1d0100,
               "actual supplied raw vector keys materialize independently of typed vector values");
    }
}
} // namespace rust_internal_re
