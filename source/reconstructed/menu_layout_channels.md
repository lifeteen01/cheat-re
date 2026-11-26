# Selectable column and table channels

[C] Four local controllers from selectable `3c38a8` now perform their native clip save/restore and draw-channel switching. They use the same `ImguiWindowDetailsState::column_splitters` as EndColumns. `bind_menu_layout_channels(details, controls)` installs only the four `local_layout` roles and retains the supplied fallback.

| Range, exclusive end | Concrete behavior |
| --- | --- |
| `3b54ac..3b54f9` | Skip a single column; restore saved clip; switch to current-column index+1 with DWORD wrap. |
| `3b54fc..3b5551` | Skip a single column; save current window clip; install column background clip; switch to channel0. |
| `3b5824..3b588d` | Resolve signed table column with stride`70`; restore saved table clip; switch to its WORD channel. |
| `3b5890..3b58f2` | Save current window clip; install table background clip; switch to table WORD background channel. |
| `3b563c..3b569d` | Capture rectangle through`39c010`, write window clip, install draw header clip and overwrite last clip-stack entry without changing a draw command. |

[C] Current-window getter`3923c8` does not set the access flag used by`35d200`. Table column helper`3b4f88` sign-extends its index and reads the vector data pointer at+0. `39c010` reads maximumY, maximumX, minimumY, minimumX before its local Vec4 construction. Missing owned headers or clip-stack entries retain preceding window/saved-clip stores. Tests consume real draw-core index/command buffers, exercise signed indexing, single-column gates, bounded initial splitter import, and failure prefixes.

[I] Native splitter and draw buffers use the existing owned-container adaptation. Header and clip-stack changes are authoritative in `DrawCoreList`; native buffer data/capacity addresses are not fabricated or reimported after mutation. `imgui_window_details_switch_channel_3a8094` shares the existing bounded splitter importer and concrete draw-core switch body, then synchronizes the copied splitter current index. Cross-aliases between native raw draw-buffer storage and unrelated Snapshot object fields, native allocator ABI and unwritten padding are outside this adaptation. Invalid owned vectors stop explicitly instead of reproducing native out-of-bounds writes.

[C] Fresh raw-byte ranges, calls and branches are captured by [the audit](../../dump_analysis/semantic_reconstruction/menu_layout_channels/audit.json). [U] This closes the four historical menu-control channel roots; it does not claim every generic ImGui table controller or full live rendering compatibility.

[C] The 350-input combined [strict](../../dump_analysis/semantic_reconstruction/layout_channels_integrated_sources.json) and [ASan/UBSan](../../dump_analysis/semantic_reconstruction/layout_channels_sanitizer_sources.json) checks passed with identical unchanged source sets. The subsequent 354-input auxiliary checkpoint also includes these controllers. [U] Wider independent review remains a separate pass.
