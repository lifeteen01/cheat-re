# Native menu implementation

Owned source: `source/windows_base/base_menu.hpp` and `base_menu.cpp`. This is new Win32 UI, not a claim that a recovered game menu or game integration works.

The modeless, owned top-level window starts **hidden**, with a 720 × 520 client area at 96 DPI and a resize minimum of 580 × 460 outer pixels at 96 DPI. General, Offsets and About tabs use Windows common controls and the stock GUI font. Layout scales using the owner display DPI at creation and resizes with the window; per-monitor DPI transitions are not implemented.

General edits `MenuModel::preferences` directly. The parent frame must consume `show_marker`, `marker_size` and `accent`. The slider range is 8–96. Accent values are packed RGBA with R in the low byte: Green `0xff80d060`, Blue `0xffffa050`, Amber `0xff50c0f0`, Rose `0xffb080e8`.

Offsets has an editable external profile path, Reload, Save, a case-insensitive substring filter across every column, single-selection ListView (key/type/module/hex), value edit, and Apply. Reload passes the edited wide path. Path editing also updates `model.profile_path`, allowing the parent's Save callback to reject a path that has not been loaded successfully. Save is enabled only when `profile_loaded` and a save callback are present. Apply is enabled only for a selected row with an apply callback. The parent validates offsets, file format, path and build identity; this UI imposes no substitute validation.

Callbacks run synchronously and may update the model and call `refresh_native_menu`. A refresh guard suppresses recursive notification/refresh loops. After every action, the menu refreshes from the model and displays `profile_summary` alongside the loaded state. Exceptions are caught at the menu boundary and displayed as failure. The UI does not invent successful action results. Both General and About explicitly retain game integration as **Needed / To do**.

F1, Escape and Close hide the window. Native controls are subclassed for F1/Escape and Tab/Shift+Tab navigation, so hiding works when an edit, slider, combo, list or tab owns focus. The parent's existing input forwarding and F1 reopening behavior remain its responsibility.

## Integration and lifetime

- Add `base_menu.cpp` to the DLL and link `user32`, `gdi32`, `comctl32` (no third-party dependency).
- Keep `NativeMenu`, `MenuModel`, action captures and the shared callback depth at stable addresses until explicit cleanup. All menu API calls are owner-thread-only.
- Create before showing; show after the parent context is installed. `native_menu_handle` supports host checks through real Win32 messages.
- Every menu WndProc and control subclass callback has a shared depth guard, including messages during window creation. The parent must reject shutdown while depth is nonzero.
- Owner destruction automatically destroys the owned menu; `WM_NCDESTROY` clears window/control handles without deleting the stable state. Call `destroy_native_menu` later on the owner thread, outside callbacks, to unregister the class and release the state before DLL unload. Repeated cleanup is safe. No work occurs in DllMain.

## Stable host control IDs

Header namespace `re_base::menu_control` is authoritative. Tab indices: General 0, Offsets 1, About 2. Accent combo indices: Green 0, Blue 1, Amber 2, Rose 3.

| Control | ID |
| --- | ---: |
| tabs | 4100 |
| show_marker | 4101 |
| marker_size | 4102 |
| accent | 4103 |
| profile_path | 4110 |
| reload | 4111 |
| save | 4112 |
| filter | 4113 |
| offsets | 4114 |
| selected_value | 4115 |
| apply | 4116 |
| status | 4117 |
| selected_key | 4118 |
| about | 4120 |

For tab checks, send `TCM_SETCURSEL` and then parent `WM_NOTIFY/TCN_SELCHANGE` (programmatic tab selection does not emit it). Use `BM_CLICK` for buttons, `WM_SETTEXT` for edits, `TBM_SETPOS` followed by parent `WM_HSCROLL` for the slider, and `CB_SETCURSEL` followed by parent `WM_COMMAND/CBN_SELCHANGE` for the combo. List rows store the current model row index as `LVIF_PARAM`; select with `LVM_SETITEMSTATE`. Filter edits rebuild the list and preserve selection by key when possible. Refresh rebases the selected value edit from the updated model.

## Validation

`strict_compile.log` records warning-clean MinGW x64 compilation in both default and Unicode builds, plus a menu-only DLL link with undefined symbols forbidden. This is compile/link evidence only. Parent integration is responsible for the analyst-owned Windows host runtime checks, resize/keyboard checks and callback/shutdown checks. No game or unpacked sample was executed, and no game compatibility result is asserted.
