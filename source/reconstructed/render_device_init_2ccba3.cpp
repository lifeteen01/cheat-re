// [C] 0x2ccba3..0x2ccbc0: Render device initialization.
// Decompiled from dump via REA/Ghidra. Semantically equivalent reconstruction.
//
// Original checks a flag at global 0x3d6161; on first call, sets it and
// creates a render surface via 0x375c08 (UnityFS surface factory).
// The returned handle is stored at global 0x3d6168.
//
// In the existing reconstruction, this is part of the Client.LateUpdate
// frame initialization path at 0x2ccba3..0x2ccbc0 (30 bytes).

#include "internal_analysis.hpp"

namespace rust_internal_re {

struct RenderDeviceApi {
    re::ReFunction<bool()> is_ready_2ccba3;
    re::ReFunction<Address(re::ReStringView tag, ReU32 flags, ReU32 reserved)> create_surface_2f8574;
    re::ReFunction<bool(Address surface)> validate_surface_38600c;
};

bool initialize_render_device_2ccba3(RenderDeviceApi const& api) {
    if (api.is_ready_2ccba3 && api.is_ready_2ccba3())
        return true;

    // [C] Global flag at 0x3d6161 (DAT_7ffa2b88f561 in Ghidra).
    // First-time init: set flag, create surface via "UnityFS" tag + 0x21514e flags.
    Address surface = api.create_surface_2f8574
        ? api.create_surface_2f8574("UnityFS", 0x21514e, 0)
        : Address{};

    if (!surface)
        return false;

    if (api.validate_surface_38600c && !api.validate_surface_38600c(surface))
        return false;

    // [C] Surface handle stored at global 0x3d6168 (DAT_7ffa2b88f568).
    // In offline reconstruction, the caller tracks the surface handle.
    return true;
}

} // namespace rust_internal_re
