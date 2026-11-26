#!/usr/bin/env python3
"""Read-only sample byte/branch inventory. Never loads or executes sample code."""
import hashlib,json,re,struct
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/imgui_windows'
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
pe=struct.unpack_from('<I',image,0x3c)[0];directory=pe+24+112
pdata,size=struct.unpack_from('<II',image,directory+24)
unwind={a:(b,u) for a,b,u in (struct.unpack_from('<III',image,p) for p in range(pdata,pdata+size,12))}
lines=[]
for line in (root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 m=re.match(r'^([0-9a-f]+)\t(.*)',line)
 if m:lines.append((int(m[1],16),m[2]))
# Exact leaf extents include all post-RET basic blocks; no first-RET inference.
leaf={0x38f1fc:0x38f224,0x3bd06c:0x3bd113,0x39ba68:0x39baa8,0x39baa8:0x39bb07,
 0x39e0f8:0x39e186,0x39b660:0x39b68f,0x39bd54:0x39bd59,0x39b940:0x39b9ac,
 0x391d18:0x391d20,0x3948bc:0x3948dc,0x39b734:0x39b76f,0x39b770:0x39b79e,
 0x39b71c:0x39b733,0x39bc6c:0x39bc85,0x3921c0:0x3921c5,0x391dd0:0x391df6,
 0x3930ac:0x3930b8}
# status C=concrete controller/local math, I=owned layout/container adaptation,
# S=explicit branch specialization, U=remaining local body (required, never success default).
spec={
 0x38cfa4:('C','begin + first_frame + finish; typed remaining callees'),
 0x390994:('C','End; columns/log prerequisites explicit'),
 0x38e97c:('C','named child wrapper'),0x38e9c4:('C','child controller'),0x390a88:('C','EndChild; nav highlight prerequisite explicit'),
 0x38f020:('C','modal-root display relocation'),0x391928:('C','modal traversal including3919cd after firstRET'),
 0x39031c:('C','popup trim/focus restore'),0x390260:('C','close current popup'),0x391e68:('C','focus-below traversal'),
 0x391c78:('C','ordered raw-name search including391cd0 after firstRET'),
 0x3908d4:('I','window create; native allocator leaf; owned ID storage/vector adaptation'),
 0x38b6d4:('I','window constructor; overwritten initializers folded; owned drawlist descriptor'),
 0x393cbc:('C','viewport/settings initialization'),0x38cef0:('C','settings signed16 position/size and raw collapse byte'),0x39347c:('I','raw name allocation/copy using native counter wrapper'),
 0x3934b4:('I','raw rename capacity/free/allocate/copy'),
 0x391d84:('I','settings chunk ID scan copied address walk'),0x391dd0:('S','create path uses known new window settings index-1; arbitrary existing indexed lookup not exported'),
 0x39ba10:('I','sorted storage key/value equivalent std::map; native heap/layout not claimed'),
 0x39b348:('C','SetCurrentWindow; typed table lookup'),0x39878c:('I','window clip pop through owned drawlist'),
 0x3987d8:('C','focus scope pop'),0x398a5c:('I','focus scope push with copied vector storage'),
 0x38b9e8:('S','window stack backup fields copied; constructor dead stores/padding not fabricated'),
 0x39b940:('C','nine low16 stack sizes'),0x391184:('C','cursor end/max update'),
 0x39d67c:('I','focus order plus owned copied vector adaptation'),0x39e0f8:('C','literal root/parent graph links'),
 0x39ba68:('C','collapsed condition/raw byte setter'),0x39baa8:('C','signed-byte condition masks'),
 0x39bb4c:('C','conditional position/deferred pivot reset/cursor offset/dirty'),0x39bc88:('C','conditional size/auto-fit counters/dirty'),
 0x39bb20:('C','current-window position wrapper'),0x39bc6c:('C','current-window size tail wrapper'),
 0x38fac8:('C','content and ideal-content measurements'),0x38fbe8:('C','size constraints; indirect callback consumed'),
 0x38f8b4:('C','auto-fit/padding/decorations/viewport/scrollbar cross-coupling'),
 0x38f3ec:('C','two-axis target scroll'),0x38f744:('C','edge snapping interpolation'),
 0x38ff14:('C','visibility clamp with title-only option'),0x3c5384:('C','menu columns frame reset'),
 0x3bd06c:('S','recompute=true branch reached by3c5384; false branch not exported'),
 0x38f1fc:('C','font scale incl one parent multiplier'),0x39bf80:('C','title height'),0x3951a4:('C','menu height'),
 0x39bfb8:('C','title rectangle'),0x39b660:('C','last-item title/move ID/status fields'),
 0x39bd54:('C','viewport pointer setter'),0x392044:('I','draw buffer capacity recovery through owned buffers'),
 0x392828:('C','viewport main rectangle'),0x392f48:('C','viewport work rectangle'),0x392868:('C','main viewport lookup'),
 0x391d18:('C','signed focus-order getter'),0x391ce0:('I','display order index equivalent; absent native root analysis stop'),
 0x3948bc:('C','root or Begin-stack descendant predicate including after-firstRET true block'),
 0x39307c:('C','Vec2 CVTT truncation'),0x3930ac:('C','scalar CVTT truncation'),
 0x39b734:('C','next position/condition/pivot'),0x39b770:('C','next size/condition'),0x39b71c:('C','next background alpha'),
 0x39b7a0:('C','next size constraint/indirect callback keys'),0x395108:('C','settings dirty timer gate'),
 0x399d88:('S','decoration controller with nontransparent grip block explicit stop'),
 0x39a308:('S','outer border and title separator; held border block explicit stop'),
 0x3992a0:('S','filled frame + border=true branch reached by decoration collapse'),
 0x39d760:('S','entry early-out gates; interactive body required callback'),
 0x39138c:('U','auto popup/tooltip positioning typed result required'),
 0x39a7a8:('U','title contents/button/text controller typed callback required'),
 0x3c3234:('U','scrollbar controller typed callback required'),0x39a64c:('U','shadow controller; parent owns draw_shadows raster'),
 0x3997ac:('U','child nav-highlight raster controller'),0x395500:('U','nav initialization'),0x3921c0:('U','table pool lookup thunk'),
 0x3b4f94:('U','EndColumns'),0x394dd4:('U','log finalization'),
}
# Leaf395108 has two returns but sole late block ends39512e.
leaf[0x395108]=0x39512e
partitions={
0x3bd06c:[(0x3bd06c,0x3bd07c,'S','column setup; true branch only exposed'),(0x3bd07c,0x3bd0ab,'U','unexposed recompute=false branch'),(0x3bd0ab,0x3bd113,'C','recompute=true column offsets/total')],
0x391dd0:[(0x391dd0,0x391ddb,'S','settings offset gate; new window offset-1'),(0x391ddb,0x391dee,'U','unexposed arbitrary existing settings-index lookup'),(0x391dee,0x391df6,'I','new window ID settings lookup')],
0x39d760:[(0x39d760,0x39d805,'S','entry early gates'),(0x39d805,0x39e0a0,'U','interactive resize body'),(0x39e0a0,0x39e0f5,'S','false/common return')],
0x399d88:[(0x399d88,0x39a167,'C','background/title/menu/scrollbar controller and grip gates'),(0x39a167,0x39a2c3,'U','nontransparent resize-grip path'),(0x39a2c3,0x39a306,'C','grip iteration/outer-borders dispatch/return')],
0x39a308:[(0x39a308,0x39a3ce,'C','outer border/held-border gate'),(0x39a3ce,0x39a575,'U','held border path'),(0x39a575,0x39a64a,'C','title separator/return')],
}
ranges=[];dependencies={}
for begin,(status,note) in sorted(spec.items()):
 end=unwind.get(begin,(leaf.get(begin),0))[0]
 if end is None:raise RuntimeError(f'missing extent {begin:x}')
 body=[(a,t) for a,t in lines if begin<=a<end]
 if not body or body[0][0]!=begin:raise RuntimeError(f'missing asm {begin:x}')
 (out/f'{begin:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body))
 calls=[];branches=[]
 for site,text in body:
  m=re.match(r'(call|jmp)\s+0x([0-9a-f]+)',text)
  if m:
   target=int(m[2],16)
   if not begin<=target<end:
    calls.append({'site':hex(site),'target':hex(target),'kind':m[1]})
    dependencies.setdefault(target,[]).append(site)
  m=re.match(r'(j\w+|loop\w*)\s+0x([0-9a-f]+)',text)
  if m and m[1]!='jmp':
   branches.append({'site':hex(site),'target':hex(int(m[2],16)),'instruction':text,'status':next((k for a,b,k,n in partitions.get(begin,[]) if a<=site<b),status)})
 ranges.append({'begin':hex(begin),'end_exclusive':hex(end),'bytes':end-begin,'extent_source':'PE runtime function record' if begin in unwind else 'manually audited leaf/tail; all post-RET blocks included','status':status,'scope':note,'sha256':hashlib.sha256(image[begin:end]).hexdigest(),'instruction_count':len(body),'calls_and_tail_dependencies':calls,'conditional_branches':branches,'partitions':[{'begin':hex(a),'end_exclusive':hex(b),'bytes':b-a,'status':k,'scope':n} for a,b,k,n in partitions.get(begin,[])]})
# Every byte of split specialized bodies is accounted exactly once.
for begin,parts in partitions.items():
 assert parts[0][0]==begin and parts[-1][1]==unwind.get(begin,(leaf[begin] if begin in leaf else None,0))[0]
 assert all(parts[i][1]==parts[i+1][0] for i in range(len(parts)-1))
released={0x39334c:'menu_controls hash',0x392614:'menu_controls window ID',0x391efc:'menu_controls focus',0x39b0cc:'menu_controls active ID',0x3944ac:'menu_controls mouse rectangle',0x3948dc:'menu_controls item add',0x394b40:'menu_controls item size',0x395158:'drawlist native allocation counter + typed allocator leaf',0x39517c:'drawlist native free counter + typed free leaf',0x3a9258:'drawlist reset',0x3a73c4:'drawlist texture push',0x3a7268:'drawlist clip push',0x3a6e34:'drawlist clip pop equivalent',0x3a8d94:'drawlist clip command update',0x3a1244:'released draw_shapes via rectangle binding',0x3a1148:'released draw_shapes via rectangle binding',0x3a01f4:'released draw_shapes via line binding',0x392298:'menu_controls style_color'}
folded={0x35d200:'menu_controls current-window access byte and pointer',0x38bbcc:'Vec2 indexed component address',0x38cc48:'Vec2 add-in-place',0x38c534:'typed maximum-content query/cursor subtraction',0x3933f4:'Vec2 squared length',0x398d44:'window position+actual-size rectangle',0x392ea0:'flags to background style index',0x3951ec:'menu rectangle',0x392130:'rect bottom-left',0x392154:'rect bottom-right',0x3923c8:'current-window pointer',0x39233c:'copied style/context address',0x2cc340:'Vec2 component constructor',0x2cc350:'four-float constructor',0x38bab4:'four-float copy',0x2d0d60:'vector empty',0x38a3f4:'literal MAXSS',0x3762cc:'literal MINSS',0x3762bc:'literal clamp',0x378940:'rect size difference',0x3367e4:'Vec2 subtraction',0x2ef9d8:'Vec2 addition',0x38bbdc:'Vec2 multiplication',0x38bc08:'Vec2 scalar multiplication',0x2db388:'rect from min/max',0x38baf4:'four-float rectangle constructor',0x378970:'rect width',0x378934:'rect height',0x383044:'component MAXSS',0x383070:'component MINSS',0x3901b8:'rect intersection',0x390208:'full rect clamp',0x33565c:'literal binary32 interpolation',0x3926ac:'context+8 IO address',0x3989f8:'owned clip push and window top clip mirror',0x398728:'rectangle overlap',0x3900f8:'next-window flags clear',0x3970f0:'shortcut layer byte from table/columns',0x39e380:'owned clip stack back',0x39e304:'focus vector back',0x39e324:'vector back',0x39e370:'window stack back',0x39eea0:'vector pop',0x3c8d4c:'copied bytes/memmove where used',0x3c8d70:'memset',0x3ca884:'raw strcmp',0x3ca904:'raw strlen',0x3789fc:'saturation',0x38bb6c:'numeric placement helper',0x39e8ac:'literal move string wrapper',0x39e8fc:'literal child label wrapper',0x38c5c4:'#MOVE literal construction',0x38c884:'child label formatting owned string',0x393158:'host bounded formatting adaptation',0x39ee98:'settings record offset',0x39e390:'chunk begin',0x39e3b8:'chunk next',0x39ebac:'chunk end',0x38bb70:'indexed chunk lookup outside new-window specialization',0x39f238:'display vector size'}
vector={0x364ef0,0x37a658,0x37ad34,0x37ae84,0x39eee8,0x39f0c8,0x39ef2c,0x39ebc0,0x37a6f8,0x37a888,0x39ecf4,0x39ed1c,0x38bb84,0x38bb90,0x38bbc0,0x39eee8,0x39ef2c,0x39f0c8}
# Cross-reference released controls ranges without promoting specializations to full closure.
prior=json.loads((root/'dump_analysis/semantic_reconstruction/menu_controls/range_branch_dependency_ledger.json').read_text())
prior_ranges={int(v['begin'],16):v for v in prior['ranges']}
for k,v in prior_ranges.items():
 if not v['status'].startswith('U') and k not in released:released[k]='menu_controls ledger '+v['status']
released.update({0x3a65c4:'released drawlist merge',0x378a14:'released draw_shapes path fill',0x378a40:'released drawlist path point',0x398758:'released draw_shapes path stroke',0x3a684c:'released draw_shapes arc',0x3a2010:'parent draw_shadows active ownership; not claimed closed here',0x3c8e6c:'released draw_shapes sine helper'})
initializers={0x2d4870,0x2db3a0,0x2dfe34,0x2eecfc,0x38a4ac,0x38ba0c,0x38bb2c,0x38bb64,0x38b058,0x38b1f4}
deps=[]
for target,sites in sorted(dependencies.items()):
 if target in spec:k,n=spec[target];state=f'{k}: inventory range above'
 elif target in released:state='released domain';n=released[target]
 elif target in folded:state='literal fold / library adaptation';n=folded[target]
 elif target in initializers:state='owned constructor/storage adaptation';n='overwritten object initialization or copied backup; native ABI not claimed'
 elif target in vector:state='owned copied-vector adaptation';n='not a claim of native heap/free/header ABI closure'
 else:state='U: dependency inventory only';n='remaining/native initializer or deeper helper; no full closure claim'
 deps.append({'target':hex(target),'end_exclusive':hex(unwind[target][0]) if target in unwind else hex(leaf[target]) if target in leaf else None,'sites':[hex(x) for x in sites],'status':state,'meaning':n})
source_map={
0x38cfa4:['imgui_windows_begin.cpp','imgui_windows_first_frame.cpp'],
0x390994:['imgui_windows_end.cpp'],0x390a88:['imgui_windows_end.cpp'],0x39b348:['imgui_windows_end.cpp'],0x39878c:['imgui_windows_end.cpp'],0x3987d8:['imgui_windows_end.cpp'],0x391184:['imgui_windows_end.cpp'],
0x38e97c:['imgui_windows_child.cpp'],0x38e9c4:['imgui_windows_child.cpp'],
0x38f020:['imgui_windows_modal.cpp'],0x391928:['imgui_windows_modal.cpp'],0x39031c:['imgui_windows_modal.cpp'],0x390260:['imgui_windows_modal.cpp'],0x391e68:['imgui_windows_modal.cpp'],0x391c78:['imgui_windows_modal.cpp'],0x3948bc:['imgui_windows_modal.cpp'],
0x3908d4:['imgui_windows_create.cpp'],0x38b6d4:['imgui_windows_create.cpp'],0x393cbc:['imgui_windows_create.cpp'],0x38cef0:['imgui_windows_create.cpp'],0x39347c:['imgui_windows_create.cpp'],0x391d84:['imgui_windows_create.cpp'],0x391dd0:['imgui_windows_create.cpp'],0x39ba10:['imgui_windows_create.cpp'],
0x3934b4:['imgui_windows_first_frame.cpp'],0x38ff14:['imgui_windows_first_frame.cpp'],0x392044:['imgui_windows_first_frame.cpp'],0x39b660:['imgui_windows_first_frame.cpp'],0x39bd54:['imgui_windows_first_frame.cpp'],0x392828:['imgui_windows_first_frame.cpp'],0x392f48:['imgui_windows_first_frame.cpp'],0x39307c:['imgui_windows_first_frame.cpp','imgui_windows_helpers.cpp','imgui_windows_child.cpp'],0x3930ac:['imgui_windows_first_frame.cpp','imgui_windows_metrics.cpp'],0x39d760:['imgui_windows_first_frame.cpp'],
0x38fac8:['imgui_windows_metrics.cpp'],0x38fbe8:['imgui_windows_metrics.cpp'],0x38f8b4:['imgui_windows_metrics.cpp'],0x38f3ec:['imgui_windows_metrics.cpp'],0x38f744:['imgui_windows_metrics.cpp'],0x3c5384:['imgui_windows_metrics.cpp'],0x3bd06c:['imgui_windows_metrics.cpp'],0x38f1fc:['imgui_windows_metrics.cpp'],0x39bf80:['imgui_windows_metrics.cpp'],0x3951a4:['imgui_windows_metrics.cpp'],0x39bfb8:['imgui_windows_metrics.cpp'],
0x399d88:['imgui_windows_decorations.cpp'],0x39a308:['imgui_windows_decorations.cpp'],0x3992a0:['imgui_windows_decorations.cpp'],
0x39b734:['imgui_windows_bindings.cpp'],0x39b770:['imgui_windows_bindings.cpp','imgui_windows_child.cpp'],0x39b71c:['imgui_windows_bindings.cpp'],0x39b7a0:['imgui_windows_bindings.cpp'],0x39bb20:['imgui_windows_bindings.cpp','imgui_windows_controls.cpp'],0x39bc6c:['imgui_windows_bindings.cpp','imgui_windows_controls.cpp'],
}
for record in ranges:
 key=int(record['begin'],16)
 record['implementation_files']=source_map.get(key,[] if record['status']=='U' else ['imgui_windows_begin.cpp','imgui_windows_helpers.cpp'])
for record in ranges:
 if int(record['begin'],16)==0x38cfa4:
  for branch in record['conditional_branches']:
   site=int(branch['site'],16)
   branch['implementation_phase']='prelude/next requests' if site<0x38d48b else 'first-frame layout' if site<0x38e73c else 'finish visibility/debug return'
ledger={'markers':{'C':'concrete controller/local calculations; typed child dependencies explicitly retained','I':'owned representation/storage adaptation','S':'specific branch specialization, never full-body claim','U':'remaining local body/range; missing required branch stops'},'sample_sha256':hashlib.sha256(image).hexdigest(),'virtual_layout':'file offset equals RVA','range_count':len(ranges),'bytes_in_inventory':sum(x['bytes'] for x in ranges),'ranges':ranges,'dependency_count':len(deps),'dependencies':deps,'limits':['No execution of sample or numeric target addresses.','Native runtime/heap ABI is not reconstructed; reserve_storage returns caller-owned nonoverlapping writable Snapshot storage.','Snapshot padding/uninitialized data not synthesized: window stack writes86 of88 bytes.','Interactive resize, active grip/held-border paths, auto-position, title/nav/table/columns/log/scrollbar and shadow closure remain explicit.','Parent owns draw_shadows raster; no duplication.','Controller coverage is not complete ImGui/window/game recreation.']}
(out/'remaining_ranges.json').write_text(json.dumps({'whole':[r for r in ranges if r['status']=='U'],'interior':[q for r in ranges for q in r['partitions'] if q['status']=='U'],'other_specializations':[r for r in ranges if r['status']=='S' and not r['partitions']]},indent=2)+'\n')
(out/'range_branch_dependency_ledger.json').write_text(json.dumps(ledger,indent=2)+'\n')
print(json.dumps({'ranges':len(ranges),'bytes':sum(x['bytes'] for x in ranges),'dependencies':len(deps),'conditional_branches':sum(len(x['conditional_branches']) for x in ranges),'by_status':{k:sum(x['bytes'] for x in ranges if x['status']==k) for k in 'CISU'}},indent=2))
