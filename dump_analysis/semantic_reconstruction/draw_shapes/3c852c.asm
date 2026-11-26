
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c852c <.data+0x3c852c>:
  3c852c:	48 83 ec 48                                     	sub    rsp,0x48
  3c8530:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  3c8535:	0f 29 7c 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm7
  3c853a:	0f 28 f8                                        	movaps xmm7,xmm0
  3c853d:	e8 ae b9 f1 ff                                  	call   0x2e3ef0
  3c8542:	f3 0f 10 0d 0a 4d ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec4d0a]        # 0x28d254
  3c854a:	0f 28 f0                                        	movaps xmm6,xmm0
  3c854d:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  3c8551:	0f 57 c0                                        	xorps  xmm0,xmm0
  3c8554:	f3 0f 5f c1                                     	maxss  xmm0,xmm1
  3c8558:	e8 d7 09 00 00                                  	call   0x3c8f34
  3c855d:	0f 2f 3d e8 4c ec ff                            	comiss xmm7,DWORD PTR [rip+0xffffffffffec4ce8]        # 0x28d24c
  3c8564:	f3 0f 10 15 d0 55 ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffee55d0]        # 0x2adb3c
  3c856c:	0f 28 ce                                        	movaps xmm1,xmm6
  3c856f:	f3 0f 59 0d bd 55 ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffee55bd]        # 0x2adb34
  3c8577:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  3c857b:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c857f:	f3 0f 5c 15 bd 55 ee ff                         	subss  xmm2,DWORD PTR [rip+0xffffffffffee55bd]        # 0x2adb44
  3c8587:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c858b:	f3 0f 58 15 b5 55 ee ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffee55b5]        # 0x2adb48
  3c8593:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c8597:	f3 0f 5c 15 b5 55 ee ff                         	subss  xmm2,DWORD PTR [rip+0xffffffffffee55b5]        # 0x2adb54
  3c859f:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c85a3:	f3 0f 58 15 ad 55 ee ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffee55ad]        # 0x2adb58
  3c85ab:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c85af:	f3 0f 5c 15 ad 55 ee ff                         	subss  xmm2,DWORD PTR [rip+0xffffffffffee55ad]        # 0x2adb64
  3c85b7:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3c85bb:	f3 0f 58 15 bd 55 ee ff                         	addss  xmm2,DWORD PTR [rip+0xffffffffffee55bd]        # 0x2adb80
  3c85c3:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  3c85c7:	73 0f                                           	jae    0x3c85d8
  3c85c9:	f3 0f 10 0d 8b ab ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffecab8b]        # 0x29315c
  3c85d1:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3c85d5:	0f 28 c1                                        	movaps xmm0,xmm1
  3c85d8:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3c85dd:	0f 28 7c 24 20                                  	movaps xmm7,XMMWORD PTR [rsp+0x20]
  3c85e2:	48 83 c4 48                                     	add    rsp,0x48
  3c85e6:	c3                                              	ret
