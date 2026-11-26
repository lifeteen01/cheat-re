
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a37c8 <.data+0x3a37c8>:
  3a37c8:	40 53                                           	rex push rbx
  3a37ca:	55                                              	push   rbp
  3a37cb:	56                                              	push   rsi
  3a37cc:	57                                              	push   rdi
  3a37cd:	48 83 ec 28                                     	sub    rsp,0x28
  3a37d1:	0f b7 42 06                                     	movzx  eax,WORD PTR [rdx+0x6]
  3a37d5:	48 8b f1                                        	mov    rsi,rcx
  3a37d8:	49 8b e9                                        	mov    rbp,r9
  3a37db:	49 8b d8                                        	mov    rbx,r8
  3a37de:	48 8b fa                                        	mov    rdi,rdx
  3a37e1:	66 0f 6e d0                                     	movd   xmm2,eax
  3a37e5:	0f b7 42 04                                     	movzx  eax,WORD PTR [rdx+0x4]
  3a37e9:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a37ec:	66 0f 6e c8                                     	movd   xmm1,eax
  3a37f0:	f3 0f 59 51 4c                                  	mulss  xmm2,DWORD PTR [rcx+0x4c]
  3a37f5:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a37f8:	f3 0f 59 49 48                                  	mulss  xmm1,DWORD PTR [rcx+0x48]
  3a37fd:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a3802:	e8 39 8b f2 ff                                  	call   0x2cc340
  3a3807:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a380b:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  3a380f:	0f b7 47 02                                     	movzx  eax,WORD PTR [rdi+0x2]
  3a3813:	0f b7 4f 06                                     	movzx  ecx,WORD PTR [rdi+0x6]
  3a3817:	03 c8                                           	add    ecx,eax
  3a3819:	0f b7 07                                        	movzx  eax,WORD PTR [rdi]
  3a381c:	66 0f 6e d1                                     	movd   xmm2,ecx
  3a3820:	0f b7 4f 04                                     	movzx  ecx,WORD PTR [rdi+0x4]
  3a3824:	03 c8                                           	add    ecx,eax
  3a3826:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a3829:	66 0f 6e c9                                     	movd   xmm1,ecx
  3a382d:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a3832:	f3 0f 59 56 4c                                  	mulss  xmm2,DWORD PTR [rsi+0x4c]
  3a3837:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a383a:	f3 0f 59 4e 48                                  	mulss  xmm1,DWORD PTR [rsi+0x48]
  3a383f:	e8 fc 8a f2 ff                                  	call   0x2cc340
  3a3844:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a3848:	f2 0f 11 45 00                                  	movsd  QWORD PTR [rbp+0x0],xmm0
  3a384d:	48 83 c4 28                                     	add    rsp,0x28
  3a3851:	5f                                              	pop    rdi
  3a3852:	5e                                              	pop    rsi
  3a3853:	5d                                              	pop    rbp
  3a3854:	5b                                              	pop    rbx
  3a3855:	c3                                              	ret
