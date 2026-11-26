#include "frame_world_controllers_internal.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
template <class T> T argument(re::ReSpan<const UnityValue> a, ReUSize i, Rva r) {
    if (i >= a.size() || !re::re_holds_alternative<T>(a[i]))
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    return re::re_get<T>(a[i]);
}
void check(GameBaseResult<bool> r, FrameDependencyResult &last) {
    last = {};
    if (r.status != GameBaseStatus::complete) {
        SnapshotBindingFailure e(r.status, r.site);
        frame_record_failure(last, e);
        __builtin_trap();
    }
}
} // namespace
UnityFrameApi bind_frame_world_controllers(Snapshot &im, Snapshot &game, const Snapshot &io,
                                           FrameWorldBindingState s, const FrameWorldEnvironment &e,
                                           const FrameWorldBindingApi &a,
                                           FrameDependencyResult &last, UnityFrameApi frame) {
    const auto prior = frame.domain;
    frame.domain = [&im, &game, &io, s, e, a, &last,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        const auto need = [&](bool present) {
            if (!present)
                { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
        };
        {
            switch (r) {
            case 0x2d60d0: {
                need(s.commands && s.configuration && s.settings);
                if (argument<Address>(args, 0, r) != 0x2189a8)
                    { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
                last = frame_world_commands_2d60d0(*s.commands, *s.configuration, *s.settings,
                                                   a.configuration);
                if (last.status != UnityStatus::complete)
                    __builtin_trap();
                break;
            }
            case 0x3211f0:
                need(s.collections);
                if (argument<Address>(args, 0, r) != 0x2187d0)
                    { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
                check(frame_world_collect_3211f0(im, *s.collections, e, a.game), last);
                break;
            case 0x3684e0:
                need(s.visibility);
                if (s.collections)
                    s.visibility->entities_2187d0 = s.collections->first;
                check(frame_world_visibility_3684e0(im, game, argument<Address>(args, 0, r),
                                                    *s.visibility, e, a.game),
                      last);
                break;
            case 0x316540:
                check(frame_world_player_316540(im, game, argument<Address>(args, 0, r), e,
                                                a.material),
                      last);
                break;
            case 0x318f34:
                check(frame_world_offset_318f34(im, game, argument<Address>(args, 0, r), e, a.game),
                      last);
                break;
            case 0x3096c4:
                check(frame_world_rain_3096c4(im, io, argument<Address>(args, 0, r),
                                              argument<float>(args, 1, r), e, a.rain),
                      last);
                break;
            default:
                return prior ? prior(r, args) : re::re_nullopt;
            }
            return re::ReMonostate{};
        }
    };
    return frame;
}
} // namespace rust_internal_re
