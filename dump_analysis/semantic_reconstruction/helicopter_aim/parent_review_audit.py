#!/usr/bin/env python3
"""[I] Read-only evidence byte validation for the independent parent review."""
from pathlib import Path
import hashlib,json,re,struct
root=Path('/home/john/Desktop/cheat_re')
folder=root/'dump_analysis/semantic_reconstruction'
blob=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
names=['metadata_adapters_evidence.asm','signature_lookup_helpers.asm','signature_string_operations.asm',
 'export_hash_and_loader.asm','export_hash_dependencies.asm','metadata_export_lookup_bodies.asm',
 'metadata_export_resolvers.asm','metadata_export_resolvers_bodies.asm','metadata_export_additional.asm',
 'metadata_export_additional_caches.asm','metadata_export_additional_cells.asm','metadata_method_name_export.asm',
 'binding_fields_evidence.asm','classifier_adapter_evidence.asm','guarded_method_selector.asm']
result={'claim':'[C] Evidence bytes independently match the preserved virtual-layout image. [I] Semantic review conclusions are in parent_review.md.',
 'evidence':[],'sources':{}}
for name in names:
 text=(folder/name).read_text();count=0
 for line in text.splitlines():
  match=re.match(r'^([0-9a-f]{6})  ((?:[0-9a-f]{2} )*[0-9a-f]{2})\s+',line)
  if not match:continue
  address=int(match[1],16);data=bytes.fromhex(match[2])
  assert blob[address:address+len(data)]==data,(name,hex(address));count+=1
 result['evidence'].append({'file':name,'matching_instruction_rows':count,'sha256':hashlib.sha256(text.encode()).hexdigest()})
for name in ['metadata_signature_analysis.cpp','metadata_export_analysis.cpp','snapshot_bindings.cpp','metadata_analysis.cpp']:
 result['sources'][name]=hashlib.sha256((root/'source/reconstructed'/name).read_bytes()).hexdigest()
# [I] Independent CRC table and separator confirmation.
entries=[]
for byte in range(256):
 crc=byte
 for _ in range(8):crc=(crc>>1)^(0xedb88320 if crc&1 else 0)
 entries.append(crc)
assert struct.unpack_from('<256I',blob,0x294e70)==tuple(entries)
assert blob[0x294e64:0x294e66]==b'.\0'
result['crc_table_and_separator_verified']=True
out=folder/'helicopter_aim/parent_review_byte_audit.json'
out.write_text(json.dumps(result,indent=2)+'\n')
print('[C]',sum(item['matching_instruction_rows'] for item in result['evidence']),'evidence rows match image; all 256 CRC table entries and separator match.')
