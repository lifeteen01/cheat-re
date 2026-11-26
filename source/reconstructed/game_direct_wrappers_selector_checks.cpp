#include "game_direct_wrappers_fixture.hpp"
namespace rust_internal_re {
void check_game_direct_wrappers_selectors() {
    using namespace direct_test;
    {
        Fixture f;
        f.selector();
        auto q = f.request();
        const auto r = f.run(0x322ef8, q);
        expect(r.status == GameBaseStatus::complete && re::re_get<Address>(*r.value) == 0x195000 &&
                   f.get<Address>(0x3f2490) == 0x196000,
               "literal CapsuleCollider selector reaches post-RET class cache store and object "
               "return");
        f.field(0x196010, Address(0xfffffffffffffff0ULL));
        const auto hit = f.run(0x322ef8, q);
        expect(hit.status == GameBaseStatus::complete && re::re_get<Address>(*hit.value) == 0x195000,
               "class cache match bypasses unreadable class-name pointer");
        f.put(0x3f2490, Address(0x199000));
        const auto miss = f.run(0x322ef8, q);
        expect(miss.status == GameBaseStatus::complete && re::re_get<Address>(*miss.value) == 0,
               "nonmatching cached class skips substring lookup entirely");
        f.put(0x3f2490, Address(0));
        f.field(0x193018, Address(0x194001));
        const auto tagged = f.run(0x322ef8, q);
        expect(tagged.status == GameBaseStatus::complete && re::re_get<Address>(*tagged.value) == 0,
               "tagged low-bit pointer is skipped before dereference");
    }
    {
        Fixture f;
        f.selector();
        auto q = f.request();
        q.arguments[1] = 0x3f2490;
        q.text[0] = "CapsuleCollider";
        f.field(0x191030, 257u);
        const auto r = f.run(0x322f30, q);
        expect(r.status == GameBaseStatus::complete && re::re_get<Address>(*r.value) == 0,
               "unsigned count-minus-one bound rejects257 before element reads");
        q.receiver = 0;
        q.arguments[0] = 0xfffffffffffffff0ULL;
        q.text[0].reset();
        const auto early = f.run(0x322f30, q);
        expect(early.status == GameBaseStatus::complete && re::re_get<Address>(*early.value) == 0,
               "selector null receiver returns before unreadable needle pointer");
    }
    {
        Fixture f;
        auto q = f.request();
        q.arguments[0] = 0x1d0000;
        q.text[0].reset();
        f.field(0x1d0000, re::ReArray<char, 6>{'f', 'i', 'r', 's', 't', 0});
        f.fx.observe_context = [&](const GameDirectCall &c) {
            if (c.wrapper == 0x36c274) {
                f.field(0x1d0000, re::ReArray<char, 6>{'l', 'a', 't', 'e', 'r', 0});
                f.field(Fixture::self + 0x218, Address(0));
            }
        };
        const auto r = f.run(0x36c274, q);
        expect(r.status == GameBaseStatus::complete &&
                   f.strings == re::ReVector<re::ReString>{"first", "later"} &&
                   re::re_get<Address>(f.arguments[0][0]) == 0x1a0000,
               "second managed conversion rereads char buffer while saved nested receiver survives "
               "callback mutation");
    }
    {
        Fixture f;
        auto q = f.request();
        q.scalar = 94;
        f.fx.predicate = [&](const auto &c, auto a) {
            f.capture(c, a);
            return ReU8(c.wrapper == 0x36bacc);
        };
        f.fx.action = [&](const auto &c, auto a) {
            f.capture(c, a);
            if (c.wrapper == 0x36c274)
                f.field(Fixture::self + 0x304, 8.5f);
        };
        const auto r = f.run(0x36ba2c, q);
        expect(r.status == GameBaseStatus::complete &&
                   f.strings == re::ReVector<re::ReString>{"use_self", "use_self", "UseSelf"} &&
                   f.calls.size() == 5 && f.calls[0].wrapper == 0x36bacc &&
                   f.calls[1].wrapper == 0x36b9a0 && f.calls[2].wrapper == 0x36c274 &&
                   f.calls[3].wrapper == 0x36c0f0 && f.calls[4].wrapper == 0x366c30 &&
                   re::re_get<float>(f.arguments[3][1]) == 8.5f,
               "composite keeps predicates/literals/actions ordered and reloads scalar field after "
               "earlier effect");
        f.calls.clear();
        q.scalar = 95;
        const auto equal = f.run(0x36ba2c, q);
        expect(equal.status == GameBaseStatus::complete && f.calls.size() == 2,
               "composite threshold equality exits after both game predicates");
        f.calls.clear();
        q.scalar = re::ReNumericLimits<float>::quiet_NaN();
        const auto nan = f.run(0x36ba2c, q);
        expect(nan.status == GameBaseStatus::complete && f.calls.size() == 2,
               "composite unordered threshold comparison exits without local action chain");
    }
    {
        Fixture f;
        f.selector();
        const re::ReString needle = "CapsuleCollider";
        const Address end = f.game.base() + f.game.size() - needle.size();
        for (ReUSize i = 0; i < needle.size(); ++i)
            f.field(end + i, needle[i]);
        f.field(0x196010, end);
        auto q = f.request();
        const auto r = f.run(0x322ef8, q);
        expect(r.status == GameBaseStatus::complete && re::re_get<Address>(*r.value) == 0x195000,
               "substring prefix match succeeds without reading absent terminator beyond mapped "
               "bytes");
    }
    {
        Fixture f;
        f.selector();
        f.put(0x3f2490, Address(0x196000));
        const Address last = f.game.base() + f.game.size() - 1;
        f.field(last, ReU8('X'));
        f.field(0x196010, Address(0xfffffffffffffff0ULL));
        auto q = f.request();
        q.arguments[0] = last;
        q.arguments[1] = 0x3f2490;
        const auto hit = f.run(0x322f30, q);
        expect(hit.status == GameBaseStatus::complete && re::re_get<Address>(*hit.value) == 0x195000,
               "cached class hit reads only first needle byte and never requires its unmapped "
               "terminator");
        f.put(0x3f2490, Address(0));
        f.field(Fixture::self + 0x10, Address(0));
        const auto early = f.run(0x322f30, q);
        expect(early.status == GameBaseStatus::complete && re::re_get<Address>(*early.value) == 0,
               "null child-list return precedes full raw needle strlen");
    }
}
} // namespace rust_internal_re
