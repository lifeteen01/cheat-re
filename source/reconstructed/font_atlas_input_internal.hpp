#pragma once
#include "font_atlas_input_analysis.hpp"

namespace rust_internal_re::font_atlas_input_detail {
inline ReI32 signed32(ReU32 n) { return re::re_bit_cast<ReI32>(n); }
inline Address offset(ReI32 n) { return Address(ReI64(n)); }
bool known(const FontAtlasInputState &, Address, ReUSize);
void mark(FontAtlasInputState &, Address, ReUSize, bool);
void check_known(const FontAtlasInputState &, Address, ReUSize, Rva);
template <class T>
T get(const Snapshot &image, const FontAtlasInputState &state, Address p, Rva site) {
    check_known(state, p, sizeof(T), site);
    const auto value = image.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
template <class T> void put(Snapshot &image, FontAtlasInputState &state, Address p, T v, Rva site) {
    if (!image.write(p, v))
        { __builtin_trap(); }
    mark(state, p, sizeof(T), true);
}
struct Context {
    Snapshot &image;
    FontTextStore &store;
    FontAtlasInputState &state;
    const FontAtlasInputEnvironment &env;
    const FontAtlasInputEffects &effects;
    template <class T> T read(Address p, Rva site) { return get<T>(image, state, p, site); }
    template <class T> void write(Address p, T v, Rva site) { put(image, state, p, v, site); }
    void bound(ReU64, Rva) const;
    Address allocate(ReU64, Rva);
    Address marshal(FontAtlasInputStorage, re::ReSpan<const ReByte>, Rva);
    void release(Address, Rva);
    void copy(Address destination, Address source, ReU64 length, Rva);
    void copy_block(Address destination, Address source, ReUSize length, Rva load, Rva store);
    void reserve(Address descriptor, ReI32 count, ReU32 stride);
    void append_font(Address atlas, Address font);
    void append_config(Address descriptor, Address source);
    Address element(Address descriptor, ReI32 index, ReU32 stride, Rva);
    FontTextAtlas &atlas(Address, Rva);
    FontTextFont &font(Address, Rva);
    void clear_vector(Address descriptor, const re::ReFunction<void()> &);
    void clear_pixels(Address atlas);
    void destroy_font(Address font);
};
} // namespace rust_internal_re::font_atlas_input_detail
