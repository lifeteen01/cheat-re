
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a1410 <.data+0x3a1410>:
  3a1410:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a1415:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3a141a:	57                                              	push   rdi
  3a141b:	48 83 ec 50                                     	sub    rsp,0x50
  3a141f:	48 8b d9                                        	mov    rbx,rcx
  3a1422:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  3a1427:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [rsp+0x98]
  3a142e:	41 8b f1                                        	mov    esi,r9d
  3a1431:	0f 28 f2                                        	movaps xmm6,xmm2
  3a1434:	48 8b fa                                        	mov    rdi,rdx
  3a1437:	85 c9                                           	test   ecx,ecx
  3a1439:	7f 6b                                           	jg     0x3a14a6
  3a143b:	48 8b 53 38                                     	mov    rdx,QWORD PTR [rbx+0x38]
  3a143f:	f3 0f 2c ce                                     	cvttss2si ecx,xmm6
  3a1443:	8d 41 ff                                        	lea    eax,[rcx-0x1]
  3a1446:	83 f8 40                                        	cmp    eax,0x40
  3a1449:	7d 0d                                           	jge    0x3a1458
  3a144b:	48 63 c1                                        	movsxd rax,ecx
  3a144e:	0f b6 84 02 c3 01 00 00                         	movzx  eax,BYTE PTR [rdx+rax*1+0x1c3]
  3a1456:	eb 5e                                           	jmp    0x3a14b6
  3a1458:	f3 0f 10 42 18                                  	movss  xmm0,DWORD PTR [rdx+0x18]
  3a145d:	0f 28 ce                                        	movaps xmm1,xmm6
  3a1460:	e8 67 4e fd ff                                  	call   0x3762cc
  3a1465:	0f 28 d0                                        	movaps xmm2,xmm0
  3a1468:	f3 0f 10 05 e4 bd ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeebde4]        # 0x28d254
  3a1470:	f3 0f 5e d6                                     	divss  xmm2,xmm6
  3a1474:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3a1478:	e8 af 70 02 00                                  	call   0x3c852c
  3a147d:	f3 0f 10 0d d7 1c ef ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffef1cd7]        # 0x29315c
  3a1485:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a1489:	0f 28 c1                                        	movaps xmm0,xmm1
  3a148c:	e8 87 74 02 00                                  	call   0x3c8918
  3a1491:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3a1495:	ff c0                                           	inc    eax
  3a1497:	99                                              	cdq
  3a1498:	2b c2                                           	sub    eax,edx
  3a149a:	ba 04 00 00 00                                  	mov    edx,0x4
  3a149f:	d1 f8                                           	sar    eax,1
  3a14a1:	8d 0c 00                                        	lea    ecx,[rax+rax*1]
  3a14a4:	eb 05                                           	jmp    0x3a14ab
  3a14a6:	ba 03 00 00 00                                  	mov    edx,0x3
  3a14ab:	41 b8 00 02 00 00                               	mov    r8d,0x200
  3a14b1:	e8 f6 4d fd ff                                  	call   0x3762ac
  3a14b6:	0f 28 d6                                        	movaps xmm2,xmm6
  3a14b9:	48 8b d7                                        	mov    rdx,rdi
  3a14bc:	48 8b cb                                        	mov    rcx,rbx
  3a14bf:	83 f8 0c                                        	cmp    eax,0xc
  3a14c2:	75 12                                           	jne    0x3a14d6
  3a14c4:	45 33 c9                                        	xor    r9d,r9d
  3a14c7:	c7 44 24 20 0b 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xb
  3a14cf:	e8 64 56 00 00                                  	call   0x3a6b38
  3a14d4:	eb 32                                           	jmp    0x3a1508
  3a14d6:	66 0f 6e c0                                     	movd   xmm0,eax
  3a14da:	0f 57 db                                        	xorps  xmm3,xmm3
  3a14dd:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a14e0:	ff c8                                           	dec    eax
  3a14e2:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a14e6:	0f 28 c8                                        	movaps xmm1,xmm0
  3a14e9:	f3 0f 5c 0d 63 bd ee ff                         	subss  xmm1,DWORD PTR [rip+0xffffffffffeebd63]        # 0x28d254
  3a14f1:	f3 0f 59 0d ef b9 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0b9ef]        # 0x2acee8
  3a14f9:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a14fd:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  3a1503:	e8 44 53 00 00                                  	call   0x3a684c
  3a1508:	8b 84 24 90 00 00 00                            	mov    eax,DWORD PTR [rsp+0x90]
  3a150f:	44 8b ce                                        	mov    r9d,esi
  3a1512:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x80]
  3a151b:	48 8b cb                                        	mov    rcx,rbx
  3a151e:	44 8b 43 78                                     	mov    r8d,DWORD PTR [rbx+0x78]
  3a1522:	48 8b 93 80 00 00 00                            	mov    rdx,QWORD PTR [rbx+0x80]
  3a1529:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3a152d:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3a1535:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3a153a:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a1540:	e8 1f 00 00 00                                  	call   0x3a1564
  3a1545:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  3a154a:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  3a154f:	c7 43 78 00 00 00 00                            	mov    DWORD PTR [rbx+0x78],0x0
  3a1556:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  3a155b:	48 83 c4 50                                     	add    rsp,0x50
  3a155f:	5f                                              	pop    rdi
  3a1560:	c3                                              	ret
