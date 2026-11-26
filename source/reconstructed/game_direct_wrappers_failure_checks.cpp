#include "game_direct_wrappers_fixture.hpp"
namespace rust_internal_re {
void check_game_direct_wrappers_failures() {
    using namespace direct_test;
    {
        Fixture f;
        auto q = f.request();
        f.fx.action = {};
        const auto r = f.run(0x322580, q);
        const auto *s = direct_detail::spec(0x322580);
        expect(r.status == GameBaseStatus::missing_boundary && r.site == s->effect_site &&
                   f.get<ReU32>(s->flags) == 3 && f.get<Address>(s->context + 0x80) == 2 &&
                   f.get<float>(s->context + 0x90) == q.scalar,
               "missing matching effect retains cache and ordered argument prefix without success "
               "default");
    }
    for (const Rva root : {0x36817cu, 0x36a238u}) {
        const auto *s = direct_detail::spec(root);
        Snapshot im{s->target, re::ReVector<ReByte>(0x200)};
        expect(im.write(s->flags, 1u) && im.write(s->target, Address(0x1234)),
               "narrow cache fixture");
        Snapshot game{0, re::ReVector<ReByte>(16)};
        GameDirectRequest q;
        q.receiver = Fixture::self;
        const auto r = game_direct_wrapper(im, game, root, q, {}, {});
        expect(r.status == GameBaseStatus::missing_bytes && r.site == s->setup_root &&
                   im.read<ReU32>(s->flags) == (s->setup_root_before_flag_two ? 1u : 3u),
               "per-wrapper dispatcher read versus bit2 store order survives missing root bytes");
    }
    {
        Fixture f;
        auto q = f.request();
        const auto *s = direct_detail::spec(0x322580);
        f.put(s->context + 0x90, ReU64(0xaaaaaaaa55555555));
        f.put(s->context + 0xd0, 0xddddccccu);
        f.put(s->context + 0x78, Address(0xeeee));
        q.return_address.reset();
        const auto r = f.run(s->wrapper, q);
        expect(r.status == GameBaseStatus::complete && f.calls[0].unmaterialized_return_pointer &&
                   f.calls[0].unmaterialized_argument_bytes[1] == 0xf0 &&
                   f.calls[0].unmaterialized_type_bytes == 0xc &&
                   (f.get<ReU64>(s->context + 0x90) >> 32) == 0xaaaaaaaa &&
                   f.get<ReU32>(s->context + 0xd0) == 0xdddd0100 &&
                   f.get<Address>(s->context + 0x78) == 0xeeee,
               "unknown high scalar/type/return-slot pointer bits remain unmaterialized with exact "
               "masks");
    }
    {
        constexpr Address c = 0x10000;
        Snapshot im{c + 0x80, re::ReVector<ReByte>(0x100)};
        expect(im.write(c + 0x88, Address(0x7777)), "partial packer fixture");
        GameDirectCall call;
        call.wrapper = 0x322580;
        call.executor = 0x32225c;
        call.context = c;
        const re::ReArray<GameDirectArgument, 2> args{Address(0x1111), 0.25f};
        bool failed = false;
        {
            direct_detail::package(im, call, args, Address(0x8888));
        }
        expect(failed && im.read<Address>(c + 0x88) == 0x7777 && im.read<Address>(c + 0x80) == 0,
               "missing return pointer span stops scalar pair before argument/type/arity stores");
        call.executor = 0x2cb9fc;
        const re::ReArray<GameDirectArgument, 1> one{Address(0x1111)};
        failed = false;
        {
            direct_detail::package(im, call, one, Address(0x8888));
        }
        expect(failed && im.read<Address>(c + 0x88) == 0x1111 && im.read<Address>(c + 0x80) == 1,
               "one-argument shared packer commits arity/argument before missing return-slot span");
    }
    {
        Fixture f;
        auto q = f.request();
        q.arguments[0] = 0x199000;
        q.first_vector = Vec3{1, 2, 3};
        q.second_vector = Vec3{4, 5, 6};
        q.scalar = 0.75f;
        const auto *s = direct_detail::spec(0x366ef0);
        f.put(s->context + 0x98, Address(0xaaaa));
        f.put(s->context + 0xa0, Address(0xbbbb));
        const auto r = f.run(s->wrapper, q);
        expect(r.status == GameBaseStatus::complete &&
                   f.calls[0].unmaterialized_argument_bytes[2] == 0xff &&
                   f.calls[0].unmaterialized_argument_bytes[3] == 0xff &&
                   f.calls[0].unmaterialized_argument_bytes[4] == 0xf0 &&
                   f.calls[0].unmaterialized_type_bytes == 0x10 &&
                   f.get<Address>(s->context + 0x98) == 0xaaaa &&
                   f.get<Address>(s->context + 0xa0) == 0xbbbb &&
                   re::re_get<Vec3>(f.arguments[0][2]).z == 3,
               "five-argument wrapper keeps typed vectors apart from absent raw pointer bits and "
               "fifth type byte");
    }
    {
        Fixture f;
        auto bound = bind_game_direct_movement(f.im, f.game, f.env, f.fx);
        const re::ReArray<MovementMainArgument, 3> args{Fixture::self, re::ReString("UnlockWithCode"),
                                                       re::ReString("1234")};
        bound.effect(0x366d7c, args);
        expect(f.strings == re::ReVector<re::ReString>{"UnlockWithCode", "1234"},
               "movement binding consumes owned strings in original order");
        auto projectile = bind_game_direct_projectile(f.im, f.game, f.env, f.fx);
        projectile.hit_374168(Fixture::self, 0x190000, {1, 2, 3}, {4, 5, 6});
        expect(
            f.calls.back().wrapper == 0x374168 &&
                f.calls.back().unmaterialized_argument_bytes[2] == 0xff &&
                re::re_get<Vec3>(f.arguments.back()[3]).z == 6,
            "projectile hit adapter preserves vector values without invented raw stack addresses");
    }
}
} // namespace rust_internal_re
