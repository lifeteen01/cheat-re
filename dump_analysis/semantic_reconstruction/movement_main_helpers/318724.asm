
dump_analysis/semantic_reconstruction/movement_main_helpers/318724.bin:     file format binary


Disassembly of section .data:

0000000000318724 <.data>:
  318724:	48 8b c4                                        	mov    rax,rsp
  318727:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  31872b:	55                                              	push   rbp
  31872c:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  318730:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  318737:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  31873b:	e8 70 7b fc ff                                  	call   0x2e02b0
  318740:	48 8b c8                                        	mov    rcx,rax
  318743:	48 8b d8                                        	mov    rbx,rax
  318746:	e8 bd 27 fb ff                                  	call   0x2caf08
  31874b:	84 c0                                           	test   al,al
  31874d:	0f 84 f2 00 00 00                               	je     0x318845
  318753:	48 8b cb                                        	mov    rcx,rbx
  318756:	e8 41 87 fc ff                                  	call   0x2e0e9c
  31875b:	84 c0                                           	test   al,al
  31875d:	0f 84 e2 00 00 00                               	je     0x318845
  318763:	e8 b4 7f fc ff                                  	call   0x2e071c
  318768:	0f 28 f0                                        	movaps xmm6,xmm0
  31876b:	48 8d 55 e7                                     	lea    rdx,[rbp-0x19]
  31876f:	f3 0f 59 35 a5 53 f7 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff753a5]        # 0x28db1c
  318777:	48 8b cb                                        	mov    rcx,rbx
  31877a:	e8 9d 14 05 00                                  	call   0x369c1c
  31877f:	f3 0f 10 15 cd 4a f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff74acd]        # 0x28d254
  318787:	48 8d 55 07                                     	lea    rdx,[rbp+0x7]
  31878b:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  31878f:	48 8d 0d 42 d6 0c 00                            	lea    rcx,[rip+0xcd642]        # 0x3e5dd8
  318796:	e8 d1 6e fc ff                                  	call   0x2df66c
  31879b:	f3 0f 10 5d ef                                  	movss  xmm3,DWORD PTR [rbp-0x11]
  3187a0:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  3187a4:	f3 0f 10 55 eb                                  	movss  xmm2,DWORD PTR [rbp-0x15]
  3187a9:	48 8b d8                                        	mov    rbx,rax
  3187ac:	f3 0f 10 4d e7                                  	movss  xmm1,DWORD PTR [rbp-0x19]
  3187b1:	e8 f2 f3 0a 00                                  	call   0x3c7ba8
  3187b6:	48 8b c8                                        	mov    rcx,rax
  3187b9:	48 8d 55 23                                     	lea    rdx,[rbp+0x23]
  3187bd:	0f 28 d6                                        	movaps xmm2,xmm6
  3187c0:	e8 a7 6e fc ff                                  	call   0x2df66c
  3187c5:	4c 8b c0                                        	mov    r8,rax
  3187c8:	48 8d 55 2f                                     	lea    rdx,[rbp+0x2f]
  3187cc:	48 8b cb                                        	mov    rcx,rbx
  3187cf:	e8 34 6f fc ff                                  	call   0x2df708
  3187d4:	0f 28 de                                        	movaps xmm3,xmm6
  3187d7:	4c 8d 45 f7                                     	lea    r8,[rbp-0x9]
  3187db:	48 8d 55 07                                     	lea    rdx,[rbp+0x7]
  3187df:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3187e3:	f2 0f 11 05 ed d5 0c 00                         	movsd  QWORD PTR [rip+0xcd5ed],xmm0        # 0x3e5dd8
  3187eb:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  3187ee:	89 0d ec d5 0c 00                               	mov    DWORD PTR [rip+0xcd5ec],ecx        # 0x3e5de0
  3187f4:	48 8d 4d 2f                                     	lea    rcx,[rbp+0x2f]
  3187f8:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3187fc:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3187ff:	f2 0f 11 45 f7                                  	movsd  QWORD PTR [rbp-0x9],xmm0
  318804:	f2 0f 10 05 bc d5 0c 00                         	movsd  xmm0,QWORD PTR [rip+0xcd5bc]        # 0x3e5dc8
  31880c:	89 45 ff                                        	mov    DWORD PTR [rbp-0x1],eax
  31880f:	8b 05 bb d5 0c 00                               	mov    eax,DWORD PTR [rip+0xcd5bb]        # 0x3e5dd0
  318815:	f2 0f 11 45 07                                  	movsd  QWORD PTR [rbp+0x7],xmm0
  31881a:	89 45 0f                                        	mov    DWORD PTR [rbp+0xf],eax
  31881d:	e8 0a c1 ff ff                                  	call   0x31492c
  318822:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  318826:	f2 0f 11 05 1a ea 0b 00                         	movsd  QWORD PTR [rip+0xbea1a],xmm0        # 0x3d7248
  31882e:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  318831:	89 0d 19 ea 0b 00                               	mov    DWORD PTR [rip+0xbea19],ecx        # 0x3d7250
  318837:	f2 0f 11 05 89 d5 0c 00                         	movsd  QWORD PTR [rip+0xcd589],xmm0        # 0x3e5dc8
  31883f:	89 0d 8b d5 0c 00                               	mov    DWORD PTR [rip+0xcd58b],ecx        # 0x3e5dd0
  318845:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  31884d:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  318851:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  318856:	49 8b e3                                        	mov    rsp,r11
  318859:	5d                                              	pop    rbp
  31885a:	c3                                              	ret
