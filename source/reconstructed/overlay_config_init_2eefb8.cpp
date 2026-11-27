// [C] 0x2eefb8..0x2ef22e: ESP/overlay configuration struct initializer.
// Constructs a large struct (~0x200 bytes) with default values for the
// cheat's visual overlay system.
//
// The struct contains:
//   +0x00: base object (initialized by call)
//   +0x20: text/label config (initialized by call)
//   +0x40: int32 enabled flag (default 0)
//   +0x44: byte visible flag (default 0)
//   +0x48: RGBA color (default 0xFF,0xFF,0xFF,0xFF)
//   +0x58: byte active flag (default 0)
//   +0x5c: qword context pointer (default 0)
//   +0x64: int32 mode (default 0)
//   +0x68..0x77: two vector lists (initialized by calls)
//   +0x78..0x137: six string/text buffers (initialized by calls)
//   +0x138: int32 scale mode (default 0)
//   +0x13c: qword distance (default 100)
//   +0x144: qword max distance (default 100)
//   +0x14c: int32 max entities (default 100)
//   +0x150: qword filter (default 0)
//   +0x158: word flags (default 0)
//   +0x15c: RGBA secondary color
//   +0x16c: byte outline enabled (default 0)
//   +0x170: int32 outline width (default 40)
//   +0x174: int32 outline height (default 220)
//   +0x178: byte outline filled (default 1)
//   +0x180: text buffer
//   +0x1a0: RGBA tertiary color
//   +0x1b0: word precision (default 0)
//   +0x1b4: float opacity (default 1.0f)
//   +0x1b8: float font_size (default 10.0f)
//   +0x1bc: float max_draw_distance (default 50.0f)
//   +0x1c0: float scale_factor (default 1.0f)
//   +0x1c4: float fade_start (default 0.8f)
//   +0x1c8: float line_width (default 1.0f)
//   +0x1cc: float min_alpha (default 0.1f)
//   +0x1d4: RGBA quaternary color (black, default rgba(0,0,255,255))
//
// Evidence: raw disassembly at dump offset 0x2eefb8, 623 bytes.

#include "reconstruction.hpp"
namespace rust_internal_re {

struct OverlayConfig {
    ReByte base[0x20]{};
    ReByte label_config[0x20]{};
    ReI32 enabled{};
    ReByte visible{};
    ReByte _pad1[3]{};
    re::ReArray<ReByte, 4> primary_color{0xFF, 0xFF, 0xFF, 0xFF};
    ReByte _pad2[0x0C]{};
    ReByte active{};
    ReByte _pad3[3]{};
    Address context{};
    ReI32 mode{};
    ReByte vectors_a[8]{};
    ReByte vectors_b[8]{};
    ReByte text_bufs[0xC0]{};
    ReI32 scale_mode{};
    ReU64 distance{100};
    ReU64 max_distance{100};
    ReI32 max_entities{100};
    Address filter{};
    ReU16 flags{};
    ReByte _pad4[2]{};
    re::ReArray<ReByte, 4> secondary_color{0xFF, 0xFF, 0xFF, 0xFF};
    ReByte _pad5[0x10]{};
    ReByte outline_enabled{};
    ReByte _pad6[3]{};
    ReI32 outline_width{40};
    ReI32 outline_height{220};
    ReByte outline_filled{1};
    ReByte _pad7[7]{};
    ReByte text_buf2[0x20]{};
    re::ReArray<ReByte, 4> tertiary_color{};
    ReByte _pad8[0x0C]{};
    ReU16 precision{};
    ReByte _pad9[2]{};
    // [C] 0x2ef118: float constants from immediate values
    float opacity{1.0f};        // 0x3F800000
    float font_size{10.0f};     // 0x41200000
    float max_draw_dist{50.0f}; // 0x42480000
    float scale_factor{1.0f};   // 0x3F800000
    float fade_start{0.8f};     // 0x3F4CCCCD
    float line_width{1.0f};     // 0x3F800000
    float min_alpha{0.1f};      // 0x3DCCCCCD
};

// [C] 0x2eefb8: initializes OverlayConfig struct at rcx with default values
void init_overlay_config_2eefb8(
    Snapshot& s,
    Address config_addr,
    const re::ReFunction<void(Address)>& init_base,
    const re::ReFunction<void(Address)>& init_label,
    const re::ReFunction<void(Address, ReU32, ReU32, ReU32, ReU32)>& init_rgba,
    const re::ReFunction<void(Address)>& init_vector_list,
    const re::ReFunction<void(Address)>& init_text_buffer
) {
    // [C] 0x2eefca: init base object
    init_base(config_addr);
    // [C] 0x2ef017: init label config at +0x20
    init_label(config_addr + 0x20);
    // [C] 0x2ef002: init primary RGBA at +0x48 (white, 0xFF all channels)
    init_rgba(config_addr + 0x48, 0xFF, 0xFF, 0xFF, 0xFF);
    // [C] 0x2ef00a: zero fields at +0x40, +0x44
    s.write<ReI32>(config_addr + 0x40, 0);
    s.write<ReByte>(config_addr + 0x44, 0);
    // [C] 0x2ef00f: zero fields at +0x58..+0x64
    s.write<ReByte>(config_addr + 0x58, 0);
    s.write<Address>(config_addr + 0x5c, 0);
    s.write<ReI32>(config_addr + 0x64, 0);
    // [C] 0x2ef01a: init two vector lists at +0x68, +0x70
    init_vector_list(config_addr + 0x68);
    init_vector_list(config_addr + 0x70);
    // [C] 0x2ef028..0x2ef060: init text buffers at +0x78 through +0x118 (six buffers)
    for (Address off : {Address(0x78), Address(0x98), Address(0xB8), Address(0xD8), Address(0xF8), Address(0x118)}) {
        init_text_buffer(config_addr + off);
    }
    // [C] 0x2ef068: set default numeric values
    s.write<ReI32>(config_addr + 0x138, 0);
    ReI32 default_count = 100;
    s.write<ReU64>(config_addr + 0x13C, default_count);
    s.write<ReU64>(config_addr + 0x144, default_count);
    s.write<ReI32>(config_addr + 0x14C, default_count);
    s.write<Address>(config_addr + 0x150, 0);
    s.write<ReU16>(config_addr + 0x158, 0);
    // [C] 0x2ef0a0: init secondary RGBA at +0x15c
    init_rgba(config_addr + 0x15C, 0xFF, 0, 0, 0xFF);
    // [C] 0x2ef0b8: outline defaults
    s.write<ReByte>(config_addr + 0x16C, 0);
    s.write<ReI32>(config_addr + 0x170, 40);
    s.write<ReI32>(config_addr + 0x174, 220);
    s.write<ReByte>(config_addr + 0x178, 1);
    // [C] 0x2ef0d0: init text buffer at +0x180
    init_text_buffer(config_addr + 0x180);
    // [C] 0x2ef0e8: init tertiary RGBA at +0x1a0
    init_rgba(config_addr + 0x1A0, 0, 0, 0xFF, 0xFF);
    // [C] 0x2ef0f4: rendering float defaults
    s.write<ReU16>(config_addr + 0x1B0, 0);
    s.write<float>(config_addr + 0x1B4, 1.0f);
    s.write<float>(config_addr + 0x1B8, 10.0f);
    s.write<float>(config_addr + 0x1BC, 50.0f);
    s.write<float>(config_addr + 0x1C0, 1.0f);
    s.write<float>(config_addr + 0x1C4, 0.8f);
    s.write<float>(config_addr + 0x1C8, 1.0f);
    s.write<float>(config_addr + 0x1CC, 0.1f);
    // [C] 0x2ef13e: init quaternary RGBA at +0x1d4
    init_rgba(config_addr + 0x1D4, 0, 0xFF, 0, 0xFF);
}

} // namespace rust_internal_re
