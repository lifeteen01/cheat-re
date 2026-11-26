# Navigation and text deactivation

[C] `imgui_navigation_*` provides concrete directional scoring, tab selection, result stores, cancellation and text deactivation. `bind_imgui_navigation` installs these into the existing controls API and reuses the released `395964` item-navigation controller. `menu_controls_math.cpp` now implements the binary rectangle CRC; delayed anonymous hover calls it directly instead of stopping at a missing helper.

| Native range, exclusive end | Behavior |
| --- | --- |
| `395258..3952af` | Ordered candidate window/ID/focus-scope/flags stores, then window-relative rectangle |
| `395db8..396133` | Layer gate, counter, child clipping, box/center/axial distances, directional/tie policy and menu-layer fallback |
| `395bc4..395cdd` | Forward/backward/current tab candidates, first candidate, countdown and move-completion order |
| `395878..395898`, `395810..395825`, `39676c..39678e` | Commit/cancel and init-or-move state refresh |
| `3c04d0..3c0536` | Matched editor ID, char-buffer resize, fresh input pointer/length read and UTF8+NUL copy |
| `37acd4..37ad04`, `37a69c..37a6f5` | Char-vector growth, allocation, old-data copy, free, descriptor and size commits |
| `392654..3926a9`, `393314..393349` | Ordered ID-stack seed and relative rectangle, raw 16-byte CRC without string `###` resets |

[C] [The static audit](../../dump_analysis/semantic_reconstruction/imgui_navigation/audit.json) covers 16 ranges, 2,552 bytes, 632 instruction lines, 102 branches and 47 direct calls. This includes the reused `395964` controller and arithmetic/rectangle helpers; it verifies preserved instruction bytes and branch destinations. It does not prove every possible copied state. Existing allocator/free counter wrappers and native vector-growth arithmetic are reused.

[C] Deactivation reads DWORD editor ID at context`+4c20`, signed UTF8 length at`+4c28`, and input pointer at`+4c48`; the output vector is context`+5ab0`. It writes the matched ID at`+5aa8` before resizing. Growth retains its original desired size while allocation/free callbacks may change the subsequently reloaded input pointer and length. Free failure retains the old vector descriptor and prior effects. A null source selects actual copied bytes at`28d328`; no substitute zero buffer is manufactured.

[C] Fixtures verify direction/layer gates, distances, exact ties, axial fallback, score count before child rejection, relative candidate stores, independent zlib CRC values including raw triple-`#` bytes, delayed anonymous hover, tab completion, UTF8 termination, allocation counter ordering, callback-side source/length changes and free-failure prefixes. Focused GCC15 C++20/Werror/`-ffp-contract=off` and nonrecovering ASan/UBSan runs pass under [imgui_navigation](../../dump_analysis/semantic_reconstruction/imgui_navigation/).

[I] The allocator effects return numeric keys for owned copied storage. Temporary copy bytes are owned; arbitrary overlapping native memcpy input/output, platform heap behavior and allocator ABI are not asserted. Native signed overflow is retained where represented, but excessive or negative copy/allocation extents stop at explicit analysis bounds. The public rectangle helper accepts a copied value, so arbitrary raw argument aliasing remains outside that interface. [U] Nondefault FP environment, exception flags/traps and exhaustive NaN payload equivalence remain unverified. Keyboard/editor/IME behavior is separately tracked; these helpers do not establish a complete live ImGui implementation.
