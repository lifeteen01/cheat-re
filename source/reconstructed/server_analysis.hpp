#pragma once
#include "internal_analysis.hpp"

namespace rust_internal_re {
// [I] Owned offline records. No declarations in this file describe a live game ABI.
// [C] 0x2e3074 returns {candidate index, squared miss, segment index}.
struct CandidateScore {
    ReI32 candidate{-1};
    float squared_miss{100000000.0f};
    ReI32 segment{-1};
};
double candidate_angle_2e3e94(ReI32 index);
re::ReVector<TrajectoryTable> build_candidate_tables_2e3aa4(const TrajectoryParameters&);
CandidateScore score_candidate_2e3074(const ReferenceSamples&, const TrajectoryTable&, ReI32 index);
CandidateScore refine_candidates_2e38e4(const ReferenceSamples&, re::ReSpan<const TrajectoryTable>,
                                      ReI32 left, float left_error,
                                      ReI32 right, float right_error);
// [I] Extra statuses prevent unbounded loops/out-of-copy reads for malformed fixtures.
// [C] The observed lazy builder supplies 3601 candidates; stride is count / 70.
enum class CandidateSearchStatus { matched, no_match, empty, zero_stride, invalid_boundary };
struct CandidateSearchResult { CandidateScore score; CandidateSearchStatus status{CandidateSearchStatus::no_match}; };
CandidateSearchResult search_candidates_2e2474(const ReferenceSamples&, re::ReSpan<const TrajectoryTable>);
struct PredictionResult {
    ReferenceSamples reference;
    CandidateSearchResult selection;
    Vec3 direction{}, motion_after{};
    ReI32 lead_steps{};
};
// [U] The 0x2f824c predicate is supplied, rather than assigned an unverified game name.
// [C] The ordinary wrapper 0x2e2374 supplies gravity_scale=0 for the reference motion.
PredictionResult predict_2e2474(Vec3 relative_position, Vec3 motion, ReU8 gravity_scale,
                               re::ReSpan<const TrajectoryTable>, bool predicate_2f824c, bool instant_hit);

struct MovementBudgetState {
    float timer_3f2128{}, contact_timer_3f2134{};
    bool airborne_3f2110{};
    Vec3 anchor_3f2118{};
    float vertical_3e6090{}, horizontal_3e6094{};
};
struct MovementBudgetInput {
    Vec3 previous{}, current{};
    float elapsed{};
    bool player_valid{}, related_368b10_valid{}, state_36a364{};
};
// [U] Physics and player predicates remain explicit caller-supplied boundaries.
// [C] Their arguments, lazy call order, offsets, radius and mask are byte-supported.
struct MovementPhysics {
    re::ReFunction<bool(Vec3, bool, bool)> query_32260c;
    re::ReFunction<ReU8(Vec3, float)> query_322580;
    re::ReFunction<bool(Vec3, Vec3, float, ReU32, int)> query_32245c;
};
struct MovementBudgetResult {
    bool allowed{true}, accumulators_committed{}, tested_budgets{};
    float proposed_vertical{}, proposed_horizontal{}, vertical_limit{}, horizontal_limit{};
};
MovementBudgetResult validate_movement_3226b0(MovementBudgetState&, const MovementBudgetInput&, const MovementPhysics&);

struct SpeedBudgetState { float timer_3f2130{}, accumulator_3f212c{}, display_3e6098{}; };
struct SpeedBudgetInput {
    Vec3 previous{}, current{};
    float elapsed{};
    bool player_valid{}, related_368b10_valid{};
    bool state_36ac78{}, state_368468{}, state_36a238{}, state_368244{};
    // [C] OR of bytes 0x3ef661/0x3d8241/0x3ef4e1/0x3efa81,
    // [C] predicate 0x2ef7fc(0x3f3840), and AutoAdjustSpeed (0x3e9f98).
    bool force_speed_arguments{};
};
struct SpeedAdjustment {
    Vec3 vector_32cdcc{};
    bool context_32cc74_nonnull{};
};
struct SpeedBoundaries {
    re::ReFunction<float(float, float, float)> speed_36a3a8;
    re::ReFunction<SpeedAdjustment(Vec3)> adjustment_32cdcc;
};
struct SpeedBudgetResult {
    bool allowed{true}, evaluated{}, adjustment_called{}, display_written{};
    float measured_distance{}, permitted_distance{}, allowance{}, clamp_extent{};
};
SpeedBudgetResult validate_speed_32dbb0(SpeedBudgetState&, const SpeedBudgetInput&, const SpeedBoundaries&);

// [I] Concrete replay of the limiter/correction tail only, 0x32d9ca..0x32db1e.
// [U] Earlier teleport/list branches and their exemption computations are inputs.
struct TickLimiterInput {
    MovementBudgetInput movement;
    SpeedBudgetInput speed;
    bool preexisting_exemption{}, state_36a20c{}, state_3693b0{};
    bool anti_violations{}, option_0{}, option_3{}, byte_3d8241{}, byte_3ef4e1{};
    bool correction_object_valid{};
};
struct TickLimiterResult {
    MovementBudgetResult movement;
    SpeedBudgetResult speed;
    Vec3 output_position{};
    ReUSize restores{}, correction_calls{};
};
TickLimiterResult replay_tick_limiters_32cea8(MovementBudgetState&, SpeedBudgetState&, const TickLimiterInput&,
                                            const MovementPhysics&, const SpeedBoundaries&,
                                            const re::ReFunction<void(Vec3, bool)>& correction_32a9f8);
// [C] 0x2df6cc..0x2df704: Vec3 pointer subtraction; pure value operation.
Vec3 vec3_subtract_2df6f0(Vec3, Vec3);
void check_server_reconstruction();
} // namespace rust_internal_re
