from pathlib import Path
p=Path('source/reconstructed/font_builder_sfnt_checks.cpp');s=p.read_text();a=s.index('struct FontFixture {');b=s.index('\n};',a)+3;fixture=s[a:b].replace('std::vector<std::byte>(0x20000)','std::vector<std::byte>(0x100000)')
Path('source/reconstructed/font_builder_fixture.hpp').write_text('#pragma once\n#include "font_builder_analysis.hpp"\nnamespace rust_internal_re::font_builder_fixture {\ninline void require(bool ok,const char* text){if(!ok)throw std::runtime_error(text);}\n'+fixture+'\n}\n')
s=s[:a]+'using font_builder_fixture::FontFixture;'+s[b:];s=s.replace('#include "font_builder_analysis.hpp"','#include "font_builder_fixture.hpp"');p.write_text(s)
