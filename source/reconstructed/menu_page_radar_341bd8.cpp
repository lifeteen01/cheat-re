#include "menu_pages_analysis.hpp"

namespace rust_internal_re {
namespace {
[[noreturn]] void stop(UnityStatus s, Rva r) {
    (void)s; (void)r;
    __builtin_trap();
}
template <class T>
T get(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.frame.effects.unity.external)
        stop(UnityStatus::missing_dependency, r);
    auto v =
        a.frame.effects.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    if constexpr (re::re_is_same_v<T, UnityValue>)
        return *v;
    else {
        if (auto p = re::re_get_if<T>(&*v))
            return *p;
        stop(UnityStatus::callback_type_mismatch, r);
    }
}
void call(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
} // namespace

FrameDependencyResult replay_menu_page_radar_341bd8(
    FrameMenuState& s,
    FrameMainMenuState& m,
    const MenuPagesApi& a)
{
    // Section 1: Radar/ESP boolean toggles
    auto tab1_label = get<re::ReString>(a, 0x80cc30);
    auto tab1_title = get<re::ReString>(a, 0x809b0c);
    call(a, 0x83e1f0, {tab1_title, tab1_label, Vec2{0.f, -1.f}, ReI32(1)});

    // Checkboxes
    call(a, 0x876514, {get<UnityValue>(a, 0x80e294), ReI32(0x8a3438),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x80f774), ReI32(0x8a3488),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x8109a4), ReI32(0x8a17c8),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x8114a8), ReI32(0x8a3528),
                        ReI32(0), ReI32(0x8a3e18), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x811ad4), ReI32(0x8a38e8),
                        ReI32(0), ReI32(0x8a3e78), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x811f28), ReI32(0x8a32f8),
                        ReI32(0), ReI32(0x8a3db8), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x81392c), ReI32(0x8a37a8),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x7fe724), ReI32(0x8a3758),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});

    // Separator
    call(a, 0x87e290, {get<UnityValue>(a, 0x809900)});

    // Grouped checkbox with custom format string
    auto format1 = get<re::ReString>(a, 0x80a478);
    call(a, 0x876514, {get<UnityValue>(a, 0x80a0e8), ReI32(0x8a3618),
                        ReI32(0), ReI32(0), format1, ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x80a7f8), ReI32(0x8a34d8),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x80aa88), ReI32(0x8a3848),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});
    call(a, 0x876514, {get<UnityValue>(a, 0x80ad3c), ReI32(0x8a37f8),
                        ReI32(0), ReI32(0), ReI32(0x746728), ReI32(0)});

    // Separator
    call(a, 0x87e290, {get<UnityValue>(a, 0x80af94)});

    // Radar distance format
    auto dist_format = get<re::ReString>(a, 0x80b3e8);
    call(a, 0x876514, {get<UnityValue>(a, 0x80b188), ReI32(0x8a36b8),
                        ReI32(0), ReI32(0), dist_format, ReI32(0)});

    // Scale format
    auto scale_format = get<re::ReString>(a, 0x80bc80);
    call(a, 0x876514, {get<UnityValue>(a, 0x80ba48), ReI32(0x8a3668),
                        ReI32(0), ReI32(0), scale_format, ReI32(0)});

    // Color push: red
    call(a, 0x851fec, {ReI32(1), static_cast<ReI32>(0xFF0000FF)});

    // Warning checkbox
    auto warn_format = get<re::ReString>(a, 0x80c080);
    call(a, 0x876514, {get<UnityValue>(a, 0x80be9c), ReI32(0x8ad188),
                        ReI32(0), ReI32(0), warn_format, ReI32(0)});

    // Pop color, end group, spacing
    call(a, 0x851d0c, {ReI32(1)});
    call(a, 0x84064c);
    call(a, 0x854004, {ReI32(0), re::re_bit_cast<ReI32>(-1.f)});

    // Section 2: Radar numeric settings (sliders)
    auto tab2_label = get<re::ReString>(a, 0x80c3bc);
    auto tab2_title = get<re::ReString>(a, 0x7fe6c4);
    call(a, 0x83e1f0, {tab2_title, tab2_label, Vec2{0.f, -1.f}, ReI32(1)});

    // Sliders
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80c644), ReI32(0x8a6d38),
                        50.f, 300.f, get<UnityValue>(a, 0x80c7f8), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80ca00), ReI32(0x8a6f68),
                        15.f, 200.f, get<UnityValue>(a, 0x80ce6c), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80d008), ReI32(0x8a6f18),
                        15.f, 200.f, get<UnityValue>(a, 0x80d21c), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80d3c8), ReI32(0x8a7008),
                        0.f, 10.f, get<UnityValue>(a, 0x80d564), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80d7b4), ReI32(0x8a6fb8),
                        0.f, 10.f, get<UnityValue>(a, 0x80d940), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80db1c), ReI32(0x8a6dd8),
                        0.f, 15.f, get<UnityValue>(a, 0x80dd88), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80dfd0), ReI32(0x8a6d88),
                        0.f, 15.f, get<UnityValue>(a, 0x80e444), ReI32(0)});
    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80e6a0), ReI32(0x8a6e28),
                        0.f, 15.f, get<UnityValue>(a, 0x80e890), ReI32(0)});

    // Separator
    call(a, 0x87e290, {get<UnityValue>(a, 0x80eacc)});

    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80ec48), ReI32(0x8a6e78),
                        7.f, 15.f, get<UnityValue>(a, 0x80ee00), ReI32(0)});

    // Separator
    call(a, 0x87e290, {get<UnityValue>(a, 0x80efb0)});

    call(a, 0x87d7f4, {get<UnityValue>(a, 0x80f198), ReI32(0x8a6ec8),
                        7.f, 15.f, get<UnityValue>(a, 0x80f304), ReI32(0)});

    // End tab group
    call(a, 0x84064c);

    return {UnityStatus::complete, 0x341bd8};
}

} // namespace rust_internal_re
