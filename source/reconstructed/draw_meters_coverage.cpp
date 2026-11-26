#include "draw_meters_analysis.hpp"
namespace rust_internal_re {
re::ReSpan<const RendererCoverage> draw_meters_coverage() {
    static constexpr RendererCoverage ranges[]{
        {0x2ce59c, 0x2ce5a4, "[C] [I] name finalbyte predicate"},
        {0x2d484c, 0x2d486f, "[C] [I] fourfloat constructor wrapper/return through owned values"},
        {0x2e5a44, 0x2e5a54, "[C] [I] ordered clamp with literal sourceoperand MINSS"},
        {0x35ac38, 0x35af6a,
         "[C] [I] ring100segments, repeated typed trig, optionalHSV, rawquad and halfalphaedges"},
        {0x35b0fc, 0x35b507, "[C] [I] foreground rounded meter and phasewrite/pulse outlines"},
        {0x35b508, 0x35b681, "[C] [I] two-value violation ring wrapper"},
        {0x35b850, 0x35bab7, "[C] [I] three-layer float colored meter"},
        {0x35bab8, 0x35bc6f, "[C] [I] integer-width meter and signed min/positive gate"},
        {0x35c738, 0x35c889,
         "[C] [I] floatrect window/bounds/style folded through released shapes"},
        {0x35c938, 0x35cb16, "[C] [I] three-value violation ring wrapper"},
        {0x35d200, 0x35d21d, "[C] [I] currentwindow mark/reload fold"},
        {0x3612f8, 0x36135a, "[C] [I] HSV wrapper with original argument/color order"},
        {0x362200, 0x36226d, "[C] [I] fourfloat interpolation retaining grouping"},
        {0x36232c, 0x3627cf, "[C] [I] segmented integer meter, gradient, separators and border"},
        {0x362fc0, 0x362fc5, "[C] [I] ceil thunk to literal3c8918"},
        {0x38c6f0, 0x38c712, "[C] [I] copy13foregroundliteralbytes"},
        {0x3904e0, 0x39062b, "[C] [I] HSV six sector switch and unordered default"},
        {0x392260, 0x392295, "[C] [I] native stylealpha conversion folded through releasedcolor"},
        {0x39256c, 0x3925a2, "[C] [I] literal foreground name decode and index1\u2192reused392dcc"},
        {0x3925a4, 0x3925c9, "[C] [I] foreground firstviewport lookup then39256c"},
        {0x3926ac, 0x3926b8, "[C] [I] context+8 pointer getter"},
        {0x392ecc, 0x392ee1, "[C] [I] currentwindow marking/reload and +298list"},
        {0x39e77c, 0x39e7ac, "[C] [I] literal13byte XORdecode"},
        {0x39eb2c, 0x39eb52, "[C] [I] conditional13byte decode wrapper"},
        {0x3a1084, 0x3a10ea,
         "[C] [I] fourpoint pathfill and alpha gate through releasedshape/core"},
        {0x3c8918, 0x3c899a, "[C] [I] literalbit ceil folded in segmented controller"},
        {0x3c8a6c, 0x3c8bd0,
         "[C] [I] integer-significand float remainder, subnormal/zero/nonfinite branches"},
    };
    return ranges;
}
} // namespace rust_internal_re
