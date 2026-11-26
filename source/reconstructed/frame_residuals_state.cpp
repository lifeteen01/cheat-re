#include "frame_residuals_analysis.hpp"

namespace rust_internal_re {
namespace {
FrameDependencyResult clear_hash(FrameClearHash &state, bool wide) {
    state.wide_key = wide;
    if (state.nodes.empty())
        return {};
    const auto count = state.buckets.size();
    if (count == 0 || (count & (count - 1)) != 0)
        return {UnityStatus::malformed_input, wide ? Rva(0x31a9dc) : Rva(0x2d7df8)};
    // [C] Header+38 is bucket COUNT, not byte extent. Strict unsigned > gate.
    state.used_bucket_erase = (count >> 3) > state.nodes.size();
    if (state.used_bucket_erase) {
        // [I]31a4b4/31a70c erase [begin,end). The owned list keeps stable
        // tokens; bucket endpoints are inclusive and sentinel0 marks empty.
        while (!state.nodes.empty()) {
            const auto node = state.nodes.begin();
            re::ReArray<ReByte, 8> key{};
            const auto width = wide ? 8u : 4u;
            for (unsigned i = 0; i < width; ++i)
                key[i] = ReByte((node->key >> (8 * i)) & 255u);
            const auto hash = registry_hash_2d7078(re::ReSpan(key.data(), width));
            auto &bucket = state.buckets[hash & (count - 1)];
            const auto next = (node + 1 != state.nodes.end()) ? node + 1 : static_cast<decltype(node)>(nullptr);
            const auto following = !next ? 0 : next->token;
            if (bucket[0] == node->token)
                bucket[0] = following;
            if (bucket[1] == node->token)
                bucket = {0, 0};
            state.destroyed.push_back(node->token);
            state.nodes.erase(node); // [I] Owned payload allocator destruction.
        }
    } else {
        // [C]31abc8/31ac30 destroy nodes in forward list order, then restore
        // sentinel links/count;2d2aa4 fills every bucket word with sentinel.
        for (const auto &node : state.nodes)
            state.destroyed.push_back(node.token);
        state.nodes.clear();
        re::re_fill(state.buckets.begin(), state.buckets.end(), re::ReArray<ReU64, 2>{0, 0});
    }
    return {};
}
} // namespace
FrameDependencyResult frame_clear_hash_31aa90(FrameClearHash &state) {
    return clear_hash(state, false);
}
FrameDependencyResult frame_clear_hash_31ab60(FrameClearHash &state) {
    return clear_hash(state, true);
}
void frame_clear_vectors_31acb0(FrameClearVectors &state) {
    // [C]31ac64 first resets trivial vector end;31ac74 then destroys64-byte
    // records (string at+10) before resetting second vector end. Capacity stays.
    state.trivial_18.clear();
    state.destroyed_records += state.records_30.size();
    state.records_30.clear();
}
FrameDependencyResult frame_transition_2cce78(FrameTransitionState &state, bool enabled) {
    if (state.icons.enabled_3d6160 == enabled)
        return {};
    if (!enabled) {
        // [C]2cd86c clears the icon tree and restores all three sentinel links.
        state.icons.cache.clear();
        if (!state.native_stack_tail)
            return {UnityStatus::indeterminate_native_data, 0x2cce98};
        state.bytes_3d6179 = *state.native_stack_tail;
        state.icons.attempted_3d6161 = false;
        state.flag_3d6178 = false;
        state.value_3d6180 = 0;
        state.value_3d6188 = 0;
        state.flag_3d6163 = false;
        state.flag_3d6162 = false;
    }
    state.icons.enabled_3d6160 = enabled;
    return {};
}
UnityFrameApi bind_frame_residual_clears(const FrameClearBindings &bindings,
                                         FrameDependencyResult &last, UnityFrameApi api) {
    const auto prior = api.domain;
    api.domain = [bindings, &last, prior](
                     Rva role, re::ReSpan<const UnityValue> arguments) -> re::ReOptional<UnityValue> {
        if (role != 0x31aa90 && role != 0x31ab60 && role != 0x31acb0)
            return prior ? prior(role, arguments) : re::re_nullopt;
        if (arguments.size() != 1 || !re::re_holds_alternative<Address>(arguments[0])) {
            last = {UnityStatus::callback_type_mismatch, role};
            return {};
        }
        const auto key = re::re_get<Address>(arguments[0]);
        if (role == 0x31acb0) {
            const auto at = bindings.vectors.find(key);
            if (!at || !**at) {
                last = {UnityStatus::missing_dependency, role};
                return {};
            }
            frame_clear_vectors_31acb0(***at);
            last = {};
        } else {
            const auto at = bindings.hashes.find(key);
            if (!at || !**at) {
                last = {UnityStatus::missing_dependency, role};
                return {};
            }
            last = role == 0x31aa90 ? frame_clear_hash_31aa90(***at)
                                    : frame_clear_hash_31ab60(***at);
        }
        if (last.status != UnityStatus::complete)
            return {};
        return UnityValue{re::ReMonostate{}};
    };
    return api;
}
UnityFrameApi bind_frame_residual_transition(FrameTransitionState &state,
                                             FrameDependencyResult &last, UnityFrameApi api) {
    const auto prior = api.domain;
    api.domain = [&state, &last, prior](
                     Rva role, re::ReSpan<const UnityValue> arguments) -> re::ReOptional<UnityValue> {
        if (role != 0x2cce78)
            return prior ? prior(role, arguments) : re::re_nullopt;
        if (arguments.size() != 1 || !re::re_holds_alternative<bool>(arguments[0])) {
            last = {UnityStatus::callback_type_mismatch, role};
            return re::re_nullopt;
        }
        last = frame_transition_2cce78(state, re::re_get<bool>(arguments[0]));
        if (last.status != UnityStatus::complete)
            return re::re_nullopt;
        return UnityValue{re::ReMonostate{}};
    };
    return api;
}
} // namespace rust_internal_re
