#include "unity_math_analysis.hpp"
namespace rust_internal_re {
namespace {
struct MathSpec {
    Rva wrapper, flags, target, context, flags_read, flag_one, target_read, flags_reload,
        target_store, warm_target, setup_root, flag_two, effect_root;
    std::string_view name, klass;
};
constexpr std::array<MathSpec, 3> specs{
    {{0x2dff68, 0x3d7a70, 0x3d7a68, 0x3d7a80, 0x2dff72, 0x2dff93, 0x2e0022, 0x2e0025, 0x2e002b,
      0x2e0034, 0x2e003f, 0x2e0053, 0x2e005e, "Cos", "Mathf"},
     {0x2e0198, 0x3d7980, 0x3d7978, 0x3d7990, 0x2e01a2, 0x2e01c3, 0x2e0252, 0x2e0255, 0x2e025b,
      0x2e0264, 0x2e026f, 0x2e0283, 0x2e028e, "Sin", "Mathf"},
     {0x2e3d5c, 0x3d77a0, 0x3d7798, 0x3d77b0, 0x2e3d6c, 0x2e3d95, 0x2e3e21, 0x2e3e24, 0x2e3e2a,
      0x2e3e33, 0x2e3e3e, 0x2e3e52, 0x2e3e5d, "Range", "Random"}}};
struct MathReplay {
    Snapshot &image;
    const UnityMathEnvironment &env;
    const UnityMathEffects &api;
    template <class T> T read(Address p, Rva site) {
        const auto v = image.read<T>(p);
        if (!v)
            throw SnapshotBindingFailure{GameBaseStatus::missing_bytes, site};
        return *v;
    }
    template <class T> void write(Address p, T value, Rva site) {
        if (!image.write(p, value))
            throw SnapshotBindingFailure{GameBaseStatus::missing_bytes, site};
    }
    void range(Address p, std::size_t size, Rva site) {
        if (!image.contains(p, size))
            throw SnapshotBindingFailure{GameBaseStatus::missing_bytes, site};
    }
    Address literal(std::string_view text, std::size_t offset, Rva site) {
        if (!env.literal_storage || offset > env.literal_capacity ||
            text.size() + 1 > env.literal_capacity - offset)
            throw SnapshotBindingFailure{GameBaseStatus::missing_bytes, site};
        for (std::size_t n = 0; n <= text.size(); ++n)
            write(env.literal_storage + offset + n, n == text.size() ? char(0) : text[n], site);
        return env.literal_storage + offset;
    }
    Address checked(MetadataResult result, Rva site) {
        if (result.status != MetadataStatus::complete)
            throw SnapshotBindingFailure{game_base_status(result.status), site};
        return result.value;
    }
    float call(const MathSpec &spec, float first, float second) {
        auto bits = read<std::uint32_t>(env.module + spec.flags, spec.flags_read);
        Address code;
        if (!(bits & 1)) {
            write(env.module + spec.flags, bits | 1, spec.flag_one);
            const auto empty = literal("", 0, spec.wrapper),
                       method = literal(spec.name, 32, spec.wrapper),
                       ns = literal("UnityEngine", 64, spec.wrapper),
                       name = literal(spec.klass, 96, spec.wrapper);
            const auto klass =
                checked(resolve_class_334224(api.metadata, name, ns, env.limits), 0x334224);
            const auto method_info =
                checked(select_parameter_method_3349ac(image, api.metadata, klass, method, -1,
                                                       empty, -1, env.limits),
                        0x3349ac);
            code = read<Address>(method_info, spec.target_read);
            bits = read<std::uint32_t>(env.module + spec.flags, spec.flags_reload);
            write(env.module + spec.target, code, spec.target_store);
        } else
            code = read<Address>(env.module + spec.target, spec.warm_target);
        UnityMathCall request{spec.wrapper, 0, code, env.module + spec.context};
        if (!(bits & 2)) {
            request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.setup_root);
            write(env.module + spec.flags, bits | 2, spec.flag_two);
            if (!api.observe_context)
                throw SnapshotBindingFailure{GameBaseStatus::missing_boundary, 0x2cbd24};
            api.observe_context(request);
        }
        /* mutation: retain setup root instead of reloading */
        const bool binary = spec.wrapper == 0x2e3d5c;
        // [C]2ddbf8 writes only each scalar's low32. Native slot high32, the
        // type-word high bytes and stack return-slot pointer cannot be invented.
        if (binary) {
            range(request.context + 0xd2, 2, 0x2dea0c);
            range(request.context + 0x78, 8, 0x2dea18);
        }
        range(request.context + 0x88, binary ? 16 : 8, binary ? 0x2dea1c : 0x2de99a);
        write(request.context + 0x88, first, binary ? 0x2dea1c : 0x2de99a);
        if (binary)
            write(request.context + 0x90, second, 0x2dea1c);
        if (binary)
            write(request.context + 0xd0, std::uint16_t(0x101), 0x2dea24);
        else {
            range(request.context + 0xd0, 4, 0x2de9aa);
            write(request.context + 0xd0, std::uint8_t(1), 0x2de9aa);
            range(request.context + 0x78, 8, 0x2de9b5);
        }
        write(request.context + 0x80, Address(binary ? 2 : 1), binary ? 0x2dea2d : 0x2de9b9);
        if (!api.evaluate)
            throw SnapshotBindingFailure{GameBaseStatus::missing_boundary, spec.wrapper};
        const std::array values{first, second};
        return api.evaluate(request, std::span<const float>(values).first(binary ? 2 : 1));
    }
};
float required_math(GameBaseResult<float> result) {
    if (result.status != GameBaseStatus::complete)
        throw SnapshotBindingFailure{result.status, result.site};
    return result.value;
}
} // namespace
GameBaseResult<float> unity_math_scalar(Snapshot &image, Rva wrapper, float first, float second,
                                        const UnityMathEnvironment &env,
                                        const UnityMathEffects &api) {
    try {
        const auto spec = std::find_if(specs.begin(), specs.end(),
                                       [&](const auto &s) { return s.wrapper == wrapper; });
        if (spec == specs.end())
            return {{}, GameBaseStatus::missing_boundary, wrapper};
        return {MathReplay{image, env, api}.call(*spec, first, second)};
    } catch (const SnapshotBindingFailure &e) {
        return {{}, e.status, e.site};
    } catch (const MetadataWrapperFailure &e) {
        return {{}, game_base_status(e.status), e.site};
    }
}
ProjectileLeafApi bind_projectile_random(Snapshot &image, const UnityMathEnvironment &env,
                                         const UnityMathEffects &api, ProjectileLeafApi out) {
    out.random_2e3d5c = [&image, env, api](float low, float high) {
        return required_math(unity_math_scalar(image, 0x2e3d5c, low, high, env, api));
    };
    return out;
}
InteractionCalls bind_interaction_random(Snapshot &image, const UnityMathEnvironment &env,
                                         const UnityMathEffects &api, InteractionCalls out) {
    const auto prior = out.scalar;
    out.scalar = [&image, env, api, prior](const InteractionCall &call) {
        if (call.rva == 0x2e3d5c)
            return required_math(
                unity_math_scalar(image, call.rva, call.scalar, call.scalar2, env, api));
        if (!prior)
            throw SnapshotBindingFailure{GameBaseStatus::missing_boundary, call.rva};
        return prior(call);
    };
    return out;
}
} // namespace rust_internal_re
