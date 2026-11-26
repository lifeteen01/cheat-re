#pragma once
// [I] Analyst-authored C++20 analysis base; not recovered original declarations.
// [C] RVA references throughout refer to cheat.unpacked.dll unless marked GameAssembly.
// [U] Matching game ABI, original types and obfuscated method identities remain incomplete.
#include "../../freestanding/runtime/re_core.h"

namespace rust_internal_re {
using Address = ReU64;
using Rva = ReU32;
// [I] Snapshot scalar decoding and SSE-derived math require these host representations.
// (Endianness and IEEE float checks are enforced by re_types.h)

// [I] Owned-memory adapter for replaying pointer/field operations on a copied dump.
// [I] Addresses are data keys; this adapter never dereferences a host/game address.
class Snapshot {
public:
    Snapshot(Address base, re::ReVector<ReByte> bytes) : base_(base), bytes_(re::re_move(bytes)) {}
    bool contains(Address p, ReUSize count) const {
        return p >= base_ && p-base_ <= bytes_.size() && count <= bytes_.size()-(p-base_);
    }
    template<class T> re::ReOptional<T> read(Address p) const {
        static_assert(re::re_is_trivially_copyable_v<T>);
        if (!contains(p, sizeof(T))) return {};
        T value{}; re::re_memcpy(&value, bytes_.data()+(p-base_), sizeof(T)); return value;
    }
    template<class T> bool write(Address p, const T& value) {
        static_assert(re::re_is_trivially_copyable_v<T>);
        if (!contains(p, sizeof(T))) return false;
        re::re_memcpy(bytes_.data()+(p-base_), &value, sizeof(T)); return true;
    }
    Address base() const { return base_; }
    ReUSize size() const { return bytes_.size(); }
private:
    Address base_;
    re::ReVector<ReByte> bytes_;
};

// [C] 0x2caf08..0x2caf28 is an unsigned numeric-range predicate, not a page probe.
inline bool sample_pointer_range(Address p) {
    return p != 0 && (p - 0x100000ULL) <= 0x7ffffeffffeULL;
}

// [I] Analyst names for vectors; [C] 0x2df644/0x2df66c scale 2D/3D values.
struct Vec2 { float x{}, y{}; };
struct Vec3 { float x{}, y{}, z{}; };
// [C] 0x36c638 consumes x/y/width/height from the projection bounds at 0x3d72a8.
struct ProjectionBounds { float x{},y{},width{},height{}; };
// [C] Literal 0x2e3c88..0x2e3ce1, reached by 2D/3D magnitude helpers.
// [C] Reciprocal of two inverse-root Newton steps, not IEEE square root.
// [U] Floating-point exception flags, rounding mode and denormal controls unverified.
inline float sample_sqrt_2e3c88(float value) {
    const float half=value*0.5f;
    const ReU32 bits=re::re_bit_cast<ReU32>(value);
    const ReU32 shifted=(bits>>1)|(bits&0x80000000u);
    const float guess=re::re_bit_cast<float>(0x5f3759dfu-shifted);
    const float first=(1.5f-(guess*half)*guess)*guess;
    const float second=(1.5f-(first*half)*first)*first;
    return 1.0f/second;
}
inline Vec2 operator+(Vec2 a, Vec2 b) { return {a.x+b.x,a.y+b.y}; }
inline Vec2 operator-(Vec2 a, Vec2 b) { return {a.x-b.x,a.y-b.y}; }
inline Vec2 operator*(Vec2 a, float s) { return {a.x*s,a.y*s}; }
inline Vec3 operator+(Vec3 a, Vec3 b) { return {a.x+b.x,a.y+b.y,a.z+b.z}; }
inline Vec3 operator-(Vec3 a, Vec3 b) { return {a.x-b.x,a.y-b.y,a.z-b.z}; }
inline Vec3 operator*(Vec3 a, float s) { return {a.x*s,a.y*s,a.z*s}; }
inline float length(Vec2 v) { return sample_sqrt_2e3c88(v.x*v.x+v.y*v.y); }
inline float length(Vec3 v) { return sample_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z); }

// [C] Hook-record offsets come from 0x2ea90c/0x2ea978/0x3163d8.
// [U] Reserved fields are intentionally unnamed; this is not a full original type.
struct HookRecord {
    Address original{};                // [C] +0x00
    Address method_info{};             // [C] +0x08, kind 1
    Address replaced_cell{};           // [C] +0x10, kind 2 scan
    re::ReArray<ReByte,0x10> unknown18{};
    Address detour{};                  // [C] +0x28, kinds 1/2
    ReU32 kind{};                      // [C] +0x30
};
static_assert(offsetof(HookRecord,detour)==0x28);
static_assert(offsetof(HookRecord,kind)==0x30);

struct HookDefinition {
    re::ReStringView klass, method;
    Rva detour, saved_original, installer, install_site;
};
re::ReSpan<const HookDefinition> hook_definitions();
bool install_method_info_copy(Snapshot&, HookRecord&, Address method_info, Address detour);
bool install_class_scan_copy(Snapshot&, HookRecord&, Address klass, Address method_pointer, Address detour);
bool install_resolved_scan_copy(Snapshot&, HookRecord&, Address klass, Address resolved_method_pointer, Address detour);
bool install_entry_table_copy(Snapshot&, HookRecord&, Address klass, Address expected, Address detour, ReUSize start_offset);

// [I] Reviewable semantic event representation for game/API calls not supplied as inputs.
// [U] These events are not implementations of the missing game functions.
struct Event { Rva site{}; re::ReString text; };
using Events = re::ReVector<Event>;
struct DetourInputs {
    bool instant_loot{}, no_water_blur{}, water{}, no_smoke{};
    bool local_projectile{}, tracers{}, dayhack{}, sky_changer{}, ambient{};
    bool set_reported_position{};
};
Events describe_detour(Rva detour, const DetourInputs&);
Events describe_frame_2f8574();
Events describe_renderer_3b3028(bool ready, bool nonempty, bool viewport_valid);
// [C] Vertex upload stride 0x14 at 0x3b4327; index element size 2 at 0x3b4369.
// [I] Named analysis views of ImGui buffers, not recovered ABI declarations.
using DrawVertex = re::ReArray<ReByte,20>;
struct DrawCommand { ReU32 vertex_offset{},index_offset{},element_count{}; };
struct DrawList { re::ReVector<DrawVertex> vertices; re::ReVector<ReU16> indices; re::ReVector<DrawCommand> commands; };
struct SubMesh { ReU32 base_vertex{},index_start{},index_count{}; };
struct MeshUpload { re::ReVector<DrawVertex> vertices; re::ReVector<ReU16> indices; re::ReVector<SubMesh> submeshes; };
MeshUpload flatten_geometry_3b4250(re::ReSpan<const DrawList>);


// [I] Offline module/PE metadata representation, not an operating-system loader.
struct RuntimeFunction { ReU32 begin{},end{},unwind{}; };
struct ModuleView { re::ReString name; const Snapshot* image{}; };
re::ReOptional<Address> find_export(const Snapshot&, re::ReStringView);
re::ReOptional<RuntimeFunction> find_runtime_function(const Snapshot&, Address instruction);
struct UnwindSummary { ReU64 stack_bytes{}; bool complete{}; re::ReString limitation; };
UnwindSummary summarize_unwind(const Snapshot&, Rva unwind_rva);
UnwindSummary summarize_unwind(const Snapshot&, Rva unwind_rva, Address module_base);
// [C] Literal parser result roles from 0x2ce3dc; [I] completion/bounds fields are analyst additions.
struct SampleUnwindResult {
    ReU32 returned_size{}, output_accumulator{};
    ReUSize entries_visited{};
    bool complete{}, rejected_rsp_encoding{};
    re::ReString limitation;
};
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot&, Rva unwind_rva);
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot&, Rva unwind_rva, Address module_base);

struct FrameEvidence { re::ReString label; Address instruction{}; re::ReOptional<RuntimeFunction> entry; UnwindSummary unwind; };
struct SpoofContextEvidence {
    Address target{};
    FrameEvidence base_thread_init, rtl_user_thread_start;
};
SpoofContextEvidence reconstruct_context_evidence(Address target, const ModuleView&, const ModuleView&);
Events describe_executor_3cdbd4(const SpoofContextEvidence&);

// [I] Detection helper; expected target is supplied by a matching-build baseline.
struct CodeRegion { Address begin{},end{}; bool executable{},known_module{},file_backed{}; };
struct PointerFinding { bool differs_from_expected{},outside_known_modules{},unbacked_executable{}; };
PointerFinding inspect_dispatch_pointer(Address actual, Address expected, re::ReSpan<const CodeRegion> regions);

// [C] 0x2e3734 stores two 320-float arrays and scalar fields at +0xa00/+0xa04.
// [I] Names identify observed roles; [U] original struct/type names are unknown.
struct TrajectoryTable {
    re::ReArray<float,320> horizontal{};
    re::ReArray<float,320> vertical{};
    float maximum_horizontal{};
    ReU32 first_qualifying_step{};
};
static_assert(offsetof(TrajectoryTable,vertical)==0x500);
static_assert(offsetof(TrajectoryTable,maximum_horizontal)==0xa00);
static_assert(offsetof(TrajectoryTable,first_qualifying_step)==0xa04);
struct TrajectoryParameters { float speed{},drag{},gravity_scale{},qualification_distance{}; };
TrajectoryTable simulate_2e3734(const TrajectoryParameters&, double angle_radians);
TrajectoryTable integrate_2e3734_from_velocity(const TrajectoryParameters&, Vec2 velocity);
struct ReferenceSamples {
    re::ReArray<float,320> horizontal{},vertical{};
    float minimum_horizontal{},maximum_horizontal{};
};
ReferenceSamples integrate_reference_prefix_2e2474(Vec3 position, Vec3 velocity, ReU8 gravity_scale);

// [I] Resolved entity-field access for copied memory; addresses remain numeric.
struct EntityCollections { Address root{},array{}; ReU32 count{}; re::ReVector<Address> entities; };
// [C] Encoded-reference helpers 0x2f8540/0x314b80 and resolver 0x315bd0.
Address decode_reference_words_2f8540(Address encoded);
Address decode_reference_words_314b80(Address encoded);
re::ReOptional<Address> resolve_reference_315bd0(const Snapshot&, Address reference);
// [I] Optional callback overrides permit review of alternative matching-build layouts.
struct CollectionResolvers {
    re::ReFunction<re::ReOptional<Address>(Address)> helper_2f9950;
    re::ReFunction<re::ReOptional<Address>(Address)> helper_2f996c;
};
re::ReOptional<Address> collection_root_2f8034(const Snapshot&, Address game_assembly_base, const CollectionResolvers&);
EntityCollections enumerate_array_31acd0(const Snapshot&, Address collection, ReUSize max_entries=1000000);
re::ReOptional<Address> bone_transform_368c60(const Snapshot&, Address entity, int bone);
re::ReOptional<ReU32> player_flags_3696e4(const Snapshot&, Address player);
ReU64 apparent_team_getter_2cd32c();
struct PlayerFilterInput {
    bool local{},npc{},wounded{},safe_zone{},sleeping{},dead{},friend_record{};
    bool show_players{},show_npcs{},show_wounded{},show_safe_zone{},show_sleepers{},show_dead{},show_team{};
    float distance{},maximum_distance{};
};
bool visible_player_filter_model_31acd0(const PlayerFilterInput&);

// [I] Offline semantic projection of the hook; named predicates are unresolved callees.
struct TickAnalysisInput {
    bool original_result{},matching_caller{},context_valid{};
    bool manipulation_active{},desync_not_visible{},attempt_desync{};
    float elapsed_since_last_refresh{};
    bool anti_violations{},violation_option_0{},violation_option_3{};
    bool movement_check_3226b0{},speed_check_32dbb0{},exempt_player_state{};
};
struct TickAnalysisResult { bool return_value{},refresh_timestamp{},restore_previous_position{}; Events events; };
TickAnalysisResult analyze_tick_32cea8(const TickAnalysisInput&);

// [I] Named projection of fields; does not claim a C++ layout for a live game object.
struct ProjectileFields {
    Vec3 vector28{},vectorf8{},vector16c{},vector178{};
    float scalar3c{},scalar44{},scalar184{},scalar188{};
};
struct ShotFields { Vec3 vector20{}; };
struct HitFields {
    Address target90{},transformd8{},materialc0{},colliderd0{};
    bool hitb0{};
    Vec3 point5c{},normala4{};
    re::ReArray<float,6> ray6c{};
};
void copy_observed_launch_vectors_32c0d4(ProjectileFields&, ShotFields&, Vec3 solved_direction, float speed);
void clear_observed_spread_vector(ProjectileFields&);
void write_observed_hit_fields_330b38(HitFields&, Address target, Address transform, Address material, Vec3 local_point, Vec3 local_normal, re::ReArray<float,6> ray);
Events describe_projectile_update_330b38(bool owned, bool eligible, bool pierce, bool heli_magic);

} // namespace rust_internal_re
