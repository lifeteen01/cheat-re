
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003926b8 <.data+0x3926b8>:
  3926b8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3926bd:	57                                              	push   rdi
  3926be:	48 83 ec 20                                     	sub    rsp,0x20
  3926c2:	8b da                                           	mov    ebx,edx
  3926c4:	48 8b f9                                        	mov    rdi,rcx
  3926c7:	f7 c2 00 f8 00 00                               	test   edx,0xf800
  3926cd:	74 07                                           	je     0x3926d6
  3926cf:	e8 3c e1 ff ff                                  	call   0x390810
  3926d4:	8b d8                                           	mov    ebx,eax
  3926d6:	8b cb                                           	mov    ecx,ebx
  3926d8:	e8 77 1c 00 00                                  	call   0x394354
  3926dd:	84 c0                                           	test   al,al
  3926df:	74 12                                           	je     0x3926f3
  3926e1:	48 63 c3                                        	movsxd rax,ebx
  3926e4:	8b 8c 87 00 01 00 00                            	mov    ecx,DWORD PTR [rdi+rax*4+0x100]
  3926eb:	83 f9 ff                                        	cmp    ecx,0xffffffff
  3926ee:	0f 44 cb                                        	cmove  ecx,ebx
  3926f1:	eb 02                                           	jmp    0x3926f5
  3926f3:	8b cb                                           	mov    ecx,ebx
  3926f5:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3926fa:	48 81 c7 2c 0e 00 00                            	add    rdi,0xe2c
  392701:	48 63 c1                                        	movsxd rax,ecx
  392704:	48 c1 e0 04                                     	shl    rax,0x4
  392708:	48 03 c7                                        	add    rax,rdi
  39270b:	48 83 c4 20                                     	add    rsp,0x20
  39270f:	5f                                              	pop    rdi
  392710:	c3                                              	ret
