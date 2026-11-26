
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003abfd4 <.data+0x3abfd4>:
  3abfd4:	48 83 ec 28                                     	sub    rsp,0x28
  3abfd8:	f3 0f 10 6c 24 50                               	movss  xmm5,DWORD PTR [rsp+0x50]
  3abfde:	f3 0f 10 64 24 60                               	movss  xmm4,DWORD PTR [rsp+0x60]
  3abfe4:	0f 2e ec                                        	ucomiss xmm5,xmm4
  3abfe7:	0f 29 74 24 10                                  	movaps XMMWORD PTR [rsp+0x10],xmm6
  3abfec:	44 0f 29 04 24                                  	movaps XMMWORD PTR [rsp],xmm8
  3abff1:	7a 06                                           	jp     0x3abff9
  3abff3:	0f 84 f4 00 00 00                               	je     0x3ac0ed
  3abff9:	41 0f 2f 68 1c                                  	comiss xmm5,DWORD PTR [r8+0x1c]
  3abffe:	0f 87 e9 00 00 00                               	ja     0x3ac0ed
  3ac004:	f3 45 0f 10 40 18                               	movss  xmm8,DWORD PTR [r8+0x18]
  3ac00a:	44 0f 2f c4                                     	comiss xmm8,xmm4
  3ac00e:	0f 87 d9 00 00 00                               	ja     0x3ac0ed
  3ac014:	44 0f 2f c5                                     	comiss xmm8,xmm5
  3ac018:	f3 0f 10 74 24 58                               	movss  xmm6,DWORD PTR [rsp+0x58]
  3ac01e:	76 26                                           	jbe    0x3ac046
  3ac020:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3ac024:	0f 28 c6                                        	movaps xmm0,xmm6
  3ac027:	f3 0f 5c d5                                     	subss  xmm2,xmm5
  3ac02b:	0f 28 cc                                        	movaps xmm1,xmm4
  3ac02e:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  3ac032:	f3 0f 5c cd                                     	subss  xmm1,xmm5
  3ac036:	41 0f 28 e8                                     	movaps xmm5,xmm8
  3ac03a:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  3ac03e:	f3 0f 5e d1                                     	divss  xmm2,xmm1
  3ac042:	f3 0f 58 da                                     	addss  xmm3,xmm2
  3ac046:	41 0f 2f 60 1c                                  	comiss xmm4,DWORD PTR [r8+0x1c]
  3ac04b:	76 27                                           	jbe    0x3ac074
  3ac04d:	f3 41 0f 10 48 1c                               	movss  xmm1,DWORD PTR [r8+0x1c]
  3ac053:	0f 28 c6                                        	movaps xmm0,xmm6
  3ac056:	f3 0f 5c cc                                     	subss  xmm1,xmm4
  3ac05a:	f3 0f 5c e5                                     	subss  xmm4,xmm5
  3ac05e:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  3ac062:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  3ac066:	f3 0f 5e cc                                     	divss  xmm1,xmm4
  3ac06a:	f3 41 0f 10 60 1c                               	movss  xmm4,DWORD PTR [r8+0x1c]
  3ac070:	f3 0f 58 f1                                     	addss  xmm6,xmm1
  3ac074:	66 0f 6e c2                                     	movd   xmm0,edx
  3ac078:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ac07b:	0f 2f c3                                        	comiss xmm0,xmm3
  3ac07e:	72 1e                                           	jb     0x3ac09e
  3ac080:	0f 2f c6                                        	comiss xmm0,xmm6
  3ac083:	72 19                                           	jb     0x3ac09e
  3ac085:	f3 0f 5c e5                                     	subss  xmm4,xmm5
  3ac089:	48 63 c2                                        	movsxd rax,edx
  3ac08c:	f3 41 0f 59 60 14                               	mulss  xmm4,DWORD PTR [r8+0x14]
  3ac092:	f3 0f 58 24 81                                  	addss  xmm4,DWORD PTR [rcx+rax*4]
  3ac097:	f3 0f 11 24 81                                  	movss  DWORD PTR [rcx+rax*4],xmm4
  3ac09c:	eb 4f                                           	jmp    0x3ac0ed
  3ac09e:	8d 42 01                                        	lea    eax,[rdx+0x1]
  3ac0a1:	66 0f 6e c8                                     	movd   xmm1,eax
  3ac0a5:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ac0a8:	0f 2f d9                                        	comiss xmm3,xmm1
  3ac0ab:	72 05                                           	jb     0x3ac0b2
  3ac0ad:	0f 2f f1                                        	comiss xmm6,xmm1
  3ac0b0:	73 3b                                           	jae    0x3ac0ed
  3ac0b2:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  3ac0b6:	48 63 c2                                        	movsxd rax,edx
  3ac0b9:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3ac0bd:	f3 0f 10 05 8f 11 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee118f]        # 0x28d254
  3ac0c5:	f3 0f 5c e5                                     	subss  xmm4,xmm5
  3ac0c9:	f3 0f 58 de                                     	addss  xmm3,xmm6
  3ac0cd:	f3 41 0f 59 60 14                               	mulss  xmm4,DWORD PTR [r8+0x14]
  3ac0d3:	f3 0f 59 1d 75 11 ee ff                         	mulss  xmm3,DWORD PTR [rip+0xffffffffffee1175]        # 0x28d250
  3ac0db:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  3ac0df:	f3 0f 59 c4                                     	mulss  xmm0,xmm4
  3ac0e3:	f3 0f 58 04 81                                  	addss  xmm0,DWORD PTR [rcx+rax*4]
  3ac0e8:	f3 0f 11 04 81                                  	movss  DWORD PTR [rcx+rax*4],xmm0
  3ac0ed:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [rsp+0x10]
  3ac0f2:	44 0f 28 04 24                                  	movaps xmm8,XMMWORD PTR [rsp]
  3ac0f7:	48 83 c4 28                                     	add    rsp,0x28
  3ac0fb:	c3                                              	ret
