from pathlib import Path
import json
out=Path(__file__).parent;a=json.loads((out/'byte_audit.json').read_text());spec=json.loads((out/'direct_specs.json').read_text())
assigned=[0x322580,0x366c30,0x366ccc,0x366d7c,0x366e38,0x366ef0,0x36817c,0x36a238,0x36b004,0x36b6cc,0x370b50,0x373c60,0x374168,0x322ef8,0x322f30,0x36a0e0,0x36ba2c]
ranges={int(x['requested'],16):x for x in a['ranges']};rows=[]
for root in assigned:
 r=ranges[root];rows.append({'root':hex(root),'begin':r['begin'],'end_exclusive':r['end'],'claim':'C/I','implementation':'game_direct_wrappers_controllers.cpp + arguments/analysis/selector/literals','remaining_local_body':False})
leaf=[('3229d8','3229e7'),('370b1c','370b4d'),('36b3bc','36b3d5'),('36b420','36b431'),('332514','33251c'),('2d8a98','2d8aa0'),('2d8a90','2d8a98'),('2dd2e4','2dd2ec'),('332460','33249c'),('2dd064','2dd0a0'),('2e99d8','2e9a14'),('2e3400','2e343c'),('2ce5dc','2ce5e1'),('2cc268','2cc26f'),('2ddbf8','2ddc00'),('2d4928','2d492e'),('2df370','2df376')]
ledger={
 'sample_sha256':a['input_sha256'],
 'requested_envelopes':len(a['ranges']),
 'branch_destinations':sum(len(r['branches']) for r in a['ranges']),
 'assigned_roots':rows,'cache_specs':spec,
 'precise_reached_leaf_extents':[{'begin':'0x'+b,'end_exclusive':'0x'+e} for b,e in leaf],
 'immediate_controllers':['0x36bacc..0x36bb55','0x36b9a0..0x36ba29','0x36c274..0x36c346','0x36c0f0..0x36c184','0x2ce718..0x2ce790'],
 'owned_adaptations':[
  {'claim':'I','range':'3ca960/3ca918/3ca4f8/3ca86c','scope':'streaming C-string substring/prefix scan over bounded copied bytes; exact early match and guard order retained'},
  {'claim':'I','range':'argument wrapper stack-home/return-pointer fields','scope':'only known native-width bytes written; unknown copied pointer/type/high bytes remain unmaterialized with explicit masks'},
  {'claim':'I','range':'owned literal/vector/Quaternion bridges','scope':'optional actual aliases separate from typed values; no host/native pointer ABI equivalence claimed'}],
 'known_caller_binding_limits':[
  {'rva':'0x322580','caller':'movement_main_analysis.cpp discarded integer getter','status':'parent notified to route ignored setter return through effect; binder never fabricates integer return'}],
 'unavailable_external_artifacts':['matching GameAssembly.dll','matching UnityPlayer.dll','matching global-metadata.dat']}
ledger['known_caller_binding_limits'] += [
 {'rva':hex(r),'caller':'InteractionCall.literal producer outside assigned17 root/immediate closure','status':'explicit missing local literal producer; never forwarded foreign'}
 for r in [0x2e5254,0x2e5270,0x2e52cc,0x2e52e8,0x2e5324,0x2e5348,0x2e59d8,0x2dfc44]]
(out/'semantic_range_ledger.json').write_text(json.dumps(ledger,indent=2)+'\n')
print('PASS range ledger17 assigned roots,18 direct caches,',len(leaf),'precise leaves')
