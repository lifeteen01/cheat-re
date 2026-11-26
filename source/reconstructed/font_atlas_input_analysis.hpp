#pragma once
#include "font_builder_analysis.hpp"
#include "frame_dependencies_ui_setup.hpp"

namespace rust_internal_re {
// [I] Tracking does not fill native allocations. An unwritten byte remains unknown
// even when its Snapshot backing happens to contain zero or an old allocation.
struct FontAtlasInputRegion {
    re::ReVector<ReU8> initialized;
};
struct FontAtlasInputState {
    re::ReMap<Address, FontAtlasInputRegion> regions;
};
enum class FontAtlasInputStorage { temporary_config, font_bytes, glyph_ranges };
struct FontAtlasInputEffects {
    // [I] Only genuine native395158 calls use this effect. Keys must refer to
    // mapped Snapshot storage; the callback may mutate copied native fields.
    // Providers retain separate live spans. On heap reuse at an interior key,
    // they retire stale state.regions bounds for the released span explicitly.
    re::ReFunction<Address(ReU64)> allocate_owned;
    FontBuilderSupportEffects support;
    // [I] Explicit ABI/lifetime adaptation for UnityBytes and native stack
    // temporaries. It must copy all supplied bytes into separately mapped storage.
    // This is not a native allocation and must not increment395158 counters.
    // Font/range storage survives ingestion and build; the caller manages its
    // lifetime, including native ownership transfer for owned font data.
    re::ReFunction<Address(FontAtlasInputStorage, re::ReSpan<const ReByte>)> marshal_owned_bytes;
};
struct FontAtlasInputEnvironment {
    Address module{};
    ReUSize maximum_bytes{64000000}, maximum_steps{1000000};
};
// [I]Flat-RVA allocator composition through the frozen concrete395158/39517c
// wrappers. Only their final typed allocation/free effects are supplied.
FontAtlasInputEffects
bind_font_atlas_input_allocators(Snapshot &, FontAtlasInputEffects,
                                 const re::ReFunction<Address(Address, Address, ReUSize)> &,
                                 const re::ReFunction<void(Address, Address, Address)> &);
void font_atlas_input_mark_initialized(FontAtlasInputState &, Address, ReUSize);
bool font_atlas_input_initialized(const FontAtlasInputState &, Address, ReUSize);
Address font_config_ctor_39f550(Snapshot &, Address, FontAtlasInputState &);
UnityBytes font_config_value_39f550();
Address font_ctor_39f3d0(Snapshot &, Address, FontTextStore &, FontAtlasInputState &);
Address font_atlas_add_39fd68(Snapshot &, Address atlas, Address config, FontTextStore &,
                              FontAtlasInputState &, const FontAtlasInputEnvironment &,
                              const FontAtlasInputEffects &);
// [I] The native stack config is retained as owned bytes, then explicitly
// marshalled. Source config0 selects the concrete default constructor.
Address font_atlas_memory_39fe54(Snapshot &, Address atlas, Address data, ReI32 length,
                                 float size, Address config, Address ranges, FontTextStore &,
                                 FontAtlasInputState &, const FontAtlasInputEnvironment &,
                                 const FontAtlasInputEffects &);
void font_atlas_clear_input_3a3d04(Snapshot &, Address, FontTextStore &, FontAtlasInputState &,
                                   const FontAtlasInputEnvironment &,
                                   const FontAtlasInputEffects &);
void font_atlas_clear_fonts_3a3c64(Snapshot &, Address, FontTextStore &, FontAtlasInputState &,
                                   const FontAtlasInputEnvironment &,
                                   const FontAtlasInputEffects &);
void font_atlas_clear_3a3c40(Snapshot &, Address, FontTextStore &, FontAtlasInputState &,
                             const FontAtlasInputEnvironment &, const FontAtlasInputEffects &);
void font_ranges_unpack_3a8bec(Snapshot &, ReI32 base, Address deltas, ReI32 count,
                               Address output, FontAtlasInputState &,
                               const FontAtlasInputEnvironment & = {});
Address font_atlas_ranges(Snapshot &, Rva getter, FontAtlasInputState &,
                          const FontAtlasInputEnvironment & = {});
UnityBytes font_atlas_range_bytes(Snapshot &, Rva getter, FontAtlasInputState &,
                                  const FontAtlasInputEnvironment & = {});
// [I] Precondition for passing tracked allocations to the frozen byte parser.
// Unknown font bytes and unbounded glyph-range spans stop explicitly; no generated
// glyph metric is substituted. This is a preflight contract, not a native prefix.
void font_atlas_input_require_font_bytes(const Snapshot &, Address atlas,
                                         const FontAtlasInputState &,
                                         const FontAtlasInputEnvironment & = {});
UnityApi bind_font_atlas_input(Snapshot &, FontTextStore &, FontAtlasInputState &,
                               const FontAtlasInputEnvironment &, const FontAtlasInputEffects &,
                               UnityApi fallback = {});
FrameDependencyApi bind_frame_font_atlas_input(Snapshot &, FontTextStore &, FontAtlasInputState &,
                                               const FontAtlasInputEnvironment &,
                                               const FontAtlasInputEffects &,
                                               FrameDependencyApi fallback = {});
re::ReSpan<const RendererCoverage> font_atlas_input_coverage();
void check_font_atlas_input_reconstruction();
} // namespace rust_internal_re
