from pathlib import Path
import json,re
D=Path('dump_analysis');O=D/'semantic_reconstruction/world_esp';R=Path('source/reconstructed')
cfg={k:int(v['glob'],16)+0x48 for k,v in json.load(open(D/'C_vmp/cfg_users.json')).items()}
strings=json.load(open(O/'getter_strings.json'))
p=(O/'31acd0.txt').read_text().splitlines()
rows=[]
def add(cat,classes,gate,prefab='',exclude='',extra='none',berry=-1,label=None,site=None):
 if site is None:
  candidates=[]
  for i,l in enumerate(p):
   if re.search(r'(?:mov    edx,0x%x$|lea    edx,\[rdi\+0x%x\]$)'%(cat,cat),l):
    for j in range(i+1,min(i+35,len(p))):
     if 'call   0x3176bc' in p[j]:candidates.append((i,j));break
  if not candidates:raise ValueError(cat)
  i,j=candidates[0];site=int(p[j][:6],16)
  if label is None:
   for l in reversed(p[max(0,i-35):i]):
    m=re.search(r'call   (0x[0-9a-f]+)',l)
    if m and m[1] in strings:label=strings[m[1]];break
 if label is None:raise ValueError((cat,'label'))
 gates=gate.split('|') if gate else []
 gates=[cfg['Bools.'+g] if not g.startswith('0x') else int(g,16) for g in gates]
 rows.append(dict(category=cat,site=site,classes=classes,prefab=prefab,exclude=exclude,label=label,gates=gates,extra=extra,berry=berry))
add(5,'DudTimedExplosive','droppeditems',extra='dud')
add(9,'CCTV_RC','CCTV')
add(4,'OreResourceEntity','WoodPile','wood_log_pile/wood-pile.prefab')
add(18,'HBHFSensor','HBHFSensor');add(19,'SeismicSensor','SeismicSensor');add(20,'ElectricBattery','LargeBattery','large')
add(122,'OreResourceEntity','HQMOre|NodePath','hqm',extra='ore_outer',label='HQMOre')
for cat,g,pref in [(1,'StoneOre','stone'),(2,'MetalOre','metal'),(3,'SulfurOre','sulfur')]:add(cat,'OreResourceEntity',g+'|NodePath',pref,'assets/bundled/prefabs/radtown/ore_'+pref+'.prefab',extra='ore_outer')
add(125,'ModularCar','CarESP');add(114,'TrainEngine','TrainESP');add(12,'Drone','DrawDrone')
add(13,'Bike','DrawBikes','pedalbike',extra='pedal',label='PedalBike');add(13,'Bike','DrawBikes','pedaltrike',extra='pedal_trike',label='PedalTrike')
add(14,'Bike','MetalBike','motorbike_sidecar',extra='motor_sidecar',label='MotorBike Sidecar');add(14,'Bike','MetalBike','motorbike.prefab',extra='motor',label='MotorBike')
add(15,'PatrolHelicopter','PatrolHeli');add(16,'','PatrolHeli','heli_crate.prefab')
add(17,'Recycler','recycler');add(21,'BradleyAPC','Bradley');add(22,'','Bradley','bradley_crate')
add(23,'SubmarineDuo|BaseSubmarine','Submarine');add(24,'ScrapTransportHelicopter','ScrapHeli');add(25,'Minicopter','Minicopter');add(26,'AttackHelicopter','attackhelicopter');add(27,'Tugboat','tugboat');add(28,'RHIB','RHIB');add(29,'MotorRowboat','Rowboat');add(30,'CargoShip','Cargoship')
add(31,'CollectableEasterEgg','','',extra='candy',berry=6,label='Candy',site=0x31c305);add(32,'CollectableEasterEgg','','collectableegg',extra='egg',berry=6,label='Egg',site=0x31c305)
for cat,g,pref in [(95,'FragmentsESP','advancedblueprintfragment'),(96,'SmallFragmentsESP','basicblueprintfragment'),(97,'RedCardESP','keycard_red')]:add(cat,'ItemPickup',g,pref)
for cat,g,pref in [(57,'WheatESP','wheat-collectable'),(62,'SunflowerESP','sunflower-collectable'),(63,'RoseESP','rose-collectable'),(64,'OrchidESP','orchid-collectable'),(33,'hempesp','hemp-collectable')]:add(cat,'CollectibleEntity',g,pref)
for n,(color,cat) in enumerate(zip(['black','blue','green','red','white','yellow'],range(34,40))):add(cat,'CollectibleEntity','',color,berry=n)
for cat,g,pref in [(40,'stoneesp','stone-collectable'),(41,'metalesp','metal'),(42,'sulfuresp','sulfur'),(43,'woodesp','wood'),(44,'cornesp','corn'),(45,'mushroomesp','mushroom'),(46,'pumpkinesp','pumpkin'),(47,'diselesp','diesel'),(48,'potatoesp','potato')]:add(cat,'CollectibleEntity',g,pref)
for cat,cl,g in [(7,'NaturalBeehive','BeeHive'),(6,'BeeSwarmAI','BeeSwarmAI'),(49,'SupplyDrop','Airdrop'),(50,'HackableLockedCrate','LockedCrates')]:add(cat,cl,g)
add(51,'FreeableLootContainer','AWaterCrateESP','crate_underwater_advanced.prefab');add(52,'FreeableLootContainer','BWaterCrateESP','crate_underwater_basic.prefab')
for cat,g,pref in [(53,'BlueBarrelEsp','loot-barrel|loot_barrel'),(55,'OilBarrelEsp','oil_barrel'),(56,'NormalCrateESP','crate_normal_2.prefab'),(58,'MilitaryCrateESP','crate_normal.prefab'),(59,'EliteCrateESP','crate_elite.prefab'),(60,'ToolCrateESP','crate_tools'),(61,'FoodCrateESP','food|trash-pile-1'),(65,'MedicalCrateESP','crate_normal_2_medical.prefab'),(66,'BasicCrateESP','crate_basic.prefab')]:add(cat,'LootContainer',g,pref)
for cat,cl,g in [(67,'PlayerCorpse','Corpse'),(68,'NPCPlayerCorpse','ScientistCorpse'),(69,'BaseCorpse','AnimalCorpse'),(70,'DroppedItemContainer','Backpack'),(71,'DroppedItem','droppeditems|droppedweapons|OOFWeapons'),(73,'AutoTurret','AutoTurretESP|AutoFarmOre|AutoWalkMarker'),(74,'BearTrap','SnaptrapESP'),(79,'SnakeHazard','SnakeEsp'),(127,'Cow','CowESP'),(126,'Sheep','SheepESP'),(80,'Tiger','TigerEsp'),(81,'Panther','PantherEsp'),(82,'Crocodile','CrocodileEsp'),(75,'FlameTurret','FlameTrapESP'),(76,'TinCanAlarm','tunacanalarm')]:add(cat,cl,g)
for cat,cl,g in [(83,'Landmine','LandmineESP'),(84,'SamSite','SamsiteESP|SamSiteAlert'),(85,'GunTrap','ShotgunTrapESP'),(86,'BuildingPrivlidge|BuildingPrivilegeRetro','Cupboard'),(124,'StashContainer','StashesUnHidden'),(88,'SleepingBag','SleepingBag'),(89,'RFReceiver','RFReceiver'),(90,'RFBroadcaster','RFBroadcaster')]:add(cat,cl,g,extra='sam_uncached' if cat==84 else 'none')
add(91,'Workbench','Workbench|workbench2','workbench2',extra='workbench2',site=0x31f678,label='WB2');add(92,'Workbench','Workbench|workbench2','workbench3',extra='workbench3',site=0x31f678,label='WB3')
for cat,cl,g in [(93,'Bear','BearEsp'),(94,'PolarBear','BearEsp'),(100,'Stag','StagEsp'),(101,'Wolf|Wolf2','WolfEsp'),(102,'Boar','PigEsp'),(103,'Horse|RidableHorse','HorseEsp'),(104,'SimpleShark','SharkEsp')]:add(cat,cl,g)
# Order by native append site; alternate labels remain at a shared site and preserve priority.
rows.sort(key=lambda r:r['site'])
(O/'classifier_rules.json').write_text(json.dumps(rows,indent=2))
q=lambda s:json.dumps(s)
h=lambda n:'0x%x'%n
cpp=['#include "world_esp_analysis.hpp"','namespace rust_internal_re {','namespace {','const WorldClassifierRule rules[]={']
for r in rows:
 gates=r['gates']+[0]*(4-len(r['gates']))
 cpp.append('    {%d,%s,%s,%s,%s,%s,{%s},0,%d,WorldClassifierRule::Extra::%s},'%(r['category'],h(r['site']),q(r['classes']),q(r['prefab']),q(r['exclude']),q(r['label']),','.join(map(h,gates)),r['berry'],r['extra']))
cpp+=['};','}','std::span<const WorldClassifierRule> world_classifier_rules_31acd0(){return rules;}','} // namespace rust_internal_re']
(R/'world_esp_classifier_tables.cpp').write_text('\n'.join(cpp)+'\n')
print(len(rows),'rules;',len({r['category'] for r in rows}),'category IDs')
p=(O/'2fb72c.txt').read_text().splitlines();blocks=[]
for i,l in enumerate(p):
 a=int(l[:6],16)
 if 0x2fd232<=a<0x305956 and re.search(r'cmp    ecx,',l):blocks.append(i)
routes=[]
address_index={int(l[:6],16):i for i,l in enumerate(p)}
entry_addresses={int(p[i][:6],16) for i in blocks}
def reachable_route(start):
 # Skip the route's CMP and mismatch JNE; collect its selected successor CFG.
 work=[start+2];seen=set()
 stops={0x3052c1,0x305c1e,0x305e66,0x305e6d,0x303953,0x30762b}
 while work:
  i=work.pop()
  if i in seen or i>=len(p):continue
  a=int(p[i][:6],16)
  if a in stops or a in entry_addresses:continue
  if a<0x2fd232 or a>=0x305c1e:continue
  seen.add(i);text=p[i][7:]
  m=re.match(r'(j[a-z]+)\s+0x([0-9a-f]+)',text)
  if m:
   target=int(m[2],16)
   if target in address_index:work.append(address_index[target])
   if m[1]=='jmp':continue
  if not text.startswith('ret'):work.append(i+1)
 return [p[i] for i in sorted(seen)]
for n,i in enumerate(blocks):
 line=p[i];v=line.split(',')[-1]
 cat={'r8d':1,'r9d':2,'r11d':4,'r10d':7,'edx':6}.get(v)
 if cat is None:cat=int(v,16)
 end=blocks[n+1] if n+1<len(blocks) else i+60
 b=reachable_route(i)
 # The final deployment route flows through the shared icon/battle suffix.
 if cat in [18,19,20,89,90,92]:b=b+p[next(k for k,l in enumerate(p) if l.startswith('30590c ')):next(k for k,l in enumerate(p) if l.startswith('305965 '))]
 if cat in [1,2,3,122]:b=b+p[next(k for k,l in enumerate(p) if l.startswith('2fd6a2 ')):next(k for k,l in enumerate(p) if l.startswith('2fd6f0 '))]
 refs=[]
 for l in b:
  if 'CONFIG' in l:
   name=l.split('CONFIG ')[1].split(' value')[0]
   if name not in refs:refs.append(name)
 def first(pred):return next((cfg[x] for x in refs if pred(x)),0)
 tog=first(lambda x:x.startswith('Bools.') and x not in ['Bools.ExcludeTrash','Bools.DrawRadarEntities','Bools.DrawIngameRadarEntities','Bools.AutoCollect'])
 color=first(lambda x:x.startswith('C.'))
 if cat==2:color=0x3eb6d8
 maximum=first(lambda x:x.startswith('i.') and ('Distance' in x or 'dist' in x))
 chams=first(lambda x:x.startswith('Bools.') and ('Chams' in x or x=='Bools.ChamOres'))
 ci=first(lambda x:x.startswith('i.') and ('Cham' in x))
 icons=first(lambda x:x.startswith('Bools.') and x.endswith('Icons'))
 mult=first(lambda x:x.startswith('F.') and x.endswith('IconsMult'))
 label=''
 for l in b:
  m=re.search(r'call   (0x[0-9a-f]+)',l)
  if m and m[1] in strings:label=strings[m[1]];break
 # Native shared families and battle vector indices.
 group=0 if cat in [1,2,3,4,122] else 2 if cat in list(range(31,44))+[47,62,63,64] else 3 if cat in [44,45,46,48,57] else 4 if cat in [6,79,80,81,82,93,94,100,101,102,103,104,126,127] else 1 if cat in [7,49,50,51,52,53,55,56,58,59,60,61,65,66] else 5 if cat in [12,13,14,15,16,21,22,23,24,25,26,27,28,29,30,114,125] else 7 if cat in [73,74,75,76,83,84,85] else 8 if cat in [9,17,18,19,20,86,88,89,90,91,92,124] else 6
 family={0:'Ore',2:'Collectable',3:'Food',4:'Animal',1:'Container',5:'Vehicle',7:'Trap',8:'Deployable',6:'Other'}[group]
 # No family defaults: only config reads reached in the selected native CFG.

 special=cat in [12,15,16,22,50,73,75,76,84,85,67,70,71,86]
 radar=('Bools.DrawRadarEntities' in refs or 'Bools.DrawIngameRadarEntities' in refs)
 # Native no label override: record label is copied by the shared draw tail.
 if label in ['Berry',']','[','OnFire','']:label=''
 if cat in [71,67,70,86]:label=''
 r=dict(category=cat,begin=int(line[:6],16),end=int(p[end][:6],16),toggle=tog,color=color,maximum=maximum,chams=chams,chams_index=ci,icons=icons,mult=mult,label=label,battle=({1:5,5:7,7:1}.get(group,group) if 'VectorBools.BattlemodeOptions' in refs else -1),collect=-1,berry=cat-34 if 34<=cat<=39 else -1,radar=radar,health=cat in [79,80,81,82,100,101,102,103,104,126,127],special=special,refs=refs)
 routes.append(r)
# Two small category pairs dispatch through arithmetic rather than CMP ecx,immediate.
for cat,begin,end in [(31,0x305a7f,0x305c1e),(32,0x305a7f,0x305c1e),(93,0x305965,0x305a7f),(94,0x305965,0x305a7f)]:
 r=dict(category=cat,begin=begin,end=end,toggle=cfg['Bools.BearEsp'] if cat>32 else 0,color=cfg['C.BearEspC'] if cat>32 else 0,maximum=cfg['i.BearDistance'] if cat>32 else cfg['i.CollectableDistance'],chams=cfg['Bools.AnimalChams'] if cat>32 else cfg['Bools.FoodChams'],chams_index=cfg['i.AnimalChamsIndex'] if cat>32 else cfg['i.FoodChamsIndex'],icons=cfg['Bools.AnimalIcons'] if cat>32 else cfg['Bools.CollectableIcons'],mult=cfg['F.AnimalIconsMult'] if cat>32 else cfg['F.CollectableIconsMult'],label='',battle=4 if cat>32 else 2,collect=-1,berry=6 if cat<=32 else -1,radar=True,health=cat>32,special=False,refs=[])
 routes.append(r)
collect_options={33:0,62:0,63:0,64:0,34:6,35:7,36:8,37:9,38:10,39:11,40:1,41:2,42:3,43:4,47:5,44:15,57:15,45:14,46:13,48:16,31:12,32:12}
for r in routes:r['collect']=collect_options.get(r['category'],-1)
# Native category 71 gating and formatting require its own data decoder.
for r in routes:
 if r['category']==71:r['toggle']=cfg['Bools.droppeditems'];r['maximum']=cfg['i.DroppedItemsDistance']
(O/'draw_routes.json').write_text(json.dumps(routes,indent=2))
cpp=['#include "world_esp_analysis.hpp"','namespace rust_internal_re {','namespace {','const WorldDrawRoute routes[]={']
for r in routes:
 nums=[r[x] for x in ['category','begin','end','toggle','color','maximum','chams','chams_index','icons','mult']]
 cpp.append('    {'+','.join(map(h,nums))+','+q(r['label'])+',%d,%d,%d,%s,%s,%s},'%(r['battle'],r['collect'],r['berry'],str(r['radar']).lower(),str(r['health']).lower(),str(r['special']).lower()))
cpp+=['};','}','std::span<const WorldDrawRoute> world_draw_routes_2fb72c(){return routes;}','} // namespace rust_internal_re']
(R/'world_esp_draw_tables.cpp').write_text('\n'.join(cpp)+'\n')
print(len(routes),'draw routes')
