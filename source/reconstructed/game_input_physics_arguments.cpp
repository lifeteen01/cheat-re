#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_detail;
namespace {
struct Argument {
    re::ReArray<ReByte, 8> bytes{};
    ReU8 missing{0xff};
};
GameInputCall begin_call(GameInputCall c, Rva packer) {
    c.packer = packer;
    c.gate = 0x3cdbd4;
    c.argument_count = 0;
    c.unmaterialized_argument_bytes.fill(0);
    c.unmaterialized_type_bytes = 0;
    c.unmaterialized_return_pointer = true;
    return c;
}
Argument argument(const GameInputStackEvidence &e, unsigned index) {
    if (e.argument_storage[index])
        return {*e.argument_storage[index], 0};
    return {};
}
template <class T> Argument value(Argument a, T v) {
    static_assert(sizeof(T) <= 8);
    re::re_memcpy(a.bytes.data(), &v, sizeof(T));
    a.missing &= ReU8(0xffu << sizeof(T));
    return a;
}
Argument pointer(const GameInputStackEvidence &e, unsigned i, re::ReOptional<Address> p) {
    auto a = argument(e, i);
    return p ? value(a, *p) : a;
}
void vector_store(Snapshot &image, GameInputCall &c, unsigned first,
                  std::initializer_list<Argument> args, Rva site) {
    // [C]One native SIMD/QWORD store has one full extent check before any known
    // byte is committed. Unknown source bytes remain unmaterialized holes.
    extent(image, c.context + 0x88 + first * 8, args.size() * 8, site);
    unsigned index = first;
    for (const auto &a : args) {
        for (unsigned n = 0; n < 8; ++n)
            if (!(a.missing & (1u << n)))
                write(image, c.context + 0x88 + index * 8 + n, a.bytes[n], site);
        c.unmaterialized_argument_bytes[index] = a.missing;
        ++index;
    }
}
void return_store(Snapshot &image, GameInputCall &c, const GameInputStackEvidence &e, Rva site) {
    if (e.return_pointer) {
        write(image, c.context + 0x78, *e.return_pointer, site);
        c.unmaterialized_return_pointer = false;
    } else
        extent(image, c.context + 0x78, 8, site);
}
void unknown_types(Snapshot &image, GameInputCall &c, const GameInputStackEvidence &e,
                   unsigned first, unsigned n, Rva site) {
    extent(image, c.context + 0xd0 + first, n, site);
    for (unsigned i = first; i < first + n; ++i) {
        if (e.type_storage)
            write(image, c.context + 0xd0 + i, (*e.type_storage)[i], site);
        else
            c.unmaterialized_type_bytes |= ReU8(1u << i);
    }
}
void count(Snapshot &image, GameInputCall &c, unsigned n, Rva site) {
    write(image, c.context + 0x80, Address(n), site);
    c.argument_count = n;
}
} // namespace
GameInputCall game_input_pack_3214f4(Snapshot &image, GameInputCall c, Address receiver,
                                     ReU8 byte, const GameInputStackEvidence &e) {
    c = begin_call(c, 0x3214f4);
    const auto a = value(argument(e, 0), receiver), b = value(argument(e, 1), byte);
    unknown_types(image, c, e, 2, 2, 0x32152a);
    return_store(image, c, e, 0x321536);
    vector_store(image, c, 0, {a, b}, 0x32153a);
    write(image, c.context + 0xd0, ReU16(0), 0x321542);
    count(image, c, 2, 0x32154b);
    return c;
}
GameInputCall game_input_pack_32225c(Snapshot &image, GameInputCall c, Address receiver,
                                     float scalar, const GameInputStackEvidence &e) {
    c = begin_call(c, 0x32225c);
    const auto a = value(argument(e, 0), receiver), b = value(argument(e, 1), scalar);
    unknown_types(image, c, e, 2, 2, 0x322294);
    return_store(image, c, e, 0x3222a0);
    vector_store(image, c, 0, {a, b}, 0x3222a4);
    write(image, c.context + 0xd0, ReU16(0x100), 0x3222ac);
    count(image, c, 2, 0x3222b5);
    return c;
}
GameInputCall game_input_pack_2e480c(Snapshot &image, GameInputCall c,
                                     const GameInputSixArguments &q) {
    c = begin_call(c, 0x2e480c);
    const auto &e = q.stack;
    const re::ReArray<Argument, 6> a{value(argument(e, 0), q.first), value(argument(e, 1), q.second),
                                    value(argument(e, 2), q.third), pointer(e, 3, q.fourth),
                                    value(argument(e, 4), q.fifth), value(argument(e, 5), q.sixth)};
    vector_store(image, c, 0, {a[0], a[1]}, 0x2e488d);
    write(image, c.context + 0xd0, ReU32(0), 0x2e4894);
    count(image, c, 6, 0x2e48a4);
    vector_store(image, c, 2, {a[2], a[3]}, 0x2e48af);
    return_store(image, c, e, 0x2e48b6);
    vector_store(image, c, 4, {a[4], a[5]}, 0x2e48ba);
    return c;
}
GameInputCall game_input_pack_2de874(Snapshot &image, GameInputCall c,
                                     const GameInputPhysicsRequest &q) {
    c = begin_call(c, 0x2de874);
    const auto &e = q.stack;
    const re::ReArray<Argument, 7> a{pointer(e, 0, q.first_pointer),
                                    pointer(e, 1, q.second_pointer),
                                    value(argument(e, 2), q.mask),
                                    value(argument(e, 3), q.radius),
                                    value(argument(e, 4), q.first_scalar),
                                    value(argument(e, 5), q.second_scalar),
                                    value(argument(e, 6), ReU32(q.final_integer))};
    vector_store(image, c, 0, {a[0], a[1]}, 0x2de8fb);
    write(image, c.context + 0xd0, ReU32(0x1000000), 0x2de902);
    count(image, c, 7, 0x2de910);
    vector_store(image, c, 2, {a[2], a[3]}, 0x2de91b);
    return_store(image, c, e, 0x2de922);
    vector_store(image, c, 4, {a[4], a[5]}, 0x2de92b);
    vector_store(image, c, 6, {a[6]}, 0x2de932);
    return c;
}
GameInputCall game_input_pack_3232d0(Snapshot &image, GameInputCall c, ReI32 first,
                                     ReI32 second, ReU8 byte,
                                     const GameInputStackEvidence &e) {
    c = begin_call(c, 0x3232d0);
    const auto a = value(argument(e, 0), ReU32(first));
    const auto b = value(argument(e, 1), ReU32(second));
    const auto d = value(argument(e, 2), byte);
    write(image, c.context + 0xd0, ReU16(0), 0x323317);
    write(image, c.context + 0xd2, ReU8(0), 0x32331e);
    unknown_types(image, c, e, 3, 1, 0x323328);
    vector_store(image, c, 0, {a, b}, 0x323333);
    return_store(image, c, e, 0x32333a);
    vector_store(image, c, 2, {d}, 0x32333e);
    count(image, c, 3, 0x323346);
    return c;
}
GameBaseResult<bool> game_input_apply_3214f4(Snapshot &image, GameInputCall call, Address receiver,
                                             ReU8 byte,
                                             const GameInputPhysicsEffects &effects,
                                             const GameInputStackEvidence &e) {
    return protect<bool>([&] {
        call.wrapper = 0x3214f4;
        call = game_input_pack_3214f4(image, call, receiver, byte, e);
        need(effects.set_byte, 0x321560)(call, receiver, byte);
        return true;
    });
}
GameBaseResult<bool> game_input_apply_32225c(Snapshot &image, GameInputCall call, Address receiver,
                                             float scalar, const GameInputPhysicsEffects &effects,
                                             const GameInputStackEvidence &e) {
    return protect<bool>([&] {
        call.wrapper = 0x32225c;
        call = game_input_pack_32225c(image, call, receiver, scalar, e);
        need(effects.set_scalar, 0x3222ca)(call, receiver, scalar);
        return true;
    });
}
GameBaseResult<bool> game_input_apply_2e480c(Snapshot &image, GameInputCall call,
                                             const GameInputSixArguments &q,
                                             const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        call.wrapper = 0x2e480c;
        call = game_input_pack_2e480c(image, call, q);
        need(effects.six_arguments, 0x2e48cb)(call, q);
        return true;
    });
}
namespace game_input_detail {
GameInputCall pack_object(Snapshot &image, GameInputCall c, re::ReOptional<Address> receiver,
                          re::ReOptional<Address> result) {
    c = begin_call(c, 0x2cb9fc);
    metadata_argument_one_2cb9fc(image, c.context, receiver);
    c.argument_count = 1;
    c.unmaterialized_type_bytes = 0xe;
    c.unmaterialized_argument_bytes[0] = receiver ? 0 : 0xff;
    if (result) {
        write(image, c.context + 0x78, *result, 0x2cba41);
        c.unmaterialized_return_pointer = false;
    }
    return c;
}
GameInputCall pack_zero_predicate(Snapshot &image, GameInputCall c) {
    c = begin_call(c, 0x2e49ec);
    count(image, c, 0, 0x2e49f5);
    return_store(image, c, {}, 0x2e4a03);
    return c;
}
GameInputCall pack_zero_object(Snapshot &image, GameInputCall c) {
    c = begin_call(c, 0x2dda18);
    count(image, c, 0, 0x2dda1c);
    return_store(image, c, {}, 0x2dda2a);
    return c;
}
} // namespace game_input_detail
} // namespace rust_internal_re
