#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
const WorldCoverageRange ranges[] = {
    {0x31acd0, 0x31aeca, "[C/I] guard/collection/identity copied inputs and existing readers"},
    {0x31aeca, 0x31e04e,
     "[C/I] all literal classifier rules; nearest publishes interleaved at native insertion "
     "phases"},
    {0x31e04e, 0x31eedb,
     "[C/I] collider math/maps/restoration and immediate append order; Unity component calls "
     "explicit"},
    {0x31eedb, 0x31f1fb,
     "[C/I] Landmine/SAM routing and SAM dedup/save; Unity seed/position inputs"},
    {0x31f1fb, 0x31fa76, "[C] remaining literal rules/workbench priority"},
    {0x31fa76, 0x31fdfb,
     "[C/I] Scientist/player/tracked ordering, nearest melee, existing player filters"},
    {0x31fdfb, 0x31fe4a, "[C/I] owned span traversal and side-effect-free epilogue"},
    {0x2fb72c, 0x2fc281,
     "[C/I] ordered fishing cache/change checks/interactions/labels; key edge and game getters "
     "copied inputs"},
    {0x2fc281, 0x2fc42a, "[C/I] looked-at lock ID/position cache"},
    {0x2fc42a, 0x2fcdaf,
     "[C/I] SAM/stash seed filtering, gates/distances/labels, Unity projections"},
    {0x2fcdaf, 0x2fd04b, "[C/I] stash dedup/save/notification"},
    {0x2fd04b, 0x2fd156, "[C/I] font and collection setup; owned registry traversal"},
    {0x2fd156, 0x2fd23c,
     "[C/I] whole-worker entity validation/transform/projection/distance controller"},
    {0x2fd23c, 0x3012f9,
     "[C/I] literal category routes, Snapshot fields/flags/statuses and ordered interaction calls"},
    {0x3012f9, 0x30195b,
     "[C/I] turret inventory/85-ID names, options/health/status, zero-quaternion ray geometry"},
    {0x30195b, 0x3024e7, "[C/I] remaining traps/SAM fields/options/health and scalar routing"},
    {0x3024e7, 0x30305c,
     "[C/I] corpse bounds8-corner/12-edge draw; inventory/name/streamer/color rules"},
    {0x30305c, 0x3031a1, "[C/I] stash route"},
    {0x3031a1, 0x303363, "[C/I] backpack owner/name/streamer routes"},
    {0x303363, 0x303718, "[C/I] scalar routes before dropped item"},
    {0x303718, 0x304474,
     "[C/I] dropped name/count/category chains, trash/pickup/display/backpack exceptions"},
    {0x304474, 0x3052c1, "[C/I] animal health and cupboard signed timer/health/ID decoding"},
    {0x3052c1, 0x305c1e,
     "[C/I] shared routing/ore-only radar, remaining deployables, Bear pair and candy/egg"},
    {0x305c1e, 0x306085,
     "[C/I] radar normalization/rotation/icons/distance arguments; trig rounding caveat"},
    {0x306085, 0x3066d8, "[C/I] tooltip hover-radius predicate, measurement/layout/clamp/draw"},
    {0x3066d8, 0x306752,
     "[C/I] exact wide crate marker equality, SilentLoot and shared interaction argument order"},
    {0x306752, 0x306ebe,
     "[C/I] labels/icons/five rows/distance/bar arguments; primitive raster helpers remain U"},
    {0x306ebe, 0x30753d,
     "[C/I] renderer predicates/shader cache/property order; Unity resource boundaries"},
    {0x30753d, 0x307637,
     "[C/I] owned cleanup/iteration; late30762b branch bypasses chams after failed label gates"},
    {0x3098a4, 0x309994,
     "[C/I] signed center and five crosshair types; Unity trig and frame delta boundaries"},
    {0x309994, 0x309bf0,
     "[C/I/U] FOV and complete radar window position/reset/style/current-position controller; "
     "ImGui primitives unresolved"},
    {0x309bf0, 0x309f47, "[C/I] radar decorations"},
    {0x309f47, 0x309ff4,
     "[C/I] ordered local/camera/transform guard; copied orientation/position inputs in "
     "whole-overlay composition"},
    {0x309ff4, 0x30a1c3, "[C/I] battle/save toggles and marker projection/radius"},
    {0x30a1c3, 0x30a5dd,
     "[C/I] code-lock time/count capture/reset/distance/projection and two status labels"},
    {0x30a5dd, 0x30a7bf,
     "[C/I/U] fishing window reset/style/layout/current-position and colored-meter arguments; "
     "primitives unresolved"},
    {0x30a7bf, 0x30ab62, "[C/I] saved-position zero gates/distance/labels/projection"},
    {0x30ab62, 0x30ae1d, "[C/I] stable tracer expiry/empty erase, projections/glow-line arguments"},
    {0x30ae1d, 0x30b140,
     "[C/I] Unity Round/two-digit truncation/time-phase thresholds and label arguments"},
    {0x30b140, 0x30b6b3,
     "[C/I] desync meter and ordered status stack; literal3 gap and18/16 row spacing"},
    {0x30b6b3, 0x30bcfa, "[C/I] Snapshot sign dimensions and photo-frame class sizes/status"},
    {0x30bcfa, 0x30c3e0,
     "[C/I/U] authorization/key/code/crafting labels and complete violation window controller; "
     "primitives unresolved"},
    {0x30c3e0, 0x30c8d0,
     "[C/I/U] concrete violation meter arguments/calculations; primitive helper rasterization "
     "unresolved; second meter offset20 from30ae3b"},
    {0x30c8d0, 0x30cd6f,
     "[C/I] teleport count/distance formatting and projected glow path arguments"},
    {0x30cd6f, 0x30cf5e,
     "[C/I/U] complete warning window position/style/flags/current-position and alert cursor; "
     "primitives unresolved"},
    {0x30cf5e, 0x30ea17,
     "[C/I/U] four-branch simulation/cache controller, native speed/attachment/order/parameters "
     "and ring/path bodies; branch1/3 omitted varargs require copied scratch; selectors/game "
     "inputs explicit"},
    {0x30ea17, 0x30ee71,
     "[C/I] complete player iteration setup/validity/handcuff accumulation/bones/facing quad; game "
     "results explicit"},
    {0x30ee71, 0x30f089, "[C/I] special-NPC health/range gate/head/selected snapline"},
    {0x30f089, 0x30fed8, "[C/I] full NPC19-bone/18-edge skeleton with all-or-none projections"},
    {0x30fed8, 0x3106c9,
     "[C/I/U] NPC quad projection/item-name/labels/corner/health; copied six-widget settings and "
     "explicit font dependencies"},
    {0x3106c9, 0x310832, "[C/I] first player filters and registry kind1 friend predicate"},
    {0x310832, 0x310acd, "[C/I] ordered looking/held/name/aim warning predicates and labels"},
    {0x310acd, 0x310d4c,
     "[C/I] enemy/sleep/dead/visible/outside filters and color priority; game results explicit"},
    {0x310d4c, 0x311ce4,
     "[C/I] in-game player marker/hover/one-tooltip latch; full inventory tooltip scale/two "
     "groups/condition/icons/count/separator"},
    {0x311ce4, 0x31236d, "[C/I] map gate, offscreen circle/triangle and radar direction geometry"},
    {0x31236d, 0x312552, "[C/I] foot projection/screen gates and friend/enemy key transitions"},
    {0x312552, 0x313020,
     "[C/I/U] text selection/six-label placement/counters/icon fallback and font-scale "
     "restoration; copied widget settings and explicit background draw-list/measurement"},
    {0x313020, 0x31336a,
     "[C/I] selected snapline and player-view three-line geometry/filter/projection order"},
    {0x31336a, 0x31416a, "[C/I] full player19-bone/18-edge skeleton with all-or-none projections"},
    {0x31416a, 0x3141bb, "[C/I] owned loop cleanup and whole-overlay ordered composition"},
    {0x3141bb, 0x3143c7,
     "[C/I] handcuff target/index/cooldown/ordered RPCs; hood inventory result input"},
    {0x3143c7, 0x3148d6,
     "[C/I] periodic registry/history/default insertion/renames/team0/grid/inside-base formatting"},
    {0x3148d6, 0x314929, "[C] side-effect-free epilogue"},
};
}
re::ReSpan<const WorldCoverageRange> world_esp_coverage() {
    return ranges;
}
} // namespace rust_internal_re
