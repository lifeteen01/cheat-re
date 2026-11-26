
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f370 <.data+0x38f370>:
  38f370:	40 53                                           	rex push rbx
  38f372:	48 83 ec 30                                     	sub    rsp,0x30
  38f376:	48 8b 05 ab 67 07 00                            	mov    rax,QWORD PTR [rip+0x767ab]        # 0x405b28
  38f37d:	0f 29 74 24 20                                  	movaps XMMWORD PTR [rsp+0x20],xmm6
  38f382:	f6 80 90 47 00 00 01                            	test   BYTE PTR [rax+0x4790],0x1
  38f389:	48 8b 98 08 3f 00 00                            	mov    rbx,QWORD PTR [rax+0x3f08]
  38f390:	74 0a                                           	je     0x38f39c
  38f392:	f3 0f 10 b0 94 47 00 00                         	movss  xmm6,DWORD PTR [rax+0x4794]
  38f39a:	eb 08                                           	jmp    0x38f3a4
  38f39c:	f3 0f 10 b3 bc 01 00 00                         	movss  xmm6,DWORD PTR [rbx+0x1bc]
  38f3a4:	0f 57 c0                                        	xorps  xmm0,xmm0
  38f3a7:	0f 2f c6                                        	comiss xmm0,xmm6
  38f3aa:	76 2a                                           	jbe    0x38f3d6
  38f3ac:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  38f3b1:	e8 ce 2f 00 00                                  	call   0x392384
  38f3b6:	f3 0f 10 05 96 de ef ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffefde96]        # 0x28d254
  38f3be:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  38f3c2:	f3 0f 5c 8b 00 01 00 00                         	subss  xmm1,DWORD PTR [rbx+0x100]
  38f3ca:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  38f3ce:	e8 21 b0 ff ff                                  	call   0x38a3f4
  38f3d3:	0f 28 f0                                        	movaps xmm6,xmm0
  38f3d6:	f3 0f 2c c6                                     	cvttss2si eax,xmm6
  38f3da:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  38f3df:	66 0f 6e c0                                     	movd   xmm0,eax
  38f3e3:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  38f3e6:	48 83 c4 30                                     	add    rsp,0x30
  38f3ea:	5b                                              	pop    rbx
  38f3eb:	c3                                              	ret
