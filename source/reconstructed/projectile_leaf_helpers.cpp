#include "projectile_leaf_helpers.hpp"
namespace rust_internal_re {
namespace {
struct Leaf {
    Snapshot &image;
    const ProjectileLeafEnvironment &env;
    const ProjectileLeafApi &api;
    template <class T> T read(Address p, Rva r) {
        const auto v = image.read<T>(p);
        if (!v)
            __builtin_trap();
        return *v;
    }
    template <class T> void write(Address p, T v, Rva r) {
        if (!image.write(p, v))
            __builtin_trap();
    }
    void range(Address p, ReUSize size, Rva r) {
        if (!image.contains(p, size))
            __builtin_trap();
    }
    template <class F> const F &need(const F &f, Rva r) {
        if (!f)
            __builtin_trap();
        return f;
    }
    Address literal(re::ReStringView text, ReUSize offset, Rva r) {
        if (!env.literal_storage || offset > env.literal_capacity ||
            text.size() + 1 > env.literal_capacity - offset)
            __builtin_trap();
        for (ReUSize n = 0; n <= text.size(); ++n)
            write(env.literal_storage + offset + n, n == text.size() ? char(0) : text[n], r);
        return env.literal_storage + offset;
    }
    Address checked(MetadataResult r, Rva site) {
        if (r.status != MetadataStatus::complete)
            __builtin_trap();
        return r.value;
    }
    ProjectileLeafCall curve_cache(Rva wrapper) {
        const bool first = wrapper == 0x3727e0;
        const Rva flags = first ? 0x400e20 : 0x400f10, target = first ? 0x400e18 : 0x400f08,
                  context = first ? 0x400e30 : 0x400f20;
        auto bits = read<ReU32>(env.module + flags, first ? 0x37283f : 0x37298e);
        Address code;
        if (!(bits & 1)) {
            write(env.module + flags, bits | 1, first ? 0x372860 : 0x3729af);
            const auto empty = literal("", 0, wrapper), method = literal("Evaluate", 64, wrapper),
                       ns = literal("UnityEngine", 128, wrapper),
                       name = literal("AnimationCurve", 192, wrapper);
            const auto klass =
                checked(resolve_class_334224(api.metadata, name, ns, env.limits), 0x334224);
            const auto selected =
                checked(select_parameter_method_3349ac(image, api.metadata, klass, method, -1,
                                                       empty, -1, env.limits),
                        0x3349ac);
            code = read<Address>(selected, first ? 0x3728e6 : 0x372a3b);
            bits = read<ReU32>(env.module + flags, first ? 0x3728e9 : 0x372a3e);
            write(env.module + target, code, first ? 0x3728ef : 0x372a44);
        } else
            code = read<Address>(env.module + target, first ? 0x3728f8 : 0x372a4d);
        if (!(bits & 2)) {
            const auto root = read<Address>(env.module + 0x3d5e60, first ? 0x372903 : 0x372a58);
            write(env.module + flags, bits | 2, first ? 0x372917 : 0x372a6c);
            need(api.observe_context, 0x2cbd24)({wrapper, root, code, env.module + context});
        }
        return {wrapper, 0, code, env.module + context};
    }
    float evaluate(ProjectileLeafCall call, Address receiver, float arg, Rva tail) {
        call.dispatcher = read<Address>(env.module + 0x3d5e60, tail);
        // [C] Known32b728 stores. Unknown stack/home bytes and return-slot address
        // remain unmaterialized; numeric context/executor are never invoked.
        // [C] Unknown home/return-slot stores still require their full native spans
        // before later known fields mutate. Unknown bits stay unmaterialized.
        range(call.context + 0xd2, 2, 0x32b760);
        range(call.context + 0x78, 8, 0x32b76c);
        range(call.context + 0x88, 16, 0x32b770);
        write(call.context + 0x88, receiver, 0x32b770);
        write(call.context + 0x90, arg, 0x32b770);
        write(call.context + 0xd0, ReU16(0x100), 0x32b778);
        write(call.context + 0x80, Address(2), 0x32b781);
        return need(api.evaluate, 0x32b728)(call, receiver, arg);
    }
};
template <class T, class F> GameBaseResult<T> leaf_result(F &&f) {
    {
        return {f()};
    }
}
template <class T> T bound_value(GameBaseResult<T> result) {
    if (result.status != GameBaseStatus::complete)
        __builtin_trap();
    return result.value;
}
} // namespace
GameBaseResult<float> projectile_curve_3727e0(Snapshot &im, Address receiver, ReI32 index,
                                              ReI32 count,
                                              const ProjectileLeafEnvironment &env,
                                              const ProjectileLeafApi &api) {
    return leaf_result<float>([&] {
        Leaf x{im, env, api};
        if (!sample_pointer_range(receiver))
            return 1.0f;
        // [C] Signed conversion; -1 samples BEFORE curve-pointer validation/cache.
        const float arg =
            index == -1 ? x.need(api.random_2e3d5c, 0x2e3d5c)(0, 1) : float(index) / float(count);
        const auto curve = x.read<Address>(receiver + 0x50, 0x37282b);
        if (!sample_pointer_range(curve))
            return 1.0f;
        return x.evaluate(x.curve_cache(0x3727e0), curve, arg, 0x372922);
    });
}
GameBaseResult<float> projectile_curve_372954(Snapshot &im, Address receiver,
                                              const ProjectileLeafEnvironment &env,
                                              const ProjectileLeafApi &api) {
    return leaf_result<float>([&] {
        Leaf x{im, env, api};
        if (!sample_pointer_range(receiver))
            return 1.0f;
        if (!x.read<ReU8>(receiver + 0x48, 0x372970))
            return 1.0f;
        const auto curve = x.read<Address>(receiver + 0x50, 0x37297a);
        if (!sample_pointer_range(curve))
            return 1.0f;
        const auto call = x.curve_cache(0x372954);
        const float arg = x.need(api.random_2e3d5c, 0x2e3d5c)(0, 1);
        return x.evaluate(call, curve, arg, 0x372a87);
    });
}
GameBaseResult<Address> projectile_spread_32bd4c(Snapshot &im, Address output, float spread,
                                                 Address direction, ReU8 flag,
                                                 const ProjectileLeafEnvironment &env,
                                                 const ProjectileLeafApi &api) {
    return leaf_result<Address>([&] {
        Leaf x{im, env, api};
        auto bits = x.read<ReU32>(env.module + 0x3f7bd0, 0x32bd5b);
        Address code;
        if (!(bits & 1)) {
            code = x.read<Address>(env.module + 0x3d6f00, 0x32bd77) + 0x36586b0;
            x.write(env.module + 0x3f7bd0, bits | 1, 0x32bd88);
            x.write(env.module + 0x3f7bc8, code, 0x32bd8e);
            bits |= 1;
        } else
            code = x.read<Address>(env.module + 0x3f7bc8, 0x32bd97);
        if (!(bits & 2)) {
            const auto root = x.read<Address>(env.module + 0x3d5e60, 0x32bda3);
            x.write(env.module + 0x3f7bd0, bits | 2, 0x32bdad);
            x.need(api.observe_context, 0x2cbd24)({0x32bd4c, root, code, env.module + 0x3f7be0});
        }
        // [C]3c7bbc zeroes XY qword then Z DWORD before the root reload/effect.
        x.write(output, ReU64(0), 0x3c7bbc);
        x.write(output + 8, ReU32(0), 0x3c7bbc);
        const auto root = x.read<Address>(env.module + 0x3d5e60, 0x32bdca);
        const Address context = env.module + 0x3f7be0;
        // [C]32b7a0 deterministic fields, in native store order. The complete
        //16-byte source slots include unknown high bits; validate spans only.
        x.write(context + 0xd0, ReU32(0x100), 0x32b800);
        x.range(context + 0x88, 16, 0x32b80a);
        x.write(context + 0x88, output, 0x32b80a);
        x.write(context + 0x90, spread, 0x32b80a);
        x.write(context + 0x80, Address(4), 0x32b811);
        x.range(context + 0x98, 16, 0x32b81c);
        x.write(context + 0x98, direction, 0x32b81c);
        x.write(context + 0xa0, flag, 0x32b81c);
        x.range(context + 0x78, 8, 0x32b823);
        x.need(api.spread, 0x32b7a0)({0x32bd4c, root, code, context}, output, spread, direction,
                                     flag);
        return output;
    });
}
ProjectileBoundaries bind_projectile_leaf_helpers(Snapshot &im,
                                                  const ProjectileLeafEnvironment &env,
                                                  const ProjectileLeafApi &api,
                                                  ProjectileBoundaries out) {
    const auto prior = out.scalar;
    out.scalar = [&im, env, api, prior](Rva r, Address p, ReI32 n, ReI32 count) {
        if (r == 0x3727e0)
            return bound_value(projectile_curve_3727e0(im, p, n, count, env, api));
        if (r == 0x372954)
            return bound_value(projectile_curve_372954(im, p, env, api));
        if (!prior)
            __builtin_trap();
        return prior(r, p, n, count);
    };
    out.spread_32bd4c = [&im, env, api](float spread, Vec3 direction, bool flag) {
        if (!env.spread_output || !env.spread_direction)
            __builtin_trap();
        if (!im.write(env.spread_direction, direction))
            __builtin_trap();
        const auto result = bound_value(projectile_spread_32bd4c(
            im, env.spread_output, spread, env.spread_direction, ReU8(flag), env, api));
        const auto value = im.read<Vec3>(result);
        if (!value)
            __builtin_trap();
        return *value;
    };
    return out;
}
} // namespace rust_internal_re
