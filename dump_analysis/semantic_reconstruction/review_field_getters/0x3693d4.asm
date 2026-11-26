
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003693d4 <.data+0x3693d4>:
  3693d4:	48 83 ec 28                                     	sub    rsp,0x28
  3693d8:	4c 8b c1                                        	mov    r8,rcx
  3693db:	e8 28 1b f6 ff                                  	call   0x2caf08
  3693e0:	84 c0                                           	test   al,al
  3693e2:	75 05                                           	jne    0x3693e9
  3693e4:	0f 57 c0                                        	xorps  xmm0,xmm0
  3693e7:	eb 11                                           	jmp    0x3693fa
  3693e9:	ba d0 02 00 00                                  	mov    edx,0x2d0
  3693ee:	49 8b c8                                        	mov    rcx,r8
  3693f1:	e8 46 5a f7 ff                                  	call   0x2dee3c
  3693f6:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3693fa:	48 83 c4 28                                     	add    rsp,0x28
  3693fe:	c3                                              	ret
