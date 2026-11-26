# Default font atlas builder

[C] [I] `font_builder_default_3a59bc` translates the default `3a59bc..3a653a` controller and reachable TrueType/CFF parsing, metrics, outline generation, skyline packing, area rasterization and filtering. It produces actual glyph metrics, lookup/advance arrays, atlas Alpha8 pixels and UVs from copied font bytes. No font metrics or font-file contents are synthesized.

[I] Include `font_builder_analysis.hpp`. `bind_font_builder` supplies the default numeric builder target to the existing `FontProducerEffects`; configured alternate builders retain an explicit callback. Required allocation/release effects return/consume mapped numeric keys. No numeric code pointer is invoked. `check_font_builder_reconstruction()` is the focused fixture entrypoint; there is no production `main`.

## Input and owned-container boundary

[I] `FontTextStore` must contain the atlas record and destination font records. The caller may explicitly import initial copied records using the existing font_text copy APIs. The builder does not reimport stale native glyph vectors after generating owned arrays. Configuration records remain copied Snapshot data, stride`0x88`; font data pointer, declared copied byte length, index, size, oversampling, ranges, merge and glyph settings come from those records. A bounded copied SFNT/TTC span is parsed directly. [C] Native table-name factories decode to the names recorded in `literal_tags.json`; default ranges are the literal `module+2aa2d8` array`0020..00ff,0000`.

[I] Generated glyph/lookup/advance arrays, custom rectangles, bitsets, temporary sources, packed glyphs, skyline nodes and raster active records use owned containers. No Snapshot vector addresses, native capacity counters, uninitialized cubic controls or extra allocation counters are fabricated. Snapshot retains authoritative numeric font/atlas keys and scalar size/metric outputs, dimensions, UV scales/shape UVs and pixel keys/bytes. Native metadata clears still preserve their literal scalar and release ordering. Existing world/frame measurement and font controllers must use the same authoritative `FontTextStore`.

[C] The literal two PackBegin allocations remain72 and`16*(width-padding)`, including the second allocation after a firstnull; explicit frees retain their order. Pixel allocation occurs after UVscale stores, then dimensions are reloaded and the returned alpha key is published before zeroing. [I] Native temporary container/CRT/pool allocation ABI is an owned adaptation; resource failures of those adapted temporaries are not modeled as invented native false returns.

## Recovered behavior

[C] Source/destination codepoint sets suppress duplicate destination glyphs and glyph index0, then emit ascending source glyph lists. Rectangle sizing retains full signed32 oversampling fields while rendering uses their captured low8 bytes. Positive size selects height scaling; nonpositive/unordered selects sign-flipped EM scaling for raster data. Final ascent/descent use the raw signed size with height scaling, sign adjustments and native truncation. Size20 with copied800/−200 metrics produces17/−5.

[C] SFNT/TTC offset selection, formats0/4/6/12/13, signed horizontal metrics, short/long loca, repeated point flags, offcurve contour closure, composite translation/transforms and the compiled-out matching-point assertion are concrete. Format4 ranged IDs retain the native raw-ID/noDelta behavior. CFF INDEX/dictionary/private/CID tables, subroutine bias, all native supported Type2 operators, masks, relative geometry and native malformed-program returns are concrete. Empty or failed Type2 outlines retain the native successfulzero-box wrapper behavior.

[C] Packing retains stable comparator ties, original-order restoration, BL/BF skyline placement, empty/failure flags and persistent skyline state across custom and glyph slices. Outlines flatten with native`.35/min(scaleY,scaleX)` flatness, recursion16 and the sample approximate square root. Native quick/insertion edge ordering, clipped signed area, active-edge insertion/update/removal, scanline summation, alpha conversion and H/V box filters write real pixels.

[C] Font begin and glyph insertion include ordered Snapshot/owned mutations in `font_builder_owned.cpp`. Glyph append precedes the atlas pointer and padding reads; those reads precede dirty, while height/width follow it. Missing padding retains appended glyph and OLDdirty; missing height retains append+dirty. Font clear/free failures retain exactly the containers and scalar prefix already mutated. Existing pure white/line/shape/lookup helpers are reused with synchronization at each finalization stage; ready is written last.

## Evidence and validation

[C] The fresh byte/branch audit covers102 ranges,27,390 bytes,7,158 instructions and1,204 direct branches/calls from DLL SHA256`ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. The exported `font_builder_coverage()` and `audit.json` carry exact bounds; `dependencies.json` classifies every direct target, including local container adaptations. `branch_review.md` records semantic decisions and fixtures rather than equating matching bytes with matching semantics.

[C] Focused GCC15/C++20/Werror checks use `_GLIBCXX_ASSERTIONS` and`-ffp-contract=off`; ASan/UBSan are nonrecovering. Fixtures include actual copied TrueType/CFF data, analytic triangle coverage, empty-glyph advances, native metric quirks, composite branches, every supported Type2 family, subroutines/CID, merge deduplication, repeat builds, NaN/negative sizes, allocation-time config/dimension reloads, release failures, aliasing and missing-byte prefixes. Independent reference comparisons cover6,000 packing batches,32 TrueType raster cases and4 CFF shape/raster cases. The reference headers are scratch-only, under their public-domain alternative license; production source includes no STB header and calls no unsafe reference parser.

[I] Verification artifacts are under `dump_analysis/semantic_reconstruction/font_builder`: `verification.json`, strict/sanitizer/oracle logs, immutable source hashes, fresh assembly, `audit.json`, `dependencies.json`, `literal_tags.json`, `branch_review.md` and `remaining.json`.

## Exact remaining limits

[U] No untranslated parser/metric/packing/raster algorithm remains within the declared bounded default-builder path. `remaining.json` separately identifies the native hheap range`3ac0fc..3ac1d8`, CRT sort path`39344c..393460 →3c8df4..3c8e0b →3c7ee0..3c80e7 →3c821c..3c84ae`, and every native container-helper entry whose allocation/descriptor ABI is adapted. These are local owned-resource adaptations, not Unity/foreign labels.

[I] [U] Physical read exhaustion, configured iteration/recursion/point/font/config/pixel limits and native filter kernels beyond the initialized eight-byte ring stop explicit missing analysis; those safeguards are not native font validation. Upstream creation/import/decompression of an already-configured font is outside this root's reachability. [U] Native allocator failure ABI for adapted temporary containers, exact host exception/FP flags, rounding/FTZ/DAZ state and live platform/game compatibility remain unverified. No sample instruction execution, executable stack fabrication, uploads or network/IOC contact is involved.

[C] The separately integrated [font atlas input pipeline](font_atlas_input_reconstruction.md) constructs native configuration/font records and range inputs and exercises setup→ingestion→actual SFNT builder→glyph/pixel output→clear. [I] Consumers call its explicit initialized-byte preflight before passing tracked allocations to the bounded builder; this adaptation does not claim native malformed-input failure prefixes.
