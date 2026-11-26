
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae308 <.data+0x3ae308>:
  3ae308:	4c 8b dc                                        	mov    r11,rsp
  3ae30b:	53                                              	push   rbx
  3ae30c:	48 83 ec 70                                     	sub    rsp,0x70
  3ae310:	49 8d 43 c0                                     	lea    rax,[r11-0x40]
  3ae314:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  3ae319:	49 89 43 b0                                     	mov    QWORD PTR [r11-0x50],rax
  3ae31d:	4d 8d 4b bc                                     	lea    r9,[r11-0x44]
  3ae321:	0f 29 7c 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm7
  3ae326:	49 8d 43 c4                                     	lea    rax,[r11-0x3c]
  3ae32a:	45 0f 29 43 c8                                  	movaps XMMWORD PTR [r11-0x38],xmm8
  3ae32f:	4d 8d 43 b8                                     	lea    r8,[r11-0x48]
  3ae333:	49 89 43 a8                                     	mov    QWORD PTR [r11-0x58],rax
  3ae337:	0f 28 fb                                        	movaps xmm7,xmm3
  3ae33a:	44 0f 28 c2                                     	movaps xmm8,xmm2
  3ae33e:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [rsp+0x30],0x0
  3ae346:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [rsp+0x34],0x0
  3ae34e:	e8 31 01 00 00                                  	call   0x3ae484
  3ae353:	85 c0                                           	test   eax,eax
  3ae355:	75 55                                           	jne    0x3ae3ac
  3ae357:	48 8b 84 24 b0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xb0]
  3ae35f:	48 85 c0                                        	test   rax,rax
  3ae362:	74 06                                           	je     0x3ae36a
  3ae364:	c7 00 00 00 00 00                               	mov    DWORD PTR [rax],0x0
  3ae36a:	48 8b 84 24 b8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xb8]
  3ae372:	48 85 c0                                        	test   rax,rax
  3ae375:	74 06                                           	je     0x3ae37d
  3ae377:	c7 00 00 00 00 00                               	mov    DWORD PTR [rax],0x0
  3ae37d:	48 8b 84 24 c0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xc0]
  3ae385:	48 85 c0                                        	test   rax,rax
  3ae388:	74 06                                           	je     0x3ae390
  3ae38a:	c7 00 00 00 00 00                               	mov    DWORD PTR [rax],0x0
  3ae390:	48 8b 84 24 c8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xc8]
  3ae398:	48 85 c0                                        	test   rax,rax
  3ae39b:	0f 84 ca 00 00 00                               	je     0x3ae46b
  3ae3a1:	c7 00 00 00 00 00                               	mov    DWORD PTR [rax],0x0
  3ae3a7:	e9 bf 00 00 00                                  	jmp    0x3ae46b
  3ae3ac:	48 8b 8c 24 b0 00 00 00                         	mov    rcx,QWORD PTR [rsp+0xb0]
  3ae3b4:	48 85 c9                                        	test   rcx,rcx
  3ae3b7:	74 22                                           	je     0x3ae3db
  3ae3b9:	66 0f 6e 44 24 30                               	movd   xmm0,DWORD PTR [rsp+0x30]
  3ae3bf:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae3c2:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3ae3c7:	f3 0f 58 84 24 a0 00 00 00                      	addss  xmm0,DWORD PTR [rsp+0xa0]
  3ae3d0:	e8 13 4d fe ff                                  	call   0x3930e8
  3ae3d5:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae3d9:	89 01                                           	mov    DWORD PTR [rcx],eax
  3ae3db:	48 8b 8c 24 b8 00 00 00                         	mov    rcx,QWORD PTR [rsp+0xb8]
  3ae3e3:	f3 0f 10 b4 24 a8 00 00 00                      	movss  xmm6,DWORD PTR [rsp+0xa8]
  3ae3ec:	48 85 c9                                        	test   rcx,rcx
  3ae3ef:	74 1f                                           	je     0x3ae410
  3ae3f1:	66 0f 6e 4c 24 38                               	movd   xmm1,DWORD PTR [rsp+0x38]
  3ae3f7:	0f 28 c6                                        	movaps xmm0,xmm6
  3ae3fa:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ae3fd:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  3ae401:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3ae405:	e8 de 4c fe ff                                  	call   0x3930e8
  3ae40a:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae40e:	89 01                                           	mov    DWORD PTR [rcx],eax
  3ae410:	48 8b 9c 24 c0 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xc0]
  3ae418:	48 85 db                                        	test   rbx,rbx
  3ae41b:	74 22                                           	je     0x3ae43f
  3ae41d:	66 0f 6e 44 24 3c                               	movd   xmm0,DWORD PTR [rsp+0x3c]
  3ae423:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ae426:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  3ae42b:	f3 0f 58 84 24 a0 00 00 00                      	addss  xmm0,DWORD PTR [rsp+0xa0]
  3ae434:	e8 df a4 01 00                                  	call   0x3c8918
  3ae439:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae43d:	89 03                                           	mov    DWORD PTR [rbx],eax
  3ae43f:	48 8b 9c 24 c8 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xc8]
  3ae447:	48 85 db                                        	test   rbx,rbx
  3ae44a:	74 1f                                           	je     0x3ae46b
  3ae44c:	66 0f 6e 4c 24 34                               	movd   xmm1,DWORD PTR [rsp+0x34]
  3ae452:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3ae455:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  3ae459:	f3 0f 5c f1                                     	subss  xmm6,xmm1
  3ae45d:	0f 28 c6                                        	movaps xmm0,xmm6
  3ae460:	e8 b3 a4 01 00                                  	call   0x3c8918
  3ae465:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3ae469:	89 03                                           	mov    DWORD PTR [rbx],eax
  3ae46b:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  3ae470:	0f 28 7c 24 50                                  	movaps xmm7,XMMWORD PTR [rsp+0x50]
  3ae475:	44 0f 28 44 24 40                               	movaps xmm8,XMMWORD PTR [rsp+0x40]
  3ae47b:	48 83 c4 70                                     	add    rsp,0x70
  3ae47f:	5b                                              	pop    rbx
  3ae480:	c3                                              	ret
