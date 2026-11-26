# 02 — Unity rendering and overlay

[C] The observed overlay path uses Unity objects, a Mesh and a CommandBuffer. [I] It is an ImGui backend integrated through IL2CPP/Unity calls. [U] The evidence does not establish an exclusive dependency on built-in rendering, URP or HDRP.

## Per-frame path

| Stage | Evidence |
|---|---|
| Frame entry | [C] `Client.LateUpdate` → `0x2f8574`; setup `0x3621f2`. Other hook setup is called at `0x2f85a2`. Original LateUpdate is invoked through the gate at `0x2f87a4`. |
| Begin UI work | [C] `0x2f8b1c` calls initialization `0x3b2b38`; `0x2f8b93` calls `0x3b2eec`; UI frame calls follow. [I] These prepare Unity-backed ImGui state and input. |
| Populate draws | [C] `0x2f8d33` calls `0x35aad8`, `0x2f8d40` calls overlay `0x3098a4`, `0x2f8d4d` calls world/entity drawing `0x2fb72c`, and menu `0x35d5ac` is called at `0x2f8d79`. |
| Finalize and submit | [C] After UI finalization calls `0x398d84`/`0x3924bc`, `0x2f8d95` calls `0x3b3028`. That function uploads draw geometry through `0x3b4250` (`0x3b3158`), records commands through `0x3b1a94` (`0x3b316b`), then executes them through `0x3b2004` (`0x3b3177`). |

[C] Sources: [LateUpdate](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/2f8574.asm), [overlay](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3098a4.asm), [submission](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b3028.asm), [command recording](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b1a94.asm).

## Shader, bundle and mesh

[C] LateUpdate lazily loads `0x2a46` bytes from embedded RVA `0x2379e0` through `0x375c08` and saves the bundle at global `0x3e5ef8` (`0x2f85ea–0x2f860c`). [C] Those bytes begin with a `UnityFS` header containing the asset build string `2021.3.21f1`. [C] `0x375c08` copies the bytes into a managed byte array before calling the resolved loader. [U] An AssetBundle's editor/build string does not identify the running player's exact Unity version or render pipeline. Evidence: [bundle headers](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/embedded_bundle_headers.txt), [loader](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/375c08.asm).

[C] `0x3b337c` resolves “Shader” and loads `Assets/AssetBundleData/guish.shader` through `0x375abc` using the bundle at `0x3e5ef8` (`0x3b33c4–0x3b33e9`). The decoded getter is at `0x3b0de8` (inventory label `0x3b0de7`, preceding padding). [C] It creates a Material and a Mesh, caches them at `0x40d138` and `0x40d140`, and pins Unity objects through the wrapper resolving `Unity.Collections.LowLevel.Unsafe.UnsafeUtility::PinSystemObjectAndGetAddress` (`0x3b37c5`). Evidence: [shader/material/mesh initialization](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b337c.asm), [pinning](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b3798.asm).

[C] Initialization `0x3b2b38` also requests `SystemUI.prefab`, `RenderTexture.renderTexture`, “RawImageUI” and “CameraUI” (`0x3b2d7c–0x3b2e8e`; getters `0x3b0af8`, `0x3b0b20`, `0x3b0b50`, `0x3b0bac`). [I] These supply a UI/render-texture presentation arrangement, in addition to the explicit command-buffer drawing. [U] Exact prefab components and shader pass semantics have not been reconstructed from the compressed bundle.

| Geometry/command operation | Byte/string evidence |
|---|---|
| Vertex format | [C] `0x3b4250` → `0x3b4010`; icall getter `0x3b1014`: `UnityEngine.Mesh::SetVertexBufferParamsFromPtr_Injected`. |
| Vertex upload | [C] `0x3b4250` → `0x3b3f38`; getter `0x3b0fe0`: `UnityEngine.Mesh::InternalSetVertexBufferData_Injected`. |
| Indices | [C] `0x3b4250` calls `0x3b3bdc` and `0x3b3b04`; decoded inventory includes `UnityEngine.Mesh::SetIndexBufferParams_Injected` (`0x3b0f35`) and `InternalSetIndexBufferData_Injected` (`0x3b0f04`). |
| Submeshes | [C] `0x3b4497` calls `0x3b3e5c`; getter `0x3b0fb0`: `UnityEngine.Mesh::SetAllSubMeshesAtOnceFromNativeArray_Injected`. |
| Target/projection/clipping | [C] Command recording calls `0x3b3c90` (“SetRenderTarget”), `0x3b3614` (“Matrix4x4”, “Ortho”), `0x3b1edc` (“EnableScissorRect”), and `0x3b1dc4` (“DisableScissorRect”). |
| Execute | [C] `0x3b2004` resolves “Graphics” (`0x3b0cc4`) and “ExecuteCommandBuffer” (`0x3b1290`) in UnityEngine; this is an immediate Graphics execution path. |

[C] Vertex upload uses a `0x14`-byte stride (`0x3b4327`) and index upload uses 2-byte elements (`0x3b4369`). [I] The C++ geometry reconstruction concatenates those buffers and preserves command-relative vertex/index offsets in submesh descriptors.

[C] Geometry evidence: [upload routine](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b4250.asm). [C] Individual string use sites are reproducible in [string xrefs](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/strings_xref.txt). [I] Passing UI draw-list vertex/index buffers into this Mesh, with per-command clip rectangles, is consistent with the ImGui rendering model; it does not require intercepting DXGI presentation.

## “Sussy Object” is a separate path

[C] “Sussy Object” (`0x367f4c`, called at `0x36a640`) and “SussyMesh” (`0x367950`, called at `0x36a79f`) occur in `0x36a464`, alongside SkinnedMeshRenderer, MeshRenderer, MeshFilter, chams colors, a chams index and DestroyTimer. [I] This creates a model/chams reconstruction helper, not the primary ImGui Mesh initialized in `0x3b337c`. [U] No demonstrated edge makes those names necessary for the GUI shader path. Evidence: [model/chams helper](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/36a464.asm).

## Render-pipeline finding

[C] The confirmed presentation API is `UnityEngine.Graphics.ExecuteCommandBuffer`, not a decoded `Camera.AddCommandBuffer`/CameraEvent binding (`0x3b2034–0x3b20b8`). [C] The supplied decoded-string inventory has no matches for RenderPipelineManager, UniversalRenderPipeline, HDRenderPipeline, AddCommandBuffer, RemoveCommandBuffer or CameraEvent; the search scope and patterns are saved in [negative-search evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/string_searches.txt).

[I] Mesh, RenderTexture, Camera and CommandBuffer are shared Unity surfaces; their presence does not prove built-in, URP or HDRP. The available code therefore does **not substantiate a specific-pipeline claim**. [U] Whether the embedded shader/prefab works unchanged under each pipeline remains untested; absence of a pipeline string does not prove universal compatibility.

## Detection implications

[C] No D3D11, DXGI or Present match occurs in the decoded-string inventory, and the 15 reconstructed installations target game/Unity-facing IL2CPP methods (report 01). [I] The analyzed cheat renders without an identified D3D Present hook; a Present-hook-only scan would miss this path. [U] This bounded static result does not exclude graphics hooks in other DLLs or other builds.

[I] Scene/resource inspection can correlate unexpected AssetBundles and shader/material provenance, repeated GUI vertex/index uploads, extra RenderTextures/UI cameras, CommandBuffer submission from foreign code and helper Mesh/GameObject objects. The specific strings above are useful triage anchors; supported mods or tools may also create similar resources. [I] Correlate these objects with `Client.LateUpdate` pointer provenance and memory backing; object names can be changed and are insufficient on their own.

## Concrete offline command reconstruction

[I] [02_rendering.cpp](/home/john/Desktop/cheat_re/source/reconstructed/02_rendering.cpp) now implements `subtract_clip_3b0aac`, `scale_clip_3b3950` and `plan_render_commands_3b1a94`, using the domain views in [entities_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/entities_analysis.hpp). [C] `0x3b1ab8–0x3b1b0c` copies DisplayPos and FramebufferScale into duplicated four-component vectors. `0x3b1c75–0x3b1ca6` subtracts DisplayPos from clip min/max coordinates and then multiplies by FramebufferScale. The helper bodies implement component-wise subtraction (`0x3b0ab2–0x3b0ae8`) and multiplication (`0x3b3956–0x3b3989`). Evidence: [subtraction](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b0aac.asm), [multiplication](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b3950.asm), [command recording](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b1a94.asm).

[C] The command gate rejects `min_x >= viewport_width`, `min_y >= viewport_height`, `max_x < 0` or `max_y < 0` (`0x3b1cab–0x3b1cda`). It does not clamp coordinates or reject reversed/zero-area rectangles. The reconstructed output preserves this: scissor arguments are `{min_x, viewport_height-max_y, max_x-min_x, max_y-min_y}` (`0x3b1cf5–0x3b1d32`). Each accepted draw retains its numeric texture key from command `+0x10` and global submesh ordinal. [C] The ordinal increments for every command, including clipped commands, and spans lists (`0x3b1d6d–0x3b1d89`); clipping must not renumber submeshes.

[C] View setup uses translation `{0.5/width, 0.5/height, 0}` (`0x3b1b9c–0x3b1bd7`, matrix stores `0x3b420d–0x3b4246`) and passes Ortho arguments `{0,width,height,0,0,1}` (`0x3b1bdc–0x3b1c04`). [I] The plan returns these arguments, per-command texture/scissor/submesh data and final scissor-disable requirement. [U] Render-target creation, texture/material-property calls, Unity's returned Ortho matrix, mesh drawing and submission remain explicit external boundaries; no live Unity objects are accessed. Evidence: [view construction](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b41f8.asm), [Ortho resolution](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/3b3614.asm).

[C] The geometry audit confirms base vertex = cumulative vertices + command `+0x18`, index start = cumulative indices + command `+0x1c`, index count = command `+0x20` (`0x3b43ae–0x3b4426`). [I] Existing concatenation preserves 16-bit index values and zero-count commands. Snapshot/buffer bounds, finite render coordinates and a maximum command count are analyst safeguards, not native validation. [U] Individual index-to-vertex validity and original callback execution are not reconstructed.

[I] [entities_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/entities_checks.cpp) checks non-unit scale, DisplayPos subtraction, Y inversion, clipped ordinal retention across lists, unclamped and reversed rectangles, view arguments, zero-count submeshes and bounded malformed inputs. Its `rust_internal_re::check_entity_reconstruction()` also covers entity semantics. [C] Fixtures run only the analyst C++; no sample code is executed. [C] An independent original-input audit reconfirms Sussy Object/SussyMesh callsites at `0x36a640`/`0x36a79f` inside the separate `0x36a464` helper: [audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/entity_render_audit.txt).
