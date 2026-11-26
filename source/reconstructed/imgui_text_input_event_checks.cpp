#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_events() {
    using namespace text_input_test;
    {
        Fixture f;
        constexpr Address io = 0x4000;
        auto r = imgui_text_input_scroll_38cd28(f.state, f.input, io, 2, 3);
        expect(r.status == UnityStatus::complete && !f.get<ReU32>(Fixture::c + 0x3ea4),
               "disabled IO scroll returns before dereferencing owner context");
        f.put(io + 0x37b1, ReU8(1));
        r = imgui_text_input_scroll_38cd28(f.state, f.input, io, -0.0f, 0.0f);
        expect(r.status == UnityStatus::complete && !f.get<ReU32>(Fixture::c + 0xf4),
               "both signed zero wheel axes return before allocation/owner read");
    }
    {
        Fixture f;
        constexpr Address io = 0x4000;
        f.put(io + 0x37b1, ReU8(1));
        f.put(io + 0xdf8, Fixture::c);
        f.put(Fixture::c + 0x3ea4, 0xffffffffu);
        f.put(Fixture::c + 0x3ea0, 7u);
        const auto allocate = f.input.allocation.allocate;
        f.input.allocation.allocate = [&](Address target, Address user, ReUSize count) {
            expect(!f.get<ReU32>(Fixture::c + 0x3ea4),
                   "event counter wraps before allocation callback");
            return allocate(target, user, count);
        };
        const auto payload = 0x7fc12345u;
        auto r = imgui_text_input_scroll_38cd28(f.state, f.input, io, re::re_bit_cast<float>(payload),
                                                -0.0f);
        const auto data = f.get<Address>(Fixture::c + 0x3e88);
        expect(
            r.status == UnityStatus::complete &&
                f.get<re::ReArray<ReU32, 7>>(data) ==
                    re::ReArray<ReU32, 7>{2, 1, 0xffffffffu, payload, 0x80000000u, 7, 0} &&
                f.get<ReI32>(Fixture::c + 0x3e80) == 1,
            "scroll event retains NaN payload/signed zero/full zeroed constructor bytes");
        f.input.allocation.allocate = allocate;
        FrameDependencyResult last;
        const auto bound = bind_imgui_text_input_frame(f.state, f.input, last);
        const re::ReArray<UnityValue, 3> args{io, 0.0f, 2.0f};
        expect(bool(bound.external(0x38cd28, args)) && last.status == UnityStatus::complete &&
                   f.get<ReU32>(Fixture::c + 0x3ea4) == 1 &&
                   f.get<ReU32>(data + 28 + 8) == 0,
               "backend frame binder appends ordered wheel event to existing owned capacity");
    }
    {
        Fixture f;
        constexpr Address io = 0x4000;
        f.put(io + 0x37b1, ReU8(1));
        f.put(io + 0xdf8, Fixture::c);
        f.put(Fixture::c + 0x3ea4, 9u);
        f.input.allocation.allocate = [](Address, Address, ReUSize) -> Address {
            { __builtin_trap(); }
        };
        const auto r = imgui_text_input_scroll_38cd28(f.state, f.input, io, 0, 1);
        expect(r.status == UnityStatus::missing_dependency && r.stopped_at == 0x123456 &&
                   f.get<ReU32>(Fixture::c + 0x3ea4) == 10 &&
                   !f.get<ReI32>(Fixture::c + 0x3e80),
               "wheel event allocation failure preserves committed ID prefix and leaves queue size "
               "unchanged");
    }
}
} // namespace rust_internal_re
