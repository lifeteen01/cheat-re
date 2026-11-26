#include "metadata_argument_bindings.hpp"
namespace rust_internal_re {
namespace {
void extent(const Snapshot &image, Address at, ReUSize size, Rva site) {
    if (!image.contains(at, size))
        { (void)(MetadataStatus::unreadable_snapshot, site); __builtin_trap(); }
}
template <class T> void put(Snapshot &image, Address at, T value, Rva site) {
    if (!image.write(at, value))
        { (void)(MetadataStatus::unreadable_snapshot, site); __builtin_trap(); }
}
template <class F> const F &effect(const F &callback, Rva site) {
    if (!callback)
        { (void)(MetadataStatus::missing_dependency, site); __builtin_trap(); }
    return callback;
}
void zero_2dda18(Snapshot &image, Address c) {
    put(image, c + 0x80, ReU64(0), 0x2dda1c);
    extent(image, c + 0x78, 8, 0x2dda2a); // Unknown native return-slot pointer.
}
void one_2cb9fc(Snapshot &image, Address c, re::ReOptional<Address> argument) {
    put(image, c + 0x80, ReU64(1), 0x2cba14);
    if (argument)
        put(image, c + 0x88, *argument, 0x2cba2b);
    else
        extent(image, c + 0x88, 8, 0x2cba2b);
    extent(image, c + 0xd0, 4, 0x2cba36);
    put(image, c + 0xd0, ReU8(0), 0x2cba36); // Other three stack bytes unknown.
    extent(image, c + 0x78, 8, 0x2cba41);
}
void two_2d2094(Snapshot &image, Address c, Address first, re::ReOptional<Address> second = {}) {
    extent(image, c + 0xd2, 2, 0x2d20cb);
    extent(image, c + 0x78, 8, 0x2d20d7);
    extent(image, c + 0x88, 16, 0x2d20db);
    if (second)
        put(image, c + 0x88, re::ReArray<Address, 2>{first, *second}, 0x2d20db);
    else
        put(image, c + 0x88, first, 0x2d20db);
    // [I] Second native argument is a count/iterator scratch pointer; the typed
    // owned API supplies a vector/reference, never an invented Snapshot address.
    put(image, c + 0xd0, ReU16(0), 0x2d20e3);
    put(image, c + 0x80, ReU64(2), 0x2d20ec);
}
void three_2cba50(Snapshot &image, Address c, Address first, Address second, Address third) {
    put(image, c + 0xd0, ReU16(0), 0x2cba99);
    put(image, c + 0xd2, ReU8(0), 0x2cbaa0);
    extent(image, c + 0xd3, 1, 0x2cbaaa);
    extent(image, c + 0x88, 16, 0x2cbab5);
    put(image, c + 0x88, re::ReArray<Address, 2>{first, second}, 0x2cbab5);
    extent(image, c + 0x78, 8, 0x2cbabc);
    put(image, c + 0x98, third, 0x2cbac0);
    put(image, c + 0x80, ReU64(3), 0x2cbac8);
}
void three_332e8c(Snapshot &image, Address c, Address first, Address second, ReI32 third) {
    put(image, c + 0xd0, ReU16(0), 0x332ed4);
    put(image, c + 0xd2, ReU8(0), 0x332edb);
    extent(image, c + 0xd3, 1, 0x332ee5);
    extent(image, c + 0x88, 16, 0x332ef0);
    put(image, c + 0x88, re::ReArray<Address, 2>{first, second}, 0x332ef0);
    extent(image, c + 0x78, 8, 0x332ef7);
    extent(image, c + 0x98, 8, 0x332efb);
    put(image, c + 0x98, third, 0x332efb); // Upper DWORD was never initialized by2df370.
    put(image, c + 0x80, ReU64(3), 0x332f03);
}
void two_32b1c8(Snapshot &image, Address c, Address first, ReU32 second) {
    extent(image, c + 0xd2, 2, 0x32b1fe);
    extent(image, c + 0x78, 8, 0x32b20a);
    extent(image, c + 0x88, 16, 0x32b20e);
    put(image, c + 0x88, first, 0x32b20e);
    put(image, c + 0x90, second, 0x32b20e);
    put(image, c + 0xd0, ReU16(0), 0x32b216);
    put(image, c + 0x80, ReU64(2), 0x32b21f);
}
} // namespace
void metadata_argument_one_2cb9fc(Snapshot &image, Address context,
                                  re::ReOptional<Address> argument) {
    one_2cb9fc(image, context, argument);
}
void metadata_argument_two_2d2094(Snapshot &image, Address context, Address first,
                                  re::ReOptional<Address> second) {
    two_2d2094(image, context, first, second);
}
void metadata_argument_index_32b1c8(Snapshot &image, Address context, Address first,
                                    ReU32 second) {
    two_32b1c8(image, context, first, second);
}
MetadataWrapperEffects bind_metadata_argument_context(Snapshot &image, MetadataWrapperEffects api) {
    const auto prior = api;
    api.domain_get = [&image, prior](const MetadataWrapperCall &c) {
        zero_2dda18(image, c.context);
        return effect(prior.domain_get, c.executor)(c);
    };
    api.assemblies = [&image, prior](const MetadataWrapperCall &c, Address domain) {
        two_2d2094(image, c.context, domain);
        return effect(prior.assemblies, c.executor)(c, domain);
    };
    api.assembly_image = [&image, prior](const MetadataWrapperCall &c, Address assembly) {
        one_2cb9fc(image, c.context, assembly);
        return effect(prior.assembly_image, c.executor)(c, assembly);
    };
    api.class_from_name = [&image, prior](const MetadataWrapperCall &c, Address im, Address ns,
                                          Address name) {
        three_2cba50(image, c.context, im, ns, name);
        return effect(prior.class_from_name, c.executor)(c, im, ns, name);
    };
    api.next_method = [&image, prior](const MetadataWrapperCall &c, Address klass,
                                      Address &iterator) {
        two_2d2094(image, c.context, klass);
        return effect(prior.next_method, c.executor)(c, klass, iterator);
    };
    api.method_from_name = [&image, prior](const MetadataWrapperCall &c, Address klass,
                                           Address name, ReI32 count) {
        three_332e8c(image, c.context, klass, name, count);
        return effect(prior.method_from_name, c.executor)(c, klass, name, count);
    };
    api.parameter_count = [&image, prior](const MetadataWrapperCall &c, Address method) {
        one_2cb9fc(image, c.context, method);
        return effect(prior.parameter_count, c.executor)(c, method);
    };
    api.method_name = [&image, prior](const MetadataWrapperCall &c, Address method) {
        one_2cb9fc(image, c.context, method);
        return effect(prior.method_name, c.executor)(c, method);
    };
    api.parameter_name = [&image, prior](const MetadataWrapperCall &c, Address method,
                                         ReU32 index) {
        two_32b1c8(image, c.context, method, index);
        return effect(prior.parameter_name, c.executor)(c, method, index);
    };
    return api;
}
MetadataApi bind_metadata_literal_wrappers(Snapshot &image, Address module,
                                           MetadataWrapperEffects effects) {
    return bind_metadata_wrappers(image, module,
                                  bind_metadata_argument_context(image, re::re_move(effects)));
}
} // namespace rust_internal_re
