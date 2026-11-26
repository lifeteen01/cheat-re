#include "projectile_leaf_helpers.hpp"
namespace rust_internal_re {
namespace {
void leaf_check(bool p) {
    if (!p)
        { /* FREESTANDING_TODO: was throw runtime_error("projectile leaf fixture") */ }
}
struct LeafFixture {
    static constexpr Address b = 0x1000000, receiver = b + 0x1000, curve = b + 0x2000,
                             klass = b + 0x3000, method = b + 0x4000, name = b + 0x5000;
    Snapshot image{b, re::ReVector<ReByte>(0x420000)};
    ProjectileLeafEnvironment env{b, b + 0x410000, b + 0x6000, b + 0x6100};
    ProjectileLeafApi api;
    re::ReVector<re::ReString> order;
    float argument{};
    ReUSize randoms{}, effects{};
    template <class T> void put(Address p, T value) {
        leaf_check(image.write(p, value));
    }
    template <class T> T get(Address p) {
        const auto value = image.read<T>(p);
        leaf_check(bool(value));
        return *value;
    }
    LeafFixture() {
        put(receiver + 0x48, ReU8(0x80));
        put(receiver + 0x50, curve);
        put(b + 0x3d5e60, Address(0x111));
        put(b + 0x3d6f00, Address(0x8000000));
        put(method, Address(0x1230000));
        put(method + 0x18, name);
        constexpr re::ReStringView text = "Evaluate";
        for (ReUSize n = 0; n <= text.size(); ++n)
            put(name + n, n == text.size() ? char(0) : text[n]);
        api.metadata.domain_get_33479c = [] { return Address(1); };
        api.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
        api.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
        api.metadata.class_from_name_334528 = [&](Address, Address, Address) {
            order.push_back("resolve");
            return klass;
        };
        api.metadata.next_method_334660 = [](Address, Address &cursor) {
            return cursor++ ? Address(0) : method;
        };
        api.observe_context = [&](const ProjectileLeafCall &c) {
            order.push_back("setup");
            const Rva flags = c.wrapper == 0x3727e0   ? 0x400e20
                              : c.wrapper == 0x372954 ? 0x400f10
                                                      : 0x3f7bd0;
            leaf_check(get<ReU32>(b + flags) == 3);
            put(b + 0x3d5e60, Address(0x222));
        };
        api.random_2e3d5c = [&](float low, float high) {
            leaf_check(low == 0 && high == 1);
            ++randoms;
            order.push_back("random");
            put(b + 0x3d5e60, Address(0x333));
            return 0.25f;
        };
        api.evaluate = [&](const ProjectileLeafCall &c, Address p, float value) {
            order.push_back("eval");
            ++effects;
            argument = value;
            leaf_check(p == curve && c.target == 0x1230000 &&
                       c.dispatcher == get<Address>(b + 0x3d5e60));
            leaf_check(get<Address>(c.context + 0x88) == p &&
                       get<float>(c.context + 0x90) == value &&
                       get<ReU16>(c.context + 0xd0) == 0x100 &&
                       get<Address>(c.context + 0x80) == 2);
            return value * 2;
        };
        api.spread = [&](const ProjectileLeafCall &c, Address output, float spread,
                         Address direction, ReU8 flag) {
            ++effects;
            leaf_check(c.target == 0x8000000 + 0x36586b0 && c.dispatcher == 0x222 && flag == 0x80);
            leaf_check(get<Vec3>(output).x == 0 && get<Vec3>(output).z == 0);
            // [C] SG2: deterministic32b7a0 packaging precedes actual spread.
            leaf_check(get<ReU32>(c.context + 0xd0) == 0x100 &&
                       get<Address>(c.context + 0x80) == 4);
            leaf_check(get<Address>(c.context + 0x88) == output &&
                       get<float>(c.context + 0x90) == spread);
            leaf_check(get<Address>(c.context + 0x98) == direction &&
                       get<ReU8>(c.context + 0xa0) == flag);
            const auto input = get<Vec3>(direction);
            put(output, Vec3{input.x + spread, input.y, input.z});
        };
    }
};
} // namespace
void check_projectile_leaf_helpers() {
    {
        LeafFixture f;
        auto r = projectile_curve_3727e0(f.image, f.receiver, -2, 4, f.env, f.api);
        leaf_check(r.status == GameBaseStatus::complete && r.value == -1 && f.argument == -0.5f &&
                   f.randoms == 0);
        leaf_check(f.order == re::ReVector<re::ReString>({"resolve", "setup", "eval"}));
        f.order.clear();
        r = projectile_curve_3727e0(f.image, f.receiver, 1, 0, f.env, f.api);
        leaf_check(re::re_isinf(r.value) && f.order == re::ReVector<re::ReString>({"eval"}));
    }
    {
        LeafFixture f;
        auto r = projectile_curve_3727e0(f.image, f.receiver, -1, 1, f.env, f.api);
        leaf_check(r.value == 0.5f &&
                   f.order == re::ReVector<re::ReString>({"random", "resolve", "setup", "eval"}));
        f.put(f.receiver + 0x50, Address(0));
        f.order.clear();
        r = projectile_curve_3727e0(f.image, f.receiver, -1, 1, f.env, f.api);
        leaf_check(r.value == 1 && f.order == re::ReVector<re::ReString>({"random"}));
    }
    {
        LeafFixture f;
        auto r = projectile_curve_372954(f.image, f.receiver, f.env, f.api);
        leaf_check(r.value == 0.5f &&
                   f.order == re::ReVector<re::ReString>({"resolve", "setup", "random", "eval"}));
        f.put(f.receiver + 0x48, ReU8(0));
        f.order.clear();
        r = projectile_curve_372954(f.image, f.receiver, f.env, f.api);
        leaf_check(r.value == 1 && f.order.empty());
        f.put(f.receiver + 0x48, ReU8(1));
        f.put(f.b + 0x400f10, ReU32(0));
        f.api.metadata = {};
        r = projectile_curve_372954(f.image, f.receiver, f.env, f.api);
        leaf_check(r.status == GameBaseStatus::missing_boundary && f.order.empty() &&
                   f.get<ReU32>(f.b + 0x400f10) == 1);
    }
    {
        LeafFixture f;
        const auto out = f.env.spread_output;
        const Address context = f.b + 0x3f7be0;
        for (Address i = 0; i < 0xe0; ++i)
            f.put(context + i, ReU8(0xa5));
        f.put(out, Vec3{1, 2, 3});
        f.put(f.env.spread_direction, Vec3{4, 5, 6});
        const auto r =
            projectile_spread_32bd4c(f.image, out, 2, f.env.spread_direction, 0x80, f.env, f.api);
        leaf_check(r.status == GameBaseStatus::complete && r.value == out &&
                   f.get<Vec3>(out).x == 6);
        leaf_check(f.get<ReU32>(context + 0x94) == 0xa5a5a5a5u &&
                   f.get<ReU8>(context + 0xa1) == 0xa5);
        leaf_check(f.get<Address>(context + 0x78) == 0xa5a5a5a5a5a5a5a5ULL);
        // [C] Native output clearing occurs before the effect reads aliased direction.
        const auto alias = projectile_spread_32bd4c(f.image, out, 2, out, 0x80, f.env, f.api);
        leaf_check(alias.status == GameBaseStatus::complete && f.get<Vec3>(out).x == 2 &&
                   f.get<Vec3>(out).y == 0);
        const auto partial = f.b + f.image.size() - 8;
        f.put(partial, ReU64(0xffffffffffffffff));
        const auto calls = f.effects;
        const auto stopped = projectile_spread_32bd4c(f.image, partial, 2, out, 0x80, f.env, f.api);
        leaf_check(stopped.status == GameBaseStatus::missing_bytes &&
                   f.get<ReU64>(partial) == 0 && f.effects == calls);
    }
    {
        LeafFixture f;
        const auto bound = bind_projectile_leaf_helpers(f.image, f.env, f.api);
        leaf_check(bound.scalar(0x3727e0, f.receiver, 1, 2) == 1);
        bool stopped = false;
        {
            (void)bound.scalar(0x1234, 0, 0, 0);
        }
        leaf_check(stopped);
    }
    {
        // [C] SG3: omitted unknown D2 bytes still precede known arguments.
        constexpr Address context = 0x400e30, p = 0x3e0000;
        Snapshot image(0x3d0000, re::ReVector<ReByte>(context + 0x98 - 0x3d0000));
        leaf_check(image.write(0x3d5e60, Address(9)) && image.write(p + 0x50, Address(p + 0x100)));
        leaf_check(image.write(0x400e20, ReU32(3)) && image.write(0x400e18, Address(77)));
        leaf_check(image.write(context + 0x88, Address(0xaaaaaaaaaaaaaaaaULL)) &&
                   image.write(context + 0x90, ReU32(0xbbbbbbbb)));
        const auto r = projectile_curve_3727e0(image, p, 1, 2, {}, {});
        leaf_check(r.status == GameBaseStatus::missing_bytes && r.site == 0x32b760);
        leaf_check(image.read<Address>(context + 0x88) == 0xaaaaaaaaaaaaaaaaULL &&
                   image.read<ReU32>(context + 0x90) == 0xbbbbbbbb);
    }
    {
        constexpr Address b = LeafFixture::b, p = b + 0x400000;
        Snapshot narrow(p, re::ReVector<ReByte>(0x1000));
        leaf_check(narrow.write(p + 0x50, Address(p + 0x100)) &&
                   narrow.write(b + 0x400e20, ReU32(3)) &&
                   narrow.write(b + 0x400e18, Address(7)));
        leaf_check(narrow.write(b + 0x400e30 + 0x90, ReU32(0xdeadbeef)));
        ProjectileLeafEnvironment env{};
        env.module = b;
        const auto r = projectile_curve_3727e0(narrow, p, 1, 2, env, {});
        leaf_check(r.status == GameBaseStatus::missing_bytes && r.site == 0x372922 &&
                   narrow.read<ReU32>(b + 0x400e30 + 0x90) == 0xdeadbeef);
    }
}
} // namespace rust_internal_re
