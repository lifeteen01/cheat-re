#include "unity_math_analysis.hpp"
namespace rust_internal_re {
namespace {
void math_expect(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("Unity math cache fixture") */ }
}
struct MathFixture {
    static constexpr Address b = 0x1000000, klass = b + 0x1000, method = b + 0x2000,
                             name = b + 0x3000;
    Snapshot image{b, re::ReVector<ReByte>(0x410000)};
    UnityMathEnvironment env{b, b + 0x408000};
    UnityMathEffects api;
    re::ReString selected = "Range";
    re::ReVector<re::ReString> order;
    re::ReVector<float> values;
    int resolves{};
    template <class T> void put(Address p, T v) {
        math_expect(image.write(p, v));
    }
    template <class T> T get(Address p) {
        auto v = image.read<T>(p);
        math_expect(bool(v));
        return *v;
    }
    re::ReString text(Address p) {
        re::ReString s;
        for (int n = 0; n < 100; ++n) {
            auto c = get<char>(p + ReU32(n));
            if (!c)
                return s;
            s += c;
        }
        { __builtin_trap(); }
        return {};
    }
    void select(re::ReString s) {
        selected = re::re_move(s);
        for (ReUSize i = 0; i <= selected.size(); ++i)
            put(name + i, i == selected.size() ? char(0) : selected[i]);
    }
    MathFixture() {
        put(method, Address(0x1234567));
        put(method + 0x18, name);
        put(b + 0x3d5e60, Address(11));
        select("Range");
        api.metadata.domain_get_33479c = []() { return Address(1); };
        api.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
        api.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
        api.metadata.class_from_name_334528 = [&](Address, Address ns, Address cl) {
            ++resolves;
            order.push_back("metadata");
            math_expect(text(ns) == "UnityEngine" &&
                        text(cl) == (selected == "Range" ? "Random" : "Mathf"));
            return klass;
        };
        api.metadata.next_method_334660 = [](Address, Address &cursor) {
            return cursor++ ? Address(0) : method;
        };
        api.observe_context = [&](const UnityMathCall &c) {
            order.push_back("context");
            math_expect(c.dispatcher == 11 && c.target == 0x1234567);
            put(b + 0x3d5e60, Address(22));
        };
        api.evaluate = [&](const UnityMathCall &c, re::ReSpan<const float> v) {
            order.push_back("effect");
            values.assign(v.begin(), v.end());
            math_expect(c.dispatcher == get<Address>(b + 0x3d5e60));
            math_expect(get<float>(c.context + 0x88) == v[0] &&
                        get<Address>(c.context + 0x80) == v.size());
            if (v.size() == 2)
                math_expect(get<float>(c.context + 0x90) == v[1] &&
                            get<ReU16>(c.context + 0xd0) == 0x101);
            else
                math_expect(get<ReU8>(c.context + 0xd0) == 1);
            return re::re_bit_cast<float>(ReU32(0x7fc12345));
        };
    }
};
} // namespace
void check_unity_math_reconstruction() {
    {
        MathFixture f;
        const auto bound = bind_projectile_random(f.image, f.env, f.api);
        math_expect(re::re_bit_cast<ReU32>(bound.random_2e3d5c(-2, 7)) == 0x7fc12345);
        math_expect(f.order == re::ReVector<re::ReString>({"metadata", "context", "effect"}) &&
                    f.values == re::ReVector<float>({-2, 7}));
        math_expect(f.get<ReU32>(f.b + 0x3d77a0) == 3 &&
                    f.get<Address>(f.b + 0x3d7798) == 0x1234567);
        f.order.clear();
        f.put(f.b + 0x3d5e60, Address(33));
        InteractionCall call{0x2e3d5c};
        call.scalar = 0;
        call.scalar2 = 100;
        (void)bind_interaction_random(f.image, f.env, f.api).scalar(call);
        math_expect(f.order == re::ReVector<re::ReString>({"effect"}) && f.resolves == 1 &&
                    f.values[1] == 100);
    }
    {
        const re::ReArray<re::ReTuple<Rva, re::ReStringView, Rva>, 2> _tbl{
             {{0x2e0198, "Sin", 0x3d7980}, {0x2dff68, "Cos", 0x3d7a70}}};
        for (const auto &entry : _tbl) {
        auto wrapper = re::re_get<0>(entry);
        auto name = re::re_get<1>(entry);
        auto flags = re::re_get<2>(entry);
        MathFixture f;
        f.select(re::ReString(name));
        const auto result = unity_math_scalar(f.image, wrapper, -0.0f, 999, f.env, f.api);
        math_expect(result.status == GameBaseStatus::complete &&
                    re::re_bit_cast<ReU32>(result.value) == 0x7fc12345);
        math_expect(f.order == re::ReVector<re::ReString>({"metadata", "context", "effect"}) &&
                    f.values.size() == 1 && re::re_signbit(f.values[0]));
        math_expect(f.get<ReU32>(f.b + flags) == 3);
    }
    }
    {
        MathFixture f;
        f.api.metadata = {};
        const auto result = unity_math_scalar(f.image, 0x2e3d5c, 0, 1, f.env, f.api);
        math_expect(result.status == GameBaseStatus::missing_boundary && f.order.empty() &&
                    f.get<ReU32>(f.b + 0x3d77a0) == 1);
    }
    {
        constexpr Address b = MathFixture::b, start = b + 0x3d7700;
        Snapshot narrow(start, re::ReVector<ReByte>(0x500));
        UnityMathEnvironment env{b};
        math_expect(narrow.write(b + 0x3d77a0, ReU32(1)) &&
                    narrow.write(b + 0x3d7798, Address(7)));
        const auto context = b + 0x3d77b0;
        math_expect(narrow.write(context + 0x88, ReU64(0x1122334455667788)));
        auto result = unity_math_scalar(narrow, 0x2e3d5c, 0, 1, env, {});
        math_expect(result.status == GameBaseStatus::missing_bytes && result.site == 0x2e3e3e &&
                    narrow.read<ReU32>(b + 0x3d77a0) == 1);
        math_expect(narrow.write(b + 0x3d77a0, ReU32(3)));
        result = unity_math_scalar(narrow, 0x2e3d5c, 0, 1, env, {});
        math_expect(result.status == GameBaseStatus::missing_bytes && result.site == 0x2e3e5d &&
                    narrow.read<ReU64>(context + 0x88) == 0x1122334455667788);
    }
    {
        MathFixture f;
        f.api.observe_context = [](const auto &) {
            __builtin_trap();
        };
        const auto result = unity_math_scalar(f.image, 0x2e3d5c, 0, 1, f.env, f.api);
        math_expect(result.status == GameBaseStatus::missing_boundary &&
                    f.get<ReU32>(f.b + 0x3d77a0) == 3 &&
                    f.order == re::ReVector<re::ReString>({"metadata"}));
    }
    {
        constexpr Address b = MathFixture::b, context = b + 0x3d7990;
        Snapshot narrow(b, re::ReVector<ReByte>(0x3d7990 + 0x8c));
        math_expect(narrow.write(b + 0x3d7980, ReU32(3)) &&
                    narrow.write(b + 0x3d7978, Address(7)) &&
                    narrow.write(b + 0x3d5e60, Address(11)) &&
                    narrow.write(context + 0x88, ReU32(0x11223344)));
        const auto result = unity_math_scalar(narrow, 0x2e0198, 1, 0, {b}, {});
        math_expect(result.status == GameBaseStatus::missing_bytes && result.site == 0x2de99a &&
                    narrow.read<ReU32>(context + 0x88) == 0x11223344);
    }
    {
        constexpr Address b = MathFixture::b, context = b + 0x3d77b0;
        Snapshot narrow(b, re::ReVector<ReByte>(0x3d77b0 + 0xd2));
        math_expect(narrow.write(b + 0x3d77a0, ReU32(3)) &&
                    narrow.write(b + 0x3d7798, Address(7)) &&
                    narrow.write(b + 0x3d5e60, Address(11)) &&
                    narrow.write(context + 0x88, ReU64(0x1122334455667788)));
        const auto result = unity_math_scalar(narrow, 0x2e3d5c, 1, 2, {b}, {});
        math_expect(result.status == GameBaseStatus::missing_bytes && result.site == 0x2dea0c &&
                    narrow.read<ReU64>(context + 0x88) == 0x1122334455667788);
    }
    {
        MathFixture f;
        auto resolve = f.api.metadata.class_from_name_334528;
        f.api.metadata.class_from_name_334528 = [&](Address i, Address ns, Address cl) {
            f.put(f.b + 0x3d77a0, ReU32(2));
            return resolve(i, ns, cl);
        };
        const auto result = unity_math_scalar(f.image, 0x2e3d5c, 0, 1, f.env, f.api);
        math_expect(result.status == GameBaseStatus::complete &&
                    f.order == re::ReVector<re::ReString>({"metadata", "effect"}) &&
                    f.get<ReU32>(f.b + 0x3d77a0) == 2);
    }
}
} // namespace rust_internal_re
