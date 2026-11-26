#include "scene.hpp"

namespace owned_scene {
namespace {
// [I] Original, hand-authored 5x7 bitmap alphabet. No external font or sample
// asset is loaded. Rows use their low five bits, leftmost pixel at bit four.
using Rows = ::re::ReArray<ReU8, 7>;
constexpr ::re::ReArray<Rows, 95> alphabet{{
    {{0,0,0,0,0,0,0}}, {{4,4,4,4,4,0,4}}, {{10,10,10,0,0,0,0}},
    {{10,31,10,10,31,10,0}}, {{4,15,20,14,5,30,4}}, {{17,2,4,8,16,17,0}},
    {{12,18,20,8,21,18,13}}, {{4,4,8,0,0,0,0}}, {{2,4,8,8,8,4,2}},
    {{8,4,2,2,2,4,8}}, {{0,21,14,31,14,21,0}}, {{0,4,4,31,4,4,0}},
    {{0,0,0,0,0,4,8}}, {{0,0,0,31,0,0,0}}, {{0,0,0,0,0,0,4}},
    {{1,2,2,4,8,8,16}}, {{14,17,19,21,25,17,14}}, {{4,12,4,4,4,4,14}},
    {{14,17,1,2,4,8,31}}, {{30,1,1,14,1,1,30}}, {{2,6,10,18,31,2,2}},
    {{31,16,16,30,1,1,30}}, {{14,16,16,30,17,17,14}}, {{31,1,2,4,8,8,8}},
    {{14,17,17,14,17,17,14}}, {{14,17,17,15,1,1,14}}, {{0,4,0,0,4,0,0}},
    {{0,4,0,0,4,4,8}}, {{2,4,8,16,8,4,2}}, {{0,0,31,0,31,0,0}},
    {{8,4,2,1,2,4,8}}, {{14,17,1,2,4,0,4}}, {{14,17,23,21,23,16,14}},
    {{14,17,17,31,17,17,17}}, {{30,17,17,30,17,17,30}},
    {{14,17,16,16,16,17,14}}, {{30,17,17,17,17,17,30}},
    {{31,16,16,30,16,16,31}}, {{31,16,16,30,16,16,16}},
    {{14,17,16,23,17,17,14}}, {{17,17,17,31,17,17,17}},
    {{14,4,4,4,4,4,14}}, {{7,2,2,2,2,18,12}},
    {{17,18,20,24,20,18,17}}, {{16,16,16,16,16,16,31}},
    {{17,27,21,21,17,17,17}}, {{17,25,21,19,17,17,17}},
    {{14,17,17,17,17,17,14}}, {{30,17,17,30,16,16,16}},
    {{14,17,17,17,21,18,13}}, {{30,17,17,30,20,18,17}},
    {{15,16,16,14,1,1,30}}, {{31,4,4,4,4,4,4}},
    {{17,17,17,17,17,17,14}}, {{17,17,17,17,17,10,4}},
    {{17,17,17,21,21,27,17}}, {{17,17,10,4,10,17,17}},
    {{17,17,10,4,4,4,4}}, {{31,1,2,4,8,16,31}},
    {{14,8,8,8,8,8,14}}, {{16,8,8,4,2,2,1}}, {{14,2,2,2,2,2,14}},
    {{4,10,17,0,0,0,0}}, {{0,0,0,0,0,0,31}}, {{8,4,2,0,0,0,0}},
    {{0,0,14,1,15,17,15}}, {{16,16,30,17,17,17,30}},
    {{0,0,14,17,16,17,14}}, {{1,1,15,17,17,17,15}},
    {{0,0,14,17,31,16,14}}, {{6,8,8,30,8,8,8}},
    {{0,0,15,17,15,1,14}}, {{16,16,30,17,17,17,17}},
    {{4,0,12,4,4,4,14}}, {{2,0,6,2,2,18,12}},
    {{16,16,18,20,24,20,18}}, {{12,4,4,4,4,4,14}},
    {{0,0,26,21,21,21,21}}, {{0,0,30,17,17,17,17}},
    {{0,0,14,17,17,17,14}}, {{0,0,30,17,30,16,16}},
    {{0,0,15,17,15,1,1}}, {{0,0,22,25,16,16,16}},
    {{0,0,15,16,14,1,30}}, {{8,8,30,8,8,9,6}},
    {{0,0,17,17,17,19,13}}, {{0,0,17,17,17,10,4}},
    {{0,0,17,17,21,21,10}}, {{0,0,17,10,4,10,17}},
    {{0,0,17,17,15,1,14}}, {{0,0,31,2,4,8,31}},
    {{2,4,4,8,4,4,2}}, {{4,4,4,4,4,4,4}}, {{8,4,4,2,4,4,8}},
    {{0,0,8,21,2,0,0}}
}};
constexpr re::Address advances_address = 0x31000, lookup_address = 0x32000,
                      glyphs_address = 0x33000;
constexpr unsigned maximum_dimension = 8192;
constexpr ReUSize maximum_pixels = 16 * 1024 * 1024;
constexpr ReU32 background = 0xff1e1712u; // [I] RGBA bytes:18,23,30,255.

ReUSize image_size(unsigned w, unsigned h) {
    if (w > maximum_dimension || h > maximum_dimension ||
        (h && ReUSize(w) > maximum_pixels / h))
        __builtin_trap();
    return ReUSize(w) * h;
}
template<class T> const T *element(const re::DrawCoreBuffer<T> &buffer, ReU64 index) {
    if (!buffer.storage || buffer.size < 0 || buffer.capacity < buffer.size ||
        index >= ReU64(buffer.size) || index >= buffer.storage->size())
        return nullptr;
    const auto &slot = (*buffer.storage)[ReUSize(index)];
    return slot ? &*slot : nullptr;
}
struct Vertex {
    double x{}, y{}, u{}, v{};
    ::re::ReArray<double, 4> color{};
};
bool decode(const re::DrawVertex &bytes, Vertex &v) {
    ::re::ReArray<float, 4> scalars{};
    ReU32 color{};
    ::re::re_memcpy(scalars.data(), bytes.data(), 16);
    ::re::re_memcpy(&color, bytes.data() + 16, 4);
    for (const auto f : scalars)
        if (!::re::re_isfinite(f) || ::re::re_fabsf(f) > 1000000.0f) return false;
    v.x = scalars[0]; v.y = scalars[1]; v.u = scalars[2]; v.v = scalars[3];
    for (unsigned c = 0; c < 4; ++c) v.color[c] = double((color >> (c * 8)) & 255);
    return true;
}
double edge(const Vertex &a, const Vertex &b, double x, double y) {
    return (b.x - a.x) * (y - a.y) - (b.y - a.y) * (x - a.x);
}
bool inclusive(const Vertex &a, const Vertex &b) {
    return b.y < a.y || (b.y == a.y && b.x > a.x);
}
::re::ReArray<double, 4> sample(const Resources &r, double u, double v) {
    const double x = ::re::re_clamp(u, 0.0, 1.0) * r.texture_width - 0.5;
    const double y = ::re::re_clamp(v, 0.0, 1.0) * r.texture_height - 0.5;
    const int x0 = int(::re::re_floor(x)), y0 = int(::re::re_floor(y));
    const double fx = x - x0, fy = y - y0;
    ::re::ReArray<double, 4> result{};
    for (int dy = 0; dy < 2; ++dy) for (int dx = 0; dx < 2; ++dx) {
        const auto px = unsigned(::re::re_clamp(x0 + dx, 0, int(r.texture_width) - 1));
        const auto py = unsigned(::re::re_clamp(y0 + dy, 0, int(r.texture_height) - 1));
        const auto packed = r.texture_rgba[ReUSize(py) * r.texture_width + px];
        const double weight = (dx ? fx : 1 - fx) * (dy ? fy : 1 - fy);
        for (unsigned c = 0; c < 4; ++c)
            result[c] += double((packed >> (c * 8)) & 255) * weight;
    }
    return result;
}
void triangle(Resources &r, Vertex a, Vertex b, Vertex c, const ::re::ReArray<float, 4> &clip) {
    double area = edge(a, b, c.x, c.y);
    if (::re::re_fabs(area) < 1e-12) return;
    if (area < 0) { ::re::re_swap(b, c); area = -area; }
    const double left = ::re::re_max(0.0, ::re::re_max(double(clip[0]), ::re::re_min(a.x, ::re::re_min(b.x, c.x))));
    const double top = ::re::re_max(0.0, ::re::re_max(double(clip[1]), ::re::re_min(a.y, ::re::re_min(b.y, c.y))));
    const double right = ::re::re_min(double(r.width), ::re::re_min(double(clip[2]), ::re::re_max(a.x, ::re::re_max(b.x, c.x))));
    const double bottom = ::re::re_min(double(r.height), ::re::re_min(double(clip[3]), ::re::re_max(a.y, ::re::re_max(b.y, c.y))));
    if (left >= right || top >= bottom) return;
    const int x0 = int(::re::re_ceil(left - 0.5)), y0 = int(::re::re_ceil(top - 0.5));
    const int x1 = int(::re::re_ceil(right - 0.5)), y1 = int(::re::re_ceil(bottom - 0.5));
    const bool ab = inclusive(a, b), bc = inclusive(b, c), ca = inclusive(c, a);
    for (int y = y0; y < y1; ++y) for (int x = x0; x < x1; ++x) {
        const double px = double(x) + 0.5, py = double(y) + 0.5;
        const double wa = edge(b, c, px, py), wb = edge(c, a, px, py), wc = edge(a, b, px, py);
        if (wa < 0 || (wa == 0 && !bc) || wb < 0 || (wb == 0 && !ca) ||
            wc < 0 || (wc == 0 && !ab)) continue;
        const double fa = wa / area, fb = wb / area, fc = wc / area;
        const auto texel = sample(r, a.u * fa + b.u * fb + c.u * fc,
                                 a.v * fa + b.v * fb + c.v * fc);
        ::re::ReArray<double, 4> source{};
        for (unsigned channel = 0; channel < 4; ++channel)
            source[channel] = texel[channel] * (a.color[channel] * fa +
                              b.color[channel] * fb + c.color[channel] * fc) / 255;
        const double alpha = ::re::re_clamp(source[3] / 255, 0.0, 1.0);
        if (alpha == 0) continue;
        auto &destination = r.pixels[ReUSize(y) * r.width + unsigned(x)];
        const double old_alpha = double(destination >> 24) / 255;
        const double out_alpha = alpha + old_alpha * (1 - alpha);
        ReU32 output = ReU32(static_cast<long>(::re::re_round(out_alpha * 255))) << 24;
        for (unsigned channel = 0; channel < 3; ++channel) {
            const double old = double((destination >> (channel * 8)) & 255);
            const double value = (source[channel] * alpha + old * old_alpha * (1 - alpha)) / out_alpha;
            output |= ReU32(static_cast<long>(::re::re_round(::re::re_clamp(value, 0.0, 255.0)))) << (channel * 8);
        }
        destination = output;
    }
}
} // namespace

Resources::Resources() {
    texture_width = texture_height = 128;
    auto &a = fonts.atlases[atlas];
    a.width = int(texture_width); a.height = int(texture_height);
    a.uv_scale = {1.0f / texture_width, 1.0f / texture_height};
    a.flags = 4; // [I] Geometry AA lines; no authored line-UV atlas.
    a.rgba.emplace(ReUSize(texture_width) * texture_height, 0x00ffffffu);
    a.fonts.push_back(font);
    a.rectangles = {{2,2,120,0,0,0,{},0}, {32,32,0,64,0,0,{},0},
                    {48,48,40,64,0,0,{},0}};
    a.white_rect = 0; a.round_rect = 1; a.circle_rect = 2;
    a.radius = 12; a.inner = 4; a.exponent = 1; a.blur = true;
    auto &f = fonts.fonts[font];
    f.atlas = atlas; f.measure.nominal = 14; f.fallback_character = '?';
    for (ReUSize index = 0; index < alphabet.size(); ++index) {
        const unsigned ox = unsigned(index % 16) * 7, oy = unsigned(index / 16) * 9;
        for (unsigned y = 0; y < 7; ++y) for (unsigned x = 0; x < 5; ++x)
            if (alphabet[index][y] & (1u << (4 - x)))
                (*a.rgba)[ReUSize(oy + y) * texture_width + ox + x] = 0xffffffffu;
        re::FontTextGlyph glyph;
        glyph.advance = index == 0 ? 5.0f : 8.0f;
        glyph.x0 = 0; glyph.y0 = 2; glyph.x1 = index == 0 ? 0.0f : 7.0f; glyph.y1 = 12;
        glyph.u0 = float(ox) / texture_width; glyph.v0 = float(oy) / texture_height;
        glyph.u1 = float(ox + 5) / texture_width; glyph.v1 = float(oy + 7) / texture_height;
        trace.hit("font_text_add_glyph_39ff7c");
        re::font_text_add_glyph_39ff7c(f, a, ReU16(index + 32), glyph);
    }
    trace.hit("font_text_finish_atlas_3a4b40");
    trace.hit("font_text_white_3a4f38");
    trace.hit("font_text_shapes_3a5204");
    trace.hit("font_text_build_lookup_3a33c0");
    re::font_text_finish_atlas_3a4b40(fonts, atlas);
    texture_rgba = *a.rgba;
    re::DrawShapesShared shape;
    shape.white_uv = a.white_uv; shape.circle_error = 0.3f;
    shape.arc_fast_radius_cutoff = shape.circle_error /
        (1 - ::re::re_cosf(::re::RE_PI_F / 48));
    for (ReUSize i = 0; i < shape.arc_fast.size(); ++i) {
        const float angle = float(i) * 2 * ::re::RE_PI_F / 48;
        shape.arc_fast[i] = {::re::re_cosf(angle), ::re::re_sinf(angle)};
    }
    for (ReUSize i = 0; i < shape.circle_segments.size(); ++i) {
        if (i == 0) { shape.circle_segments[i] = 4; continue; }
        const float radius = float(i);
        const float angle = ::re::re_acosf(1 - ::re::re_min(radius, shape.circle_error) /
                                              ::re::re_max(radius, 0.001f));
        const int segments = int(::re::re_ceilf(::re::RE_PI_F / angle));
        shape.circle_segments[i] = ReU8(::re::re_clamp((segments + 1) & ~1, 4, 254));
    }
    re::DrawShadowsShared shadow;
    ::re::re_copy(a.rounded.begin(), a.rounded.end(), shadow.uv.begin());
    shadow.uv[9] = a.circle; shadow.atlas_width = a.width; shadow.atlas_height = a.height;
    shadow.circle_zero_radius_count = 12;
    for (const auto key : {esp_list, menu_list}) {
        draw.lists[key].shared_initial_flags = 1 | 4 | 8;
        shared[key] = {font, 14}; shapes[key] = shape; shadows[key] = shadow;
    }
    sink = re::bind_font_text_draw_core(draw, shared);
    const auto reserve = sink.reserve, unreserve = sink.unreserve;
    const auto write = sink.write;
    sink.reserve = [this, reserve](re::Address key, ReI32 i, ReI32 v) {
        trace.hit("font_text_raster_3a792c");
        trace.hit("draw_core_reserve_3a719c"); reserve(key, i, v);
    };
    sink.unreserve = [this, unreserve](re::Address key, ReI32 i, ReI32 v) {
        trace.hit("draw_core_unreserve"); unreserve(key, i, v);
    };
    sink.write = [this, write](re::Address key, ::re::ReSpan<const re::DrawVertex> vertices,
                               ::re::ReSpan<const ReU16> indices) {
        trace.hit("draw_core_write_relative"); write(key, vertices, indices);
    };
    reset(0, 0);
}

void Resources::reset(unsigned w, unsigned h) {
    const auto count = image_size(w, h);
    pixels.resize(count); // [I] Validate and allocate before changing published dimensions.
    selected_lists.reset();
    width = w; height = h;
    ::re::re_fill(pixels.begin(), pixels.end(), background);
    for (auto &[key, list] : draw.lists) {
        (void)key;
        trace.hit("draw_core_reset_3a9258"); re::draw_core_reset_3a9258(list);
        trace.hit("draw_core_push_clip_3a7268");
        re::draw_core_push_clip_3a7268(list, {0,0}, {float(w),float(h)}, false);
        trace.hit("draw_core_push_texture_3a73c4");
        re::draw_core_push_texture_3a73c4(list, texture);
    }
}

void Resources::text(re::Address list, re::Vec2 position, ::re::ReStringView bytes,
                     ReU32 color, float size) {
    if (!::re::re_isfinite(position.x) || !::re::re_isfinite(position.y) ||
        ::re::re_fabsf(position.x) > 1000000 || ::re::re_fabsf(position.y) > 1000000 ||
        !::re::re_isfinite(size) || size <= 0 || size > 4096 || bytes.size() > 16000)
        __builtin_trap();
    re::FontTextRequest request;
    request.draw_list = list; request.font = font; request.size = size;
    request.position = position; request.color = color; request.bytes = bytes;
    trace.hit("font_text_draw_3a31f8");
    re::font_text_draw_3a31f8(fonts, sink, request);
}

void Resources::select_lists(::re::ReVector<re::Address> keys) {
    for (ReUSize index = 0; index < keys.size(); ++index) {
        if (!draw.lists.contains(keys[index]) ||
            ::re::re_find(keys.begin(), keys.begin() + ReISize(index), keys[index]) !=
                keys.begin() + ReISize(index))
            __builtin_trap();
    }
    selected_lists = ::re::re_move(keys);
}

::re::ReVector<re::Address> Resources::presentation_order() const {
    if (selected_lists) return *selected_lists;
    ::re::ReVector<re::Address> keys;
    keys.reserve(draw.lists.size());
    for (const auto &[key, list] : draw.lists) {
        (void)list;
        keys.push_back(key);
    }
    return keys;
}

void Resources::rasterize() {
    if (pixels.size() != image_size(width, height))
        __builtin_trap();
    ::re::re_fill(pixels.begin(), pixels.end(), background);
    if (!width || !height) return;
    if (!texture_width || !texture_height || texture_width > maximum_dimension ||
        texture_height > maximum_dimension ||
        texture_rgba.size() != image_size(texture_width, texture_height))
        __builtin_trap();
    trace.hit("host_triangle_rasterizer");
    for (const auto key : presentation_order()) {
        const auto &list = draw.lists.at(key);
        if (list.commands.size < 0 || list.commands.size > 1000000) {
            trace.hit("host_rejected_command"); continue;
        }
        for (ReI32 n = 0; n < list.commands.size; ++n) {
            const auto *command = element(list.commands, ReU64(n));
            if (!command) { trace.hit("host_rejected_command"); continue; }
            if (!command->element_count) continue;
            const bool finite_clip = ::re::re_all_of(command->clip.begin(), command->clip.end(),
                                                [](float x) { return ::re::re_isfinite(x); });
            if (command->callback || command->texture != texture || !finite_clip ||
                list.indices.size < 0 || command->element_count % 3 ||
                ReU64(command->index_offset) + command->element_count >
                    ReU64(list.indices.size)) {
                trace.hit("host_rejected_command"); continue;
            }
            for (ReU64 offset = 0; offset < command->element_count; offset += 3) {
                ::re::ReArray<Vertex, 3> vertices{};
                bool valid = true;
                for (unsigned corner = 0; corner < 3; ++corner) {
                    const auto *index = element(list.indices, command->index_offset + offset + corner);
                    const auto *vertex = index ? element(list.vertices,
                        ReU64(command->vertex_offset) + *index) : nullptr;
                    if (!vertex || !decode(*vertex, vertices[corner])) { valid = false; break; }
                }
                if (!valid) { trace.hit("host_rejected_triangle"); continue; }
                triangle(*this, vertices[0], vertices[1], vertices[2], command->clip);
            }
        }
    }
}

void Resources::write_font_snapshot(re::Snapshot &snapshot) const {
    const auto &f = fonts.fonts.at(font);
    // [I] Stable owned ranges for ESP's recovered text measurement/controllers.
    if (f.measure.advances.size() > 1024 || f.lookup.size() > 1024 || f.glyphs.size() > 1024 ||
        !snapshot.contains(font, 0x78) ||
        !snapshot.contains(advances_address, f.measure.advances.size() * sizeof(float)) ||
        !snapshot.contains(lookup_address, f.lookup.size() * sizeof(ReU16)) ||
        !snapshot.contains(glyphs_address, f.glyphs.size() * sizeof(re::FontTextGlyph)))
        __builtin_trap();
    const auto put = [&snapshot]<class T>(re::Address address, const T &value) {
        if (!snapshot.write(address, value)) __builtin_trap();
    };
    put(font, ReI32(f.measure.advances.size()));
    put(font + 4, ReI32(f.measure.advances.size())); put(font + 8, advances_address);
    put(font + 0x10, f.measure.fallback); put(font + 0x14, f.measure.nominal);
    put(font + 0x18, ReI32(f.lookup.size())); put(font + 0x1c, ReI32(f.lookup.size()));
    put(font + 0x20, lookup_address);
    put(font + 0x28, ReI32(f.glyphs.size())); put(font + 0x2c, ReI32(f.glyphs.size()));
    put(font + 0x30, glyphs_address);
    put(font + 0x38, f.fallback ? glyphs_address + *f.fallback * sizeof(re::FontTextGlyph) : re::Address(0));
    put(font + 0x40, f.atlas); put(font + 0x52, f.fallback_character);
    put(font + 0x54, f.ellipsis_character); put(font + 0x56, f.ellipsis_count);
    put(font + 0x58, f.ellipsis_width); put(font + 0x5c, f.ellipsis_step);
    put(font + 0x60, ReU8(f.dirty)); put(font + 0x70, f.surface); put(font + 0x74, f.used_pages);
    for (ReUSize i = 0; i < f.measure.advances.size(); ++i) put(advances_address + i * 4, f.measure.advances[i]);
    for (ReUSize i = 0; i < f.lookup.size(); ++i) put(lookup_address + i * 2, f.lookup[i]);
    for (ReUSize i = 0; i < f.glyphs.size(); ++i) put(glyphs_address + i * 40, f.glyphs[i]);
}
} // namespace owned_scene
