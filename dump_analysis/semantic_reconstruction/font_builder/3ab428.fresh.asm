
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab428 <.data+0x3ab428>:
  3ab428:	48 83 ec 58                                     	sub    rsp,0x58
  3ab42c:	0f 28 ea                                        	movaps xmm5,xmm2
  3ab42f:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  3ab434:	f3 0f 58 69 14                                  	addss  xmm5,DWORD PTR [rcx+0x14]
  3ab439:	0f 28 f1                                        	movaps xmm6,xmm1
  3ab43c:	4c 8b d9                                        	mov    r11,rcx
  3ab43f:	f3 0f 58 71 10                                  	addss  xmm6,DWORD PTR [rcx+0x10]
  3ab444:	f3 0f 2c d5                                     	cvttss2si edx,xmm5
  3ab448:	0f 28 e6                                        	movaps xmm4,xmm6
  3ab44b:	0f 28 d5                                        	movaps xmm2,xmm5
  3ab44e:	f3 0f 58 94 24 80 00 00 00                      	addss  xmm2,DWORD PTR [rsp+0x80]
  3ab457:	f3 0f 58 e3                                     	addss  xmm4,xmm3
  3ab45b:	f3 44 0f 2c d6                                  	cvttss2si r10d,xmm6
  3ab460:	f3 0f 2c c2                                     	cvttss2si eax,xmm2
  3ab464:	0f 28 cc                                        	movaps xmm1,xmm4
  3ab467:	0f 28 c2                                        	movaps xmm0,xmm2
  3ab46a:	f3 0f 58 8c 24 88 00 00 00                      	addss  xmm1,DWORD PTR [rsp+0x88]
  3ab473:	f3 0f 58 84 24 90 00 00 00                      	addss  xmm0,DWORD PTR [rsp+0x90]
  3ab47c:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3ab480:	f3 0f 11 49 10                                  	movss  DWORD PTR [rcx+0x10],xmm1
  3ab485:	f3 0f 11 41 14                                  	movss  DWORD PTR [rcx+0x14],xmm0
  3ab48a:	f3 0f 2c cc                                     	cvttss2si ecx,xmm4
  3ab48e:	f3 44 0f 2c c8                                  	cvttss2si r9d,xmm0
  3ab493:	89 4c 24 30                                     	mov    DWORD PTR [rsp+0x30],ecx
  3ab497:	49 8b cb                                        	mov    rcx,r11
  3ab49a:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3ab49e:	b2 04                                           	mov    dl,0x4
  3ab4a0:	44 89 54 24 20                                  	mov    DWORD PTR [rsp+0x20],r10d
  3ab4a5:	f3 44 0f 2c c1                                  	cvttss2si r8d,xmm1
  3ab4aa:	e8 a9 00 00 00                                  	call   0x3ab558
  3ab4af:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  3ab4b4:	48 83 c4 58                                     	add    rsp,0x58
  3ab4b8:	c3                                              	ret
