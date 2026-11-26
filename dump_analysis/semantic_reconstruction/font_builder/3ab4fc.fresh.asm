
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab4fc <.data+0x3ab4fc>:
  3ab4fc:	40 53                                           	rex push rbx
  3ab4fe:	48 83 ec 40                                     	sub    rsp,0x40
  3ab502:	0f 28 d9                                        	movaps xmm3,xmm1
  3ab505:	48 8b d9                                        	mov    rbx,rcx
  3ab508:	e8 d3 fe ff ff                                  	call   0x3ab3e0
  3ab50d:	f3 0f 58 5b 10                                  	addss  xmm3,DWORD PTR [rbx+0x10]
  3ab512:	f3 0f 58 53 14                                  	addss  xmm2,DWORD PTR [rbx+0x14]
  3ab517:	33 c0                                           	xor    eax,eax
  3ab519:	b2 01                                           	mov    dl,0x1
  3ab51b:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3ab51f:	48 8b cb                                        	mov    rcx,rbx
  3ab522:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3ab526:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3ab52a:	f3 44 0f 2c ca                                  	cvttss2si r9d,xmm2
  3ab52f:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3ab533:	f3 44 0f 2c c3                                  	cvttss2si r8d,xmm3
  3ab538:	f3 0f 11 5b 10                                  	movss  DWORD PTR [rbx+0x10],xmm3
  3ab53d:	f3 0f 11 5b 08                                  	movss  DWORD PTR [rbx+0x8],xmm3
  3ab542:	f3 0f 11 53 14                                  	movss  DWORD PTR [rbx+0x14],xmm2
  3ab547:	f3 0f 11 53 0c                                  	movss  DWORD PTR [rbx+0xc],xmm2
  3ab54c:	e8 07 00 00 00                                  	call   0x3ab558
  3ab551:	48 83 c4 40                                     	add    rsp,0x40
  3ab555:	5b                                              	pop    rbx
  3ab556:	c3                                              	ret
