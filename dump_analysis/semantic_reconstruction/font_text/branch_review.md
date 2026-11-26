# Manual branch/operation audit

[C] This is semantic review alongside the fresh byte inventory. It is not machine execution of the DLL. Addresses are RVAs; ends below are exclusive.

| Branch/store evidence | Translation decision and fixture evidence |
|---|---|
|3613a2..36179e;361c14..361d2d|[C/I] Styles0/1/3/2 select the observed global size indexes; selected sizes13/16/18/20/22/24. Invalid centered index retains global font, invalid plain index reads incoming record+10; family override reads common3eed38 even for style3. Style4 plain uses worker+8/size10. Concrete selectors/cache and plain style4 covered; all six size branches and nonstandard centered style3 override reviewed statically.|
|361824..361b9a;361d95..3620e7|[C/I] Drawlist+298 and string pointer reloaded for each of nine passes. Centered global3fc180 reload remains each pass; plain selected font remains local. Eight blackFF outlines followed by input color. Centered output and changed-drawlist observer fixtures cover ordering/reloads.|
|3a321b/3a3248/3a3251/3a325e|[C/I] Zero alpha returns before validating text/end/font/shared. Empty text returns before font defaults. Null font and ordered zero size independently query shared state. Alpha+invalid-end and concrete shared-default fixtures cover these boundaries.|
|3a328c..3a32e3|[C/I] MAXSS/MINSS preserve second operand on unordered/equal clip intersection. Supplied fine clip enables per-glyph clipping. Native clip is obtained from authoritative owned DrawCoreList header, not stale snapshot bytes.|
|3a343e..3a34aa|[C/I] Duplicate glyph lookup entries overwrite earlier ones with low16 index. Used bitmap based on original glyph codepoint page before tab construction. Duplicate/page fixture covers this.|
|3a34ac..3a3551|[C/I] Space lookup includes existing fallback; tab append only if last codepoint!=9, source looked up again after growth. Full40byte copy; advance*4; lookup9=count.low16-1. Tab creation/reuse fixture covers normal source. Native stale raw fallback-pointer relocation is an owned-identity adaptation, explicitly limited.|
|3a3554..3a3572|[C/I] Visibility clearing includes fallback. This can change fallback's visibility if space/tab is missing; no invented no-fallback substitution.|
|3a3591..3a35d6;3a368c..3a36da|[C/I] Existing ellipsis code uses stored step for width/count1. Otherwise [2026,85], then [2e,ff0e]. Dot case count3,step=x1-x0+1,width=step*3-1. Both ellipsis forms fixture-tested.|
|3a35db..3a366d|[C/I] Configured fallback, [fffd,?,space], last glyph; empty last access explicit failure. Only negative advances replaced; unordered NaN preserved. Fallback/empty/NaN fixtures.|
|3a4b4f/57/5f;3a4c56/90/9b|[C/I] Atlas white→lines→shapes before custom glyphs; dirty rebuild before ready. Parent correction: missing font-atlas padding retains glyph append and OLDdirty; dirty store follows padding read3a0108 at3a010d. Later height/width read failure retainsdirty. Two prior-dirty-state fixtures cover owned missingmetrics. Finalization/failure fixture.|
|3a4f75..3a4fbd|[C/I] Alpha pointer preference; first store bottom-right then bottom-left,top-right,top-left; no write to both formats. Alpha/RGBA fixtures and truncated allocation first-store failure.|
|3a5019..3a51f1|[C/I] Flags4 return before rect lookup. Native left extent uses unsigned SHR; negative/oversized extents stop as analysis bounds.64 rows: transparent/opaque/transparent fills, mid-y UV. Disabled/alpha/RGBA/UV fixtures.|
|3a5340..3a5402;3a568f..3a5755|[C/I] Row-major shape value generation, literal sample approximate root, clamp, approximate power. Negative native temporary dimensions/overflow become explicit analysis limits rather than host UB.|
|3a5402/3a5755|[C/I] Blur executed only when byte554 set, two15tap passes in native order. Filter impulse and changed shape pixel fixtures.|
|3a54e0..3a55ed|[C/I] Nine slices reuse edge origin for third column/row and reverse UV x/y respectively; middle uses inner extent. Middle/corner/reversed fixture.|
|3a5768..3a58d7|[C/I] Circle shift=CVTT(radius/cos)-radius+8; output=CVTT(16+radius/cos); clamped source samples; final inset8 on each edge. Circle UV/pixel fixtures, independent cosine binary32 oracle.|
|3a79c9/3a7a78/3a7a89|[C/I] Ordered y>bottom early exit, clip-top line skip and >10000 byte optimization only without wrap. Above-clip skip/large scan fixtures; negative/zero line-height nonprogress bounded explicitly.|
|3a7ae0..3a7b16|[C/I] Position truncates through CVTTSS2SI. One outer max-byte allocation6I/4V occurs before glyph culling. UTF8 byte-count and rollover-with-one-visible-glyph fixtures distinguish from per-glyph allocations.|
|3a7b57..3a7bd4|[C/I] Wrap width reduced by current x-start; wrap event resets x and consumes blanks/newline with existing concrete next_line. Wrap fixture.|
|3a7bd4..3a7c35|[C/I] Signed byte comparison unsigned>=128 routes UTF8. LF steps y/ordered-bottom break; CR ignored; other controls can reach glyph lookup. UTF8 and CR/LF fixtures.|
|3a7c3d/3a7c46|[C/I] Missing glyph has no advance. Invisible glyph advances without geometry. Fallback distinction/space fixtures.|
|3a7c71/3a7c8e|[C/I] JB means less OR unordered. Use ordered >= acceptance, not inverse < rejection. NaN-x fixture and rejected NaN-branch mutation.|
|3a7cdd..3a7de6|[C/I] Left/top use1-ratio and current UV; right/bottom use reduced bounds and updated UV; final JB proceeds on unordered y. Four-edge UV and NaN-y fixtures.|
|3a7e0b..3a7ead|[C/I] Colored bit ORs00ffffff, retaining alpha. Four corners and relative index topology0,1,2,0,2,3. Actual owned buffer/color fixture and rejected tint mutation.|
|3a7ed0..3a7f1e|[C/I] Logical buffer sizes/ElemCount shrink to actual writes; cursors/current index reflect emitted geometry. Typed unreserve binds to native3a7224 fold. Outer reserve/unreserve fixtures.|
|39ff7c..3a0168|[C/I] Optional clamp, unequal/unordered x adjustment, truncating pixel-snap, extra spacing; visible if either dimension unequal including unordered; colored cleared. Surface uses CVTT and wrapping product/add. Configured glyph/surface fixture.|
|3a6554..3a6589;3c8da8..3c8df1;3c899c..3c8a6c|[C/I] Approximate root only ordered positive squared length; otherwise supplied epsilon/zero. Power high-double-word approximation; native cosine polynomial/reduction. Shape fixtures plus independent scalar oracle; FP exception flags/NaN payloads unverified.|

[U] Fixtures do not dynamically cover every one of269 inventoried jumps. Static review covers the primary branch families above; native allocation/container ABI, corrupted alias descriptors and numerical environment remain limited as the source reconstruction ledger states. The native lazy font worker allocation branch has an explicit missing/uninitialized-state outcome; no font pointer is synthesized.
