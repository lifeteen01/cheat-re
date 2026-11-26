
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8e6c <.data+0x3c8e6c>:
  3c8e6c:	0f 28 d0                                        	movaps xmm2,xmm0
  3c8e6f:	0f 28 c8                                        	movaps xmm1,xmm0
  3c8e72:	0f 2f 15 d3 43 ec ff                            	comiss xmm2,DWORD PTR [rip+0xffffffffffec43d3]        # 0x28d24c
  3c8e79:	f3 0f 59 0d db 4c ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffee4cdb]        # 0x2adb5c
  3c8e81:	72 0a                                           	jb     0x3c8e8d
  3c8e83:	f3 0f 58 0d c5 43 ec ff                         	addss  xmm1,DWORD PTR [rip+0xffffffffffec43c5]        # 0x28d250
  3c8e8b:	eb 08                                           	jmp    0x3c8e95
  3c8e8d:	f3 0f 5c 0d bb 43 ec ff                         	subss  xmm1,DWORD PTR [rip+0xffffffffffec43bb]        # 0x28d250
  3c8e95:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3c8e99:	66 0f 6e c0                                     	movd   xmm0,eax
  3c8e9d:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3c8ea0:	f3 0f 59 05 40 40 ee ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffee4040]        # 0x2acee8
  3c8ea8:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3c8eac:	0f 2f 15 71 05 ee ff                            	comiss xmm2,DWORD PTR [rip+0xffffffffffee0571]        # 0x2a9424
  3c8eb3:	76 0e                                           	jbe    0x3c8ec3
  3c8eb5:	f3 0f 10 1d 9f a2 ec ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffeca29f]        # 0x29315c
  3c8ebd:	f3 0f 5c da                                     	subss  xmm3,xmm2
  3c8ec1:	eb 1a                                           	jmp    0x3c8edd
  3c8ec3:	f3 0f 10 05 09 4d ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee4d09]        # 0x2adbd4
  3c8ecb:	0f 2f c2                                        	comiss xmm0,xmm2
  3c8ece:	76 0a                                           	jbe    0x3c8eda
  3c8ed0:	f3 0f 10 1d 00 4d ee ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffee4d00]        # 0x2adbd8
  3c8ed8:	eb e3                                           	jmp    0x3c8ebd
  3c8eda:	0f 28 da                                        	movaps xmm3,xmm2
  3c8edd:	f3 0f 10 15 43 4c ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffee4c43]        # 0x2adb28
  3c8ee5:	0f 28 cb                                        	movaps xmm1,xmm3
  3c8ee8:	f3 0f 59 cb                                     	mulss  xmm1,xmm3
  3c8eec:	0f 28 c1                                        	movaps xmm0,xmm1
  3c8eef:	f3 0f 59 05 29 4c ee ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffee4c29]        # 0x2adb20
  3c8ef7:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3c8efb:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  3c8eff:	f3 0f 5c 15 29 4c ee ff                         	subss  xmm2,DWORD PTR [rip+0xffffffffffee4c29]        # 0x2adb30
  3c8f07:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  3c8f0b:	f3 0f 58 15 2d 4c ee ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffee4c2d]        # 0x2adb40
  3c8f13:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  3c8f17:	f3 0f 5c 15 21 12 ee ff                         	subss  xmm2,DWORD PTR [rip+0xffffffffffee1221]        # 0x2aa140
  3c8f1f:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  3c8f23:	f3 0f 58 15 29 43 ec ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffec4329]        # 0x28d254
  3c8f2b:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  3c8f2f:	0f 28 c2                                        	movaps xmm0,xmm2
  3c8f32:	c3                                              	ret
