// Stub implementations of the stack-spoof gate assembly.
// The real DLL has handcrafted x86-64 assembly at these symbols.
// These stubs allow the DLL to link; the spoof bridge will return
// failure status (1) which the bridge code handles gracefully.

#include "reconstruction.hpp"

extern "C" {

void re_gate_restore_3cdbba() {
    // Real implementation is a hand-written asm continuation that
    // restores spoofed stack frames. Stub is a no-op.
}

// ReGateInvoke(context*, result*) -> status
// Status 0 = success, 1 = validation failure
ReU32 ReGateInvoke(void* context, void* result) {
    (void)context;
    (void)result;
    return 1; // validation failure — spoof bridge will fall through to direct call
}

} // extern "C"
