#include "imgui_navigation_internal.hpp"
namespace rust_internal_re {
namespace {
void expect(bool condition, const char *why) {
    if (!condition)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    MenuControlsState state;
    static constexpr Address c = 0x1000, w = 0x20000, result = 0x90000;
    Fixture() {
        state.image = &image;
        put<Address>(0x405b28, c);
        put<Address>(c + 0x3f08, w);
        put<Address>(c + 0x48e8, w);
        put<ReU32>(c + 0x4920, 0);
        put<ReU32>(w + 0x158, 0);
        put<ClipRect>(c + 0x495c, {0, 0, 10, 10});
        put<ReI32>(c + 0x4950, 1);
        reset();
    }
    template <class T> void put(Address at, T value) {
        expect(image.write(at, value), "navigation fixture write");
    }
    void reset() {
        for (Address offset : {0x24, 0x28, 0x2c})
            put<float>(result + offset, re::ReNumericLimits<float>::max());
    }
};
} // namespace
void check_imgui_navigation_reconstruction() {
    Fixture f;
    using F = Fixture;
    f.put<ClipRect>(F::c + 0x47c0, {12, 0, 22, 10});
    expect(imgui_navigation_score_395db8(f.state, F::result) &&
               f.image.read<float>(F::result + 0x24) == 2 &&
               f.image.read<float>(F::result + 0x28) == 24 &&
               f.image.read<ReU32>(F::c + 0x497c) == 1,
           "directional candidate box/center distance and score count");
    f.put<ClipRect>(F::c + 0x47c0, {11, 0, 21, 10});
    expect(imgui_navigation_score_395db8(f.state, F::result) &&
               f.image.read<float>(F::result + 0x24) == 1,
           "nearer directional candidate replaces best distance");
    expect(!imgui_navigation_score_395db8(f.state, F::result),
           "positive direction exact-distance tie retains earlier candidate");
    f.put<ReI32>(F::c + 0x4950, 0);
    f.put<ClipRect>(F::c + 0x47c0, {-11, 0, -1, 10});
    expect(imgui_navigation_score_395db8(f.state, F::result),
           "negative directional exact tie selects later candidate");
    auto previous_count = f.image.read<ReU32>(F::c + 0x497c);
    f.put<ReU32>(F::w + 0x158, 1);
    expect(!imgui_navigation_score_395db8(f.state, F::result) &&
               f.image.read<ReU32>(F::c + 0x497c) == previous_count,
           "layer mismatch precedes score counter increment");
    f.put<ReU32>(F::c + 0x4920, 1);
    f.put<ReI32>(F::c + 0x4950, 1);
    f.put<ClipRect>(F::c + 0x47c0, {11, 20, 21, 30});
    f.reset();
    expect(imgui_navigation_score_395db8(f.state, F::result) &&
               f.image.read<float>(F::result + 0x24) == re::ReNumericLimits<float>::max() &&
               re::re_fabs(*f.image.read<float>(F::result + 0x2c) - 15.001f) < 0.0001f,
           "menu-layer axial fallback retains absent box candidate");
    f.put<Address>(F::w + 0x368, F::w);
    f.put<ClipRect>(F::w + 0x238, {0, 0, 10, 10});
    previous_count = f.image.read<ReU32>(F::c + 0x497c);
    expect(!imgui_navigation_score_395db8(f.state, F::result) &&
               f.image.read<ReU32>(F::c + 0x497c) == *previous_count + 1,
           "child candidate clipping rejection follows counter increment");
    f.put<Address>(F::w + 0x368, 0);
    f.put<ClipRect>(F::c + 0x47c0, {7, 9, 9, 11});
    f.put<Vec2>(F::w + 0x110, {2, 3});
    f.put<ReU32>(F::c + 0x47a4, 0x42);
    f.put<ReU32>(F::c + 0x4784, 0x55);
    f.put<ReU32>(F::c + 0x47a8, 0x66);
    imgui_navigation_result_395258(f.state, F::result);
    const auto relative = f.image.read<ClipRect>(F::result + 16);
    expect(f.image.read<Address>(F::result) == F::w &&
               f.image.read<ReU32>(F::result + 8) == 0x42 && relative && relative->x == 5 &&
               relative->y == 6 && relative->z == 7 && relative->w == 8 &&
               f.image.read<ReU32>(F::result + 32) == 0x66,
           "navigation result stores copied window/ID/scope/flags and relative rectangle");
    f.put<ReI32>(F::w + 0xf0, 1);
    f.put<Address>(F::w + 0xf8, 0x30000);
    f.put<ReU32>(0x30000, 0x12345678);
    expect(imgui_navigation_anonymous_392654(f.state, F::w, {7, 9, 9, 11}) == 0x9057b607u,
           "anonymous rectangle CRC matches independent zlib binary-data fixture");
    f.put<ReU32>(F::c + 0x47a4, 0);
    f.put<ReU32>(F::c + 0x47a8, 0);
    f.put<ReU32>(F::c + 0x47ac, 1);
    f.put<Address>(F::c + 0x3f10, F::w);
    f.put<float>(F::c + 0x44, 0.5f);
    f.put<float>(F::c + 0x4c08, 0.75f);
    f.put<ClipRect>(F::c + 0x47b0, {7, 9, 9, 11});
    expect(menu_detail::item_hovered(f.state, 0x800) &&
               f.image.read<ReU32>(F::c + 0x4c00) == 0x9057b607u,
           "delayed anonymous hover uses the concrete rectangle CRC instead of a missing boundary");
    expect(!menu_detail::item_hovered(f.state, 0x2800) && f.image.read<float>(F::c + 0x4c08) == 0,
           "anonymous per-item hover delay resets a differing shared timer ID");
    f.put<Vec2>(F::w + 0x110, {});
    expect(imgui_navigation_anonymous_392654(
               f.state, F::w, {re::re_bit_cast<float>(0x23232300u), 0, 0, 0}) == 0xac85a122u,
           "binary rectangle CRC treats triple hash bytes as ordinary data");
    f.put<ReU32>(F::c + 0x47a4, 0x42);
    f.put<ReU8>(F::c + 0x4940, 1);
    f.put<ReU8>(F::c + 0x4941, 1);
    f.put<ReU8>(F::c + 0x4929, 1);
    imgui_navigation_cancel_395810(f.state);
    expect(f.image.read<ReU16>(F::c + 0x4940) == 0 &&
               f.image.read<ReU8>(F::c + 0x4928) == 1,
           "nav cancel clears both move bytes and refreshes init-or-move state");
    f.put<ReU32>(F::w + 0x158, 1);
    f.put<ReU8>(F::c + 0x4941, 1);
    f.put<ReI32>(F::c + 0x4980, 1);
    f.put<ReI32>(F::c + 0x4984, 1);
    f.put<ReU32>(F::c + 0x4a20, 0);
    imgui_navigation_tab_395bc4(f.state, 0x42, 0, 0x200);
    expect(f.image.read<ReU32>(F::c + 0x4990) == 0x42 &&
               f.image.read<ReU32>(F::c + 0x4a20) == 0x42 &&
               f.image.read<ReU8>(F::c + 0x4941) == 0,
           "forward tab commits first candidate and completes countdown");
    {
        MenuControlsState absent;
        imgui_navigation_deactivate_3c04d0(absent, {}, 0);
    }
    f.put<ReU32>(F::c + 0x4c20, 0x42);
    f.put<ReI32>(F::c + 0x4c28, 3);
    f.put<Address>(F::c + 0x4c48, 0x80000);
    f.put<ReI32>(F::c + 0x5ab0, 0);
    f.put<ReI32>(F::c + 0x5ab4, 8);
    f.put<Address>(F::c + 0x5ab8, 0x81000);
    f.put<re::ReArray<char, 4>>(0x80000, {'a', 'b', 'c', 0});
    auto bound = bind_imgui_navigation(f.state, {});
    bound.deactivate_text_3c04d0(0x42);
    expect(f.image.read<ReU32>(F::c + 0x5aa8) == 0x42 &&
               f.image.read<ReI32>(F::c + 0x5ab0) == 4 &&
               f.image.read<re::ReArray<char, 4>>(0x81000) == re::ReArray<char, 4>{'a', 'b', 'c', 0},
           "text deactivation copies UTF8 and terminating NUL to owned native descriptor");
    f.put<ReI32>(F::c + 0x5ab4, 0);
    f.put<Address>(F::c + 0x5ab8, 0);
    f.put<Address>(0x27fa18, 1);
    f.put<Address>(0x27fa20, 2);
    f.put<Address>(0x405b68, 3);
    ImguiNavigationApi allocation;
    allocation.allocate = [&](Address target, Address user, ReUSize bytes) {
        expect(target == 1 && user == 3 && bytes == 8 &&
                   f.image.read<ReU32>(F::c + 0xf4) == 1,
               "native allocation counter before leaf");
        f.put<ReI32>(F::c + 0x4c28, 1);
        f.put<Address>(F::c + 0x4c48, 0x82000);
        f.put<re::ReArray<char, 2>>(0x82000, {'Z', 0});
        return Address(0x83000);
    };
    imgui_navigation_deactivate_3c04d0(f.state, allocation, 0x42);
    expect(f.image.read<ReI32>(F::c + 0x5ab0) == 4 &&
               f.image.read<re::ReArray<char, 2>>(0x83000) == re::ReArray<char, 2>{'Z', 0},
           "pre-allocation size retained while post-allocation source/length are reloaded");
    allocation.allocate = [&](Address, Address, ReUSize) { return Address(0x86000); };
    allocation.free = [&](Address target, Address user, Address old) {
        expect(target == 2 && user == 3 && old == 0x84000 &&
                   f.image.read<re::ReArray<char, 2>>(0x86000) == re::ReArray<char, 2>{'Q', 0} &&
                   f.image.read<Address>(F::c + 0x5ab8) == old,
               "vector relocation copies before free and leaves old descriptor until free returns");
        { __builtin_trap(); }
    };
    f.put<ReI32>(F::c + 0x4c28, 3);
    f.put<ReI32>(F::c + 0x5ab0, 2);
    f.put<ReI32>(F::c + 0x5ab4, 2);
    f.put<Address>(F::c + 0x5ab8, 0x84000);
    f.put<re::ReArray<char, 2>>(0x84000, {'Q', 0});
    bool stopped = false;
    {
        imgui_navigation_deactivate_3c04d0(f.state, allocation, 0x42);
    }
    expect(stopped && f.image.read<Address>(F::c + 0x5ab8) == 0x84000 &&
               f.image.read<ReI32>(F::c + 0x5ab4) == 2 &&
               f.image.read<ReI32>(F::c + 0x5ab0) == 2,
           "free failure preserves native vector descriptor prefix");
}
} // namespace rust_internal_re
