
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c899c <.data+0x3c899c>:
  3c899c:	f3 0f 10 25 ac 48 ec ff 	movss  xmm4,DWORD PTR [rip+0xffffffffffec48ac]        # 0x28d250
  3c89a4:	0f 28 d0             	movaps xmm2,xmm0
  3c89a7:	0f 2f 15 9e 48 ec ff 	comiss xmm2,DWORD PTR [rip+0xffffffffffec489e]        # 0x28d24c
  3c89ae:	0f 28 c8             	movaps xmm1,xmm0
  3c89b1:	f3 0f 59 0d a3 51 ee ff 	mulss  xmm1,DWORD PTR [rip+0xffffffffffee51a3]        # 0x2adb5c
  3c89b9:	72 06                	jb     0x3c89c1
  3c89bb:	f3 0f 58 cc          	addss  xmm1,xmm4
  3c89bf:	eb 04                	jmp    0x3c89c5
  3c89c1:	f3 0f 5c cc          	subss  xmm1,xmm4
  3c89c5:	f3 0f 2c c1          	cvttss2si eax,xmm1
  3c89c9:	66 0f 6e c0          	movd   xmm0,eax
  3c89cd:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3c89d0:	f3 0f 59 05 10 45 ee ff 	mulss  xmm0,DWORD PTR [rip+0xffffffffffee4510]        # 0x2acee8
  3c89d8:	f3 0f 5c d0          	subss  xmm2,xmm0
  3c89dc:	0f 2f 15 41 0a ee ff 	comiss xmm2,DWORD PTR [rip+0xffffffffffee0a41]        # 0x2a9424
  3c89e3:	76 0a                	jbe    0x3c89ef
  3c89e5:	f3 0f 10 1d 6f a7 ec ff 	movss  xmm3,DWORD PTR [rip+0xffffffffffeca76f]        # 0x29315c
  3c89ed:	eb 18                	jmp    0x3c8a07
  3c89ef:	f3 0f 10 05 dd 51 ee ff 	movss  xmm0,DWORD PTR [rip+0xffffffffffee51dd]        # 0x2adbd4
  3c89f7:	0f 28 da             	movaps xmm3,xmm2
  3c89fa:	0f 2f c2             	comiss xmm0,xmm2
  3c89fd:	76 16                	jbe    0x3c8a15
  3c89ff:	f3 0f 10 1d d1 51 ee ff 	movss  xmm3,DWORD PTR [rip+0xffffffffffee51d1]        # 0x2adbd8
  3c8a07:	f3 0f 10 2d 51 a8 ec ff 	movss  xmm5,DWORD PTR [rip+0xffffffffffeca851]        # 0x293260
  3c8a0f:	f3 0f 5c da          	subss  xmm3,xmm2
  3c8a13:	eb 08                	jmp    0x3c8a1d
  3c8a15:	f3 0f 10 2d 37 48 ec ff 	movss  xmm5,DWORD PTR [rip+0xffffffffffec4837]        # 0x28d254
  3c8a1d:	f3 0f 10 0d 07 51 ee ff 	movss  xmm1,DWORD PTR [rip+0xffffffffffee5107]        # 0x2adb2c
  3c8a25:	f3 0f 59 db          	mulss  xmm3,xmm3
  3c8a29:	0f 28 c3             	movaps xmm0,xmm3
  3c8a2c:	f3 0f 59 05 f0 50 ee ff 	mulss  xmm0,DWORD PTR [rip+0xffffffffffee50f0]        # 0x2adb24
  3c8a34:	f3 0f 5c c8          	subss  xmm1,xmm0
  3c8a38:	f3 0f 59 cb          	mulss  xmm1,xmm3
  3c8a3c:	f3 0f 5c 0d f4 50 ee ff 	subss  xmm1,DWORD PTR [rip+0xffffffffffee50f4]        # 0x2adb38
  3c8a44:	f3 0f 59 cb          	mulss  xmm1,xmm3
  3c8a48:	f3 0f 58 0d fc 50 ee ff 	addss  xmm1,DWORD PTR [rip+0xffffffffffee50fc]        # 0x2adb4c
  3c8a50:	f3 0f 59 cb          	mulss  xmm1,xmm3
  3c8a54:	f3 0f 5c cc          	subss  xmm1,xmm4
  3c8a58:	f3 0f 59 cb          	mulss  xmm1,xmm3
