
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003110dc <.data+0x3110dc>:
  3110dc:	44 0f 5d c2                                     	minps  xmm8,xmm2
  3110e0:	45 0f 2f d8                                     	comiss xmm11,xmm8
  3110e4:	72 09                                           	jb     0x3110ef
  3110e6:	f3 44 0f 10 05 f5 c9 f7 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff7c9f5]        # 0x28dae4
  3110ef:	45 0f 57 ff                                     	xorps  xmm15,xmm15
  3110f3:	0f 57 c0                                        	xorps  xmm0,xmm0
  3110f6:	f3 44 0f 2a fb                                  	cvtsi2ss xmm15,ebx
  3110fb:	f3 41 0f 2a c7                                  	cvtsi2ss xmm0,r15d
  311100:	41 0f 28 d0                                     	movaps xmm2,xmm8
  311104:	f3 41 0f 59 d6                                  	mulss  xmm2,xmm14
  311109:	45 0f 28 f0                                     	movaps xmm14,xmm8
  31110d:	f3 44 0f 59 35 c6 20 f8 ff                      	mulss  xmm14,DWORD PTR [rip+0xfffffffffff820c6]        # 0x2931dc
  311116:	f3 44 0f 59 fa                                  	mulss  xmm15,xmm2
  31111b:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  31111f:	41 0f 28 ce                                     	movaps xmm1,xmm14
  311123:	f3 0f 58 cc                                     	addss  xmm1,xmm4
  311127:	f3 0f 11 95 5c 01 00 00                         	movss  DWORD PTR [rbp+0x15c],xmm2
  31112f:	f3 44 0f 5f f8                                  	maxss  xmm15,xmm0
  311134:	f3 0f 11 8d f8 00 00 00                         	movss  DWORD PTR [rbp+0xf8],xmm1
  31113c:	44 0f 2f fb                                     	comiss xmm15,xmm3
  311140:	f3 44 0f 11 bd 04 01 00 00                      	movss  DWORD PTR [rbp+0x104],xmm15
  311149:	77 0d                                           	ja     0x311158
  31114b:	44 0f 28 fb                                     	movaps xmm15,xmm3
  31114f:	f3 44 0f 11 bd 04 01 00 00                      	movss  DWORD PTR [rbp+0x104],xmm15
  311158:	85 db                                           	test   ebx,ebx
  31115a:	7e 16                                           	jle    0x311172
  31115c:	f3 0f 10 85 ac 03 00 00                         	movss  xmm0,DWORD PTR [rbp+0x3ac]
  311164:	f3 0f 58 05 c8 1f f8 ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffff81fc8]        # 0x293134
  31116c:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  311170:	eb 03                                           	jmp    0x311175
  311172:	0f 57 c0                                        	xorps  xmm0,xmm0
  311175:	45 85 ff                                        	test   r15d,r15d
  311178:	7e 16                                           	jle    0x311190
  31117a:	f3 0f 10 95 b4 03 00 00                         	movss  xmm2,DWORD PTR [rbp+0x3b4]
  311182:	f3 0f 58 15 aa 1f f8 ff                         	addss  xmm2,DWORD PTR [rip+0xfffffffffff81faa]        # 0x293134
  31118a:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  31118e:	eb 03                                           	jmp    0x311193
  311190:	0f 57 d2                                        	xorps  xmm2,xmm2
  311193:	85 db                                           	test   ebx,ebx
  311195:	7e 14                                           	jle    0x3111ab
  311197:	45 85 ff                                        	test   r15d,r15d
  31119a:	7e 0f                                           	jle    0x3111ab
  31119c:	f3 44 0f 10 15 d3 1f f8 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff81fd3]        # 0x293178
  3111a5:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3111a9:	eb 0c                                           	jmp    0x3111b7
  3111ab:	f3 44 0f 10 15 c4 1f f8 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff81fc4]        # 0x293178
  3111b4:	0f 57 c9                                        	xorps  xmm1,xmm1
  3111b7:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3111bb:	48 8d 8d f0 04 00 00                            	lea    rcx,[rbp+0x4f0]
  3111c2:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  3111c6:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3111ca:	f3 0f 58 cc                                     	addss  xmm1,xmm4
  3111ce:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  3111d2:	e8 69 b1 fb ff                                  	call   0x2cc340
  3111d7:	f3 0f 10 05 c9 1f f8 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff81fc9]        # 0x2931a8
  3111df:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3111e3:	f3 0f 10 95 4c 03 00 00                         	movss  xmm2,DWORD PTR [rbp+0x34c]
  3111eb:	f3 0f 10 8d 48 03 00 00                         	movss  xmm1,DWORD PTR [rbp+0x348]
  3111f3:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3111f7:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3111fb:	e8 40 b1 fb ff                                  	call   0x2cc340
  311200:	f3 0f 10 bd f0 04 00 00                         	movss  xmm7,DWORD PTR [rbp+0x4f0]
  311208:	f3 0f 10 5d 48                                  	movss  xmm3,DWORD PTR [rbp+0x48]
  31120d:	0f 28 c7                                        	movaps xmm0,xmm7
  311210:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  311214:	0f 2f c6                                        	comiss xmm0,xmm6
  311217:	76 0c                                           	jbe    0x311225
  311219:	0f 28 de                                        	movaps xmm3,xmm6
  31121c:	f3 0f 5c df                                     	subss  xmm3,xmm7
  311220:	f3 0f 11 5d 48                                  	movss  DWORD PTR [rbp+0x48],xmm3
  311225:	f3 0f 10 b5 f4 04 00 00                         	movss  xmm6,DWORD PTR [rbp+0x4f4]
  31122d:	f3 0f 10 4d 4c                                  	movss  xmm1,DWORD PTR [rbp+0x4c]
  311232:	0f 28 c6                                        	movaps xmm0,xmm6
  311235:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  311239:	41 0f 2f c1                                     	comiss xmm0,xmm9
  31123d:	76 0d                                           	jbe    0x31124c
  31123f:	41 0f 28 c9                                     	movaps xmm1,xmm9
  311243:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  311247:	f3 0f 11 4d 4c                                  	movss  DWORD PTR [rbp+0x4c],xmm1
  31124c:	44 0f 2f db                                     	comiss xmm11,xmm3
  311250:	76 08                                           	jbe    0x31125a
  311252:	0f 57 db                                        	xorps  xmm3,xmm3
  311255:	f3 0f 11 5d 48                                  	movss  DWORD PTR [rbp+0x48],xmm3
  31125a:	44 0f 2f d9                                     	comiss xmm11,xmm1
  31125e:	76 08                                           	jbe    0x311268
  311260:	0f 57 c9                                        	xorps  xmm1,xmm1
  311263:	f3 0f 11 4d 4c                                  	movss  DWORD PTR [rbp+0x4c],xmm1
  311268:	0f 28 d6                                        	movaps xmm2,xmm6
  31126b:	48 8d 8d 00 0d 00 00                            	lea    rcx,[rbp+0xd00]
  311272:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  311276:	0f 28 cf                                        	movaps xmm1,xmm7
  311279:	f3 0f 58 cb                                     	addss  xmm1,xmm3
  31127d:	e8 be b0 fb ff                                  	call   0x2cc340
  311282:	4c 8b c0                                        	mov    r8,rax
  311285:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  31128d:	41 b9 00 00 00 8c                               	mov    r9d,0x8c000000
  311293:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  31129a:	48 8d 55 48                                     	lea    rdx,[rbp+0x48]
  31129e:	49 8b ce                                        	mov    rcx,r14
  3112a1:	e8 9e ff 08 00                                  	call   0x3a1244
  3112a6:	f3 0f 58 75 4c                                  	addss  xmm6,DWORD PTR [rbp+0x4c]
  3112ab:	f3 0f 58 7d 48                                  	addss  xmm7,DWORD PTR [rbp+0x48]
  3112b0:	48 8d 8d 08 0d 00 00                            	lea    rcx,[rbp+0xd08]
  3112b7:	0f 28 d6                                        	movaps xmm2,xmm6
  3112ba:	0f 28 cf                                        	movaps xmm1,xmm7
  3112bd:	e8 7e b0 fb ff                                  	call   0x2cc340
  3112c2:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3112c9:	48 8d 55 48                                     	lea    rdx,[rbp+0x48]
  3112cd:	4c 8b c0                                        	mov    r8,rax
  3112d0:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3112d8:	41 b9 ff ff ff 24                               	mov    r9d,0x24ffffff
  3112de:	f3 44 0f 11 54 24 20                            	movss  DWORD PTR [rsp+0x20],xmm10
  3112e5:	49 8b ce                                        	mov    rcx,r14
  3112e8:	e8 5b fe 08 00                                  	call   0x3a1148
  3112ed:	f3 0f 10 05 8b 1e f8 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff81e8b]        # 0x293180
  3112f5:	f3 0f 10                                    	movss  xmm6,DWORD PTR [rbp+0x4c]
