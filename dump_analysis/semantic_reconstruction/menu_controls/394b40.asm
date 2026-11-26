
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394b40 <.data+0x394b40>:
  394b40:	48 83 ec 28                                     	sub    rsp,0x28
  394b44:	4c 8b 05 dd 0f 07 00                            	mov    r8,QWORD PTR [rip+0x70fdd]        # 0x405b28
  394b4b:	45 33 d2                                        	xor    r10d,r10d
  394b4e:	0f 28 e9                                        	movaps xmm5,xmm1
  394b51:	4c 8b c9                                        	mov    r9,rcx
  394b54:	49 8b 90 08 3f 00 00                            	mov    rdx,QWORD PTR [r8+0x3f08]
  394b5b:	44 38 92 bb 00 00 00                            	cmp    BYTE PTR [rdx+0xbb],r10b
  394b62:	0f 85 47 01 00 00                               	jne    0x394caf
  394b68:	0f 2f 2d dd 86 ef ff                            	comiss xmm5,DWORD PTR [rip+0xffffffffffef86dd]        # 0x28d24c
  394b6f:	0f 57 c0                                        	xorps  xmm0,xmm0
  394b72:	72 11                                           	jb     0x394b85
  394b74:	f3 0f 10 8a 38 01 00 00                         	movss  xmm1,DWORD PTR [rdx+0x138]
  394b7c:	f3 0f 5c cd                                     	subss  xmm1,xmm5
  394b80:	e8 6f 58 ff ff                                  	call   0x38a3f4
  394b85:	8a 82 40 01 00 00                               	mov    al,BYTE PTR [rdx+0x140]
  394b8b:	f3 0f 10 8a 04 01 00 00                         	movss  xmm1,DWORD PTR [rdx+0x104]
  394b93:	f6 d8                                           	neg    al
  394b95:	f3 0f 10 a2 38 01 00 00                         	movss  xmm4,DWORD PTR [rdx+0x138]
  394b9d:	48 1b c9                                        	sbb    rcx,rcx
  394ba0:	83 e1 08                                        	and    ecx,0x8
  394ba3:	f3 0f 10 94 11 04 01 00 00                      	movss  xmm2,DWORD PTR [rcx+rdx*1+0x104]
  394bac:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  394bb0:	f3 41 0f 58 49 04                               	addss  xmm1,DWORD PTR [r9+0x4]
  394bb6:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  394bba:	f3 0f 10 82 2c 01 00 00                         	movss  xmm0,DWORD PTR [rdx+0x12c]
  394bc2:	e8 2d 58 ff ff                                  	call   0x38a3f4
  394bc7:	f3 0f 10 8a 00 01 00 00                         	movss  xmm1,DWORD PTR [rdx+0x100]
  394bcf:	0f 28 d8                                        	movaps xmm3,xmm0
  394bd2:	f3 41 0f 58 09                                  	addss  xmm1,DWORD PTR [r9]
  394bd7:	f3 0f 10 82 44 01 00 00                         	movss  xmm0,DWORD PTR [rdx+0x144]
  394bdf:	f3 0f 58 42 20                                  	addss  xmm0,DWORD PTR [rdx+0x20]
  394be4:	f3 0f 11 92 0c 01 00 00                         	movss  DWORD PTR [rdx+0x10c],xmm2
  394bec:	f3 0f 58 d3                                     	addss  xmm2,xmm3
  394bf0:	f3 0f 11 8a 08 01 00 00                         	movss  DWORD PTR [rdx+0x108],xmm1
  394bf8:	f3 0f 58 82 48 01 00 00                         	addss  xmm0,DWORD PTR [rdx+0x148]
  394c00:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  394c04:	66 0f 6e c0                                     	movd   xmm0,eax
  394c08:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  394c0b:	f3 0f 11 82 00 01 00 00                         	movss  DWORD PTR [rdx+0x100],xmm0
  394c13:	f3 41 0f 58 90 20 38 00 00                      	addss  xmm2,DWORD PTR [r8+0x3820]
  394c1c:	f3 0f 10 82 18 01 00 00                         	movss  xmm0,DWORD PTR [rdx+0x118]
  394c24:	f3 0f 2c c2                                     	cvttss2si eax,xmm2
  394c28:	66 0f 6e d0                                     	movd   xmm2,eax
  394c2c:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  394c2f:	f3 0f 11 92 04 01 00 00                         	movss  DWORD PTR [rdx+0x104],xmm2
  394c37:	e8 b8 57 ff ff                                  	call   0x38a3f4
  394c3c:	f3 0f 11 82 18 01 00 00                         	movss  DWORD PTR [rdx+0x118],xmm0
  394c44:	f3 41 0f 5c 90 20 38 00 00                      	subss  xmm2,DWORD PTR [r8+0x3820]
  394c4d:	f3 0f 10 82 1c 01 00 00                         	movss  xmm0,DWORD PTR [rdx+0x11c]
  394c55:	0f 28 ca                                        	movaps xmm1,xmm2
  394c58:	e8 97 57 ff ff                                  	call   0x38a3f4
  394c5d:	f3 0f 11 82 1c 01 00 00                         	movss  DWORD PTR [rdx+0x11c],xmm0
  394c65:	0f 28 cd                                        	movaps xmm1,xmm5
  394c68:	0f 28 c4                                        	movaps xmm0,xmm4
  394c6b:	f3 0f 11 9a 34 01 00 00                         	movss  DWORD PTR [rdx+0x134],xmm3
  394c73:	44 89 92 2c 01 00 00                            	mov    DWORD PTR [rdx+0x12c],r10d
  394c7a:	e8 75 57 ff ff                                  	call   0x38a3f4
  394c7f:	f3 0f 11 82 3c 01 00 00                         	movss  DWORD PTR [rdx+0x13c],xmm0
  394c87:	44 89 92 38 01 00 00                            	mov    DWORD PTR [rdx+0x138],r10d
  394c8e:	66 44 89 92 40 01 00 00                         	mov    WORD PTR [rdx+0x140],r10w
  394c96:	44 39 92 b4 01 00 00                            	cmp    DWORD PTR [rdx+0x1b4],r10d
  394c9d:	75 10                                           	jne    0x394caf
  394c9f:	f3 0f 10 0d b9 e5 ef ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffefe5b9]        # 0x293260
  394ca7:	0f 57 c0                                        	xorps  xmm0,xmm0
  394caa:	e8 55 5f 00 00                                  	call   0x39ac04
  394caf:	48 83 c4 28                                     	add    rsp,0x28
  394cb3:	c3                                              	ret
