
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039290c <.data+0x39290c>:
  39290c:	48 8b c4                                        	mov    rax,rsp
  39290f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  392913:	57                                              	push   rdi
  392914:	48 83 ec 30                                     	sub    rsp,0x30
  392918:	8b f9                                           	mov    edi,ecx
  39291a:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  39291e:	b9 08 00 00 00                                  	mov    ecx,0x8
  392923:	4c 8d 40 10                                     	lea    r8,[rax+0x10]
  392927:	48 8d 50 18                                     	lea    rdx,[rax+0x18]
  39292b:	e8 24 04 00 00                                  	call   0x392d54
  392930:	48 8b 05 f1 31 07 00                            	mov    rax,QWORD PTR [rip+0x731f1]        # 0x405b28
  392937:	83 b8 1c 49 00 00 03                            	cmp    DWORD PTR [rax+0x491c],0x3
  39293e:	8b c7                                           	mov    eax,edi
  392940:	75 1c                                           	jne    0x39295e
  392942:	f7 d8                                           	neg    eax
  392944:	1b db                                           	sbb    ebx,ebx
  392946:	83 e3 02                                        	and    ebx,0x2
  392949:	81 c3 6f 02 00 00                               	add    ebx,0x26f
  39294f:	f7 df                                           	neg    edi
  392951:	1b ff                                           	sbb    edi,edi
  392953:	83 e7 02                                        	and    edi,0x2
  392956:	81 c7 70 02 00 00                               	add    edi,0x270
  39295c:	eb 1a                                           	jmp    0x392978
  39295e:	f7 d8                                           	neg    eax
  392960:	1b db                                           	sbb    ebx,ebx
  392962:	83 e3 02                                        	and    ebx,0x2
  392965:	81 c3 01 02 00 00                               	add    ebx,0x201
  39296b:	f7 df                                           	neg    edi
  39296d:	1b ff                                           	sbb    edi,edi
  39296f:	83 e7 02                                        	and    edi,0x2
  392972:	81 c7 02 02 00 00                               	add    edi,0x202
  392978:	f3 0f 10 54 24 48                               	movss  xmm2,DWORD PTR [rsp+0x48]
  39297e:	8b cf                                           	mov    ecx,edi
  392980:	f3 0f 10 4c 24 50                               	movss  xmm1,DWORD PTR [rsp+0x50]
  392986:	e8 45 fe ff ff                                  	call   0x3927d0
  39298b:	f3 0f 10 54 24 48                               	movss  xmm2,DWORD PTR [rsp+0x48]
  392991:	8b cb                                           	mov    ecx,ebx
  392993:	f3 0f 10 4c 24 50                               	movss  xmm1,DWORD PTR [rsp+0x50]
  392999:	66 0f 6e f0                                     	movd   xmm6,eax
  39299d:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3929a0:	e8 2b fe ff ff                                  	call   0x3927d0
  3929a5:	66 0f 6e c0                                     	movd   xmm0,eax
  3929a9:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3929ac:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3929b0:	0f 2e 35 95 a8 ef ff                            	ucomiss xmm6,DWORD PTR [rip+0xffffffffffefa895]        # 0x28d24c
  3929b7:	7a 02                                           	jp     0x3929bb
  3929b9:	74 19                                           	je     0x3929d4
  3929bb:	8b cb                                           	mov    ecx,ebx
  3929bd:	e8 66 18 00 00                                  	call   0x394228
  3929c2:	84 c0                                           	test   al,al
  3929c4:	74 0e                                           	je     0x3929d4
  3929c6:	8b cf                                           	mov    ecx,edi
  3929c8:	e8 5b 18 00 00                                  	call   0x394228
  3929cd:	84 c0                                           	test   al,al
  3929cf:	74 03                                           	je     0x3929d4
  3929d1:	0f 57 f6                                        	xorps  xmm6,xmm6
  3929d4:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3929d9:	0f 28 c6                                        	movaps xmm0,xmm6
  3929dc:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3929e1:	48 83 c4 30                                     	add    rsp,0x30
  3929e5:	5f                                              	pop    rdi
  3929e6:	c3                                              	ret
