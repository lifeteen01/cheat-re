#include "game_runtime_wrappers_internal.hpp"
namespace rust_internal_re::runtime_detail {
namespace {
void return_pointer(Snapshot &im, GameRuntimeCall &c, const GameRuntimeRequest &q, Rva site) {
    if (q.return_address) {
        write(im, c.context + 0x78, *q.return_address, site);
        c.unmaterialized_return_pointer = false;
    } else
        extent(im, c.context + 0x78, 8, site);
}
void pointer(Snapshot &im, GameRuntimeCall &c, unsigned index, re::ReOptional<Address> p, Rva site) {
    if (p) {
        write(im, c.context + 0x88 + index * 8, *p, site);
        c.unmaterialized_argument_bytes[index] = 0;
    } else {
        extent(im, c.context + 0x88 + index * 8, 8, site);
        c.unmaterialized_argument_bytes[index] = 0xff;
    }
}
void pair(Snapshot &im, GameRuntimeCall &c, const GameRuntimeRequest &q,
          re::ReOptional<Address> first, re::ReOptional<Address> second) {
    c.unmaterialized_type_bytes = 0xc;
    c.unmaterialized_argument_bytes[0] = first ? 0 : 0xff;
    c.unmaterialized_argument_bytes[1] = second ? 0 : 0xff;
    if (first && !q.return_address) {
        metadata_argument_two_2d2094(im, c.context, *first, second);
        return;
    }
    // [I] Shared API's first argument is mandatory. Preserve the unknown-first
    // and supplied-return-key cases without inventing an output pointer or moving its store.
    extent(im, c.context + 0xd2, 2, 0x2d20cb);
    return_pointer(im, c, q, 0x2d20d7);
    extent(im, c.context + 0x88, 16, 0x2d20db);
    pointer(im, c, 0, first, 0x2d20db);
    pointer(im, c, 1, second, 0x2d20db);
    write(im, c.context + 0xd0, ReU16(0), 0x2d20e3);
    write(im, c.context + 0x80, Address(2), 0x2d20ec);
}
} // namespace
// [C/I] Reuse released metadata argument packaging for0/1/integer2 calls.
// Other reached helpers below translate known byte widths/order literally.
void package(Snapshot &im, GameRuntimeCall &c, const GameRuntimeSpec &s,
             const GameRuntimeRequest &q, const re::ReFunction<void()> &complete) {
    const MetadataWrapperCall m{c.wrapper, c.executor, c.dispatcher, c.target, c.context};
    switch (s.executor) {
    case 0x2dda18: {
        MetadataWrapperEffects fx;
        fx.domain_get = [&](const auto &) -> Address {
            return_pointer(im, c, q, 0x2dda2a);
            complete();
            return 0;
        };
        (void)bind_metadata_argument_context(im, fx).domain_get(m);
        return;
    }
    case 0x2de950:
        write(im, c.context + 0x80, Address(0), 0x2de959);
        return_pointer(im, c, q, 0x2de967);
        complete();
        return;
    case 0x2cb9fc: {
        c.unmaterialized_type_bytes = 0xe;
        metadata_argument_one_2cb9fc(im, c.context, q.receiver);
        return_pointer(im, c, q, 0x2cba41);
        complete();
        return;
    }
    case 0x32b1c8: {
        c.unmaterialized_type_bytes = 0xc;
        c.unmaterialized_argument_bytes[1] = 0xf0;
        if (q.return_address) {
            extent(im, c.context + 0xd2, 2, 0x32b1fe);
            return_pointer(im, c, q, 0x32b20a);
            extent(im, c.context + 0x88, 16, 0x32b20e);
            write(im, c.context + 0x88, q.receiver, 0x32b20e);
            write(im, c.context + 0x90, q.integer, 0x32b20e);
            write(im, c.context + 0xd0, ReU16(0), 0x32b216);
            write(im, c.context + 0x80, Address(2), 0x32b21f);
            complete();
            return;
        }
        metadata_argument_index_32b1c8(im, c.context, q.receiver, q.integer);
        complete();
        return;
    }
    case 0x2d2094:
        if (s.role == GameRuntimeRole::inverse)
            pair(im, c, q, q.output_address, q.first_address);
        else
            pair(im, c, q, q.receiver, q.first_address);
        complete();
        return;
    case 0x3214f4: {
        extent(im, c.context + 0xd2, 2, 0x32152a);
        return_pointer(im, c, q, 0x321536);
        extent(im, c.context + 0x88, 16, 0x32153a);
        write(im, c.context + 0x88, q.receiver, 0x32153a);
        write(im, c.context + 0x90, q.byte, 0x32153a);
        c.unmaterialized_argument_bytes[1] = 0xfe;
        write(im, c.context + 0xd0, ReU16(0), 0x321542);
        c.unmaterialized_type_bytes = 0xc;
        write(im, c.context + 0x80, Address(2), 0x32154b);
        complete();
        return;
    }
    case 0x32225c: {
        extent(im, c.context + 0xd2, 2, 0x322294);
        return_pointer(im, c, q, 0x3222a0);
        extent(im, c.context + 0x88, 16, 0x3222a4);
        write(im, c.context + 0x88, q.receiver, 0x3222a4);
        write(im, c.context + 0x90, q.scalar, 0x3222a4);
        c.unmaterialized_argument_bytes[1] = 0xf0;
        write(im, c.context + 0xd0, ReU16(0x100), 0x3222ac);
        c.unmaterialized_type_bytes = 0xc;
        write(im, c.context + 0x80, Address(2), 0x3222b5);
        complete();
        return;
    }
    case 0x2cba50: {
        write(im, c.context + 0xd0, ReU16(0), 0x2cba99);
        write(im, c.context + 0xd2, ReU8(0), 0x2cbaa0);
        extent(im, c.context + 0xd3, 1, 0x2cbaaa);
        c.unmaterialized_type_bytes = 8;
        extent(im, c.context + 0x88, 16, 0x2cbab5);
        pointer(im, c, 0, q.temporary_address, 0x2cbab5);
        pointer(im, c, 1, q.receiver, 0x2cbab5);
        return_pointer(im, c, q, 0x2cbabc);
        pointer(im, c, 2, q.first_address, 0x2cbac0);
        write(im, c.context + 0x80, Address(3), 0x2cbac8);
        complete();
        return;
    }
    case 0x2ed218: {
        write(im, c.context + 0xd0, 0x1000000u, 0x2ed273);
        extent(im, c.context + 0x88, 16, 0x2ed27d);
        pointer(im, c, 0, q.output_address, 0x2ed27d);
        pointer(im, c, 1, q.first_address, 0x2ed27d);
        write(im, c.context + 0x80, Address(4), 0x2ed284);
        extent(im, c.context + 0x98, 16, 0x2ed28f);
        pointer(im, c, 2, q.second_address, 0x2ed28f);
        write(im, c.context + 0xa0, q.scalar, 0x2ed28f);
        c.unmaterialized_argument_bytes[3] = 0xf0;
        return_pointer(im, c, q, 0x2ed296);
        complete();
        return;
    }
    default:
        { (void)(GameBaseStatus::missing_boundary, s.executor); __builtin_trap(); }
    }
}
} // namespace rust_internal_re::runtime_detail
