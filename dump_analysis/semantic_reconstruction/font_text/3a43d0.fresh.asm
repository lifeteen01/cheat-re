
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a43d0 <.data+0x3a43d0>:
  3a43d0:	40 55                                           	rex push rbp
  3a43d2:	53                                              	push   rbx
  3a43d3:	56                                              	push   rsi
  3a43d4:	57                                              	push   rdi
  3a43d5:	48 8b ec                                        	mov    rbp,rsp
  3a43d8:	48 83 ec 48                                     	sub    rsp,0x48
  3a43dc:	48 8b f1                                        	mov    rsi,rcx
  3a43df:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  3a43e4:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a43e8:	49 8b f8                                        	mov    rdi,r8
  3a43eb:	48 8b da                                        	mov    rbx,rdx
  3a43ee:	e8 e5 b5 f4 ff                                  	call   0x2ef9d8
  3a43f3:	f3 0f 10 35 55 8e ee ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffee8e55]        # 0x28d250
  3a43fb:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3a43ff:	0f 28 d6                                        	movaps xmm2,xmm6
  3a4402:	48 8b d0                                        	mov    rdx,rax
  3a4405:	e8 fe 77 fe ff                                  	call   0x38bc08
  3a440a:	4c 8b c3                                        	mov    r8,rbx
  3a440d:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a4411:	48 8b d7                                        	mov    rdx,rdi
  3a4414:	e8 cb 23 f9 ff                                  	call   0x3367e4
  3a4419:	48 8b d0                                        	mov    rdx,rax
  3a441c:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3a4420:	0f 28 d6                                        	movaps xmm2,xmm6
  3a4423:	e8 e0 77 fe ff                                  	call   0x38bc08
  3a4428:	4c 8d 45 d8                                     	lea    r8,[rbp-0x28]
  3a442c:	48 8b d6                                        	mov    rdx,rsi
  3a442f:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a4433:	e8 ac 23 f9 ff                                  	call   0x3367e4
  3a4438:	f3 0f 10 45 44                                  	movss  xmm0,DWORD PTR [rbp+0x44]
  3a443d:	e8 ae fa f3 ff                                  	call   0x2e3ef0
  3a4442:	0f 28 f0                                        	movaps xmm6,xmm0
  3a4445:	f3 0f 10 45 40                                  	movss  xmm0,DWORD PTR [rbp+0x40]
  3a444a:	e8 a1 fa f3 ff                                  	call   0x2e3ef0
  3a444f:	0f 28 c8                                        	movaps xmm1,xmm0
  3a4452:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3a4456:	0f 28 d6                                        	movaps xmm2,xmm6
  3a4459:	e8 e2 7e f2 ff                                  	call   0x2cc340
  3a445e:	48 8b d0                                        	mov    rdx,rax
  3a4461:	4c 8d 45 e0                                     	lea    r8,[rbp-0x20]
  3a4465:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a4469:	e8 76 23 f9 ff                                  	call   0x3367e4
  3a446e:	f3 0f 10 45 44                                  	movss  xmm0,DWORD PTR [rbp+0x44]
  3a4473:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a4476:	e8 79 5f fe ff                                  	call   0x38a3f4
  3a447b:	0f 28 d0                                        	movaps xmm2,xmm0
  3a447e:	f3 0f 10 45 40                                  	movss  xmm0,DWORD PTR [rbp+0x40]
  3a4483:	e8 6c 5f fe ff                                  	call   0x38a3f4
  3a4488:	0f 28 c8                                        	movaps xmm1,xmm0
  3a448b:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3a448f:	e8 ac 7e f2 ff                                  	call   0x2cc340
  3a4494:	f3 0f 10 0d 34 96 ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffee9634]        # 0x28dad0
  3a449c:	48 8b c8                                        	mov    rcx,rax
  3a449f:	e8 b0 20 00 00                                  	call   0x3a6554
  3a44a4:	f3 0f 10 4d 44                                  	movss  xmm1,DWORD PTR [rbp+0x44]
  3a44a9:	0f 28 d0                                        	movaps xmm2,xmm0
  3a44ac:	f3 0f 10 45 40                                  	movss  xmm0,DWORD PTR [rbp+0x40]
  3a44b1:	e8 3e 5f fe ff                                  	call   0x38a3f4
  3a44b6:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a44b9:	e8 0e 1e fd ff                                  	call   0x3762cc
  3a44be:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3a44c3:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a44c7:	0f 28 c2                                        	movaps xmm0,xmm2
  3a44ca:	48 83 c4 48                                     	add    rsp,0x48
  3a44ce:	5f                                              	pop    rdi
  3a44cf:	5e                                              	pop    rsi
  3a44d0:	5b                                              	pop    rbx
  3a44d1:	5d                                              	pop    rbp
  3a44d2:	c3                                              	ret
