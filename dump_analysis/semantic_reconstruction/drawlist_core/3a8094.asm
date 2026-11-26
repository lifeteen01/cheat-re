
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8094 <.data+0x3a8094>:
  3a8094:	40 53                                           	rex push rbx
  3a8096:	48 83 ec 20                                     	sub    rsp,0x20
  3a809a:	4d 63 d0                                        	movsxd r10,r8d
  3a809d:	48 8b da                                        	mov    rbx,rdx
  3a80a0:	48 8b d1                                        	mov    rdx,rcx
  3a80a3:	44 39 11                                        	cmp    DWORD PTR [rcx],r10d
  3a80a6:	0f 84 ab 00 00 00                               	je     0x3a8157
  3a80ac:	4c 63 09                                        	movsxd r9,DWORD PTR [rcx]
  3a80af:	48 8b 41 10                                     	mov    rax,QWORD PTR [rcx+0x10]
  3a80b3:	0f 10 03                                        	movups xmm0,XMMWORD PTR [rbx]
  3a80b6:	49 c1 e1 05                                     	shl    r9,0x5
  3a80ba:	f3 41 0f 7f 04 01                               	movdqu XMMWORD PTR [r9+rax*1],xmm0
  3a80c0:	4c 63 01                                        	movsxd r8,DWORD PTR [rcx]
  3a80c3:	48 8b 41 10                                     	mov    rax,QWORD PTR [rcx+0x10]
  3a80c7:	0f 10 43 10                                     	movups xmm0,XMMWORD PTR [rbx+0x10]
  3a80cb:	49 c1 e0 05                                     	shl    r8,0x5
  3a80cf:	f3 41 0f 7f 44 00 10                            	movdqu XMMWORD PTR [r8+rax*1+0x10],xmm0
  3a80d6:	48 8b 42 10                                     	mov    rax,QWORD PTR [rdx+0x10]
  3a80da:	44 89 11                                        	mov    DWORD PTR [rcx],r10d
  3a80dd:	49 8b ca                                        	mov    rcx,r10
  3a80e0:	48 c1 e1 05                                     	shl    rcx,0x5
  3a80e4:	0f 10 04 01                                     	movups xmm0,XMMWORD PTR [rcx+rax*1]
  3a80e8:	f3 0f 7f 03                                     	movdqu XMMWORD PTR [rbx],xmm0
  3a80ec:	83 3b 00                                        	cmp    DWORD PTR [rbx],0x0
  3a80ef:	48 8b 42 10                                     	mov    rax,QWORD PTR [rdx+0x10]
  3a80f3:	0f 10 4c 01 10                                  	movups xmm1,XMMWORD PTR [rcx+rax*1+0x10]
  3a80f8:	f3 0f 7f 4b 10                                  	movdqu XMMWORD PTR [rbx+0x10],xmm1
  3a80fd:	48 63 4b 10                                     	movsxd rcx,DWORD PTR [rbx+0x10]
  3a8101:	48 8b 43 18                                     	mov    rax,QWORD PTR [rbx+0x18]
  3a8105:	48 8d 0c 48                                     	lea    rcx,[rax+rcx*2]
  3a8109:	48 89 4b 50                                     	mov    QWORD PTR [rbx+0x50],rcx
  3a810d:	74 40                                           	je     0x3a814f
  3a810f:	48 63 03                                        	movsxd rax,DWORD PTR [rbx]
  3a8112:	48 ff c8                                        	dec    rax
  3a8115:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a8119:	48 03 4b 08                                     	add    rcx,QWORD PTR [rbx+0x8]
  3a811d:	74 30                                           	je     0x3a814f
  3a811f:	83 79 20 00                                     	cmp    DWORD PTR [rcx+0x20],0x0
  3a8123:	48 8d 93 88 00 00 00                            	lea    rdx,[rbx+0x88]
  3a812a:	75 14                                           	jne    0x3a8140
  3a812c:	0f 10 02                                        	movups xmm0,XMMWORD PTR [rdx]
  3a812f:	0f 11 01                                        	movups XMMWORD PTR [rcx],xmm0
  3a8132:	0f 10 4a 0c                                     	movups xmm1,XMMWORD PTR [rdx+0xc]
  3a8136:	0f 11 49 0c                                     	movups XMMWORD PTR [rcx+0xc],xmm1
  3a813a:	48 83 c4 20                                     	add    rsp,0x20
  3a813e:	5b                                              	pop    rbx
  3a813f:	c3                                              	ret
  3a8140:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a8146:	e8 c9 0b 02 00                                  	call   0x3c8d14
  3a814b:	85 c0                                           	test   eax,eax
  3a814d:	74 08                                           	je     0x3a8157
  3a814f:	48 8b cb                                        	mov    rcx,rbx
  3a8152:	e8 c1 7b ff ff                                  	call   0x39fd18
  3a8157:	48 83 c4 20                                     	add    rsp,0x20
  3a815b:	5b                                              	pop    rbx
  3a815c:	c3                                              	ret
