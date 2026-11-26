set debuginfod enabled off
set pagination off
break owned_scene::InternalMenu::State::bounds
commands
silent
python
import struct
s=gdb.parse_and_eval('this').dereference()
if not bool(s['cold_start']):
 base=int(s['image']['bytes_']['_M_impl']['_M_start'])
 inf=gdb.selected_inferior()
 def read(p,fmt): return struct.unpack(fmt,inf.read_memory(base+p,struct.calcsize(fmt)))[0]
 w=read(0x13f08,'<Q')
 chain=[]
 while w and len(chain)<8:
  n=read(w+8,'<Q'); name=bytes(inf.read_memory(base+n,120)).split(b'\0')[0]
  chain.append((hex(w),name, [read(w+o,'<f') for o in (0x20,0x24,0x28,0x2c,0x100,0x104,0x238,0x23c,0x240,0x244)], [read(w+o,'<B') for o in (0xbb,0xbd,0xd8,0xd9)]))
  w=read(w+0x370,'<Q')
 it=iter(gdb.default_visualizer(s['config']['values']).children())
 vals={}
 for (_,key),(_,value) in zip(it,it):
  if int(key) in (0x248ee8,0x3fd7bc,0x3fc0f8,0x3fc0fc): vals[hex(int(key))]=hex(int(value))
 print(gdb.parse_and_eval('name'),vals,gdb.parse_and_eval('box'),chain)
end
continue
end
run
