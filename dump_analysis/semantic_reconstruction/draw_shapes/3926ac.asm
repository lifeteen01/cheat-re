
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003926ac <.data+0x3926ac>:
  3926ac:	48 8b 05 75 34 07 00                            	mov    rax,QWORD PTR [rip+0x73475]        # 0x405b28
  3926b3:	48 83 c0 08                                     	add    rax,0x8
  3926b7:	c3                                              	ret
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
  3926eb:	83                                          	cmp    ecx,0xffffffff
