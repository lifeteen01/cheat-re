#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re::direct_detail {
namespace {
void result_slot(Snapshot &im, GameDirectCall &call, re::ReOptional<Address> out, Rva site) {
    if (out) {
        write(im, call.context + 0x78, *out, site);
        call.unmaterialized_return_pointer = false;
    } else
        extent(im, call.context + 0x78, 8, site);
}
void argument(Snapshot &im, GameDirectCall &call, re::ReSpan<const GameDirectArgument> args,
              unsigned n, Rva site) {
    if (n >= args.size())
        { (void)(GameBaseStatus::missing_boundary, site); __builtin_trap(); }
    const auto target = call.context + 0x88 + Address(n) * 8;
    const auto &value = args[n];
    if (re::re_holds_alternative<re::ReMonostate>(value) || re::re_holds_alternative<Vec3>(value)) {
        if (call.raw_argument_keys[n])
            write(im, target, *call.raw_argument_keys[n], site);
        else
            call.unmaterialized_argument_bytes[n] = 0xff;
        return;
    }
    re::re_visit(
        [&](const auto &v) {
            using T = re::re_decay_t<decltype(v)>;
            if constexpr (!re::re_is_same_v<T, re::ReMonostate> && !re::re_is_same_v<T, Vec3>) {
                write(im, target, v, site);
                call.unmaterialized_argument_bytes[n] = sizeof(T) == 8   ? 0
                                                        : sizeof(T) == 4 ? 0xf0
                                                                         : 0xfe;
            }
        },
        value);
}
void pair(Snapshot &im, GameDirectCall &call, re::ReSpan<const GameDirectArgument> args, Rva site) {
    extent(im, call.context + 0x88, 16, site);
    argument(im, call, args, 0, site);
    argument(im, call, args, 1, site);
}
} // namespace
void package(Snapshot &im, GameDirectCall &call, re::ReSpan<const GameDirectArgument> args,
             re::ReOptional<Address> out) {
    const auto c = call.context;
    switch (call.executor) {
    case 0x2cb9fc: {
        re::ReOptional<Address> first;
        if (const auto *p = re::re_get_if<Address>(&args[0]))
            first = *p;
        else
            call.unmaterialized_argument_bytes[0] = 0xff;
        call.unmaterialized_type_bytes = 0xe;
        metadata_argument_one_2cb9fc(im, c, first);
        result_slot(im, call, out, 0x2cba41);
        return;
    }
    case 0x2dea4c:
        write(im, c + 0x80, Address(1), 0x2dea64);
        argument(im, call, args, 0, 0x2dea7b);
        extent(im, c + 0xd0, 4, 0x2dea86);
        write(im, c + 0xd0, ReU8(0), 0x2dea86);
        call.unmaterialized_type_bytes = 0xe;
        result_slot(im, call, out, 0x2dea91);
        return;
    case 0x32b1c8: {
        extent(im, c + 0xd2, 2, 0x32b1fe);
        result_slot(im, call, out, 0x32b20a);
        call.unmaterialized_type_bytes = 0xc;
        call.unmaterialized_argument_bytes[1] = 0xf0;
        metadata_argument_index_32b1c8(
            im, c, re::re_get<Address>(args[0]),
            re::re_bit_cast<ReU32>(re::re_get<ReI32>(args[1])));
        return;
    }
    case 0x2d2094:
        extent(im, c + 0xd2, 2, 0x2d20cb);
        result_slot(im, call, out, 0x2d20d7);
        if (const auto *first = re::re_get_if<Address>(&args[0])) {
            re::ReOptional<Address> second;
            if (const auto *p = re::re_get_if<Address>(&args[1]))
                second = *p;
            else
                call.unmaterialized_argument_bytes[1] = 0xff;
            metadata_argument_two_2d2094(im, c, *first, second);
            call.unmaterialized_type_bytes = 0xc;
            return;
        }
        pair(im, call, args, 0x2d20db);
        write(im, c + 0xd0, ReU16(0), 0x2d20e3);
        call.unmaterialized_type_bytes = 0xc;
        write(im, c + 0x80, Address(2), 0x2d20ec);
        return;
    case 0x32225c:
        extent(im, c + 0xd2, 2, 0x322294);
        result_slot(im, call, out, 0x3222a0);
        pair(im, call, args, 0x3222a4);
        write(im, c + 0xd0, ReU16(0x100), 0x3222ac);
        call.unmaterialized_type_bytes = 0xc;
        write(im, c + 0x80, Address(2), 0x3222b5);
        return;
    case 0x2cba50:
    case 0x2d2000:
    case 0x332e8c: {
        const bool pointer = call.executor == 0x2cba50;
        const bool byte = call.executor == 0x2d2000;
        const Rva types = pointer ? 0x2cba99u : byte ? 0x2d2048u : 0x332ed4u;
        const Rva type2 = pointer ? 0x2cbaa0u : byte ? 0x2d204fu : 0x332edbu;
        const Rva type3 = pointer ? 0x2cbaaau : byte ? 0x2d2059u : 0x332ee5u;
        const Rva first = pointer ? 0x2cbab5u : byte ? 0x2d2064u : 0x332ef0u;
        const Rva ret = pointer ? 0x2cbabcu : byte ? 0x2d206bu : 0x332ef7u;
        const Rva third = pointer ? 0x2cbac0u : byte ? 0x2d206fu : 0x332efbu;
        const Rva count = pointer ? 0x2cbac8u : byte ? 0x2d2077u : 0x332f03u;
        write(im, c + 0xd0, ReU16(0), types);
        write(im, c + 0xd2, ReU8(0), type2);
        extent(im, c + 0xd3, 1, type3);
        call.unmaterialized_type_bytes = 8;
        pair(im, call, args, first);
        result_slot(im, call, out, ret);
        extent(im, c + 0x98, 8, third);
        argument(im, call, args, 2, third);
        write(im, c + 0x80, Address(3), count);
        return;
    }
    case 0x365ae0:
    case 0x374050: {
        const bool pointers = call.executor == 0x374050;
        write(im, c + 0xd0, ReU32(0), pointers ? 0x3740a7 : 0x365b36);
        pair(im, call, args, pointers ? 0x3740b2 : 0x365b41);
        result_slot(im, call, out, pointers ? 0x3740b9 : 0x365b48);
        const Rva tail = pointers ? 0x3740bdu : 0x365b4cu;
        extent(im, c + 0x98, 16, tail);
        argument(im, call, args, 2, tail);
        argument(im, call, args, 3, tail);
        write(im, c + 0x80, Address(4), pointers ? 0x3740c4 : 0x365b53);
        return;
    }
    case 0x365b70:
        pair(im, call, args, 0x365be4);
        write(im, c + 0xd0, ReU32(0), 0x365beb);
        extent(im, c + 0x98, 16, 0x365bfc);
        argument(im, call, args, 2, 0x365bfc);
        argument(im, call, args, 3, 0x365bfc);
        write(im, c + 0x80, Address(5), 0x365c03);
        extent(im, c + 0xa8, 8, 0x365c0e);
        argument(im, call, args, 4, 0x365c0e);
        call.unmaterialized_type_bytes = 0x10;
        result_slot(im, call, out, 0x365c16);
        return;
    default:
        { (void)(GameBaseStatus::missing_boundary, call.executor); __builtin_trap(); }
    }
}
} // namespace rust_internal_re::direct_detail
