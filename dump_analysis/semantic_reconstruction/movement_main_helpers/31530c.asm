
dump_analysis/semantic_reconstruction/movement_main_helpers/31530c.bin:     file format binary


Disassembly of section .data:

000000000031530c <.data>:
  31530c:	48 8b c4                                        	mov    rax,rsp
  31530f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  315313:	55                                              	push   rbp
  315314:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  315318:	48 81 ec e0 00 00 00                            	sub    rsp,0xe0
  31531f:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  315323:	48 8b d9                                        	mov    rbx,rcx
  315326:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  31532a:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  31532e:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  315333:	f3 44 0f 10 02                                  	movss  xmm8,DWORD PTR [rdx]
  315338:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  31533d:	41 0f 28 f8                                     	movaps xmm7,xmm8
  315341:	f3 44 0f 10 4a 04                               	movss  xmm9,DWORD PTR [rdx+0x4]
  315347:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  31534c:	45 0f 28 d1                                     	movaps xmm10,xmm9
  315350:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  315355:	f3 44 0f 10 5a 0c                               	movss  xmm11,DWORD PTR [rdx+0xc]
  31535b:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  315360:	41 0f 28 c3                                     	movaps xmm0,xmm11
  315364:	44 0f 29 6c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm13
  31536a:	f3 44 0f 10 6a 08                               	movss  xmm13,DWORD PTR [rdx+0x8]
  315370:	44 0f 29 74 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm14
  315376:	45 0f 28 e5                                     	movaps xmm12,xmm13
  31537a:	f3 45 0f 59 d1                                  	mulss  xmm10,xmm9
  31537f:	45 0f 28 f0                                     	movaps xmm14,xmm8
  315383:	f3 45 0f 59 f0                                  	mulss  xmm14,xmm8
  315388:	41 0f 28 cd                                     	movaps xmm1,xmm13
  31538c:	f3 45 0f 59 e5                                  	mulss  xmm12,xmm13
  315391:	f3 45 0f 58 d6                                  	addss  xmm10,xmm14
  315396:	f3 41 0f 59 c3                                  	mulss  xmm0,xmm11
  31539b:	f3 41 0f 59 fb                                  	mulss  xmm7,xmm11
  3153a0:	f3 41 0f 59 c9                                  	mulss  xmm1,xmm9
  3153a5:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3153a9:	f3 41 0f 58 f4                                  	addss  xmm6,xmm12
  3153ae:	f3 0f 5c f9                                     	subss  xmm7,xmm1
  3153b2:	f3 0f 58 f0                                     	addss  xmm6,xmm0
  3153b6:	e8 01 28 0b 00                                  	call   0x3c7bbc
  3153bb:	0f 28 ce                                        	movaps xmm1,xmm6
  3153be:	f3 0f 59 0d fa dc f7 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff7dcfa]        # 0x2930c0
  3153c6:	0f 2f f9                                        	comiss xmm7,xmm1
  3153c9:	76 29                                           	jbe    0x3153f4
  3153cb:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3153cf:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3153d3:	e8 d4 32 0b 00                                  	call   0x3c86ac
  3153d8:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  3153dc:	c7 45 97 db 0f c9 3f                            	mov    DWORD PTR [rbp-0x69],0x3fc90fdb
  3153e3:	f3 0f 11 45 9b                                  	movss  DWORD PTR [rbp-0x65],xmm0
  3153e8:	c7 45 9f 00 00 00 00                            	mov    DWORD PTR [rbp-0x61],0x0
  3153ef:	e9 af 00 00 00                                  	jmp    0x3154a3
  3153f4:	f3 0f 59 35 5c de f7 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff7de5c]        # 0x293258
  3153fc:	0f 2f f7                                        	comiss xmm6,xmm7
  3153ff:	76 1e                                           	jbe    0x31541f
  315401:	41 0f 28 c8                                     	movaps xmm1,xmm8
  315405:	41 0f 28 c1                                     	movaps xmm0,xmm9
  315409:	e8 9e 32 0b 00                                  	call   0x3c86ac
  31540e:	f3 0f 59 05 4e de f7 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff7de4e]        # 0x293264
  315416:	c7 45 97 db 0f c9 bf                            	mov    DWORD PTR [rbp-0x69],0xbfc90fdb
  31541d:	eb c4                                           	jmp    0x3153e3
  31541f:	f3 0f 10 35 2d 7e f7 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff77e2d]        # 0x28d254
  315427:	f3 45 0f 58 db                                  	addss  xmm11,xmm11
  31542c:	41 0f 28 c5                                     	movaps xmm0,xmm13
  315430:	f3 45 0f 58 d2                                  	addss  xmm10,xmm10
  315435:	f3 41 0f 58 c5                                  	addss  xmm0,xmm13
  31543a:	41 0f 28 cb                                     	movaps xmm1,xmm11
  31543e:	f3 41 0f 59 c9                                  	mulss  xmm1,xmm9
  315443:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  315448:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  31544c:	0f 28 ce                                        	movaps xmm1,xmm6
  31544f:	f3 41 0f 5c ca                                  	subss  xmm1,xmm10
  315454:	e8 53 32 0b 00                                  	call   0x3c86ac
  315459:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  31545d:	f3 0f 11 45 9b                                  	movss  DWORD PTR [rbp-0x65],xmm0
  315462:	0f 28 c7                                        	movaps xmm0,xmm7
  315465:	e8 7a 54 00 00                                  	call   0x31a8e4
  31546a:	f3 45 0f 58 c0                                  	addss  xmm8,xmm8
  31546f:	f3 45 0f 59 dd                                  	mulss  xmm11,xmm13
  315474:	f3 45 0f 58 e6                                  	addss  xmm12,xmm14
  315479:	f3 0f 11 45 97                                  	movss  DWORD PTR [rbp-0x69],xmm0
  31547e:	f3 45 0f 59 c1                                  	mulss  xmm8,xmm9
  315483:	f3 45 0f 58 e4                                  	addss  xmm12,xmm12
  315488:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  31548d:	f3 41 0f 5c f4                                  	subss  xmm6,xmm12
  315492:	41 0f 28 c0                                     	movaps xmm0,xmm8
  315496:	0f 28 ce                                        	movaps xmm1,xmm6
  315499:	e8 0e 32 0b 00                                  	call   0x3c86ac
  31549e:	f3 0f 11 45 9f                                  	movss  DWORD PTR [rbp-0x61],xmm0
  3154a3:	f3 0f 10 15 51 dd f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff7dd51]        # 0x2931fc
  3154ab:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  3154af:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  3154b3:	e8 b4 a1 fc ff                                  	call   0x2df66c
  3154b8:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  3154bc:	48 8b cb                                        	mov    rcx,rbx
  3154bf:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3154c3:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3154c6:	f2 0f 11 45 a7                                  	movsd  QWORD PTR [rbp-0x59],xmm0
  3154cb:	89 45 af                                        	mov    DWORD PTR [rbp-0x51],eax
  3154ce:	e8 69 1b 00 00                                  	call   0x31703c
  3154d3:	44 0f 28 74 24 50                               	movaps xmm14,XMMWORD PTR [rsp+0x50]
  3154d9:	4c 8d 9c 24 e0 00 00 00                         	lea    r11,[rsp+0xe0]
  3154e1:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3154e6:	48 8b c3                                        	mov    rax,rbx
  3154e9:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3154ed:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3154f2:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3154f7:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3154fc:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  315501:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  315506:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  31550b:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  315510:	49 8b e3                                        	mov    rsp,r11
  315513:	5d                                              	pop    rbp
  315514:	c3                                              	ret
