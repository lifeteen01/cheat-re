
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f7ac <.data+0x39f7ac>:
  39f7ac:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  39f7b3:	0f 84 b8 00 00 00                               	je     0x39f871
  39f7b9:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39f7be:	57                                              	push   rdi
  39f7bf:	48 83 ec 30                                     	sub    rsp,0x30
  39f7c3:	f3 0f 10 05 85 da ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeeda85]        # 0x28d250
  39f7cb:	41 8b f9                                        	mov    edi,r9d
  39f7ce:	0f 2f c2                                        	comiss xmm0,xmm2
  39f7d1:	4c 8b d2                                        	mov    r10,rdx
  39f7d4:	48 8b d9                                        	mov    rbx,rcx
  39f7d7:	0f 87 8a 00 00 00                               	ja     0x39f867
  39f7dd:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [rsp+0x60]
  39f7e1:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  39f7e5:	85 c9                                           	test   ecx,ecx
  39f7e7:	7f 20                                           	jg     0x39f809
  39f7e9:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  39f7f1:	45 33 c9                                        	xor    r9d,r9d
  39f7f4:	48 8b cb                                        	mov    rcx,rbx
  39f7f7:	c7 44 24 20 30 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x30
  39f7ff:	e8 e8 96 00 00                                  	call   0x3a8eec
  39f804:	ff 4b 78                                        	dec    DWORD PTR [rbx+0x78]
  39f807:	eb 48                                           	jmp    0x39f851
  39f809:	ba 03 00 00 00                                  	mov    edx,0x3
  39f80e:	41 b8 00 02 00 00                               	mov    r8d,0x200
  39f814:	e8 93 6a fd ff                                  	call   0x3762ac
  39f819:	0f 57 db                                        	xorps  xmm3,xmm3
  39f81c:	49 8b d2                                        	mov    rdx,r10
  39f81f:	48 8b cb                                        	mov    rcx,rbx
  39f822:	66 0f 6e c0                                     	movd   xmm0,eax
  39f826:	ff c8                                           	dec    eax
  39f828:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  39f82b:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  39f82f:	0f 28 c8                                        	movaps xmm1,xmm0
  39f832:	f3 0f 5c 0d 1a da ee ff                         	subss  xmm1,DWORD PTR [rip+0xffffffffffeeda1a]        # 0x28d254
  39f83a:	f3 0f 59 0d a6 d6 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0d6a6]        # 0x2acee8
  39f842:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  39f846:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  39f84c:	e8 fb 6f 00 00                                  	call   0x3a684c
  39f851:	f3 0f 10 5c 24 68                               	movss  xmm3,DWORD PTR [rsp+0x68]
  39f857:	41 b8 01 00 00 00                               	mov    r8d,0x1
  39f85d:	8b d7                                           	mov    edx,edi
  39f85f:	48 8b cb                                        	mov    rcx,rbx
  39f862:	e8 f1 8e ff ff                                  	call   0x398758
  39f867:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  39f86c:	48 83 c4 30                                     	add    rsp,0x30
  39f870:	5f                                              	pop    rdi
  39f871:	c3                                              	ret
