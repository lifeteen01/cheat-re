set debuginfod enabled off
set pagination off
break owned_scene::InternalMenu::State::bootstrap
run
python
s=gdb.parse_and_eval('this').dereference()
it=iter(gdb.default_visualizer(s['config']['values']).children())
for (_,key),(_,value) in zip(it,it):
 if int(key)==0x3fd7bc:
  print('scale initial',value)
  gdb.execute('watch *(unsigned int*)'+str(int(value.address)))
end
continue
bt
