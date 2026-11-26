#!/usr/bin/env python3
"""Read-only native byte/branch ledger. Copied code is never loaded or executed."""
import hashlib,json,re,struct
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/imgui_window_details';src=root/'source/reconstructed'
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
pe=struct.unpack_from('<I',image,0x3c)[0];pdata,size=struct.unpack_from('<II',image,pe+24+112+24)
unwind={a:(b,u) for a,b,u in (struct.unpack_from('<III',image,p) for p in range(pdata,pdata+size,12))}
lines=[]
for line in (root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 m=re.match(r'^([0-9a-f]+)\t(.*)',line)
 if m:lines.append((int(m[1],16),m[2]))
# Audited adjacent padding/entry bounds, including post-first-RET blocks.
leaf={0x3921c0:0x3921c5,0x3786d8:0x3786e7,0x394550:0x394585,
 0x39b690:0x39b6d7,0x39676c:0x39678e,0x394490:0x3944ac,0x394464:0x39448f,
 0x39b1d0:0x39b1ed,0x3b530c:0x3b531e,0x3970f0:0x39711f,0x391dd0:0x391df6,
 0x3bd06c:0x3bd113}
# C=literal controller/calculations; I=owned storage adaptation; S=typed/reached specialization.
spec={}
def add(file,status,note,*rvas):
 for r in rvas:spec[r]=(status,note,'imgui_window_details_'+file+'.cpp')
add('position','C','popup/tooltip/menu auto position and main-viewport allowed extent',0x39138c,0x3915b4,0x3929e8,0x3952b0)
add('position','S','null optional mouse override / selected nav rectangle fold as reached by positioning',0x394550,0x39e234)
add('base','C','signed table stride, nav initialization/refresh, owned highlight clip, repeated shadow controller',0x3921c0,0x3786d8,0x395500,0x39676c,0x3997ac,0x39a64c)
add('base','S','nav ID setter specialized to zero ID from395500; other callers parent navigation domain',0x39b690)
add('log','C','finish/logged text line splitting/indentation and numeric configured clipboard dispatch',0x394dd4,0x394e5c,0x39b1f8)
add('log','S','known newline or fixed %*s%.*s formatting with owned byte-vector append; generic varargs not exported',0x395038,0x395074,0x39e280)
add('title','C','title layout/close/collapse/drag/clipped text and native marker',0x39a7a8,0x3bde30,0x3be114,0x39be68,0x39b1d0,0x3a7620)
add('title','S','owned string_view text plus required measured size; generic raw-pointer/end and null-size overloads remain released font/control domain',0x399a64,0x399afc)
add('title','S','mouse button0 plus negative configured threshold as reached by collapse drag',0x394490,0x394464)
add('columns','I','EndColumns, separate owned channel splitter, copied state restoration and separator input',0x3b4f94,0x39878c)
add('columns','C','column width ratio and table/columns shortcut layer predicate',0x3b530c,0x3970f0)
add('columns','S','known nonnull current columns fromEndColumns; direct public null columns variants not exported',0x3b5320,0x3b5384,0x3b53f0,0x3b5554)
add('lookup','C','both menu-column update modes, signed cached settings offset, ordered live chunk walk',0x3bd06c,0x391dd0,0x391d84,0x39ee58)
add('scrollbar','C','two-axis scrollbar controller/core and bounds',0x3c3234,0x3c3390,0x3bff58,0x3bff14)
add('resize','C','whole interactive resize including late blocks, constrained corner solve and keyboard analog vector',0x39d760,0x38f5d0,0x392724)
add('grips','C','full decoration composition: released prefix399d88..39a167, owned grip path/rest and outer-borders/held path',0x399d88,0x39a308,0x392a9c)
partitions={0x399d88:[(0x399d88,0x39a167,'released imgui_windows prefix; entry register values retained'),(0x39a167,0x39a2c3,'owned grip points/arc/fill'),(0x39a2c3,0x39a306,'owned iteration/outer border dispatch/return')],0x39a308:[(0x39a308,0x39a3ce,'owned outer-border/gate'),(0x39a3ce,0x39a575,'owned held-border arcs/stroke'),(0x39a575,0x39a64a,'owned title separator/return')]}
ranges=[];dependencies={}
for begin,(status,note,file) in sorted(spec.items()):
 end=unwind.get(begin,(leaf.get(begin),0))[0]
 if end is None:raise RuntimeError(f'missing audited extent {begin:x}')
 body=[(a,t) for a,t in lines if begin<=a<end]
 if not body or body[0][0]!=begin:raise RuntimeError(f'missing entry {begin:x}')
 (out/f'{begin:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body))
 calls=[];branches=[];indirect=[]
 for site,t in body:
  m=re.match(r'(call|jmp)\s+0x([0-9a-f]+)',t)
  if m and not begin<=int(m[2],16)<end:
   target=int(m[2],16);calls.append({'site':hex(site),'target':hex(target),'kind':m[1]});dependencies.setdefault(target,[]).append(site)
  elif re.match(r'(call|(?:rex.W )?jmp)\s+(?!0x)',t):indirect.append({'site':hex(site),'instruction':t})
  m=re.match(r'(j\w+|loop\w*)\s+0x([0-9a-f]+)',t)
  if m and m[1]!='jmp':branches.append({'site':hex(site),'target':hex(int(m[2],16)),'instruction':t,'status':status})
 parts=partitions.get(begin,[])
 if parts:
  assert parts[0][0]==begin and parts[-1][1]==end and all(parts[i][1]==parts[i+1][0] for i in range(len(parts)-1))
 ranges.append({'begin':hex(begin),'end_exclusive':hex(end),'bytes':end-begin,'status':status,'scope':note,'extent_source':'PE runtime function record' if begin in unwind else 'manually audited leaf/tail including post-first-RET blocks','sha256':hashlib.sha256(image[begin:end]).hexdigest(),'implementation_files':[file]+(['imgui_windows_decorations.cpp'] if begin==0x399d88 else []),'instruction_count':len(body),'conditional_branches':branches,'calls_and_tail_dependencies':calls,'indirect_leaves':indirect,'partitions':[{'begin':hex(a),'end_exclusive':hex(b),'bytes':b-a,'scope':n} for a,b,n in parts]})
# Prior ledgers classify dependencies, without elevating their specialization status.
prior={}
for domain in ['imgui_windows','menu_controls','drawlist_core','draw_shapes','font_text','renderer_helpers','imgui_navigation']:
 path=root/'dump_analysis/semantic_reconstruction'/domain/'range_branch_dependency_ledger.json'
 if path.exists():
  data=json.loads(path.read_text())
  for record in data.get('ranges',[]):
   if 'begin' in record:prior.setdefault(int(record['begin'],16),[]).append({'domain':domain,'status':record.get('status'),'extent':record.get('end_exclusive')})
fold={0x2cc340:'Vec2 constructor',0x2cc350:'four-float constructor',0x2d4870:'actual zero Vec2 store',0x2db388:'rect min/max constructor',0x2db3a0:'actual zero rectangle store',0x2ef9d8:'Vec2 addition',0x3367e4:'Vec2 subtraction',0x33565c:'literal float interpolation',0x3762bc:'literal clamp',0x3762cc:'literal MINSS',0x378934:'rectangle height',0x378940:'rectangle size',0x378970:'rectangle width',0x3789fc:'saturation',0x38a3f4:'literal MAXSS',0x38bab4:'four-float copy',0x38baf4:'four-float constructor',0x38bb2c:'zero rectangle',0x38bb6c:'numeric placement',0x38bb70:'signed byte-index chunk address',0x38bb84:'typed vector element',0x38bba8:'column stride28 element',0x38bbcc:'Vec2 component address',0x38bbdc:'Vec2 multiply',0x38bc08:'Vec2 scalar multiply',0x38cc48:'Vec2 addition assign',0x38cc68:'Vec2 subtraction assign',0x383044:'component MAXSS',0x383070:'component MINSS',0x3901b8:'rect intersection',0x390208:'rect full clamp',0x3900a4:'rect expand by scalar',0x3900d0:'rect expand vector',0x392130:'rect bottom-left',0x392154:'rect bottom-right',0x39233c:'style address',0x3923c8:'current-window address',0x3926ac:'IO address',0x3933f4:'Vec2 squared length',0x398728:'rect overlap',0x398d44:'position plus actual size rectangle',0x39e304:'back4 vector address',0x39e380:'back16 vector address',0x39e390:'chunk first',0x39e3b8:'chunk length',0x39ebac:'chunk end',0x39eea0:'vector count decrement',0x39eba4:'byte-vector count',0x39e3a4:'byte-vector data or static empty',0x3c8d4c:'owned byte copy',0x3ca904:'bounded owned C-string scan',0x3c8e6c:'released sample sine',0x3c899c:'released sample cosine'}
adapt={0x37a69c:'owned log reserve/copy; exact size/capacity effects retained, native heap/free ABI not claimed',0x37acd4:'byte-vector resize/write count',0x37acf0:'byte-vector clear',0x37acf4:'byte-vector clear',0x37acf7:'byte-vector clear',0x39eee8:'owned ID vector push/growth',0x38c774:'fixed format literal %*s%.*s',0x38c804:'owned #CLOSE literal',0x38c7e4:'owned #COLLAPSE literal',0x38c66c:'owned #RESIZE literal'}
released={0x395810:'imgui_navigation_cancel_395810 exact reset+refresh',0x393ff4:'menu_color_picker_item_active_393ff4',0x3a2010:'parent draw_shadows rectangle; typed controls glow_rectangle binding',0x3a7400:'parent exact arrow through controls binding',0x3a31f8:'font_text store/sink geometry',0x3a8eec:'draw_shapes fast arc',0x3a6b38:'draw_shapes fast arc wrapper',0x3a684c:'draw_shapes arc',0x378a14:'draw_shapes path fill',0x378a40:'owned drawlist path point',0x398758:'draw_shapes path stroke',0x3a65c4:'owned drawlist splitter merge',0x3a6e34:'owned drawlist clip pop',0x3a8d94:'owned drawlist clip command update',0x3a7268:'owned drawlist clip push',0x3a1244:'typed filled rectangle geometry',0x3a1148:'typed rectangle geometry',0x3a01f4:'typed line geometry',0x39f874:'typed filled circle geometry',0x39517c:'draw_core free counter/owned free leaf',0x38fbe8:'released window size constraint, consumed callback',0x38f3ec:'released window scroll target',0x392868:'released main viewport getter',0x392828:'released main viewport rectangle',0x39bf80:'released title height',0x3951a4:'released menu height',0x395108:'released settings dirty gate'}
fold.update({0x2e3ef0:'binary32 absolute sign-bit clear',0x3788f4:'rectangle center using copied half constant',0x38a3fc:'swap two float words',0x38bbc0:'signed window-stack stride0x58 element',0x390790:'inclusive rectangle containment including unordered false',0x3911cc:'rectangle expand by Vec2',0x391c50:'visible text end NUL or## within optional end',0x3925e8:'raw CRC of four index bytes with current ID seed',0x392ea0:'flags to background style index',0x393018:'two-axis clamp with literal compare/MINSS order',0x39340c:'Vec2 component interpolation',0x393520:'bounded newline search',0x3951ec:'menu rectangle',0x398878:'pop current ID scope',0x3988d0:'pop item width and restore previous float',0x39c044:'rectangle translate by Vec2',0x3b5374:'column normalized width scale',0x3b5b74:'signed64 maximum',0x3bfebc:'rectangle signed float area'})
adapt.update({0x3788ec:'tail to379578: owned log clear, native free counter and required free leaf',0x398b04:'known #RESIZE scope ID hash plus owned vector push',0x38c5a8:'fixed encoded #COLLAPSE literal constructor',0x38c760:'fixed encoded #RESIZE literal constructor',0x38c8bc:'fixed encoded #CLOSE literal constructor',0x39e8d4:'known fixed #CLOSE decoder specialization',0x39e8fc:'known fixed #RESIZE and %*s%.*s decoder specializations',0x39e924:'known fixed scrollbar literal decoder specialization',0x39e94c:'known fixed #COLLAPSE decoder specialization',0x3bc2f8:'fixed encoded #SCROLLX literal constructor',0x3bc37c:'fixed encoded #SCROLLY literal constructor'})
released[0x38f79c]='renderer_measure_38f79c copied advance data and literal UTF/wrap semantics'
leaf.update({0x2e3ef0:0x2e3ef8,0x3788ec:0x3788f1,0x38a3fc:0x38a409,0x38bbc0:0x38bbcc,0x38c5a8:0x38c5c3,0x38c760:0x38c771,0x38c8bc:0x38c8dc,0x390790:0x3907c0,0x3911cc:0x391205,0x391c50:0x391c78,0x392ea0:0x392ebf,0x398878:0x398892,0x39c044:0x39c07d,0x3b5374:0x3b5383,0x3b5b74:0x3b5b7f,0x3bc2f8:0x3bc311,0x3bc37c:0x3bc395,0x3bfebc:0x3bfed4})
deps=[]
for target,sites in sorted(dependencies.items()):
 if target in spec:state='inventory range above';note=spec[target][1]
 elif target in released:state='concrete released dependency / typed geometry binding';note=released[target]
 elif target in fold:state='literal fold / owned read adaptation';note=fold[target]
 elif target in adapt:state='owned storage/literal specialization';note=adapt[target]
 elif target in prior:state='released domain; preserve original coverage limits';note=prior[target]
 elif target==0x393270:state='S/U: fixed formatter adaptation; generic body remains';note='known newline and %*s%.*s only; generic3214dc CRT/varargs closure is not reconstructed'
 else:state='U: remaining dependency or unclassified fold';note='native local closure not claimed by this module'
 end=unwind[target][0] if target in unwind else leaf.get(target)
 if end:
  (out/f'{target:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in lines if target<=a<end))
 deps.append({'target':hex(target),'end_exclusive':hex(unwind[target][0]) if target in unwind else hex(leaf[target]) if target in leaf else None,'sites':[hex(x) for x in sites],'status':state,'meaning':note})
ledger={'markers':{'C':'concrete root/local calculations including required supplied typed effects','I':'owned container adaptation; native allocator/object ABI not claimed','S':'reached typed specialization, generic native helper branches not fully exposed','U':'explicit missing/native closure; never successful event default'},'sample_sha256':hashlib.sha256(image).hexdigest(),'virtual_layout':'file offset equals RVA','range_count':len(ranges),'bytes_in_inventory':sum(x['bytes'] for x in ranges),'ranges':ranges,'dependency_count':len(deps),'dependencies':deps,'limits':['Not a live ImGui/runtime/game ABI.','Default font/atlas production and actual copied initialized data remain caller supplied.','Clipboard numeric target requires an owned data callback, never executes numeric code.','Generic variadic formatter and allocator/vector ABI remain explicit specializations.','Decorations prefix is composed from parent-owned imgui_windows; shadow raster parent-owned draw_shadows.','Input/button/nav helpers retain their released per-range limitations.','Analysis bounds stop malformed chunk/column/log/recursive data rather than claiming native safety.']}
# Remaining generic formatter chain is inventory only; never counted as translated.
residual=[]
for begin in [0x393270,0x3214dc,0x2d96c0,0x2d963c,0x3ca828,0x3ca500,0x3ca49c,0x3c9ab0]:
 end=unwind.get(begin,({0x2d963c:0x2d9644,0x3ca828:0x3ca841,0x3ca49c:0x3ca4a6}.get(begin),0))[0]
 if end is None:raise RuntimeError(f'missing formatter residual extent {begin:x}')
 body=[(a,t) for a,t in lines if begin<=a<end]
 (out/f'{begin:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body))
 calls=[]
 for site,t in body:
  m=re.match(r'(call|jmp)\s+0x([0-9a-f]+)',t)
  if m and not begin<=int(m[2],16)<end:
   target=int(m[2],16);calls.append({'site':hex(site),'target':hex(target),'end_exclusive':hex(unwind[target][0]) if target in unwind else None})
 residual.append({'begin':hex(begin),'end_exclusive':hex(end),'bytes':end-begin,'status':'U: generic formatting closure not implemented','direct_dependencies':calls,'sha256':hashlib.sha256(image[begin:end]).hexdigest()})
ledger['remaining_generic_format_chain']=residual
(out/'range_branch_dependency_ledger.json').write_text(json.dumps(ledger,indent=2)+'\n')
(out/'remaining_ranges.json').write_text(json.dumps({'owned_nine_roots_remaining':[],'owned_three_interiors_remaining':[],'specialized_support':[r for r in ranges if r['status']=='S'],'unclassified_or_remaining_dependencies':[d for d in deps if d['status'].startswith(('U','S/U'))],'generic_format_chain':residual,'released_and_external_requirements':ledger['limits']},indent=2)+'\n')
print(json.dumps({'ranges':len(ranges),'bytes':sum(r['bytes'] for r in ranges),'conditional_branches':sum(len(r['conditional_branches']) for r in ranges),'dependencies':len(deps),'unclassified':[d for d in deps if d['status'].startswith(('U','S/U'))]},indent=2))
