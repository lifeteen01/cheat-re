
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392614 <.data+0x392614>:
  392614:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  392619:	57                                              	push   rdi
  39261a:	48 83 ec 20                                     	sub    rsp,0x20
  39261e:	48 81 c1 f0 00 00 00                            	add    rcx,0xf0
  392625:	49 8b d8                                        	mov    rbx,r8
  392628:	48 8b fa                                        	mov    rdi,rdx
  39262b:	e8 d4 bc 00 00                                  	call   0x39e304
  392630:	48 8b cb                                        	mov    rcx,rbx
  392633:	48 2b cf                                        	sub    rcx,rdi
  392636:	48 f7 db                                        	neg    rbx
  392639:	44 8b 00                                        	mov    r8d,DWORD PTR [rax]
  39263c:	48 1b d2                                        	sbb    rdx,rdx
  39263f:	48 23 d1                                        	and    rdx,rcx
  392642:	48 8b cf                                        	mov    rcx,rdi
  392645:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39264a:	48 83 c4 20                                     	add    rsp,0x20
  39264e:	5f                                              	pop    rdi
  39264f:	e9 f8 0c 00 00                                  	jmp    0x39334c
