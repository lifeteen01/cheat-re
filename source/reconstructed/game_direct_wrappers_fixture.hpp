#pragma once
#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re::direct_test {
inline void expect(bool yes, const char *why) {
    if (!yes)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Snapshot im{0, re::ReVector<ReByte>(0x420000)};
    Snapshot game{0, re::ReVector<ReByte>(0x300000)};
    GameDirectEnvironment env;
    GameDirectEffects fx;
    re::ReVector<GameDirectCall> calls, observations;
    re::ReVector<re::ReVector<GameDirectArgument>> arguments;
    re::ReVector<re::ReString> strings;
    float scalar{0.5f};
    Address object{0x1b0000};
    ReU8 predicate{7};
    static constexpr Address self = 0x180000, output = 0x1f0000, temporary = 0x1f0100,
                             ret = 0x1f0200, literal = 0x1f0300, literal2 = 0x1f0400;
    template <class T> void put(Address p, T v) {
        expect(im.write(p, v), "fixture image write");
    }
    template <class T> void field(Address p, T v) {
        expect(game.write(p, v), "fixture game write");
    }
    template <class T> T get(Address p) {
        auto v = im.read<T>(p);
        expect(bool(v), "fixture image read");
        return *v;
    }
    template <class T> T read(Address p) {
        auto v = game.read<T>(p);
        expect(bool(v), "fixture game read");
        return *v;
    }
    void put_bytes(Address p, std::initializer_list<ReU8> v) {
        for (auto b : v)
            put(p++, b);
    }
    void capture(const GameDirectCall &c, re::ReSpan<const GameDirectArgument> a) {
        calls.push_back(c);
        re::ReVector<GameDirectArgument> v;
        v.reserve(a.size());
        for (ReUSize i = 0; i < a.size(); ++i) v.push_back(a[i]);
        arguments.push_back(re::re_move(v));
    }
    Fixture() {
        put(0x3d6f00, Address(0x700000000));
        put(0x3d5e60, Address(0xabc));
        put(0x3d5e70, 3u);
        put(0x3d5e68, Address(0x1234));
#include "game_direct_wrappers_literal_data.inc"
        field(self + 0x218, Address(0x1a0000));
        field(self + 0x304, 3.5f);
        fx.observe_context = [&](const auto &c) { observations.push_back(c); };
        fx.shared.string_new_2ce718 = [&](re::ReStringView s) {
            strings.emplace_back(s);
            return Address(0x1e0000 + strings.size() * 0x100);
        };
        fx.action = [&](const auto &c, auto a) { capture(c, a); };
        fx.object = [&](const auto &c, auto a) {
            capture(c, a);
            return object;
        };
        fx.scalar = [&](const auto &c, auto a) {
            capture(c, a);
            return scalar;
        };
        fx.predicate = [&](const auto &c, auto a) {
            capture(c, a);
            return predicate;
        };
        fx.orientation = [&](const auto &c, auto a) {
            capture(c, a);
            return Orientation{1, 2, 3, 4};
        };
    }
    GameDirectRequest request() {
        GameDirectRequest q;
        q.receiver = self;
        q.text[0] = re::ReString("first");
        q.text[1] = re::ReString("second");
        q.scalar = 0.25f;
        q.byte = 0x80;
        q.output_address = output;
        q.temporary_address = temporary;
        q.return_address = ret;
        q.string_return_address = ret + 8;
        q.literal_address = literal;
        q.second_literal_address = literal2;
        return q;
    }
    GameDirectResult run(Rva r, GameDirectRequest q) {
        return game_direct_wrapper(im, game, r, re::re_move(q), env, fx);
    }
    void selector(re::ReStringView name = "SomeCapsuleColliderClass") {
        field(self + 0x10, Address(0x190000));
        field(0x190020, Address(0x191000));
        field(0x191020, Address(0x192000));
        field(0x191030, 1u);
        field(0x192008, Address(0x193000));
        field(0x193018, Address(0x194000));
        field(0x194000, Address(0x195000));
        field(0x195000, Address(0x196000));
        field(0x196010, Address(0x197000));
        Address p = 0x197000;
        for (auto c : name)
            field(p++, c);
        field(p, char(0));
    }
};
} // namespace rust_internal_re::direct_test
