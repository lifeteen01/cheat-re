#include "font_atlas_input_internal.hpp"

namespace rust_internal_re {
namespace font_atlas_input_detail {
bool known(const FontAtlasInputState &state, Address p, ReUSize n) {
    for (const auto &[base, region] : state.regions) {
        ReUSize start = 0, count = 0;
        if (p >= base && p - base < region.initialized.size()) {
            start = ReUSize(p - base);
            count = re::re_min(n, region.initialized.size() - start);
        } else if (base > p && base - p < n)
            count = re::re_min(n - ReUSize(base - p), region.initialized.size());
        if (!re::re_all_of(region.initialized.begin() + ReISize(start),
                         region.initialized.begin() + ReISize(start + count),
                         [](auto v) { return v != 0; }))
            return false;
    }
    return true;
}
void mark(FontAtlasInputState &state, Address p, ReUSize n, bool value) {
    for (auto &[base, region] : state.regions) {
        if (p >= base && p - base < region.initialized.size()) {
            const auto start = ReUSize(p - base);
            re::re_fill_n(region.initialized.begin() + ReISize(start),
                        re::re_min(n, region.initialized.size() - start), ReU8(value));
        } else if (base > p && base - p < n) {
            re::re_fill_n(region.initialized.begin(),
                        re::re_min(n - ReUSize(base - p), region.initialized.size()),
                        ReU8(value));
        }
    }
}
void check_known(const FontAtlasInputState &state, Address p, ReUSize n, Rva site) {
    if (!known(state, p, n))
        { __builtin_trap(); }
}
void Context::bound(ReU64 n, Rva site) const {
    if (n > env.maximum_bytes)
        { __builtin_trap(); }
}
Address Context::allocate(ReU64 n, Rva site) {
    bound(n, site);
    if (!effects.allocate_owned)
        { __builtin_trap(); }
    const auto p = effects.allocate_owned(n);
    if (p)
        state.regions[p].initialized.assign(ReUSize(n), 0);
    return p;
}
Address Context::marshal(FontAtlasInputStorage purpose, re::ReSpan<const ReByte> bytes,
                         Rva site) {
    bound(bytes.size(), site);
    if (!effects.marshal_owned_bytes)
        { __builtin_trap(); }
    const auto p = effects.marshal_owned_bytes(purpose, bytes);
    // [I] A nonzero, exactly copied mapped key is the storage-provider contract.
    // Verify it instead of silently making a native runtime address or extra allocation.
    if (!p || !image.contains(p, bytes.size()))
        { __builtin_trap(); }
    for (ReUSize i = 0; i < bytes.size(); ++i)
        if (image.read<ReByte>(p + i) != bytes[i])
            { __builtin_trap(); }
    state.regions[p].initialized.assign(bytes.size(), 1);
    return p;
}
void Context::release(Address p, Rva site) {
    if (!effects.support.free_39517c)
        { __builtin_trap(); }
    effects.support.free_39517c(p);
}
void Context::copy(Address destination, Address source, ReU64 length, Rva site) {
    bound(length, site);
    // [C]3c8d63 REP MOVSB is forward byte order. Capture a tracked source span
    // bound so a short UnityBytes blob cannot consume unrelated Snapshot padding.
    re::ReOptional<ReU64> available;
    for (const auto &[base, region] : state.regions)
        if (source >= base && (source == base || source - base < region.initialized.size()))
            available = region.initialized.size() - (source - base);
    for (ReU64 i = 0; i < length; ++i) {
        if (!source || !destination)
            { __builtin_trap(); }
        if (available && i >= *available)
            { __builtin_trap(); }
        const auto v = image.read<ReByte>(source + i);
        if (!v || !image.contains(destination + i, 1))
            { __builtin_trap(); }
        const bool initialized = known(state, source + i, 1);
        if (initialized)
            put(image, state, destination + i, *v, site);
        else
            mark(state, destination + i, 1, false);
    }
}
void Context::copy_block(Address destination, Address source, ReUSize n, Rva load,
                         Rva store_at) {
    re::ReArray<ReByte, 16> bytes{};
    re::ReArray<bool, 16> initialized{};
    if (!source || n > bytes.size() || !image.contains(source, n))
        { __builtin_trap(); }
    for (ReUSize i = 0; i < n; ++i) {
        bytes[i] = *image.read<ReByte>(source + i);
        initialized[i] = known(state, source + i, 1);
    }
    if (!destination || !image.contains(destination, n))
        { __builtin_trap(); }
    for (ReUSize i = 0; i < n; ++i) {
        if (initialized[i])
            put(image, state, destination + i, bytes[i], store_at);
        else
            mark(state, destination + i, 1, false);
    }
}
Address Context::element(Address descriptor, ReI32 index, ReU32 stride, Rva site) {
    return read<Address>(descriptor + 8, site) + offset(index) * stride;
}
void Context::reserve(Address descriptor, ReI32 count, ReU32 stride) {
    const bool config = stride == 0x88;
    if (count <= read<ReI32>(descriptor + 4, config ? 0x3a95d1 : 0x37a76d))
        return;
    const auto next = allocate(offset(count) * stride, config ? 0x3a95dd : 0x37a779);
    const auto old = read<Address>(descriptor + 8, config ? 0x3a95e2 : 0x37a77e);
    if (old) {
        const auto size = read<ReI32>(descriptor, config ? 0x3a95ee : 0x37a78a);
        copy(next, old, offset(size) * stride, config ? 0x3a95fb : 0x37a794);
        release(read<Address>(descriptor + 8, config ? 0x3a9600 : 0x37a799),
                config ? 0x3a9604 : 0x37a79d);
    }
    write(descriptor + 8, next, config ? 0x3a9609 : 0x37a7a2);
    write(descriptor + 4, count, config ? 0x3a960d : 0x37a7a6);
}
namespace {
ReI32 growth(ReI32 capacity, ReI32 requested) {
    const auto half = capacity / 2; // [C]CDQ/sub/SAR truncates negative division toward0.
    const auto grown = capacity ? signed32(ReU32(capacity) + ReU32(half)) : 8;
    return grown > requested ? grown : requested;
}
} // namespace
void Context::append_font(Address key, Address value) {
    const auto descriptor = key + 0x58;
    auto n = read<ReI32>(descriptor, 0x37a668);
    const auto capacity = read<ReI32>(descriptor + 4, 0x37a66a);
    if (n == capacity)
        reserve(descriptor, growth(capacity, signed32(ReU32(n) + 1u)), 8);
    n = read<ReI32>(descriptor, 0x37a680);
    const auto destination = element(descriptor, n, 8, 0x37a683);
    if (!destination)
        { __builtin_trap(); }
    write(destination, value, 0x37a68a);
    auto &fonts = atlas(key, 0x37a68a).fonts;
    if (n < 0 || ReUSize(n) > fonts.size())
        { __builtin_trap(); }
    if (ReUSize(n) == fonts.size())
        fonts.push_back(value);
    else
        fonts[ReUSize(n)] = value;
    write(descriptor, signed32(ReU32(read<ReI32>(descriptor, 0x37a68e)) + 1u),
          0x37a68e);
}
void Context::append_config(Address descriptor, Address source) {
    auto n = read<ReI32>(descriptor, 0x3a9490);
    const auto capacity = read<ReI32>(descriptor + 4, 0x3a9492);
    if (n == capacity)
        reserve(descriptor, growth(capacity, signed32(ReU32(n) + 1u)), 0x88);
    n = read<ReI32>(descriptor, 0x3a94a8);
    // [C]First MOVUPS load precedes the destination base load.
    // No callbacks occur between them; copy_block retains each full SIMD chunk.
    if (!image.contains(source, 16))
        { __builtin_trap(); }
    const auto destination = element(descriptor, n, 0x88, 0x3a94ae);
    constexpr re::ReArray<Rva, 8> sites{0x3a94ab, 0x3a94bd, 0x3a94c6, 0x3a94cf,
                                       0x3a94d8, 0x3a94e1, 0x3a94ea, 0x3a94f3};
    constexpr re::ReArray<Rva, 8> stores{0x3a94b9, 0x3a94c1, 0x3a94ca, 0x3a94d3,
                                        0x3a94dc, 0x3a94e5, 0x3a94ee, 0x3a94f7};
    for (ReU32 i = 0; i < 0x80; i += 16)
        copy_block(destination + i, source + i, 16, sites[i / 16], stores[i / 16]);
    copy_block(destination + 0x80, source + 0x80, 8, 0x3a94fc, 0x3a9503);
    write(descriptor, signed32(ReU32(read<ReI32>(descriptor, 0x3a950b)) + 1u),
          0x3a950b);
}
FontTextAtlas &Context::atlas(Address key, Rva site) {
    const auto i = store.atlases.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
FontTextFont &Context::font(Address key, Rva site) {
    const auto i = store.fonts.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
} // namespace font_atlas_input_detail
void font_atlas_input_mark_initialized(FontAtlasInputState &s, Address p, ReUSize n) {
    font_atlas_input_detail::mark(s, p, n, true);
}
bool font_atlas_input_initialized(const FontAtlasInputState &s, Address p, ReUSize n) {
    return font_atlas_input_detail::known(s, p, n);
}
} // namespace rust_internal_re
