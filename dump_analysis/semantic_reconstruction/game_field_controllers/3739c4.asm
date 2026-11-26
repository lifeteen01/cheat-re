
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003739c4 <.data+0x3739c4>:
  3739c4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3739c9:	57                                              	push   rdi
  3739ca:	48 83 ec 30                                     	sub    rsp,0x30
  3739ce:	48 8b da                                        	mov    rbx,rdx
  3739d1:	48 8b f9                                        	mov    rdi,rcx
  3739d4:	e8 2f 75 f5 ff                                  	call   0x2caf08
  3739d9:	84 c0                                           	test   al,al
  3739db:	74 7a                                           	je     0x373a57
  3739dd:	8b 0d 8d de 08 00                               	mov    ecx,DWORD PTR [rip+0x8de8d]        # 0x401870
  3739e3:	f6 c1 01                                        	test   cl,0x1
  3739e6:	75 20                                           	jne    0x373a08
  3739e8:	4c 8b 05 11 35 06 00                            	mov    r8,QWORD PTR [rip+0x63511]        # 0x3d6f00
  3739ef:	83 c9 01                                        	or     ecx,0x1
  3739f2:	49 81 c0 50 db 9e 01                            	add    r8,0x19edb50
  3739f9:	89 0d 71 de 08 00                               	mov    DWORD PTR [rip+0x8de71],ecx        # 0x401870
  3739ff:	4c 89 05 62 de 08 00                            	mov    QWORD PTR [rip+0x8de62],r8        # 0x401868
  373a06:	eb 07                                           	jmp    0x373a0f
  373a08:	4c 8b 05 59 de 08 00                            	mov    r8,QWORD PTR [rip+0x8de59]        # 0x401868
  373a0f:	f6 c1 02                                        	test   cl,0x2
  373a12:	75 1f                                           	jne    0x373a33
  373a14:	83 c9 02                                        	or     ecx,0x2
  373a17:	48 8d 15 62 de 08 00                            	lea    rdx,[rip+0x8de62]        # 0x401880
  373a1e:	89 0d 4c de 08 00                               	mov    DWORD PTR [rip+0x8de4c],ecx        # 0x401870
  373a24:	45 33 c9                                        	xor    r9d,r9d
  373a27:	48 8b 0d 32 24 06 00                            	mov    rcx,QWORD PTR [rip+0x62432]        # 0x3d5e60
  373a2e:	e8 f1 82 f5 ff                                  	call   0x2cbd24
  373a33:	48 8b 0d 26 24 06 00                            	mov    rcx,QWORD PTR [rip+0x62426]        # 0x3d5e60
  373a3a:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  373a3f:	4c 8b cf                                        	mov    r9,rdi
  373a42:	48 8d 15 37 de 08 00                            	lea    rdx,[rip+0x8de37]        # 0x401880
  373a49:	e8 46 e6 f5 ff                                  	call   0x2d2094
  373a4e:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  373a53:	f3 0f 7f 03                                     	movdqu XMMWORD PTR [rbx],xmm0
  373a57:	48 8b c3                                        	mov    rax,rbx
  373a5a:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  373a5f:	48 83 c4 30                                     	add    rsp,0x30
  373a63:	5f                                              	pop    rdi
  373a64:	c3                                              	ret
