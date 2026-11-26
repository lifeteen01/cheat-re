
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e91fc <.data+0x2e91fc>:
  2e91fc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e9201:	57                                              	push   rdi
  2e9202:	48 83 ec 20                                     	sub    rsp,0x20
  2e9206:	48 8b f9                                        	mov    rdi,rcx
  2e9209:	e8 3e cb ff ff                                  	call   0x2e5d4c
  2e920e:	39 05 b4 c9 0f 00                               	cmp    DWORD PTR [rip+0xfc9b4],eax        # 0x3e5bc8
  2e9214:	8b d8                                           	mov    ebx,eax
  2e9216:	74 05                                           	je     0x2e921d
  2e9218:	e8 03 d9 ff ff                                  	call   0x2e6b20
  2e921d:	80 3d 2c b0 0f 00 00                            	cmp    BYTE PTR [rip+0xfb02c],0x0        # 0x3e4250
  2e9224:	89 1d 9e c9 0f 00                               	mov    DWORD PTR [rip+0xfc99e],ebx        # 0x3e5bc8
  2e922a:	74 0a                                           	je     0x2e9236
  2e922c:	f3 0f 10 05 20 40 fa ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffffa4020]        # 0x28d254
  2e9234:	eb 6d                                           	jmp    0x2e92a3
  2e9236:	8b 1d 9c c9 0f 00                               	mov    ebx,DWORD PTR [rip+0xfc99c]        # 0x3e5bd8
  2e923c:	f6 c3 01                                        	test   bl,0x1
  2e923f:	75 1e                                           	jne    0x2e925f
  2e9241:	83 cb 01                                        	or     ebx,0x1
  2e9244:	48 8d 0d 9d bb 0f 00                            	lea    rcx,[rip+0xfbb9d]        # 0x3e4de8
  2e924b:	89 1d 87 c9 0f 00                               	mov    DWORD PTR [rip+0xfc987],ebx        # 0x3e5bd8
  2e9251:	e8 82 53 fe ff                                  	call   0x2ce5d8
  2e9256:	48 89 05 73 c9 0f 00                            	mov    QWORD PTR [rip+0xfc973],rax        # 0x3e5bd0
  2e925d:	eb 07                                           	jmp    0x2e9266
  2e925f:	48 8b 05 6a c9 0f 00                            	mov    rax,QWORD PTR [rip+0xfc96a]        # 0x3e5bd0
  2e9266:	f6 c3 02                                        	test   bl,0x2
  2e9269:	75 22                                           	jne    0x2e928d
  2e926b:	48 8b 0d ee cb 0e 00                            	mov    rcx,QWORD PTR [rip+0xecbee]        # 0x3d5e60
  2e9272:	48 8d 15 67 c9 0f 00                            	lea    rdx,[rip+0xfc967]        # 0x3e5be0
  2e9279:	83 cb 02                                        	or     ebx,0x2
  2e927c:	45 33 c9                                        	xor    r9d,r9d
  2e927f:	4c 8b c0                                        	mov    r8,rax
  2e9282:	89 1d 50 c9 0f 00                               	mov    DWORD PTR [rip+0xfc950],ebx        # 0x3e5bd8
  2e9288:	e8 97 2a fe ff                                  	call   0x2cbd24
  2e928d:	48 8b 0d cc cb 0e 00                            	mov    rcx,QWORD PTR [rip+0xecbcc]        # 0x3d5e60
  2e9294:	48 8d 15 45 c9 0f 00                            	lea    rdx,[rip+0xfc945]        # 0x3e5be0
  2e929b:	4c 8b c7                                        	mov    r8,rdi
  2e929e:	e8 a9 57 ff ff                                  	call   0x2dea4c
  2e92a3:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e92a8:	48 83 c4 20                                     	add    rsp,0x20
  2e92ac:	5f                                              	pop    rdi
  2e92ad:	c3                                              	ret
