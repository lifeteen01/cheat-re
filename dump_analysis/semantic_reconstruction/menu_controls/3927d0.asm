
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003927d0 <.data+0x3927d0>:
  3927d0:	48 83 ec 48                                     	sub    rsp,0x48
  3927d4:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  3927d9:	0f 28 f2                                        	movaps xmm6,xmm2
  3927dc:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm7
  3927e1:	0f 28 f9                                        	movaps xmm7,xmm1
  3927e4:	e8 2b ff ff ff                                  	call   0x392714
  3927e9:	48 8b c8                                        	mov    rcx,rax
  3927ec:	80 38 00                                        	cmp    BYTE PTR [rax],0x0
  3927ef:	75 04                                           	jne    0x3927f5
  3927f1:	33 c0                                           	xor    eax,eax
  3927f3:	eb 21                                           	jmp    0x392816
  3927f5:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [rax+0x4]
  3927fa:	0f 28 de                                        	movaps xmm3,xmm6
  3927fd:	48 8b 05 24 33 07 00                            	mov    rax,QWORD PTR [rip+0x73324]        # 0x405b28
  392804:	0f 28 d7                                        	movaps xmm2,xmm7
  392807:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [rcx+0x4]
  39280c:	f3 0f 5c 40 18                                  	subss  xmm0,DWORD PTR [rax+0x18]
  392811:	e8 46 d0 ff ff                                  	call   0x38f85c
  392816:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  39281b:	0f 28 7c 24 20                                  	movaps xmm7,XMMWORD PTR [rsp+0x20]
  392820:	48 83 c4 48                                     	add    rsp,0x48
  392824:	c3                                              	ret
