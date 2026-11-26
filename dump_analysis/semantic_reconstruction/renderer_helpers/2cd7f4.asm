
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cd7f4 <.data+0x2cd7f4>:
  2cd7f4:	40 53                                           	rex push rbx
  2cd7f6:	48 83 ec 20                                     	sub    rsp,0x20
  2cd7fa:	8b 05 50 88 10 00                               	mov    eax,DWORD PTR [rip+0x108850]        # 0x3d6050
  2cd800:	48 8b d9                                        	mov    rbx,rcx
  2cd803:	a8 01                                           	test   al,0x1
  2cd805:	75 20                                           	jne    0x2cd827
  2cd807:	83 c8 01                                        	or     eax,0x1
  2cd80a:	89 05 40 88 10 00                               	mov    DWORD PTR [rip+0x108840],eax        # 0x3d6050
  2cd810:	e8 5f e9 ff ff                                  	call   0x2cc174
  2cd815:	4c 8b c0                                        	mov    r8,rax
  2cd818:	48 89 05 29 88 10 00                            	mov    QWORD PTR [rip+0x108829],rax        # 0x3d6048
  2cd81f:	8b 05 2b 88 10 00                               	mov    eax,DWORD PTR [rip+0x10882b]        # 0x3d6050
  2cd825:	eb 07                                           	jmp    0x2cd82e
  2cd827:	4c 8b 05 1a 88 10 00                            	mov    r8,QWORD PTR [rip+0x10881a]        # 0x3d6048
  2cd82e:	a8 02                                           	test   al,0x2
  2cd830:	75 1f                                           	jne    0x2cd851
  2cd832:	48 8b 0d 27 86 10 00                            	mov    rcx,QWORD PTR [rip+0x108627]        # 0x3d5e60
  2cd839:	48 8d 15 20 88 10 00                            	lea    rdx,[rip+0x108820]        # 0x3d6060
  2cd840:	83 c8 02                                        	or     eax,0x2
  2cd843:	45 33 c9                                        	xor    r9d,r9d
  2cd846:	89 05 04 88 10 00                               	mov    DWORD PTR [rip+0x108804],eax        # 0x3d6050
  2cd84c:	e8 d3 e4 ff ff                                  	call   0x2cbd24
  2cd851:	48 8b 0d 08 86 10 00                            	mov    rcx,QWORD PTR [rip+0x108608]        # 0x3d5e60
  2cd858:	48 8d 15 01 88 10 00                            	lea    rdx,[rip+0x108801]        # 0x3d6060
  2cd85f:	4c 8b c3                                        	mov    r8,rbx
  2cd862:	48 83 c4 20                                     	add    rsp,0x20
  2cd866:	5b                                              	pop    rbx
  2cd867:	e9 90 e1 ff ff                                  	jmp    0x2cb9fc
