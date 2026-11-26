
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f85c <.data+0x38f85c>:
  38f85c:	0f 57 e4                                        	xorps  xmm4,xmm4
  38f85f:	0f 2e cc                                        	ucomiss xmm1,xmm4
  38f862:	7a 08                                           	jp     0x38f86c
  38f864:	75 06                                           	jne    0x38f86c
  38f866:	b8 01 00 00 00                                  	mov    eax,0x1
  38f86b:	c3                                              	ret
  38f86c:	0f 2f c1                                        	comiss xmm0,xmm1
  38f86f:	72 03                                           	jb     0x38f874
  38f871:	33 c0                                           	xor    eax,eax
  38f873:	c3                                              	ret
  38f874:	0f 2f e3                                        	comiss xmm4,xmm3
  38f877:	72 0c                                           	jb     0x38f885
  38f879:	0f 2f d0                                        	comiss xmm2,xmm0
  38f87c:	76 f3                                           	jbe    0x38f871
  38f87e:	0f 2f ca                                        	comiss xmm1,xmm2
  38f881:	72 ee                                           	jb     0x38f871
  38f883:	eb e1                                           	jmp    0x38f866
  38f885:	83 c8 ff                                        	or     eax,0xffffffff
  38f888:	0f 2f d0                                        	comiss xmm2,xmm0
  38f88b:	76 04                                           	jbe    0x38f891
  38f88d:	8b c8                                           	mov    ecx,eax
  38f88f:	eb 0c                                           	jmp    0x38f89d
  38f891:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  38f895:	f3 0f 5e c3                                     	divss  xmm0,xmm3
  38f899:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  38f89d:	0f 2f d1                                        	comiss xmm2,xmm1
  38f8a0:	77 0c                                           	ja     0x38f8ae
  38f8a2:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  38f8a6:	f3 0f 5e cb                                     	divss  xmm1,xmm3
  38f8aa:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  38f8ae:	2b c1                                           	sub    eax,ecx
  38f8b0:	c3                                              	ret
