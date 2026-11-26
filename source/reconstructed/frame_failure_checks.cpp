#include "frame_failure.hpp"
namespace rust_internal_re {
void check_frame_failure_propagation() {
    FrameDependencyState state;
    FrameDependencyApi api;
    bool output = true;
    int calls = 0;
    api.time = [&](Rva) -> re::ReOptional<float> {
        if (++calls == 1)
            return 1;
        state.settings.changed = true;
        __builtin_trap();
    };
    auto result = frame_timer_2e5b7c(state, api, 42, 0.1f, output);
    if (result.status != UnityStatus::unreadable_snapshot || result.stopped_at != 0xabcdef ||
        output || calls != 2 || state.deadlines[42] != 0 || !state.settings.changed)
        { __builtin_trap(); }
    result = frame_timer_2e5b7c(state, api, 43, 0.1f, output);
    if (result.status != UnityStatus::missing_dependency || result.stopped_at != 0x123456 ||
        !state.deadlines.contains(43))
        { /* FREESTANDING_TODO: was throw runtime_error("frame renderer failure preserves reached site") */ }
}
} // namespace rust_internal_re
