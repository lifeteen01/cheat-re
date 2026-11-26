#include "game_direct_wrappers_fixture.hpp"
namespace rust_internal_re {
void check_game_direct_wrappers_selectors();
void check_game_direct_wrappers_failures();
void check_game_direct_wrappers_conversions();
void check_game_direct_wrappers_reconstruction() {
    using namespace direct_test;
    for (const auto &s : game_direct_wrapper_specs()) {
        Fixture f;
        auto q = f.request();
        const auto r = f.run(s.wrapper, q);
        expect(r.status == GameBaseStatus::complete && r.value.has_value(),
               "every assigned direct cache root completes with typed supplied effect");
        expect(f.calls.size() == 1 && f.calls[0].wrapper == s.wrapper &&
                   f.calls[0].executor == s.executor,
               "each direct root reaches exact argument executor role");
        expect(f.get<ReU32>(s.flags) == 3 &&
                   f.get<Address>(s.target) == Address(0x700000000) + s.game_offset,
               "direct target is base plus exact ADD immediate and flags become3");
        expect(f.observations.size() == 1 && f.observations[0].target == f.get<Address>(s.target),
               "cold cache emits one detection-only observation with captured target");
        expect(f.get<Address>(s.context + 0x78) == Fixture::ret,
               "known return pointer stored in context");
        const auto count = f.get<Address>(s.context + 0x80);
        expect(count == f.arguments.back().size(),
               "packaged arity matches exact typed final arguments");
        if (s.wrapper == 0x373c60)
            expect(f.read<Orientation>(Fixture::output).w == 4 &&
                       re::re_get<Address>(f.arguments[0][0]) == Fixture::temporary,
                   "orientation local scratch differs from caller output and copies sixteen bytes");
        if (s.wrapper == 0x36b004)
            expect(re::re_get<ReI32>(f.arguments[0][1]) == -50 &&
                       f.calls[0].unmaterialized_argument_bytes[1] == 0xf0,
                   "fixed negative integer stays signed32 with unknown high bytes");
        if (s.wrapper == 0x370b50)
            expect(f.strings ==
                           re::ReVector<re::ReString>{
                               "assets/bundled/prefabs/system/debug/debug_camera.prefab"} &&
                       re::re_get<ReU8>(f.arguments[0][2]) == 1,
                   "literal prefab is copied/decrypted and final bool is native1");
    }
    {
        Fixture f;
        auto q = f.request();
        const auto *s = direct_detail::spec(0x36817c);
        f.fx.observe_context = [&](const GameDirectCall &c) {
            expect(f.get<ReU32>(s->flags) == 3, "bit2 committed before detection observer");
            f.put(s->target, Address(0x9999));
            f.put(0x3d5e60, Address(0xdef));
            expect(c.target == Address(0x700000000) + s->game_offset,
                   "observer sees local captured target");
        };
        auto r = f.run(s->wrapper, q);
        expect(r.status == GameBaseStatus::complete && f.calls[0].dispatcher == 0xdef &&
                   f.calls[0].target == Address(0x700000000) + s->game_offset,
               "effect reloads dispatcher after callback but retains locally captured target");
        r = f.run(s->wrapper, q);
        expect(r.status == GameBaseStatus::complete && f.calls.back().target == 0x9999,
               "warm wrapper reads mutated target cache on next invocation");
    }
    {
        Fixture f;
        auto q = f.request();
        q.receiver = 0;
        auto r = f.run(0x36817c, q);
        expect(r.status == GameBaseStatus::complete && !r.value &&
                   r.unmaterialized_return_bytes == 0xfe && f.calls.empty() &&
                   f.get<ReU32>(0x3fec50) == 0,
               "invalid null object guard returns only known ALzero and bypasses cache/effect");
        q.receiver = 0x1000;
        r = f.run(0x36817c, q);
        expect(!r.value && r.unmaterialized_return_bytes == 0 &&
                   r.raw_return == ((Address(0x1000) - 0x100000) & ~Address(255)),
               "nonzero invalid object guard retains exact LEA and low ALzero bits");
        q.receiver = 0;
        q.initial_output = Orientation{8, 7, 6, 5};
        f.field(Fixture::output, Orientation{9, 9, 9, 9});
        r = f.run(0x373c60, q);
        expect(re::re_get<Orientation>(*r.value).w == 5 &&
                   f.read<Orientation>(Fixture::output).w == 9,
               "invalid orientation preserves supplied stale typed output and caller memory");
        r = f.run(0x322580, q);
        expect(r.status == GameBaseStatus::complete && f.calls.size() == 1,
               "322580 has no receiver guard and still invokes setter with receiverzero");
    }
    {
        Fixture f;
        auto q = f.request();
        f.scalar = re::ReNumericLimits<float>::quiet_NaN();
        expect(re::re_get<ReU8>(*f.run(0x36a238, q).value) == 0,
               "COMISS SETAE rejects unordered scalar result");
        f.scalar = f.get<float>(0x2930c8);
        expect(re::re_get<ReU8>(*f.run(0x36a238, q).value) == 1,
               "predicate threshold includes equality");
        f.object = 0x1000;
        expect(re::re_get<ReU8>(*f.run(0x36a0e0, q).value) == 0,
               "36a0e0 applies second pointer-range guard to produced object");
    }
    check_game_direct_wrappers_selectors();
    check_game_direct_wrappers_failures();
    check_game_direct_wrappers_conversions();
}
} // namespace rust_internal_re
