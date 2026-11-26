#include "unity_math_analysis.hpp"
namespace rust_internal_re {
namespace {
struct MathSpec {
    Rva wrapper, flags, target, context, flags_read, flag_one, target_read, flags_reload,
        target_store, warm_target, setup_root, flag_two, effect_root;
    re::ReStringView name, klass;
};
constexpr re::ReArray<MathSpec, 3> specs{
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
            __builtin_trap();
        return *v;
    }
    template <class T> void write(Address p, T value, Rva site) {
        if (!image.write(p, value))
            __builtin_trap();
    }
    void range(Address p, ReUSize size, Rva site) {
        if (!image.contains(p, size))
            __builtin_trap();
    }
    Address literal(re::ReStringView text, ReUSize offset, Rva site) {
        if (!env.literal_storage || offset > env.literal_capacity ||
            text.size() + 1 > env.literal_capacity - offset)
            __builtin_trap();
        for (ReUSize n = 0; n <= text.size(); ++n)
            write(env.literal_storage + offset + n, n == text.size() ? char(0) : text[n], site);
        return env.literal_storage + offset;
    }
    Address checked(MetadataResult result, Rva site) {
        if (result.status != MetadataStatus::complete)
            __builtin_trap();
        return result.value;
    }
    float call(const MathSpec &spec, float first, float second) {
        auto bits = read<ReU32>(env.module + spec.flags, spec.flags_read);
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
            bits = read<ReU32>(env.module + spec.flags, spec.flags_reload);
            write(env.module + spec.target, code, spec.target_store);
        } else
            code = read<Address>(env.module + spec.target, spec.warm_target);
        UnityMathCall request{spec.wrapper, 0, code, env.module + spec.context};
        if (!(bits & 2)) {
            request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.setup_root);
            write(env.module + spec.flags, bits | 2, spec.flag_two);
            if (!api.observe_context)
                __builtin_trap();
            api.observe_context(request);
        }
        request.dispatcher = read<Address>(env.module + 0x3d5e60, spec.effect_root);
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
            write(request.context + 0xd0, ReU16(0x101), 0x2dea24);
        else {
            range(request.context + 0xd0, 4, 0x2de9aa);
            write(request.context + 0xd0, ReU8(1), 0x2de9aa);
            range(request.context + 0x78, 8, 0x2de9b5);
        }
        write(request.context + 0x80, Address(binary ? 2 : 1), binary ? 0x2dea2d : 0x2de9b9);
        if (!api.evaluate)
            __builtin_trap();
        const re::ReArray<float, 2> values{first, second};
        return api.evaluate(request, re::ReSpan<const float>(values).subspan(0, binary ? 2 : 1));
    }
};
float required_math(GameBaseResult<float> result) {
    if (result.status != GameBaseStatus::complete)
        __builtin_trap();
    return result.value;
}
} // namespace
GameBaseResult<float> unity_math_scalar(Snapshot &image, Rva wrapper, float first, float second,
                                        const UnityMathEnvironment &env,
                                        const UnityMathEffects &api) {
    {
        const auto spec = re::re_find_if(specs.begin(), specs.end(),
                                       [&](const auto &s) { return s.wrapper == wrapper; });
        if (!spec)
            return {{}, GameBaseStatus::missing_boundary, wrapper};
        return {MathReplay{image, env, api}.call(*spec, first, second)};
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
            __builtin_trap();
        return prior(call);
    };
    return out;
}
namespace {
// [C] Common XOR decode kernel for obfuscated string literals.
// [C] Key for byte i: ((i % 52) + 0x37), where modulo uses magic-constant 0x4ec4ec4f division.
// [I] For loop counts < 52 the modulo is identity and key simplifies to i + 0x37.
inline void xor_decode_kernel(ReByte* output, const ReByte* input, ReI32 count) {
    for (ReI32 i = 0; i < count; ++i) {
        // [C] mul 0x4ec4ec4f; shr edx,4 — compiler-generated unsigned division by 52
        const ReU32 high = static_cast<ReU32>(
            (static_cast<ReU64>(0x4ec4ec4f) * static_cast<ReU32>(i)) >> 32);
        const ReU8 quotient = static_cast<ReU8>(high >> 4);
        // [C] movsx eax,dl; imul edx,eax,0x34 — remainder = i - (i/52)*52
        const ReU8 product = static_cast<ReU8>(static_cast<ReI8>(quotient) * 0x34);
        const ReU8 remainder = static_cast<ReU8>(i) - product;
        // [C] add al,0x37; xor al,[r10+r9]
        output[i] = static_cast<ReByte>((remainder + 0x37) ^ input[i]);
    }
}
} // namespace

// [C] 0x2dcfd4..0x2dd003: 4-byte XOR string literal decode.
void string_xor_decode_4_2dcfd4(ReByte* output, const ReByte* input) {
    xor_decode_kernel(output, input, 4);
}

// [C] 0x2dd004..0x2dd033: 7-byte XOR string literal decode.
void string_xor_decode_7_2dd004(ReByte* output, const ReByte* input) {
    xor_decode_kernel(output, input, 7);
}

// [C] 0x2d8114..0x2d8143: 6-byte XOR string literal decode.
void string_xor_decode_6_2d8114(ReByte* output, const ReByte* input) {
    xor_decode_kernel(output, input, 6);
}

// [C] 0x2de9d4..0x2dea47: Two-float math gate context packer.
// [C] Calls 0x2ddbf8 for float-to-slot conversion, populates context fields,
// [C] then invokes gate 0x3cdbd4 and tail-calls epilog 0x3cdbb0.
// [I] Observable stores are replayed; the gate call and native stack values
// [I] (context+0x78 return-slot pointer, context+0xd2 type-word high bytes) are not materialized.
// [I] The higher-level MathReplay::call in unity_math_scalar already replays this path.
void unity_math_pack_binary_2de9d4(Snapshot& snap, Address context, float first, float second) {
    // [C] 0x2dea1c: movdqu [rbx+0x88], xmm0 — 16-byte store of both converted float slots
    snap.write(context + 0x88, first);
    snap.write(context + 0x8c, ReU32(0));  // [I] high 4 bytes of first slot from 0x2ddbf8
    snap.write(context + 0x90, second);
    snap.write(context + 0x94, ReU32(0));  // [I] high 4 bytes of second slot from 0x2ddbf8
    // [C] 0x2dea24: mov WORD PTR [rbx+0xd0], 0x101
    snap.write(context + 0xd0, ReU16(0x101));
    // [C] 0x2dea2d: mov QWORD PTR [rbx+0x80], 0x2 — argument count
    snap.write(context + 0x80, Address(2));
    // [U] 0x2dea18: mov [rbx+0x78], rax — stack return-slot pointer (lea rax,[rsp+0x48]),
    //     not materializable offline.
    // [U] 0x2dea0c: mov [rbx+0xd2], ax — 2 bytes from [rsp+0x5a] (caller shadow space),
    //     native stack state not materializable.
}
} // namespace rust_internal_re
