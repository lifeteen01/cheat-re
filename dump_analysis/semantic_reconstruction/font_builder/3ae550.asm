
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae550 <.data+0x3ae550>:
  3ae550:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3ae555:	57                                              	push   rdi
  3ae556:	48 83 ec 20                                     	sub    rsp,0x20
  3ae55a:	48 8b 79 08                                     	mov    rdi,QWORD PTR [rcx+0x8]
  3ae55e:	4c 8b d1                                        	mov    r10,rcx
  3ae561:	48 63 49 24                                     	movsxd rcx,DWORD PTR [rcx+0x24]
  3ae565:	44 8b da                                        	mov    r11d,edx
  3ae568:	48 83 c1 22                                     	add    rcx,0x22
  3ae56c:	48 03 cf                                        	add    rcx,rdi
  3ae56f:	e8 20 f8 ff ff                                  	call   0x3add94
  3ae574:	0f b7 d8                                        	movzx  ebx,ax
  3ae577:	3b d3                                           	cmp    edx,ebx
  3ae579:	7d 3d                                           	jge    0x3ae5b8
  3ae57b:	8d 14 95 00 00 00 00                            	lea    edx,[rdx*4+0x0]
  3ae582:	4d 85 c0                                        	test   r8,r8
  3ae585:	74 18                                           	je     0x3ae59f
  3ae587:	49 63 42 28                                     	movsxd rax,DWORD PTR [r10+0x28]
  3ae58b:	48 03 c7                                        	add    rax,rdi
  3ae58e:	48 63 ca                                        	movsxd rcx,edx
  3ae591:	48 03 c8                                        	add    rcx,rax
  3ae594:	e8 fb f7 ff ff                                  	call   0x3add94
  3ae599:	0f bf c8                                        	movsx  ecx,ax
  3ae59c:	41 89 08                                        	mov    DWORD PTR [r8],ecx
  3ae59f:	4d 85 c9                                        	test   r9,r9
  3ae5a2:	74 62                                           	je     0x3ae606
  3ae5a4:	49 63 4a 28                                     	movsxd rcx,DWORD PTR [r10+0x28]
  3ae5a8:	49 03 4a 08                                     	add    rcx,QWORD PTR [r10+0x8]
  3ae5ac:	48 63 c2                                        	movsxd rax,edx
  3ae5af:	48 83 c8 02                                     	or     rax,0x2
  3ae5b3:	48 03 c8                                        	add    rcx,rax
  3ae5b6:	eb 43                                           	jmp    0x3ae5fb
  3ae5b8:	8d 14 9d 00 00 00 00                            	lea    edx,[rbx*4+0x0]
  3ae5bf:	4d 85 c0                                        	test   r8,r8
  3ae5c2:	74 1b                                           	je     0x3ae5df
  3ae5c4:	49 63 4a 28                                     	movsxd rcx,DWORD PTR [r10+0x28]
  3ae5c8:	48 83 c1 fc                                     	add    rcx,0xfffffffffffffffc
  3ae5cc:	8b c2                                           	mov    eax,edx
  3ae5ce:	48 03                                         	add    rax,rdi
