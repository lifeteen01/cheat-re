from pathlib import Path
import json,re,struct,subprocess,hashlib
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent;src=root/'source/reconstructed'
im=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();pe=struct.unpack_from('<I',im,60)[0];pa,pn=struct.unpack_from('<II',im,pe+24+112+24);ext={a:b for a,b,_ in (struct.unpack_from('<III',im,p) for p in range(pa,pa+pn,12))}
raw=(root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines(); addresses=[int(l.split('\t')[0],16) for l in raw]; lines=dict(zip(addresses,raw));rows=json.loads((out/'initial_inventory.json').read_text());known={int(r['begin'],16):r for r in rows}
# Whole pdata extents, explicit no-unwind leaf extents in extract.py. Freshly
# disassemble each immutable slice and compare every control-flow edge.
for row in rows:
 b,e=int(row['begin'],16),int(row['end'],16)
 native=[(int(m[1],16),m[2],int(m[3],16)) for line in (out/f'{b:x}.asm').read_text().splitlines() if (m:=re.match(r'([0-9a-f]+)\t((?:j\w+|call))\s+0x([0-9a-f]+)',line))]
 fresh=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--no-show-raw-insn',f'--adjust-vma={b}',str(out/f'{b:x}.bin')],text=True)
 edges=[(int(m[1],16),m[2],int(m[3],16)) for line in fresh.splitlines() if (m:=re.match(r'\s*([0-9a-f]+):\s+((?:j\w+|call))\s+0x([0-9a-f]+)',line))]
 assert native==edges,(hex(b),native,edges)
 row['byte_sha256']=hashlib.sha256(im[b:e]).hexdigest();row['fresh_edge_match']=True;row['edges']=[{'site':hex(a),'operation':op,'destination':hex(d),'inside':b<=d<e} for a,op,d in native]
 row['dependencies']=sorted({hex(d) for _,_,d in native if not b<=d<e})
 row['implementation']='frame_world_controllers_*.cpp concrete owned specialization'
 if b in [0x2d6384,0x2d5be4,0x2d91c4]:row['implementation']='reused menu_pages_config/frame_dependencies bodies; current selection normalization composed at caller'
 row['raw_abi']='owned allocator/vector/string/map adaptation; native stack/home bytes never manufactured'
# Inventory EVERY external direct edge of the audited bodies; internal jumps
# are excluded rather than falsely counted as missing functions.
deps=sorted({int(d,16) for r in rows for d in r['dependencies']})
string_getters=json.loads((root/'dump_analysis/semantic_reconstruction/function_strings.json').read_text())
container=set(int(s,16) for s in '''2cad38 2cb3a4 2cc268 2cc284 2cc2cc 2cc340 2cc4f4 2cc534 2cd324 2cd7ec 2ce5d8 2cef30 2cef40 2cef64 2cef98 2cefd4 2cf064 2d17ec 2d1978 2d35e0 2d3e64 2d3fe0 2d4560 2d4584 2d47e8 2d4a58 2d4a80 2d4a88 2d4be4 2d4c24 2d4c68 2d4c70 2d4d20 2d4d2c 2d4d70 2d4de8 2d4e20 2d4eb4 2d55e4 2d5604 2d7988 2d79c0 2d7d90 2d7fb0 2d843c 2d8464 2d84b4 2d84dc 2d85cc 2d8644 2d866c 2d8694 2d86a0 2d87b0 2d881c 2d89b4 2d8ad8 2d8f74 2d92ec 2d93f4 2dcf98 2de058 2df480 2e3afc 2e98f0 2ec324 2ec384 2ef754 2ef774 31aa78 31ac64 31ac74'''.split())
literals=set(int(s,16) for s in '''2cc730 2cdca4 2cdccc 2cdcf4 2cdd1c 2cdd44 2cde34 3203f4 320494 3204bc 2d4f20 2d4f50 2d4fe0 2d501c 2d505c 2d5078 2d5188 2d51a8 2d51e4 2d5248 2d5264 2d5394 2d53b0 2d550c'''.split())
reuse={0x2caf08:'internal_analysis sample_pointer_range',0x2cb9fc:'metadata_argument_one_2cb9fc',0x2ce5dc:'game_direct_wrapper managed-string selector',0x2d6354:'entity_name_hash_2d6354 signed bytes',0x2d6520:'normalization existing menu_pages_config',0x2d5b78:'normalization case-insensitive bin suffix existing menu_pages_config',0x2d57d4:'frame_config_path ensure-directory specialization',0x2d5f84:'frame refresh typed directory enumeration specialization',0x2d7e18:'managed_name_bytes_2d7e18 low UTF16 bytes',0x2d9510:'owned signed decimal integer formatting',0x2d9528:'owned unsigned decimal formatting',0x2dd2ec:'reload_frame_configuration_2dd2ec',0x2dda9c:'game_root_local_player_2dda9c',0x2e069c:'game_root_camera_2e069c',0x2e0e4c:'game_root_gate_2e0e4c',0x2e0e9c:'entity_valid_2e0e9c',0x2e2320:'game_input_physics query controller',0x2e3d5c:'unity_math_scalar Random.Range',0x2e5b7c:'frame_timer_2e5b7c',0x2e5e4c:'game_input_physics key controller',0x2e6a6c:'existing mask controller via game helpers',0x2f8034:'collection_root_2f8034 via typed composition',0x329920:'game_runtime_wrapper RaycastHit transform; copied hit-key binding required',0x334204:'existing class/type object composition',0x334224:'resolve_class_334224',0x3349ac:'select_parameter_method_3349ac',0x334a90:'select_counted_method_334a90',0x368100:'game_helper_vector direction',0x368be8:'bone_position_368be8',0x369164:'game_helper_vector origin',0x369324:'game_helper_object inventory',0x3693b0:'dead_byte_3693b0',0x369764:'field getter model',0x369e70:'identity_key_369e70',0x36a178:'npc_predicate_36a178',0x36a20c:'sleeping_flag_36a20c',0x36a238:'game_direct wrapper predicate',0x36b288:'wounded_flag_36b288',0x36ca34:'camera_position_36ca34',0x37224c:'game_helper_integer inventory count',0x3722f0:'game_helper_object index; exact private raw specialization used in inventory loop',0x3735f0:'literal tag uint16+44 specialization',0x373e20:'read_pointer_getter inventory list',0x392198:'renderer_background_392198',0x3a31bc:'font_text_draw_3a31f8 default font/size with real FontTextSink',0x3c7ba8:'literal three-float construction',0x3c7bbc:'literal zero8+4 construction',0x3ca960:'owned C-string substring search',0x2df608:'RegistryStore identity default insertion'}
container.update(int(s,16) for s in '2d0a44 2d182c 2cfc94 2d2728 2d2c3c 2d4194 2d4da0 2d4dc0 2d4e00 2d55ec 2d56a8 2d792c 2d796c 2d7f74 2d86b8 2d8880 2d93bc 2db2bc 2e4e6c'.split())
literals.update(int(s,16) for s in '2d5028 2d50fc 2d512c 2d520c 2d52d4 2d530c 2d542c 2d8554 2d85a4'.split())
reuse.update({0x2d2094:'metadata_argument_two_2d2094 (raw ABI unmaterialized for owned settings cache)',0x2dda18:'metadata_argument_context zero-argument pack, used explicitly in3150ac',0x2ddbf8:'literal lowfloat store; upper bytes retained as unknown',0x2df370:'literal lowDWORD store; upper bytes retained as unknown',0x36acb8:'safe_zone_36acb8',0x3caed0:'game_input_export_3caed0 copied PE export scan',0x3cb058:'game_input_module_3cb058 copied loader list scan'})
literals.update([0x375a84,0x3759e4,0x375950,0x375860,0x375798]); reuse[0x3214f4]='game_input_pack_3214f4 public raw argument staging'
wrapper_roles={0x370d64:'Material.SetColor',0x370e84:'Material.get_shader',0x370fac:'Renderer.get_material',0x3710dc:'Material.set_shader',0x37361c:'Object.get_name',0x375abc:'AssetBundle.LoadAsset_Internal',0x3151bc:'Component.GetComponentsInChildren'}
remaining=[];dep_rows=[]
for d in deps:
 e=ext.get(d)
 if e is None:
  # Leaf/trampoline extent includes all instructions up to first padding byte;
  # audit its branches below and retain any outside target as a dependency.
  i=addresses.index(d);j=i+1
  while j<len(raw) and '\tint3' not in raw[j]:j+=1
  e=addresses[j]
 body=[l for l in raw if d<=int(l.split('\t')[0],16)<e]
 (out/f'dependency_{d:x}.asm').write_text('\n'.join(body)+'\n')
 if d in known:kind='concrete_this_wave';meaning=known[d]['implementation']
 elif d in [0x2cbd24,0x3cdbd4]:kind='detection_only_executor';meaning='context observation/execution gate remains deliberately excluded'
 elif d==0x2cd32c:kind='literal_zero';meaning='native zero result; team lookup never invented'
 elif d in wrapper_roles:kind='existing_wrapper_binding_required';meaning='private SkyModel/world typed local wrapper: '+wrapper_roles[d]
 elif d in reuse:kind='existing_or_literal_composition';meaning=reuse[d]
 elif d in container:kind='owned_container_adaptation';meaning='literal consumed begin/end/copy/move/erase/string/payload behavior; allocator/header ABI adapted'
 elif d in literals or 0x2f0000<=d<0x2f8000:kind='copied_literal_specialization';meaning='static literal value consumed by controller; original decode storage aliases remain outside owned string ABI'
 elif d==0x2d9540:kind='formatting_adaptation';meaning='finite C-locale host %f or supplied native formatting; no fabricated nonfinite spelling'
 else:kind='needs_manual_classification';meaning='UNRECONCILED';remaining.append(hex(d))
 dep_rows.append({'rva':hex(d),'end':hex(e),'bytes':e-d,'kind':kind,'meaning':meaning,'external_edges':[hex(int(m[1],16)) for l in body if (m:=re.search(r'(?:call|jmp)\s+0x([0-9a-f]+)',l)) and not d<=int(m[1],16)<e]})
(out/'range_branch_dependency_ledger.json').write_text(json.dumps({'scope':'six roots and exact reached owned specializations; no live ABI claim','sample_sha256':hashlib.sha256(im).hexdigest(),'root_bytes':sum(r['bytes'] for r in rows if r['role']=='root'),'root_conditional_branches':sum(len(r['conditionals']) for r in rows if r['role']=='root'),'audited_body_count':len(rows),'audited_bytes':sum(r['bytes'] for r in rows),'audited_conditionals':sum(len(r['conditionals']) for r in rows),'ranges':rows,'direct_dependencies':dep_rows,'unreconciled':remaining},indent=2)+'\n')
print('fresh edge audit PASS',len(rows),'bodies;',len(dep_rows),'distinct external direct dependencies; unresolved classification',remaining)
