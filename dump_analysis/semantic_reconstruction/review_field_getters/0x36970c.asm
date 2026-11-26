
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036970c <.data+0x36970c>:
  36970c:	48 83 ec 28                                     	sub    rsp,0x28
  369710:	4c 8b c1                                        	mov    r8,rcx
  369713:	e8 f0 17 f6 ff                                  	call   0x2caf08
  369718:	84 c0                                           	test   al,al
  36971a:	75 05                                           	jne    0x369721
  36971c:	0f 57 c0                                        	xorps  xmm0,xmm0
  36971f:	eb 11                                           	jmp    0x369732
  369721:	ba cc 02 00 00                                  	mov    edx,0x2cc
  369726:	49 8b c8                                        	mov    rcx,r8
  369729:	e8 0e 57 f7 ff                                  	call   0x2dee3c
  36972e:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  369732:	48 83 c4 28                                     	add    rsp,0x28
  369736:	c3                                              	ret
