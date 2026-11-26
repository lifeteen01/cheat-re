#pragma once
#include "drawlist_core_analysis.hpp"

namespace re_base {
// [I] Minimal owned host-window path. Uses the recovered geometry producer;
// this flat opaque CPU sink is new platform code, not a recovered Unity sink.
struct FrameInput {
    int x{}, y{};
    bool down{}, visible{true};
    int marker_size{24};
    ReU32 accent{0xff80d060u};
};
struct Frame {
    rust_internal_re::DrawCoreList geometry;
    re::ReVector<ReU32> pixels; // top-down BGRX for a Windows DIB
    ReU32 width{}, height{};
};
void build_frame(Frame &, ReU32 width, ReU32 height,
                 ReU32 maximum_pixels, FrameInput);
}
