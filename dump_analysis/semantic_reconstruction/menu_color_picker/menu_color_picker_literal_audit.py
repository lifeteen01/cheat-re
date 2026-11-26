from pathlib import Path
import json,struct,hashlib
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
expected='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
assert hashlib.sha256(image).hexdigest()==expected
rows=[]
for name,raw,clear,loader in [
 ('alpha',image[0x2a91f4:0x2a91fa],b'alpha\0',0x3786e8),
 ('hue',image[0x37871a:0x37871e],b'hue\0',0x378718),
 ('sv',image[0x2a91fc:0x2a91ff],b'sv\0',0x378724),
 ('hex',image[0x37873e:0x378746],b'##Input\0',0x37873c),
 ('format',image[0x2a9200:0x2a9211],b'%02X%02X%02X%02X\0',0x378700),
 ('scan',image[0x2a9218:0x2a9229],b'%02X%02X%02X%02X\0',0x378750),
 ('log_format',image[0x38c776:0x38c77e],b'%*s%.*s\0',0x38c774)]:
 decoded=bytes(value^((i%57)+55) for i,value in enumerate(raw))
 assert decoded==clear,(name,raw,decoded,clear)
 rows.append(dict(name=name,loader=hex(loader),cipher=raw.hex(),decoded=decoded.hex()))
(out/'menu_color_picker_literal_audit.json').write_text(json.dumps(dict(input_sha256=expected,literals=rows),indent=2)+'\n')
print('PASS7directloaders/decode strings; owned formatting/scanning inputs identified')
