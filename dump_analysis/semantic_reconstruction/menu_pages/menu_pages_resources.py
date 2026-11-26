from pathlib import Path
import json,hashlib
root=Path('/home/john/Desktop/cheat_re');b=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();labels=[]
def wide(a):
 e=a
 while b[e:e+2]!=b'\0\0':e+=2
 data=b[a:e+2];v=data[:-2].decode('utf-16le');labels.append(dict(rva=hex(a),end=hex(e+2),utf8=v,sha256=hashlib.sha256(data).hexdigest()));return v
def L(eng,ru,zh):return '{'+','.join(json.dumps(x,ensure_ascii=False) for x in [eng,wide(ru),wide(zh)])+'}'
lines=['// [C]33a6f8..33ac32, exact callback order/config aliases.']
lines+=['        child(s,m,a,"L",text(s,'+L('Resources',0x298c60,0x298c70)+'),{0,-1},true);']
for site,eng,ru,zh,value,color in [
 (0x33a7f8,'Stone Ore',0x298c78,0x298c90,0x3e79c8,0x3eb618),
 (0x33a857,'HQM Ore',0x298c98,0x298cb8,0x3e7a18,0x3eb738),
 (0x33a8b6,'Metal Ore',0x298cc8,0x298ce0,0x3e7a68,0x3eb6d8),
 (0x33a915,'Sulfur Ore',0x298ce8,0x298d00,0x3e7b08,0x3eb798),
 (0x33a974,'Wood Pile',0x298d08,0x298d20,0x3e6f28,0x3eb678)]:
 lines+=['        checkbox(s,a,%s,%s,%s,0,%s);'%(hex(site),L(eng,ru,zh),hex(value),hex(color))]
lines+=['        checkbox(s,a,0x33aa0e,'+L('Farming Tool Check',0x298d68,0x298d98)+',0x3e6ed8,0,0,'+L('Checks required tool',0x298d28,0x298d58)+');',
        '        cleanup(a);call(a,0x39ac04,{0.0f,-1.0f});',
        '        child(s,m,a,"D",text(s,'+L('Resources Modifications',0x298da8,0x298dd8)+'),{0,-1},true);',
        '        checkbox(s,a,0x33aae2,{"Ore Icons","Ore Icons","Ore Icons"},0x3e69d8);',
        '        // [C] This intentionally gates OreIconsMult on OTHER icons.',
        '        if(flag(s,0x3e6b68))slider_float(s,a,0x33ab44,{"Icon Size","Icon Size","Icon Size"},0x3ed2f8,1.5f,2.5f,"%.3f");',
        '        checkbox(s,a,0x33ab9f,'+L('Ore Chams',0x298de8,0x298e00)+',0x3e6e88);',
        '        slider_integer(s,a,0x33ac18,'+L('Node Distance',0x298e10,0x298e30)+',0x3ee888,0,500,"%d");',
        '        cleanup(a);']
(root/'source/reconstructed/menu_pages_resources.inc').write_text('\n'.join(lines)+'\n');(root/'dump_analysis/semantic_reconstruction/menu_pages/menu_pages_labels.json').write_text(json.dumps(labels,indent=2,ensure_ascii=False)+'\n')
print('Recovered',len(labels),'UTF16 labels')
