#include "frame_dependencies_ui_setup.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva r;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
void check(const FrameDependencyResult &r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class T, class F, class... A> T effect(Rva r, const F &f, A &&...args) {
    if (!f)
        stop(UnityStatus::missing_dependency, r);
    const auto value = f(re::re_forward<A>(args)...);
    if (!value)
        stop(UnityStatus::missing_dependency, r);
    return *value;
}
template <class T>
T get(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    const auto v = effect<UnityValue>(r, a.unity.external, r,
                                      re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (const auto p = re::re_get_if<T>(&v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
UnityBytes config(const FrameDependencyApi &a) {
    auto bytes = get<UnityBytes>(a, 0x39f550);
    if (bytes.bytes.size() < 0x88)
        stop(UnityStatus::malformed_input, 0x39f550);
    return bytes;
}
UnityBytes literal(const FrameDependencyApi &a, Rva r, ReUSize size) {
    auto bytes = effect<UnityBytes>(r, a.embedded_bytes, r, size);
    if (bytes.bytes.size() != size)
        stop(UnityStatus::malformed_input, r);
    return bytes;
}
ReU16 word(const UnityBytes &b, ReUSize i) {
    if (i + 2 > b.bytes.size())
        stop(UnityStatus::malformed_input, 0x3a10ec);
    return ReU16(static_cast<ReU8>(b.bytes[i])) |
           ReU16(ReU16(static_cast<ReU8>(b.bytes[i + 1])) << 8);
}
void append(UnityBytes &b, ReU16 v) {
    b.bytes.push_back(ReByte(v & 255));
    b.bytes.push_back(ReByte(v >> 8));
}
// [I] Owned adaptation of ImFontGlyphRangesBuilder AddRanges/BuildRanges.
void add_ranges(re::ReVector<bool> &bits, const UnityBytes &bytes) {
    for (ReUSize i = 0;; i += 4) {
        const auto first = word(bytes, i);
        if (first == 0)
            return;
        const auto end = word(bytes, i + 2);
        if (first > end)
            stop(UnityStatus::malformed_input, 0x3a10ec);
        for (ReU32 c = first; c <= end; ++c)
            bits[c] = true;
    }
}
UnityBytes build_ranges(const re::ReVector<bool> &bits) {
    UnityBytes out;
    for (ReU32 c = 0; c < bits.size(); ++c)
        if (bits[c]) {
            const auto first = c;
            while (c + 1 < bits.size() && bits[c + 1])
                ++c;
            append(out, static_cast<ReU16>(first));
            append(out, static_cast<ReU16>(c));
        }
    append(out, 0);
    return out;
}
Address add_font(const FrameDependencyApi &a, Address atlas, const UnityBytes &bytes, float size,
                 UnityValue cfg, UnityValue ranges) {
    if (bytes.bytes.size() > ReUSize(re::ReNumericLimits<ReI32>::max()))
        stop(UnityStatus::analysis_limit, 0x39fe54);
    return get<Address>(a, 0x39fe54,
                        {atlas, bytes, static_cast<ReI32>(bytes.bytes.size()), size,
                         re::re_move(cfg), re::re_move(ranges)});
}
void family_font(FrameMenuState &s, const FrameDependencyApi &a, unsigned family, float size) {
    auto cfg = config(a);
    cfg.bytes[0xc] = ReByte(0);
    auto &bucket = s.font_buckets[family];
    bucket.requested.push_back(size); // [C] Before IO getter and AddFont.
    const auto io = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac);
    const auto font =
        add_font(a, io.atlas, bucket.bytes, size * s.ui_scale, cfg, bucket.glyph_ranges);
    bucket.fonts.insert(size, font); // [C] Duplicate float-key insert retains first.
    s.font_sizes[font] = size * s.ui_scale;
    if (family == 1)
        s.sized_fonts.insert(static_cast<ReI32>(size), font);
}
Address file_font(FrameDependencyState &files, const FrameDependencyApi &a, Address atlas,
                  re::ReString path, float size, UnityBytes cfg, const UnityBytes &ranges) {
    check(prepare_frame_dependency_cache(files, a, 0x2d61b4));
    const auto data =
        effect<re::ReOptional<re::ReVector<ReByte>>>(0x2d61b4, a.read_bytes_2d61b4, path);
    if (!data || data->empty())
        return 0;
    // [C] 35a8c0 only writes Name when its first byte at +56 is zero.
    if (cfg.bytes[0x56] == ReByte(0)) {
        const auto nul = path.find('\0');
        if (nul != re::ReString::npos)
            path.resize(nul);
        const auto slash = path.find_last_of("/\\");
        const auto basename = path.substr(slash == re::ReString::npos ? 0 : slash + 1);
        re::ReArray<char, 40> name{};
        (void)re::re_snprintf(name.data(), name.size(), "%s, %.0fpx", basename.c_str(),
                            static_cast<double>(size));
        for (ReUSize i = 0; i < name.size(); ++i)
            cfg.bytes[0x56 + i] = ReByte(static_cast<unsigned char>(name[i]));
    }
    // [I] ImGui allocation/copy of file bytes is replaced with an owned vector.
    // Null managed arrays and empty files preserve the native zero-font return.
    return add_font(a, atlas, UnityBytes{*data}, size, re::re_move(cfg), ranges);
}
} // namespace
FrameDependencyResult setup_frame_ui_35ccf4(FrameMenuState &s, FrameDependencyState &files,
                                            const FrameDependencyApi &a) {
    FrameDependencyResult result;
    {
        call(a, 0x390864, {Address(0)});
        const auto io = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac);
        call(a, 0x398cc8, {ReI32(4), 0.0f});
        s.io_config_flags = io.config_flags | 1u;
        s.io_ini_filename = 0;
        call(a, 0x3a3c40, {io.atlas});
        initialize_frame_colors_386acc(s);
        initialize_frame_style_389220(s);
        constexpr re::ReArray<Rva, 3> blobs = {0x2605f0, 0x26e850, 0x27cc90};
        constexpr re::ReArray<ReUSize, 3> sizes = {0xe25c, 0xe43c, 0x2cf8};
        for (unsigned i = 0; i < 3; ++i)
            s.font_buckets[i].bytes = literal(a, blobs[i], sizes[i]);
        for (unsigned i = 0; i < 3; ++i) {
            const auto current = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac);
            s.font_buckets[i].glyph_ranges = get<UnityBytes>(a, 0x3a47b4, {current.atlas});
        }
        constexpr re::ReArray<re::RePair<unsigned, float>, 12> requests = {{{0, 14},
                                                                          {0, 12},
                                                                          {1, 12},
                                                                          {1, 17},
                                                                          {2, 16},
                                                                          {2, 10},
                                                                          {1, 13},
                                                                          {1, 16},
                                                                          {1, 18},
                                                                          {1, 20},
                                                                          {1, 22},
                                                                          {1, 24}}};
        for (const auto &[family, size] : requests)
            family_font(s, a, family, size);
        const auto primary = literal(a, 0x24f330, 0x112b4);
        const auto secondary = literal(a, 0x248f30, 0x6400);
        const re::ReArray<UnityBytes, 3> defaults = {primary, secondary, primary};
        constexpr re::ReArray<float, 3> default_sizes = {11.0f, 10.0f, 16.0f};
        for (unsigned i = 0; i < 3; ++i) {
            const auto ranges = get<UnityBytes>(a, 0x3a47b4, {io.atlas});
            s.fonts[i] = add_font(a, io.atlas, defaults[i], default_sizes[i], Address(0), ranges);
            s.font_sizes[s.fonts[i]] = default_sizes[i];
        }
        if (!(s.glyph_once_flags & 1)) {
            s.glyph_once_flags |= 1;
            s.font_glyph_ranges.bytes.clear();
        }
        re::ReVector<bool> glyphs(65536, false);
        const auto chinese_cfg = config(a);
        // [C] Direct 295ac0 literal is {20,ff,100,24f,0} (little-endian words).
        UnityBytes latin;
        for (const auto w : {ReU16(0x20), ReU16(0xff), ReU16(0x100),
                             ReU16(0x24f), ReU16(0)})
            append(latin, w);
        add_ranges(glyphs, latin);
        for (const Rva getter : {0x3a47ccu, 0x3a47b4u, 0x3a4748u, 0x3a47c4u, 0x3a4830u, 0x3a4840u,
                                 0x3a4838u, 0x3a4750u})
            add_ranges(glyphs, get<UnityBytes>(a, getter, {io.atlas}));
        s.font_glyph_ranges = build_ranges(glyphs);
        s.fonts[3] = file_font(files, a, io.atlas, "C:\\Windows\\Fonts\\msyhbd.ttc", 16.0f,
                               chinese_cfg, s.font_glyph_ranges);
        s.font_sizes[s.fonts[3]] = 16.0f;
    }
    return result;
}
UnityFrameApi bind_frame_ui_setup(FrameMenuState &s, FrameDependencyState &files,
                                  const FrameDependencyApi &a, FrameDependencyResult &result,
                                  UnityFrameApi frame) {
    const auto prior = frame.domain;
    auto bound = a;
    if (!bound.embedded_bytes)
        bound.embedded_bytes = frame.embedded_bytes;
    frame.domain = [&s, &files, a = re::re_move(bound), &result,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r != 0x35ccf4)
            return prior ? prior(r, args) : re::re_nullopt;
        result = setup_frame_ui_35ccf4(s, files, a);
        if (result.status != UnityStatus::complete)
            return {};
        return re::ReMonostate{};
    };
    return frame;
}
} // namespace rust_internal_re
