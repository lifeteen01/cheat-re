from pathlib import Path
p=Path('source/reconstructed/font_builder_controller.cpp');s=p.read_text().replace('ranges = env.module + 0x2acb68; // byte audit fixes this literal before release.','ranges = env.module + 0x2aa2d8;')
s=s.replace('std::uint8_t horizontal{}, vertical{};','std::uint8_t horizontal{}, vertical{};\n    float raster_size{};')
s=s.replace('const float size = read<float>(image, s.config + 0x14, 0x3aea6c);','const float size = s.raster_size;')
s=s.replace('const float size = read<float>(image, s.config + 0x14, 0x3a5e9d);','const float size = read<float>(image, s.config + 0x14, 0x3a5e9d);\n        s.raster_size = size;')
s=s.replace('for (auto &s : sources) {\n        if (s.glyphs.empty())\n            continue;\n        render_source', 'for (std::size_t source_index = 0; source_index < sources.size(); ++source_index) {\n        auto &s = sources[source_index];\n        s.config = read<Address>(image, key + 0x80, 0x39f620) + source_index * 0x88;\n        if (s.glyphs.empty())\n            continue;\n        render_source')
s=s.replace('render_source(image, s, render_pixels, pack.width + padding, padding, env.limits);','render_source(image, s, render_pixels, add(pack.width, padding), padding, env.limits);')
a=s.index('            for (const auto &r : s.rectangles)',s.index('Snapshot table'))
b=s.index('\n        }',a)
s=s[:a]+'''            std::size_t operations = 0;
            for (const auto &r : s.rectangles) {
                if (!r.packed) continue;
                const auto stride = read<int>(image, key + 0x40, 0x3a623e);
                auto cursor = read<Address>(image, key + 0x30, 0x3a624d) +
                    std::uint64_t(std::int64_t(add(mul(r.y, stride), r.x)));
                const auto step = add(stride, -r.width);
                for (int y = 0; y < r.height; ++y) {
                    if (std::size_t(y) >= env.limits.maximum_pixels)
                        throw RendererMissing(0x3a4d82, 0, "opacity row analysis bound");
                    for (int x = 0; x < r.width; ++x) {
                        if (operations++ >= env.limits.maximum_pixels)
                            throw RendererMissing(0x3a4d8a, 0, "opacity pixel analysis bound");
                        const auto value = read<std::uint8_t>(image, cursor, 0x3a4d8a);
                        write(image, cursor, read<std::uint8_t>(table, value, 0x3a4d90), 0x3a4d93);
                        ++cursor;
                    }
                    cursor += std::uint64_t(std::int64_t(step));
                }
            }''' +s[b:]
s=s.replace('for (auto &s : sources) {\n        if (s.glyphs.empty())\n            continue;\n        const float size = read<float>(image, s.config + 0x14, 0x3a62e6);','''for (std::size_t source_index = 0; source_index < sources.size(); ++source_index) {
        auto &s = sources[source_index];
        if (s.glyphs.empty()) continue;
        s.config = read<Address>(image, key + 0x80, 0x39f620) + source_index * 0x88;
        s.font = read<Address>(image, s.config + 0x80, 0x3a62df);
        const float size = read<float>(image, s.config + 0x14, 0x3a62e6);''')
s=s.replace('font_begin_config_3a5950(image, key, s.font, s.config, ascent, descent, api.support);','const bool merge = read<std::uint8_t>(image, s.config + 0x48, 0x3a595f) != 0;\n        font_begin_config_3a5950(image, key, s.font, s.config, ascent, descent, api.support);')
a=s.index('        if (!read<std::uint8_t>(image, s.config + 0x48',s.index('const bool merge'))
b=s.index('\n        const float baseline',a)
s=s[:a]+'''        if (!merge) {
            auto& f = font->second;
            f.measure.advances.clear(); f.measure.fallback = 0;
            f.lookup.clear(); f.glyphs.clear(); f.fallback.reset();
            f.measure.nominal = read<float>(image, s.font + 0x14, 0x3a5988);
            f.atlas = key; f.dirty = true; f.surface = 0;
        }''' + s[b:]
p.write_text(s)
p=Path('source/reconstructed/font_builder_raster.cpp');s=p.read_text().replace('else if (x0 >= x + 1 && x1 >= x + 1)\n        ;','else if (x0 >= x + 1 && x1 >= x + 1) {\n    }');p.write_text(s)
