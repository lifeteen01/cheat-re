
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372184 <.data+0x372184>:
  372184:	48 83 ec 28                                     	sub    rsp,0x28
  372188:	4c 8b c1                                        	mov    r8,rcx
  37218b:	e8 78 8d f5 ff                                  	call   0x2caf08
  372190:	84 c0                                           	test   al,al
  372192:	74 1b                                           	je     0x3721af
  372194:	ba d8 00 00 00                                  	mov    edx,0xd8
  372199:	49 8b c8                                        	mov    rcx,r8
  37219c:	e8 9b cc f6 ff                                  	call   0x2dee3c
  3721a1:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3721a5:	0f 2f 05 a0 b0 f1 ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffff1b0a0]        # 0x28d24c
  3721ac:	0f 97 c0                                        	seta   al
  3721af:	48 83 c4 28                                     	add    rsp,0x28
  3721b3:	c3                                              	ret
