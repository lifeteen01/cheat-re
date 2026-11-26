#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
const WorldSkeletonBone npc_bones[] = {
    {47, 0x30f18c, 0x30f1ba}, {46, 0x30f1d9, 0x30f207}, {14, 0x30f226, 0x30f254},
    {59, 0x30f273, 0x30f2a1}, {56, 0x30f2c0, 0x30f2ee}, {55, 0x30f30d, 0x30f33b},
    {19, 0x30f35a, 0x30f388}, {20, 0x30f3a7, 0x30f3d5}, {23, 0x30f3f4, 0x30f422},
    {8, 0x30f441, 0x30f46f},  {10, 0x30f48e, 0x30f4bc}, {3, 0x30f4db, 0x30f509},
    {11, 0x30f528, 0x30f556}, {4, 0x30f575, 0x30f5a3},  {1, 0x30f5c2, 0x30f5f0},
    {7, 0x30f60f, 0x30f63d},  {5, 0x30f65c, 0x30f68a},  {12, 0x30f6a9, 0x30f6d7},
    {0, 0x30f6f3, 0x30f721},
};
const WorldSkeletonEdge npc_edges[] = {
    {0, 1, 0x30f796},   {2, 1, 0x30f803},   {1, 5, 0x30f870},   {3, 4, 0x30f8dd},
    {1, 6, 0x30f94a},   {7, 8, 0x30f9b7},   {2, 9, 0x30fa24},   {12, 10, 0x30fa91},
    {11, 13, 0x30fafe}, {2, 14, 0x30fb6b},  {11, 14, 0x30fbd8}, {10, 9, 0x30fc45},
    {7, 6, 0x30fcb2},   {4, 5, 0x30fd1f},   {2, 18, 0x30fd8c},  {15, 18, 0x30fdf9},
    {16, 13, 0x30fe66}, {17, 12, 0x30fed3},
};
const WorldSkeletonBone player_bones[] = {
    {53, 0x31346a, 0x313498}, {52, 0x3134b7, 0x3134e5}, {20, 0x313504, 0x31352f},
    {65, 0x31354e, 0x31357c}, {62, 0x31359b, 0x3135c9}, {61, 0x3135e8, 0x313616},
    {25, 0x313635, 0x313663}, {26, 0x313682, 0x3136b0}, {29, 0x3136cf, 0x3136fd},
    {14, 0x31371c, 0x31374a}, {16, 0x313769, 0x313797}, {3, 0x3137b6, 0x3137e4},
    {17, 0x313803, 0x313831}, {4, 0x313850, 0x31387e},  {1, 0x31389d, 0x3138cb},
    {7, 0x3138ea, 0x313918},  {5, 0x313937, 0x313965},  {18, 0x313984, 0x3139b2},
    {0, 0x3139ce, 0x3139fc},
};
const WorldSkeletonEdge player_edges[] = {
    {0, 1, 0x313a6e},   {2, 1, 0x313ad2},   {1, 5, 0x313b3c},   {3, 4, 0x313ba6},
    {1, 6, 0x313c10},   {7, 8, 0x313c7a},   {2, 9, 0x313cde},   {12, 10, 0x313d48},
    {11, 13, 0x313db2}, {2, 14, 0x313e16},  {11, 14, 0x313e80}, {10, 9, 0x313eea},
    {7, 6, 0x313f54},   {4, 5, 0x313fbe},   {2, 18, 0x314022},  {15, 18, 0x31408c},
    {16, 13, 0x3140f6}, {17, 12, 0x314160},
};
} // namespace
re::ReSpan<const WorldSkeletonBone> world_skeleton_bones(bool npc) {
    return npc ? re::ReSpan(npc_bones) : re::ReSpan(player_bones);
}
re::ReSpan<const WorldSkeletonEdge> world_skeleton_edges(bool npc) {
    return npc ? re::ReSpan(npc_edges) : re::ReSpan(player_edges);
}
} // namespace rust_internal_re
