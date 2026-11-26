#include "game_aux_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    GameBaseStatus status;
    Rva site;
};
template <class T> T read(const Snapshot &im, Address p, Rva at) {
    const auto v = im.read<T>(p);
    if (!v)
        __builtin_trap();
    return *v;
}
template <class T> void write(Snapshot &im, Address p, T value, Rva at) {
    if (!im.write(p, value))
        __builtin_trap();
}
template <class T, class F> GameBaseResult<T> protect(F f) {
    {
        return {f()};
    }
}
const GameAuxVectorSpec &vector_spec(Rva r) {
    for (const auto &s : game_aux_vector_specs())
        if (s.getter == r)
            return s;
    __builtin_trap();
}
struct StaticSpec {
    Rva r;
    ReU32 offset;
    re::ReOptional<ReU32> final;
};
const StaticSpec statics[] = {{0x315a24, 0xf0c8518, {}},
                                  {0x32957c, 0xf0e86e8, 0x28},
                                  {0x329714, 0xf0a3650, 0x20},
                                  {0x329a38, 0xf0083d0, {}}};
} // namespace
re::ReSpan<const GameAuxVectorSpec> game_aux_vector_specs() {
    static constexpr GameAuxVectorSpec specs[] = {
        {0x3740e0, 0x374123, 0x178}, {0x374124, 0x374167, 0x16c}, {0x3743f8, 0x37443b, 0x338}};
    return specs;
}
// [C] Three whole guarded getter bodies;3c7bbc concretely clears output on invalid receiver.
GameBaseResult<Address> game_aux_vector_into(Snapshot &im, Rva r, Address receiver,
                                             Address output) {
    return protect<Address>([&] {
        const auto &s = vector_spec(r);
        if (!sample_pointer_range(receiver)) {
            write(im, output, ReU64(0), 0x3c7bbe);
            write(im, output + 8, 0u, 0x3c7bc1);
            return output;
        }
        const auto q = read<ReU64>(im, receiver + s.offset, r + 0x2c);
        write(im, output, q, r + 0x30);
        const auto d = read<ReU32>(im, receiver + s.offset + 8, r + 0x34);
        write(im, output + 8, d, r + 0x37);
        return output;
    });
}
// [I] Typed value projection for existing domain callbacks; no output alias is present.
GameBaseResult<Vec3> game_aux_vector(const Snapshot &im, Rva r, Address receiver) {
    return protect<Vec3>([&] {
        const auto &s = vector_spec(r);
        if (!sample_pointer_range(receiver))
            return Vec3{};
        re::ReArray<ReU32, 3> words{};
        const auto q = read<ReU64>(im, receiver + s.offset, r + 0x2c);
        words[0] = ReU32(q);
        words[1] = ReU32(q >> 32);
        words[2] = read<ReU32>(im, receiver + s.offset + 8, r + 0x34);
        return re::re_bit_cast<Vec3>(words);
    });
}
// [C]37628c..3762ac has exactly one numeric receiver guard, then QWORD+200.
GameBaseResult<Address> game_aux_pointer_37628c(const Snapshot &im, Address p) {
    return protect<Address>([&] {
        return sample_pointer_range(p) ? read<Address>(im, p + 0x200, 0x3762a0) : Address(0);
    });
}
// [C]315a24/32957c/329714/329a38 literal GameAssembly static chains.
GameBaseResult<Address> game_aux_static_pointer(const Snapshot &globals, const Snapshot &game,
                                                Rva r, const GameAuxEnvironment &env) {
    return protect<Address>([&] {
        const StaticSpec *spec = nullptr;
        for (const auto &s : statics)
            if (s.r == r) {
                spec = &s;
                break;
            }
        if (!spec)
            __builtin_trap();
        const auto base = read<Address>(globals, env.module + 0x3d6f00, r + 4);
        const auto klass = read<Address>(game, base + spec->offset, r + 0xb);
        if (!sample_pointer_range(klass))
            return Address(0);
        const auto fields = read<Address>(game, klass + 0xb8, r + (spec->final ? 0x1e : 0x22));
        if (!spec->final)
            return fields;
        if (!sample_pointer_range(fields))
            return Address(0);
        return read<Address>(game, fields + *spec->final, r + 0x31);
    });
}
// [C]374268..3742ac composes existing float getters, with COMISS/JBE rejectingNaN.
GameBaseResult<bool> game_aux_predicate_374268(const Snapshot &globals, const Snapshot &game,
                                               Address p, const GameAuxEnvironment &env) {
    return protect<bool>([&] {
        if (!sample_pointer_range(p))
            return false;
        const auto first = read_scalar_getter(game, 0x37423c, p);
        if (first.status != GameBaseStatus::complete)
            __builtin_trap();
        const auto zero = read<float>(globals, env.module + 0x28d24c, 0x374282);
        if (!(first.value > zero))
            return false;
        const auto second = read_scalar_getter(game, 0x374300, p);
        if (second.status != GameBaseStatus::complete)
            __builtin_trap();
        const auto threshold = read<float>(globals, env.module + 0x2a8ecc, 0x374293);
        return threshold > second.value;
    });
}
// [C]36ad68/36ae90 preserve unrelated DWORD+708 bits;372c1c ORs DWORD+24.
GameBaseResult<bool> game_aux_write(Snapshot &game, Rva r, Address p, ReU32 bits) {
    return protect<bool>([&] {
        if (r != 0x36ad68 && r != 0x36ae90 && r != 0x372c1c)
            __builtin_trap();
        if (!sample_pointer_range(p))
            return false;
        if (r == 0x372c1c) {
            const auto value = read<ReU32>(game, p + 0x24, 0x372c2c);
            write(game, p + 0x24, value | bits, 0x372c2c);
        } else {
            const auto mask = r == 0x36ad68 ? 4u : 0x20u;
            const auto value = read<ReU32>(game, p + 0x708, r + 0x10);
            write(game, p + 0x708, (bits & 255u) ? value | mask : value & ~mask, r + 0x27);
        }
        return true;
    });
}
} // namespace rust_internal_re
