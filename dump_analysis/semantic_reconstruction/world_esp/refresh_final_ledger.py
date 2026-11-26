from pathlib import Path
import ast,json
p=Path('dump_analysis/semantic_reconstruction/world_esp/audit_world.py');s=p.read_text()
a=s.index('ranges=');z=s.index('\nfor start,end',a);ranges=ast.literal_eval(s[a+7:z])
updates={
0x309994:'[C/I/U] FOV and complete radar window position/reset/style/current-position controller; ImGui primitives unresolved',
0x309f47:'[C/I] ordered local/camera/transform guard; copied orientation/position inputs in whole-overlay composition',
0x30a1c3:'[C/I] code-lock time/count capture/reset/distance/projection and two status labels',
0x30a5dd:'[C/I/U] fishing window reset/style/layout/current-position and colored-meter arguments; primitives unresolved',
0x30ae1d:'[C/I] Unity Round/two-digit truncation/time-phase thresholds and label arguments',
0x30b140:'[C/I] desync meter and ordered status stack; literal3 gap and18/16 row spacing',
0x30b6b3:'[C/I] Snapshot sign dimensions and photo-frame class sizes/status',
0x30bcfa:'[C/I/U] authorization/key/code/crafting labels and complete violation window controller; primitives unresolved',
0x30c8d0:'[C/I] teleport count/distance formatting and projected glow path arguments',
0x30cd6f:'[C/I/U] complete warning window position/style/flags/current-position and alert cursor; primitives unresolved',
0x30cf5e:'[C/I/U] four-branch simulation/cache controller, native speed/attachment/order/parameters and ring/path bodies; branch1/3 omitted varargs require copied scratch; selectors/game inputs explicit',
0x30ea17:'[C/I] complete player iteration setup/validity/handcuff accumulation/bones/facing quad; game results explicit',
0x30ee71:'[C/I] special-NPC health/range gate/head/selected snapline',
0x30fed8:'[C/I/U] NPC quad projection/item-name/labels/corner/health; copied six-widget settings and explicit font dependencies',
0x310832:'[C/I] ordered looking/held/name/aim warning predicates and labels',
0x310d4c:'[C/I] in-game player marker/hover/one-tooltip latch; full inventory tooltip scale/two groups/condition/icons/count/separator',
0x31236d:'[C/I] foot projection/screen gates and friend/enemy key transitions',
0x312552:'[C/I/U] text selection/six-label placement/counters/icon fallback and font-scale restoration; copied widget settings and explicit font selector/measurement',
0x313020:'[C/I] selected snapline and player-view three-line geometry/filter/projection order',
0x31416a:'[C/I] owned loop cleanup and whole-overlay ordered composition',
}
ranges=[(a,b,updates.get(a,t)) for a,b,t in ranges]
s=s[:a] if False else s
# avoid reusing the tuple loop variable as the string index
start=s.index('ranges=');end=s.index('\nfor start,end',start)
s=s[:start]+'ranges='+repr(ranges)+s[end:];p.write_text(s)
