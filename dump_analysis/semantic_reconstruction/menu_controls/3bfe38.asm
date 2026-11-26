
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bfe38 <.data+0x3bfe38>:
  3bfe38:	48 63 c1                                        	movsxd rax,ecx
  3bfe3b:	48 8d 0d 1e fc eb ff                            	lea    rcx,[rip+0xffffffffffebfc1e]        # 0x27fa60
  3bfe42:	48 c1 e0 05                                     	shl    rax,0x5
  3bfe46:	48 03 c1                                        	add    rax,rcx
  3bfe49:	c3                                              	ret
