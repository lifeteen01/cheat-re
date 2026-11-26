
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d7564.audit.bin:     file format binary


Disassembly of section .data:

00000000002d7564 <.data>:
  2d7564:	48 83 ec 38                                     	sub    rsp,0x38
  2d7568:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  2d756d:	0f 57 f6                                        	xorps  xmm6,xmm6
  2d7570:	48 85 d2                                        	test   rdx,rdx
  2d7573:	78 07                                           	js     0x2d757c
  2d7575:	f3 48 0f 2a f2                                  	cvtsi2ss xmm6,rdx
  2d757a:	eb 15                                           	jmp    0x2d7591
  2d757c:	48 8b c2                                        	mov    rax,rdx
  2d757f:	83 e2 01                                        	and    edx,0x1
  2d7582:	48 d1 e8                                        	shr    rax,1
  2d7585:	48 0b c2                                        	or     rax,rdx
  2d7588:	f3 48 0f 2a f0                                  	cvtsi2ss xmm6,rax
  2d758d:	f3 0f 58 f6                                     	addss  xmm6,xmm6
  2d7591:	e8 4a 15 00 00                                  	call   0x2d8ae0
  2d7596:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  2d759a:	0f 28 c6                                        	movaps xmm0,xmm6
  2d759d:	e8 76 13 0f 00                                  	call   0x3c8918
  2d75a2:	f3 0f 10 0d 5a 60 fb ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffffb605a]        # 0x28d604
  2d75aa:	33 c9                                           	xor    ecx,ecx
  2d75ac:	0f 2f c1                                        	comiss xmm0,xmm1
  2d75af:	72 16                                           	jb     0x2d75c7
  2d75b1:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  2d75b5:	0f 2f c1                                        	comiss xmm0,xmm1
  2d75b8:	73 0d                                           	jae    0x2d75c7
  2d75ba:	48 b8 00 00 00 00 00 00 00 80                   	movabs rax,0x8000000000000000
  2d75c4:	48 8b c8                                        	mov    rcx,rax
  2d75c7:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  2d75cc:	f3 48 0f 2c c0                                  	cvttss2si rax,xmm0
  2d75d1:	48 03 c1                                        	add    rax,rcx
  2d75d4:	48 83 c4 38                                     	add    rsp,0x38
  2d75d8:	c3                                              	ret
