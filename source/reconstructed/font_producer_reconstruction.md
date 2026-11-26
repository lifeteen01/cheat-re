# Font pixel acquisition and conversion

[C] [I] [font_producer_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_analysis.cpp) translates `3a3394..3a33c0`, `3a4994..3a49eb`, `3a49ec..3a4ab9`, and `3a653c..3a6552`. The [byte ledger](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_producer_inventory/audit.json) accounts for 358 bytes and 111 instructions.

[C] Alpha acquisition calls the configured builder only when Alpha8 is null. Default selection republishes `module+3a59bc` at `module+406130` without assigning atlas+488. The empty-configuration assertion is explicit. RGBA acquisition reuses a cached pointer or calls Alpha8 acquisition, uses signed dimensions for allocation, then rereads dimensions after allocation for the signed32 loop count. Conversion writes white RGB with the Alpha8 byte in the high byte. The RGBA pointer is published before pixel writes, preserving partial failures.

[C] Raw output APIs preserve optional dimension/channel outputs and alias-sensitive store order. Value-returning APIs request all dimensions. `bind_font_pixels()` composes RGBA acquisition into backend role `3a49ec` and exports owned bytes under an explicit analysis bound.

[U] Default local builder `3a59bc..3a653a`, font-file parsing, glyph metric generation and packing dependencies remain required local closure. Its callback is an explicitly incomplete local dependency, not a Unity boundary. Copied Alpha8/RGBA data permits concrete warm-cache/conversion paths without invented metrics. Heap/container ABI uses safe owned allocation.

[C] [Fixtures](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_checks.cpp) cover conversion, cache reuse, output aliasing, allocator dimension changes, partial pixels, negative native loop counts, builder publication and narrow optional-output paths. [I] Reproduce through [build.sh](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/unity_math/build.sh); [audit.py](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/unity_math/audit.py) regenerates the producer ledger.
