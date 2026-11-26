from pathlib import Path
import re,json
O=Path('dump_analysis/semantic_reconstruction/world_esp')
ls=[(int(l.split()[0],16),l.split(' ',1)[1]) for l in (O/'3098a4.txt').read_text().splitlines()]
cpp=['#include "world_esp_analysis.hpp"','namespace rust_internal_re {','namespace {'];evidence={}
for name,begin,end,drawbegin in [('npc',0x30f17a,0x30fed8,0x30f72e),('player',0x313458,0x314165,0x313a09)]:
 sub=[(a,t) for a,t in ls if begin<=a<end];bones=[];locations={};lastbone=None;projection=None;edges=[];linepoints=[]
 for a,t in sub:
  if m:=re.match('mov    r8d,(0x[0-9a-f]+)',t):lastbone=int(m[1],16)
  if t=='xor    r8d,r8d':lastbone=0
  if t=='call   0x368be8':bones.append(dict(bone=lastbone,query=hex(a)))
  if m:=re.match(r'lea    r8,\[rbp\+(0x[0-9a-f]+)\]',t):projection=int(m[1],16)
  if t=='call   0x36cd20':locations[projection]=len(bones)-1;bones[-1]['projection']=hex(a)
  if a>=drawbegin:
   if m:=re.match(r'movss  xmm1,DWORD PTR \[rbp\+(0x[0-9a-f]+)\]',t):linepoints.append(int(m[1],16))
   if t=='call   0x35c25c':
    assert len(linepoints)==2,(hex(a),linepoints)
    edges.append(dict(site=hex(a),first=locations[linepoints[1]],second=locations[linepoints[0]]));linepoints=[]
 assert len(bones)==19 and len(edges)==18
 cpp+=['const WorldSkeletonBone '+name+'_bones[]={']+[f'    {{{x["bone"]},{x["query"]},{x["projection"]}}},' for x in bones]+['};','const WorldSkeletonEdge '+name+'_edges[]={']+[f'    {{{x["first"]},{x["second"]},{x["site"]}}},' for x in edges]+['};']
 evidence[name]=dict(bones=bones,edges=edges)
cpp+=['}','std::span<const WorldSkeletonBone> world_skeleton_bones(bool npc){return npc?std::span(npc_bones):std::span(player_bones);}','std::span<const WorldSkeletonEdge> world_skeleton_edges(bool npc){return npc?std::span(npc_edges):std::span(player_edges);}','}']
Path('source/reconstructed/world_esp_skeleton_tables.cpp').write_text('\n'.join(cpp)+'\n');(O/'skeleton_tables.json').write_text(json.dumps(evidence,indent=2));print('19 bones and18 edges per native skeleton path')
