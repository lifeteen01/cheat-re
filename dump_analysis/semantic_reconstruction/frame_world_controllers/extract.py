from pathlib import Path
import struct,re,json,subprocess
root=Path('/home/john/Desktop/cheat_re'); out=Path(__file__).parent
im=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes(); pe=struct.unpack_from('<I',im,60)[0]; a,n=struct.unpack_from('<II',im,pe+24+112+24); ext={x:y for x,y,z in (struct.unpack_from('<III',im,i) for i in range(a,a+n,12))}; lines=(root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines()
roots=[0x2d60d0,0x3096c4,0x316540,0x318f34,0x3211f0,0x3684e0]
extra=[0x2d6068,0x2d6488,0x2d5918,0x321484,0x3213cc,0x2fabf8,0x2fb2f4,0x368f50,0x2df29c,0x2ea7fc,0x2ea7e8,0x2edcf4,0x2edc7c,0x320760,0x3207b8,0x2ef634,0x2d6384,0x2d56b8,0x2d5e00,0x2d5be4,0x2d5a18,0x2d91c4,0x2dd634,0x2d64c4,0x2e1270,0x2df708,0x3677bc,0x2dd9cc,0x2dd988,0x2d95cc,0x2d368c,0x2d36e8,0x2d3744,0x2d3ab4,0x2d3b84,0x2d3c84,0x2d3dd4,0x2d3890,0x2d39e0,0x2d38d0,0x2d901c,0x3150ac,0x36b1a0,0x36b0c8,0x36aec4,0x316504,0x316524,0x2d5744,0x2d8d74,0x2d65dc,0x2d9328,0x2d90dc,0x2ddc4c,0x2ddca8,0x2ddce8,0x2ddd24,0x2ea018,0x2e9f4c,0x2e9fac,0x32305c,0x2e3fb4,0x2d9788,0x2ee5a0,0x2ee658,0x375d30]
rows=[]
for b in roots+extra:
 e=ext.get(b) or {0x2ea7e8:0x2ea7ef,0x2ea7fc:0x2ea804,0x2e1270:0x2e1278,0x2dd988:0x2dd98d,0x2d901c:0x2d9021,0x2ddd24:0x2ddd38,0x2ddce8:0x2ddcfc,0x2ddca8:0x2ddcbd,0x2e9f4c:0x2e9f60}.get(b)
 if not e:
  print('NO UNWIND',hex(b));continue
 ls=[l for l in lines if b<=int(l.split('\t')[0],16)<e]
 (out/f'{b:x}.asm').write_text('\n'.join(ls)+'\n');(out/f'{b:x}.bin').write_bytes(im[b:e]); raw=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel',f'--adjust-vma={b}',str(out/f'{b:x}.bin')],text=True);(out/f'{b:x}.fresh.asm').write_text(raw)
 rows.append({'begin':hex(b),'end':hex(e),'bytes':e-b,'role':'root' if b in roots else 'closure','conditionals':[l for l in ls if re.search(r'\tj(?!mp)',l)],'dependencies':sorted(set(re.findall(r'(?:call|jmp)\s+0x([0-9a-f]+)','\n'.join(ls))))})
(out/'initial_inventory.json').write_text(json.dumps(rows,indent=2)+'\n')
print([(r['begin'],r['bytes']) for r in rows])
