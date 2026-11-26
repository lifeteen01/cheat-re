from pathlib import Path
import re,json
D=Path('dump_analysis/semantic_reconstruction');O=D/'world_esp'
strings=json.loads((O/'getter_strings.json').read_text())
concrete={0x3176bc:'world entity-key dedup/insertion validator',0x3177b4:'player entity-key dedup/insertion validator',0x31787c:'root tracked insertion',0x3213cc:'world validator predicates/restoration',0x321484:'player/root validator predicates',0x2d6354:'signed-byte FNV hash',0x2e5b4c:'signed-byte FNV hash',0x2df5dc:'all-components inequality, including unordered',0x2dff30:'shared sample-root Vec3 distance',0x2e0ee8:'shared sample-root Vec3 magnitude',0x2cd32c:'literal zero-return stub',0x315bd0:'copied encoded reference resolver (existing entity file)',0x2f8034:'copied collection root (existing entity file)',0x316504:'array +0x10 reader',0x316524:'count +0x18 reader',0x3735b4:'prefab-name +0x50 reader',0x3735f0:'tag +0x44 reader',0x2e5a54:'class/name reader',0x3693b0:'dead-byte +0x2c0 reader',0x3696e4:'player flags +0x708 reader',0x36a178:'prefab ID comparison',0x36acb8:'safe-zone bit gate',0x368244:'model-state wounded bit input',0x36821c:'flags 0x100 input',0x36b288:'wounded bit input',0x36a20c:'sleeper flags input',0x36af58:'decimal identifier parser',0x2f8db0:'nearest lock exact word rejection/truncated distance',0x2f8f74:'nearest lock byte rejection/truncated distance',0x2f9138:'nearest ore substring/config/radtown gates',0x2f94ac:'nearest player filters/preferred candidate',0x2f96f4:'nearest tree/truncated distance',0x365f90:'bounds closest point',0x366184:'dot order',0x3666b0:'bounds closest-point distance',0x366a60:'crate timer chain/low-byte wide range copy',0x366bc0:'SAM dynamic mask comparison',0x366bf0:'SAM byte/flag OR',0x3674b4:'all-mask-bits predicate',0x317130:'inclusive screen gate',0x317b1c:'radar rotation (libm rounding unverified)',0x3c7c28:'sample-root Vec2 magnitude',0x3c7c44:'two-magnitude normalization',0x39f728:'Vec2 scalar multiply'}
inputs={0x2e069c:'camera address input',0x2dda9c:'local address input',0x2e0e4c:'blocked-state input',0x2caf08:'literal pointer range',0x2e0e9c:'entity validity copied input; parent helper available',0x36ca34:'camera position copied input; parent reader available',0x369164:'local-position input',0x36924c:'local-position input for nearest tree/ore',0x368be8:'bone 53 position query',0x36a0e0:'preferred-player game predicate',0x369fac:'cached SAM local predicate input'}
backend={0x3664cc:'0x50-byte game bounds query',0x370508:'game component lookup',0x372efc:'BoxCollider component lookup',0x370968:'BoxCollider size setter',0x375d30:'collider enable setter',0x3747d4:'Transform position',0x314f08:'in-game projection',0x36cd20:'world projection with FOUR-float ProjectionBounds; parent wrapper available',0x31530c:'local Euler.y input; parent quaternion conversion available',0x315778:'UI scale input',0x38f79c:'text measurement',0x370fac:'Renderer material',0x370e84:'material shader',0x375abc:'bundle Shader load',0x3710dc:'shader assignment',0x370d64:'material color setter'}
plans={0x317928:'typed entity/local/position/mode/boolean interaction arguments only; callee remains U',0x35b684:'typed bar call arguments; helper primitive rendering remains U',0x2cc8d0:'typed icon key/position/size request; icon cache and Unity texture work remain U',0x36135c:'typed text arguments; font/glyph/backend rendering remains U',0x35af6c:'typed outline circle arguments',0x35b03c:'typed filled circle arguments',0x35c578:'typed circle arguments',0x35c25c:'typed line arguments',0x3a1244:'typed filled tooltip rectangle arguments',0x3a1148:'typed tooltip outline arguments',0x3a31bc:'typed tooltip text arguments'}
concrete.update({
0x316574:'full85-ID signed native item-name comparison table',0x366724:'dropped item +220/+30 amount',
0x366758:'dropped item +220/+10/+58 literal WORD category',0x36679c:'dropped item short/display chains and m16a2 special label',
0x3663d4:'backpack owner chain/per-word encoder/streamer',0x3665b8:'corpse owner chain/per-word encoder/streamer',
0x366140:'corpse inventory +370/+20/+18 positive count',0x3661ac:'cached alternating streamer name with Unity Random.Range backend',
0x393c38:'per-UTF16-WORD UTF8 encoder with512-byte limit, independent surrogates',
0x317928:'complete range/state/cooldown/mode/visibility/RPC controller',
0x318bb8:'full13-value fishing-status string table',0x320db4:'full quaternion-vector polynomial',
0x320c2c:'literal exponent/wrapped-doubling/repeated-subtraction floor',
0x31885c:'full drag trajectory loop preserving first-ray distance and hit normal',
0x3185a0:'full gravity-only trajectory loop preserving first-ray distance and hit normal',
0x315518:'terrain grid computation/clamps/letter-row formatting; terrain getters external',
0x3643b4:'all5 crosshair modes/calculations; Unity trig and frame delta boundaries',
0x37b724:'all8 corner edge interpolations',
})
backend.update({0x2e8fac:'Unity Physics.Raycast; point/normal/distance copied results',0x2e3d5c:'Unity Random.Range',
0x2e0198:'Unity Mathf.Sin',0x2dff68:'Unity Mathf.Cos',0x35cb40:'Unity Mathf.Atan',
0x31581c:'Unity realtimeSinceStartup',0x3743b4:'terrain position',0x3743f8:'terrain size',0x374370:'terrain inverse size'})
plans.update({0x35c30c:'exact glow line args/colors/thickness/radius/smoothness/booleans',
0x35a804:'exact50-point polygon args/count',0x35c88c:'exact offscreen triangle args',
0x35c738:'actual floating rectangle position/size/color arguments',
0x35b0fc:'distinct native float meter args',0x35bab8:'distinct integer-position meter args',
0x36232c:'distinct segmented meter args',0x35b508:'distinct two-value radial meter args',
0x35c938:'distinct three-value radial meter args',0x35ac38:'actual ring meter args',
0x37bc98:'concrete label side/count/font/icon math; font-cache/style-global state not fully replayed'})
# [C/I] Parent-owned helpers are available, but callbacks here do not imply a verified live ABI.
inputs.update({0x368a84:'parent game_helpers held-entity composite output',0x37154c:'parent game_helpers held-item output',
0x36b938:'parent game_helpers projectile-modification output',0x371630:'parent game_helpers magazine output',
0x372abc:'parent game_helpers projectile-definition output',0x372b30:'parent game_helpers thrown-projectile output',
0x368100:'parent game_helpers direction output',0x369164:'parent game_helpers local-position output',
0x36924c:'parent game_helpers local-position output',0x36b244:'parent game_helpers visibility output',
0x314bb4:'parent frame_dependencies selector output',0x2e02b0:'copied selected target and validity',
0x3716e0:'parent field_getters literal object field output',0x371eb8:'parent field_getters literal object field output',
0x3721b4:'parent field_getters literal object field output',0x371464:'parent field_getters literal object field output',
0x36a320:'player looking-at predicate output',0x369f6c:'player aiming predicate output',0x36920c:'player rotation output',
0x369cdc:'parent inventory hood-predicate output'})
concrete.update({0x36b758:'parent game_base attachment aggregation',0x2e3aa4:'shared server 3601 candidate-table builder',
0x2e3a70:'owned cache population with shared candidate tables',0x2e0e20:'owned hash-cache lookup',
0x2dfe64:'owned cache-entry construction with literal speed/gravity/drag/qualification',
0x2e1278:'shared sample-root vector normalization with zero fallback',
0x369040:'Snapshot name chain and per-WORD encoder/streamer dispatch',
0x369e70:'Snapshot identifier text low-byte conversion',
0x37bc98:'full label side/count/placement/font-scale write and restoration/icon fallback; font selector/raster dependencies explicit'})
backend.update({0x314a68:'Unity Mathf.Round callback',0x2e6240:'Unity time callback',0x366c30:'game entity RPC dispatch',
0x2e2320:'Unity visibility/physics query',0x2e8910:'key polling',0x2e89e4:'key-edge input'})
plans.update({0x2eec7c:'copied six-widget label settings; native container/lookup internals untranslated',
0x392198:'required font-selector callback over copied font/global state; native selector untranslated',
0x3a3874:'exact font/size/FLT_MAX/zero-wrap/text request; font/glyph measurement body untranslated',
0x361bcc:'exact label font/rectangle/color/flags/text arguments; glyph renderer untranslated',
0x39b734:'exact next-window position/condition/zero-pivot arguments; ImGui implementation untranslated',
0x392ca4:'literal ImGui style offsets and four-float writes; context getter implementation untranslated',
0x39b770:'exact next-window size/zero-condition arguments; ImGui implementation untranslated',
0x38cfa4:'literal window names/flags and null open pointer; ImGui implementation untranslated',
0x39246c:'required current-window position result; ImGui implementation untranslated',
0x390994:'ordered window End calls; ImGui implementation untranslated',
0x35b850:'exact fishing bar color/value/max/size arguments; raster helper untranslated',
0x2ee714:'four-double cache formatting implemented; branch1/3 require omitted native vararg scratch bits'})
# [I/U] Root arithmetic/value construction is concrete; native allocation/container/glyph bodies remain distinct.
plans.update({0x2cc340:'Vec2 constructor expressed by owned two-float values; native helper body not separately replayed',
0x2cb3a4:'zero Vec2 constructor expressed by owned zero values',0x3c7ba8:'Vec3 constructor expressed by owned three-float values',
0x3c7bbc:'zero Vec3 constructor expressed by owned zero values',0x2cc350:'four-float color value construction',
0x2df66c:'literal Vec3 scalar multiplication expressed at callers',0x2df6cc:'literal Vec3 subtraction expressed at callers',
0x2df708:'literal Vec3 addition expressed at callers',0x2efa04:'literal Vec2 addition expressed at callers',
0x2efa34:'literal Vec2 division expressed at callers',0x2e372c:'float absolute value expressed at callers',
0x3c86ac:'CRT atan2 boundary; host libm equivalence unverified',0x3c85e8:'CRT asin boundary; host libm equivalence unverified',
0x2e98f0:'copied vector-option lookup; native container/default insertion body untranslated',
0x2d4d70:'copied option boolean extraction; native optional/value body untranslated',
0x2ef80c:'copied floating color input; native packed-byte encoding helper untranslated'})
concrete.update({0x2e6a6c:'literal config-byte visibility mask selection',0x2e3b58:'literal all-three-zero predicate including unordered rejection'})
inputs.update({0x2e09f0:'copied signed screen height',0x2e0af0:'copied signed screen width',
0x315b84:'copied map-open predicate',0x2e6844:'copied input-captured predicate'})
records={}
for name in ['04_esp/31acd0.asm','04_esp/2fb72c.asm','02_rendering/3098a4.asm']:
 for line in (D/name).read_text().splitlines():
  if not (m:=re.search(r'^([0-9a-f]+).*call\s+(0x[0-9a-f]+)',line)):continue
  site=int(m[1],16);target=int(m[2],16)
  if m[2] in strings:status='[C] decoded literal getter (static data, no getter executed)';meaning=strings[m[2]]
  elif target in concrete:status='[C/I] concrete arithmetic/predicate/controller or copied input as specified';meaning=concrete[target]
  elif target in inputs:status='[I/U] copied input/game result, required where used';meaning=inputs[target]
  elif target in backend:status='[U] typed Unity/game boundary; native wrapper/dispatch not counted complete';meaning=backend[target]
  elif target in plans:status='[C/I/U] concrete call arguments, unresolved callee';meaning=plans[target]
  else:status='[U] untranslated helper/wrapper';meaning='No semantics attributed merely from a direct CALL.'
  r=records.setdefault(m[2],dict(target=m[2],status=status,meaning=meaning,sites=[]));r['sites'].append(dict(body=name,site=hex(site)))
(O/'dependencies.json').write_text(json.dumps(sorted(records.values(),key=lambda x:int(x['target'],16)),indent=2))
print(len(records),'unique direct-call targets;',sum(len(x['sites']) for x in records.values()),'call sites accounted')
