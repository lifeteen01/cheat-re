#include "metadata_argument_bindings.hpp"
namespace rust_internal_re {
namespace {
void expect(bool condition, const char *why) {
    if (!condition)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
MetadataWrapperCall call(Rva executor, Address context = 0x100) {
    return {0, executor, 0x200, 0x300, context};
}
} // namespace
void check_metadata_argument_bindings() {
    Snapshot image(0, re::ReVector<ReByte>(0x400, ReByte(0xaa)));
    constexpr Address c = 0x100;
    ReUSize effects = 0;
    MetadataWrapperEffects api;
    api.domain_get = [&](const MetadataWrapperCall &q) {
        ++effects;
        expect(image.read<ReU64>(q.context + 0x80) == 0 &&
                   image.read<ReU64>(q.context + 0x78) == 0xaaaaaaaaaaaaaaaaULL,
               "zero-argument helper arity before typed effect; unknown return pointer preserved");
        return Address(7);
    };
    api.assembly_image = [&](const MetadataWrapperCall &q, Address a) {
        ++effects;
        expect(image.read<Address>(q.context + 0x88) == a &&
                   image.read<ReU64>(q.context + 0x80) == 1 &&
                   image.read<ReU32>(q.context + 0xd0) == 0xaaaaaa00u,
               "unary known arity/argument/low type byte precede effect");
        return a + 1;
    };
    api.parameter_count = [&](const MetadataWrapperCall &q, Address a) {
        return ReI32(api.assembly_image(q, a));
    };
    api.method_name = [&](const MetadataWrapperCall &q, Address a) {
        return api.assembly_image(q, a);
    };
    api.assemblies = [&](const MetadataWrapperCall &q, Address domain) {
        ++effects;
        expect(image.read<Address>(q.context + 0x88) == domain &&
                   image.read<ReU64>(q.context + 0x80) == 2 &&
                   image.read<ReU16>(q.context + 0xd0) == 0 &&
                   image.read<Address>(q.context + 0x90) == 0xaaaaaaaaaaaaaaaaULL,
               "two-argument helper retains unknown scratch pointer and type tail");
        return re::ReVector<Address>{domain, domain + 1};
    };
    api.next_method = [&](const MetadataWrapperCall &q, Address klass, Address &iterator) {
        expect(api.assemblies(q, klass).size() == 2, "iterator shares pointer-pair packaging");
        iterator = 9;
        return Address(11);
    };
    api.class_from_name = [&](const MetadataWrapperCall &q, Address a, Address b, Address name) {
        ++effects;
        expect(image.read<Address>(q.context + 0x88) == a &&
                   image.read<Address>(q.context + 0x90) == b &&
                   image.read<Address>(q.context + 0x98) == name &&
                   image.read<ReU64>(q.context + 0x80) == 3 &&
                   image.read<ReU32>(q.context + 0xd0) == 0xaa000000u,
               "three pointer arguments and three known zero type bytes");
        return Address(13);
    };
    api.method_from_name = [&](const MetadataWrapperCall &q, Address a, Address b, ReI32 n) {
        ++effects;
        expect(image.read<Address>(q.context + 0x88) == a &&
                   image.read<Address>(q.context + 0x90) == b &&
                   image.read<ReU32>(q.context + 0x98) == ReU32(n) &&
                   image.read<ReU32>(q.context + 0x9c) == 0xaaaaaaaau,
               "three-argument integer upper DWORD remains unmaterialized");
        return Address(17);
    };
    api.parameter_name = [&](const MetadataWrapperCall &q, Address a, ReU32 n) {
        ++effects;
        expect(image.read<Address>(q.context + 0x88) == a &&
                   image.read<ReU32>(q.context + 0x90) == n &&
                   image.read<ReU32>(q.context + 0x94) == 0xaaaaaaaau &&
                   image.read<ReU16>(q.context + 0xd0) == 0,
               "two-argument DWORD index retains its unknown upper half");
        return Address(19);
    };
    auto bound = bind_metadata_argument_context(image, api);
    expect(bound.domain_get(call(0x2dda18)) == 7, "zero-argument return retained");
    expect(bound.assembly_image(call(0x2cb9fc), 31) == 32, "unary return retained");
    expect(bound.parameter_count(call(0x2cb9fc), 37) == 38, "parameter-count unary packaging");
    expect(bound.method_name(call(0x2cb9fc), 41) == 42, "method-name unary packaging");
    expect(bound.assemblies(call(0x2d2094), 43).front() == 43, "assemblies vector result retained");
    Address iterator = 0;
    expect(bound.next_method(call(0x2d2094), 47, iterator) == 11 && iterator == 9,
           "next-method reference effects retained");
    expect(bound.class_from_name(call(0x2cba50), 53, 59, 61) == 13,
           "three-pointer return retained");
    expect(image.write(c + 0x98, ReU64(0xaaaaaaaaaaaaaaaaULL)),
           "reset unknown high argument");
    expect(bound.method_from_name(call(0x332e8c), 67, 71, -1) == 17,
           "negative count low32 retained");
    expect(image.write(c + 0x90, ReU64(0xaaaaaaaaaaaaaaaaULL)), "reset unknown high index");
    expect(bound.parameter_name(call(0x32b1c8), 73, 0xffffffffu) == 19,
           "unsigned index bits retained");
    expect(effects == 9, "exactly one matching typed effect per wrapper");
    {
        Snapshot short_image(0, re::ReVector<ReByte>(0x1d2, ReByte(0xaa)));
        bool invoked = false;
        MetadataWrapperEffects leaf;
        leaf.assembly_image = [&](const MetadataWrapperCall &, Address) {
            invoked = true;
            return Address(0);
        };
        auto b = bind_metadata_argument_context(short_image, leaf);
        bool stopped = false;
        {
            (void)b.assembly_image(call(0x2cb9fc), 0x1234);
        }
        expect(stopped && !invoked && short_image.read<Address>(c + 0x88) == 0x1234 &&
                   short_image.read<ReU64>(c + 0x80) == 1 &&
                   short_image.read<ReU16>(c + 0xd0) == 0xaaaa,
               "unary full DWORD type extent gates low-byte write after earlier argument stores");
    }
    {
        Snapshot short_image(0, re::ReVector<ReByte>(0x198, ReByte(0xaa)));
        auto b = bind_metadata_argument_context(short_image, {});
        bool stopped = false;
        {
            (void)b.parameter_name(call(0x32b1c8), 1, 2);
        }
        expect(stopped && short_image.read<Address>(c + 0x88) == 0xaaaaaaaaaaaaaaaaULL,
               "unknown type-tail store is checked before two-argument writes");
    }
    {
        Snapshot short_image(0, re::ReVector<ReByte>(0x1d2, ReByte(0xaa)));
        auto b = bind_metadata_argument_context(short_image, {});
        bool stopped = false;
        {
            (void)b.class_from_name(call(0x2cba50), 1, 2, 3);
        }
        expect(stopped && short_image.read<ReU16>(c + 0xd0) == 0 &&
                   short_image.read<Address>(c + 0x88) == 0xaaaaaaaaaaaaaaaaULL,
               "three-argument first type store survives next missing byte");
    }
    {
        auto b = bind_metadata_argument_context(image, {});
        bool stopped = false;
        {
            (void)b.domain_get(call(0x2dda18));
        }
        expect(stopped && image.read<ReU64>(c + 0x80) == 0,
               "missing matching effect is explicit after known local packaging");
    }
    {
        Snapshot complete(0, re::ReVector<ReByte>(0x420000, ReByte(0xaa)));
        const auto &spec = metadata_wrapper_specs().front();
        expect(complete.write<Address>(0x3d5e60, 0x1234) &&
                   complete.write<ReU32>(spec.flags, 3) &&
                   complete.write<Address>(spec.target, 0x5678),
               "warm metadata cache fixture");
        bool observed = false;
        MetadataWrapperEffects leaves;
        leaves.domain_get = [&](const MetadataWrapperCall &q) {
            observed = q.target == 0x5678 && q.dispatcher == 0x1234 &&
                       complete.read<ReU64>(q.context + 0x80) == 0;
            return Address(101);
        };
        const auto literal = bind_metadata_literal_wrappers(complete, 0, leaves);
        expect(literal.domain_get_33479c() == 101 && observed,
               "warm metadata cache, argument packaging and matching typed effect compose");
    }
}
} // namespace rust_internal_re
