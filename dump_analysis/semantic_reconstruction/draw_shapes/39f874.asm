
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f874 <.data+0x39f874>:
  39f874:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  39f87b:	0f 84 a4 00 00 00                               	je     0x39f925
  39f881:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39f886:	57                                              	push   rdi
  39f887:	48 83 ec 30                                     	sub    rsp,0x30
  39f88b:	f3 0f 10 05 bd d9 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeed9bd]        # 0x28d250
  39f893:	41 8b f9                                        	mov    edi,r9d
  39f896:	0f 2f c2                                        	comiss xmm0,xmm2
  39f899:	4c 8b d2                                        	mov    r10,rdx
  39f89c:	48 8b d9                                        	mov    rbx,rcx
  39f89f:	77 7a                                           	ja     0x39f91b
  39f8a1:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [rsp+0x60]
  39f8a5:	85 c9                                           	test   ecx,ecx
  39f8a7:	7f 20                                           	jg     0x39f8c9
  39f8a9:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  39f8b1:	45 33 c9                                        	xor    r9d,r9d
  39f8b4:	48 8b cb                                        	mov    rcx,rbx
  39f8b7:	c7 44 24 20 30 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x30
  39f8bf:	e8 28 96 00 00                                  	call   0x3a8eec
  39f8c4:	ff 4b 78                                        	dec    DWORD PTR [rbx+0x78]
  39f8c7:	eb 48                                           	jmp    0x39f911
  39f8c9:	ba 03 00 00 00                                  	mov    edx,0x3
  39f8ce:	41 b8 00 02 00 00                               	mov    r8d,0x200
  39f8d4:	e8 d3 69 fd ff                                  	call   0x3762ac
  39f8d9:	0f 57 db                                        	xorps  xmm3,xmm3
  39f8dc:	49 8b d2                                        	mov    rdx,r10
  39f8df:	48 8b cb                                        	mov    rcx,rbx
  39f8e2:	66 0f 6e c0                                     	movd   xmm0,eax
  39f8e6:	ff c8                                           	dec    eax
  39f8e8:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  39f8eb:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  39f8ef:	0f 28 c8                                        	movaps xmm1,xmm0
  39f8f2:	f3 0f 5c 0d 5a d9 ee ff                         	subss  xmm1,DWORD PTR [rip+0xffffffffffeed95a]        # 0x28d254
  39f8fa:	f3 0f 59 0d e6 d5 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0d5e6]        # 0x2acee8
  39f902:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  39f906:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  39f90c:	e8 3b 6f 00 00                                  	call   0x3a684c
  39f911:	8b d7                                           	mov    edx,edi
  39f913:	48 8b cb                                        	mov    rcx,rbx
  39f916:	e8 f9 90 fd ff                                  	call   0x378a14
  39f91b:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  39f920:	48 83 c4 30                                     	add    rsp,0x30
  39f924:	5f                                              	pop    rdi
  39f925:	c3                                              	ret
