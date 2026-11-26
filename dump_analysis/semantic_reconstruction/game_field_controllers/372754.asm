
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372754 <.data+0x372754>:
  372754:	40 53                                           	rex push rbx
  372756:	48 83 ec 20                                     	sub    rsp,0x20
  37275a:	48 8b d9                                        	mov    rbx,rcx
  37275d:	e8 a6 87 f5 ff                                  	call   0x2caf08
  372762:	84 c0                                           	test   al,al
  372764:	75 08                                           	jne    0x37276e
  372766:	33 c0                                           	xor    eax,eax
  372768:	48 83 c4 20                                     	add    rsp,0x20
  37276c:	5b                                              	pop    rbx
  37276d:	c3                                              	ret
  37276e:	8b 0d bc e5 08 00                               	mov    ecx,DWORD PTR [rip+0x8e5bc]        # 0x400d30
  372774:	f6 c1 01                                        	test   cl,0x1
  372777:	75 20                                           	jne    0x372799
  372779:	4c 8b 05 80 47 06 00                            	mov    r8,QWORD PTR [rip+0x64780]        # 0x3d6f00
  372780:	83 c9 01                                        	or     ecx,0x1
  372783:	49 81 c0 b0 a6 14 05                            	add    r8,0x514a6b0
  37278a:	89 0d a0 e5 08 00                               	mov    DWORD PTR [rip+0x8e5a0],ecx        # 0x400d30
  372790:	4c 89 05 91 e5 08 00                            	mov    QWORD PTR [rip+0x8e591],r8        # 0x400d28
  372797:	eb 07                                           	jmp    0x3727a0
  372799:	4c 8b 05 88 e5 08 00                            	mov    r8,QWORD PTR [rip+0x8e588]        # 0x400d28
  3727a0:	f6 c1 02                                        	test   cl,0x2
  3727a3:	75 1f                                           	jne    0x3727c4
  3727a5:	83 c9 02                                        	or     ecx,0x2
  3727a8:	48 8d 15 91 e5 08 00                            	lea    rdx,[rip+0x8e591]        # 0x400d40
  3727af:	89 0d 7b e5 08 00                               	mov    DWORD PTR [rip+0x8e57b],ecx        # 0x400d30
  3727b5:	45 33 c9                                        	xor    r9d,r9d
  3727b8:	48 8b 0d a1 36 06 00                            	mov    rcx,QWORD PTR [rip+0x636a1]        # 0x3d5e60
  3727bf:	e8 60 95 f5 ff                                  	call   0x2cbd24
  3727c4:	48 8b 0d 95 36 06 00                            	mov    rcx,QWORD PTR [rip+0x63695]        # 0x3d5e60
  3727cb:	48 8d 15 6e e5 08 00                            	lea    rdx,[rip+0x8e56e]        # 0x400d40
  3727d2:	4c 8b c3                                        	mov    r8,rbx
  3727d5:	48 83 c4 20                                     	add    rsp,0x20
  3727d9:	5b                                              	pop    rbx
  3727da:	e9 1d 92 f5 ff                                  	jmp    0x2cb9fc
