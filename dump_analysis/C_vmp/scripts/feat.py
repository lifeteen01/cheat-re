import json,re,collections,sys
o=json.load(open('cfg_users.json')); FS=json.load(open('fn_strings.json'))
byf=collections.defaultdict(list)
for k,v in o.items():
    for u in v['users']: byf[u].append(k)
def is_menu(f):
    ss=FS.get(f,[])
    return (('%.3f' in ss or '%d' in ss or any(s.startswith('##') for s in ss)) and len(byf[f])>=8) or f=='0x35d5ac'
MENU=set(f for f in byf if is_menu(f))
print('menu fns',len(MENU),sorted(MENU))
json.dump(sorted(MENU),open('menu_fns.json','w'))
pat=sys.argv[1]
for k,v in sorted(o.items()):
    if re.search(pat,k,re.I):
        logic=[u for u in v['users'] if u not in MENU]
        print('%-34s glob=%s users=%d logic=%s'%(k,v['glob'],len(v['users']),logic))
