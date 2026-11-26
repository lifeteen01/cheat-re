from pathlib import Path
import json,re,struct,hashlib,collections,datetime
ROOT=Path('/home/john/Desktop/cheat_re');SRC=ROOT/'source/reconstructed';OUT=ROOT/'dump_analysis/semantic_reconstruction/review_dependency_closure'
q=json.loads((OUT/'working_index.json').read_text());inv=json.loads((SRC/'dependency_inventory.json').read_text());im=(ROOT/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();pe=struct.unpack_from('<I',im,60)[0];a,n=struct.unpack_from('<II',im,pe+24+112+24);u={a:b for a,b,_ in (struct.unpack_from('<III',im,p) for p in range(a,a+n,12))};lines=[]
for line in (ROOT/'dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 m=re.match(r'^([0-9a-f]+)\t(.*)',line)
 if m:lines.append((int(m[1],16),m[2]))
def nums(s):return {int(x,16) for x in s.split()}
groups={
 'frame_collection_and_world_controllers':nums('2d60d0 3211f0 3684e0 316540 318f34 3096c4'),
 'time_camera_transform_metadata_wrappers':nums('2e081c 2e6240 31581c 315924 315a54 31492c 3247cc 3297f0 329920 32be08 330700 36c79c 36cbe4 36ce18 370508 370968 373f0c 374bf8 374d60 3738cc'),
 'direct_game_target_wrappers':nums('366c30 366ccc 366d7c 366e38 366ef0 36817c 36a238 36b004 36b6cc 370b50 373c60 374168 322580'),
 'small_composite_and_field_controllers':nums('3691c0 36a0e0 36a1e4 368244 368468 3714c4 371688 3717c0 371df4 373eb4 372bf4 322ef8 36ba2c 32308c'),
 'key_and_physics_controllers':nums('2e2320 2e5e4c 2e8910 329aa0'),
 'known_argument_stores_before_excluded_executor':nums('2e480c 32225c 3214f4'),
 'other_input_queue_controller':nums('38cd28'),
}
aux=nums('3740e0 374124 3743f8 37628c 36ad68 36ae90 372c1c 374268 315a24 32957c 329714 329a38')
active=nums('2dda9c 2e069c 2e0e4c')
manual={}
def mark(code,reason,file,rs):
 for r in nums(rs):manual[r]={'classification':code,'reason':reason,'authoritative_files':['source/reconstructed/'+f for f in file.split()]}
mark('implemented_shared_export_scan','Export scan parameterization is implemented by shared scanner and cached getter specs; the resolved export effect is distinct.','metadata_export_analysis.cpp metadata_export_analysis.hpp','2cbef8 2cbfa4 2cc050 2decb8 3336ac')
mark('implemented_shared_game_helper','Replay dispatches this exact RVA through concrete object/vector/orientation/component/inventory predicates, with existing binders; game leaf effects stay typed.','game_helpers_analysis.cpp game_helpers_analysis.hpp world_snapshot_bindings.cpp frame_game_bindings.cpp','368100 368b9c 369164 36920c 36924c 36942c 36b244 36b938 371630 37224c 3722f0 372abc 372b30')
mark('implemented_shared_classifier','Concrete classification switch dispatches these four RVAs in bind_snapshot_aim; typed37154c definition child has released game helper.','snapshot_bindings.cpp game_helpers_analysis.cpp','371464 3716e0 371eb8 3721b4')
mark('implemented_inline_controller','Capture/restore controller is folded in replay_launcher and write_orientation, rather than separately named native helpers.','launcher_analysis.cpp launcher_worker_bindings.cpp','2dda50 2ddbbc')
mark('implemented_inline_controller','Quaternion half-angle/products are inside Replay::euler_quaternion; known game Sin/Cos calls remain typed through released math cache wrappers.','movement_main_analysis.cpp unity_math_analysis.cpp','318a14')
mark('implemented_inline_controller','Backend constructor method selection and IO/texture vector conversions are implemented inline; vector invalid path explicitly retains indeterminate native scratch.','unity_backend_analysis.cpp','3b106c 3b27b4 3b34f0 3b3998')
mark('implemented_frame_controller_or_binding','Path/config parser/cache/notification behavior is concretely implemented and routed by bind_frame_dependencies; filesystem results remain supplied typed effects.','frame_dependencies_analysis.cpp frame_dependencies_configuration.cpp','2d5be4 2dbb00 2dbb70 2dbbe0 2dbec0')
mark('owned_container_representation','These native RB-tree/vector/literal storage operations have explicit owned data equivalents. Native MSVC header/allocator ABI is adapted, not an absent game implementation.','font_text_controllers.cpp frame_dependencies_menu.hpp game_helpers_analysis.cpp registry_analysis.cpp','2d4da0 2d6d44 2d7328 2d7bd4 2d7d90 2d86b8 2d87b0 2ea318 3193a4 319850 31a0a0 3360cc 3360f8 364aec')
mark('owned_container_input_or_binding_limit','Aim takes owned TargetRecord span instead of native global2187d0 temporary copy/destruction. Its native storage ABI has not been claimed.','aim_weapon_analysis.cpp aim_weapon_analysis.hpp','2e2eec 2e3afc')
mark('implemented_visibility_storage_with_adapter_requirement','Owned visibility RegistryStore path is concrete; copied-native missing-key path explicitly requires that owned registry instead of inventing native allocation.','game_helpers_analysis.cpp registry_analysis.cpp registry_analysis.hpp','367684')
mark('implemented_owned_trajectory_cache','Concrete owned prediction allocation/init/slot search and table generation are folded into trajectory cache binder; native heap layout is adapted.','trajectory_cache_analysis.cpp trajectory_cache_analysis.hpp 05_server_observable.cpp','2dfe64 2e3a70')
mark('owned_format_or_lifetime_binding_limit','Trajectory uses actual owned string concatenation and %f formatting; Aim retains explicit format/destruction callbacks. Missing default Aim binding is distinct from unavailable game effects; native MSVC string/CRT equivalence remains adapted.','trajectory_cache_analysis.cpp aim_weapon_analysis.cpp aim_weapon_analysis.hpp','2cd69c 2cef40 2d9540 2d955c')
mark('native_argument_data_or_format_specialization','Known argument fields/owned formatting are implemented; omitted native high/stack argument bits must be supplied. Generic native varargs/runtime ABI is not claimed.','unity_math_analysis.cpp movement_main_analysis.cpp','2de97c 2de9d4 2ee714')
mark('known_literal_or_type_adapter','These reached native literal/type/placement helper effects are represented by owned decoded type strings and typed metadata inputs, not generic string/header ABI.','game_helpers_analysis.cpp','320584 32210c 332284')
mark('owned_vector_allocator_adaptation','Released DrawCore buffers implement push/growth/initial command and allocation counters with explicit owned allocator boundaries.','drawlist_core_commands.cpp drawlist_core_bindings.cpp renderer_helpers_background.cpp','37a658 39f030 39ef2c 395158 39517c 3c8c70')
mark('scope_exclusion_detection_only','Context/executor mechanics are explicitly detection-only; no sample executor/stack fabrication is implemented.','native_pe_analysis.cpp metadata_argument_bindings.cpp','2cbd24 3cdbd4')
# Full-body catalogues are evidence of local implementation scope, not proof of binding/equivalence.
records=[];unmatched=[]
for old in q['records']:
 r=int(old['rva'],16);o=dict(old);classification=None
 if r in aux:classification={'classification':'new_auxiliary_body_and_binders','reason':'This audit implemented all native branches in NEWgame_aux_helpers; strict/sanitizer fixtures cover guard, width, overlap and composition.','authoritative_files':['source/reconstructed/game_aux_helpers_analysis.cpp','source/reconstructed/game_aux_helpers_bindings.cpp','source/reconstructed/game_aux_helpers_checks.cpp']}
 elif r in active:classification={'classification':'active_other_owner','reason':'Parent game_root_helpers or font_atlas_input owns this entry; excluded from duplicate work.','authoritative_files':[]}
 elif r in manual:classification=manual[r]
 elif any(r in values for values in groups.values()):classification={'classification':'confirmed_recoverable_local_body_remaining','group':next(k for k,v in groups.items() if r in v),'reason':'Required caller forwards the numeric role; no authoritative production body/descriptor routes its native local operations. See exact_remaining.json for bytes/calls and current source evidence.','authoritative_files':[]}
 elif old['all_references_range_end']:classification={'classification':'range_endpoint_reference','reason':'Every imported uncertainty occurrence uses this token as the end of a range. Its nearest pdata owner is not evidence of another missing required function.','authoritative_files':[]}
 elif old['current_named_bodies']:classification={'classification':'implemented_named_controller_scope_available','reason':'A current production body exists; the original [U] may describe its external effect/input/ABI/child limits. Body naming alone does not prove complete binding or equivalence.','authoritative_files':sorted({x['file'] for x in old['current_named_bodies']})}
 elif old['descriptor_rows']:classification={'classification':'implemented_descriptor_or_coverage_scope_available','reason':'Current production descriptor/coverage maps this entry. Review shared interpreter/cache and binder rather than counting the lack of a suffixed function as omission; typed effects and raw ABI limits remain.','authoritative_files':sorted({x['file'] for x in old['descriptor_rows']})}
 elif r==0x323004:classification={'classification':'interior_of_remaining_local_body','reason':'This interior belongs to missing collider metadata child322f30, reached by322ef8; exact_remaining records the owner once.','authoritative_files':[]}
 elif r in nums('330c04 330d65 3316e1 331964 331a2a'):classification={'classification':'local_literal_conversion_or_compare_binding_remaining','reason':'Worker branch controller exists, but it still forwards literal/managed conversion/hash or decoded class comparison. Required sample-local binding must be distinguished from actual foreign game effects.','authoritative_files':['source/reconstructed/projectile_analysis.cpp','source/reconstructed/projectile_analysis.hpp']}
 elif not old['is_pdata_entry']:classification={'classification':'interior_or_leaf_reference','reason':'Documented token is an interior branch/data/field site, or a leaf without its own pdata record. Native owner and current source/coverage are retained; this is not a new missing-body count.','authoritative_files':[]}
 elif old['coverage_ledgers']:classification={'classification':'released_specialized_or_catalogued_scope','reason':'A current exact range/coverage entry exists; specialized/unresolved statuses are retained verbatim, not promoted to full closure.','authoritative_files':sorted({x['file'] for x in old['coverage_ledgers']})}
 else:classification={'classification':'needs_manual_scope_reconciliation','reason':'No mechanical closure inference made.'};unmatched.append(old)
 o['reconciliation']=classification;records.append(o)
# Confirmed bodies plus directly proved previously unlisted immediate children.
extra={'2e0bf0':'Time getter used directly by interaction_workers range math, absent from the old484 documented tokens.','2e0f10':'Direct local physics child of2e2320.','372ba4':'Guarded model predicate child of368244.','322f30':'Metadata collider child called by322ef8; imported token323004 is inside this missing owner, not an independent function.','37423c':'Already implemented existing scalar getter; not new work.'}
remaining=[]
for group,rs in groups.items():
 for r in sorted(rs):
  if r not in u:raise RuntimeError(hex(r))
  end=u[r];body=[(a,t) for a,t in lines if r<=a<end];calls=[];branches=[]
  for a,t in body:
   m=re.match(r'(call|jmp)\s+0x([0-9a-f]+)',t)
   if m and not r<=int(m[2],16)<end:
    target=int(m[2],16);calls.append({'site':hex(a),'target':hex(target),'target_end_exclusive':hex(u[target]) if target in u else None})
   if re.match(r'j(?!mp)\w+ ',t):branches.append({'site':hex(a),'instruction':t})
  old=next((x for x in records if int(x['rva'],16)==r),None)
  (OUT/f'{r:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body))
  remaining.append({'begin':hex(r),'end_exclusive':hex(end),'bytes':end-r,'group':group,'confidence':'C: native extent/calls; I: implementation scope reconciliation','status':'recoverable local body/controller remaining; actual game effect separate','sha256':hashlib.sha256(im[r:end]).hexdigest(),'conditional_branches':branches,'direct_dependencies':calls,'source_forwarding_evidence':[] if old is None else [h for h in old['current_source_hits'] if 'checks' not in h['file']],'document_references':[] if old is None else old['references']})
for key,note in extra.items():
 r=int(key,16)
 if key=='37423c':continue
 end=u.get(r)
 if not end:raise RuntimeError('extra missing extent '+key)
 body=[(a,t) for a,t in lines if r<=a<end];(OUT/f'{r:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body))
 remaining.append({'begin':hex(r),'end_exclusive':hex(end),'bytes':end-r,'group':'newly_exposed_immediate_local_child','confidence':'C: native bytes/caller; I: omitted local scope','status':'recoverable local body remaining','reason':note,'sha256':hashlib.sha256(im[r:end]).hexdigest(),'direct_dependencies':[{'site':hex(a),'instruction':t} for a,t in body if re.match(r'(call|jmp)\s+0x',t)]})
scopes={'active_other_owners':{'game_roots':['0x2dda9c','0x2e069c','0x2e0e4c'],'font_atlas_input':'39fe54->39fd68/config/font constructors/clear/glyphrange getters','imgui_text_input':'parent delegated active domain; no duplicate implementation'},'external_artifacts_unavailable':['matching GameAssembly.dll','matching UnityPlayer.dll','matching global-metadata.dat'],'rule':'Unavailable artifacts do not excuse a known sample-local cache, metadata selector, guard, field read/write or argument store. Actual matching game/Unity/IL2CPP results remain typed.'}
result={'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'input_inventory_sha256':hashlib.sha256((SRC/'dependency_inventory.json').read_bytes()).hexdigest(),'input_ledger_sha256':hashlib.sha256((SRC/'completion_ledger.json').read_bytes()).hexdigest(),'sample_sha256':hashlib.sha256(im).hexdigest(),'source_sha256_as_read':q.get('source_sha256',{}),'record_count':len(records),'classification_counts':dict(collections.Counter(x['reconciliation']['classification'] for x in records)),'scope':scopes,'records':records,'unreconciled':[x['rva'] for x in unmatched],'limits':['This is a read-only scope reconciliation, not an independent equivalence audit of every released body.','Production descriptor rows exclude fixtures: a mock result is never implementation evidence.','Endpoint/interior classifications do not prove any unrelated function at the same address complete.','The remaining body list is exact for this audited inventory plus four directly proved omitted children, not a global unique count of all local CRT/font/runtime descendants.']}
(OUT/'reconciliation.json').write_text(json.dumps(result,indent=2)+'\n')
(OUT/'exact_remaining.json').write_text(json.dumps({'created_utc':result['created_utc'],'sample_sha256':result['sample_sha256'],'scope':scopes,'local_bodies':remaining,'implemented_in_this_audit':sorted(hex(r) for r in aux),'local_literal_conversion_or_compare_bindings':[{'rva':x['rva'],'native_owner':x['native_owner'],'references':x['references'],'source_hits':x['current_source_hits']} for x in records if x['reconciliation']['classification']=='local_literal_conversion_or_compare_binding_remaining'],'known_specialized_menu_ranges':[{'rva':x['rva'],'current_exact_coverage':x['coverage_ledgers']} for x in records if int(x['rva'],16) in nums('3947ec 3b5ed0 3b64f4 3b7358 3b7948 3b8664 3b95c4 3c4064')],'binding_or_abi_limits':[{'rva':x['rva'],**x['reconciliation']} for x in records if x['reconciliation']['classification'] in ['owned_format_or_lifetime_binding_limit','owned_container_input_or_binding_limit','implemented_visibility_storage_with_adapter_requirement','released_specialized_or_catalogued_scope']],'unreconciled':result['unreconciled'],'not_a_global_missing_function_count':True},indent=2)+'\n')
print('categories',result['classification_counts']);print('remaining exact local bodies',len(remaining));print('UNMATCHED',*[ (x['rva'],x['references'][0]['text'][:180]) for x in unmatched],sep='\n')
