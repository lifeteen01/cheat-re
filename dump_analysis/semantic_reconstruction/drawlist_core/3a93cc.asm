
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a93cc <.data+0x3a93cc>:
  3a93cc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a93d1:	57                                              	push   rdi
  3a93d2:	48 83 ec 20                                     	sub    rsp,0x20
  3a93d6:	4c 8b 41 08                                     	mov    r8,QWORD PTR [rcx+0x8]
  3a93da:	48 8b f9                                        	mov    rdi,rcx
  3a93dd:	49 2b d0                                        	sub    rdx,r8
  3a93e0:	48 b8 25 49 92 24 49 92 24 49                   	movabs rax,0x4924924924924925
  3a93ea:	48 f7 ea                                        	imul   rdx
  3a93ed:	48 c1 fa 04                                     	sar    rdx,0x4
  3a93f1:	48 8b c2                                        	mov    rax,rdx
  3a93f4:	48 c1 e8 3f                                     	shr    rax,0x3f
  3a93f8:	48 03 d0                                        	add    rdx,rax
  3a93fb:	48 63 07                                        	movsxd rax,DWORD PTR [rdi]
  3a93fe:	48 6b da 38                                     	imul   rbx,rdx,0x38
  3a9402:	48 2b c2                                        	sub    rax,rdx
  3a9405:	49 8d 0c 18                                     	lea    rcx,[r8+rbx*1]
  3a9409:	4c 6b c0 38                                     	imul   r8,rax,0x38
  3a940d:	48 8d 51 38                                     	lea    rdx,[rcx+0x38]
  3a9411:	49 83 e8 38                                     	sub    r8,0x38
  3a9415:	e8 32 f9 01 00                                  	call   0x3c8d4c
  3a941a:	48 8b 47 08                                     	mov    rax,QWORD PTR [rdi+0x8]
  3a941e:	ff 0f                                           	dec    DWORD PTR [rdi]
  3a9420:	48 03 c3                                        	add    rax,rbx
  3a9423:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a9428:	48 83 c4 20                                     	add    rsp,0x20
  3a942c:	5f                                              	pop    rdi
  3a942d:	c3                                              	ret
