
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9110 <.data+0x3a9110>:
  3a9110:	48 8b c4                                        	mov    rax,rsp
  3a9113:	53                                              	push   rbx
  3a9114:	55                                              	push   rbp
  3a9115:	56                                              	push   rsi
  3a9116:	57                                              	push   rdi
  3a9117:	48 81 ec 98 00 00 00                            	sub    rsp,0x98
  3a911e:	f3 0f 10 05 2a 41 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee412a]        # 0x28d250
  3a9126:	48 8d 59 78                                     	lea    rbx,[rcx+0x78]
  3a912a:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  3a912e:	48 8b f2                                        	mov    rsi,rdx
  3a9131:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  3a9135:	48 8b cb                                        	mov    rcx,rbx
  3a9138:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  3a913d:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  3a9142:	44 0f 28 ca                                     	movaps xmm9,xmm2
  3a9146:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3a914a:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  3a914f:	44 0f 28 d3                                     	movaps xmm10,xmm3
  3a9153:	44 0f 29 5c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm11
  3a9159:	76 0a                                           	jbe    0x3a9165
  3a915b:	e8 f8 14 fd ff                                  	call   0x37a658
  3a9160:	e9 8c 00 00 00                                  	jmp    0x3a91f1
  3a9165:	8b bc 24 e8 00 00 00                            	mov    edi,DWORD PTR [rsp+0xe8]
  3a916c:	f3 44 0f 10 84 24 e0 00 00 00                   	movss  xmm8,DWORD PTR [rsp+0xe0]
  3a9176:	8d 57 01                                        	lea    edx,[rdi+0x1]
  3a9179:	03 13                                           	add    edx,DWORD PTR [rbx]
  3a917b:	e8 d8 15 fd ff                                  	call   0x37a758
  3a9180:	33 ed                                           	xor    ebp,ebp
  3a9182:	85 ff                                           	test   edi,edi
  3a9184:	78 6b                                           	js     0x3a91f1
  3a9186:	66 44 0f 6e df                                  	movd   xmm11,edi
  3a918b:	f3 45 0f 5c c2                                  	subss  xmm8,xmm10
  3a9190:	45 0f 5b db                                     	cvtdq2ps xmm11,xmm11
  3a9194:	66 0f 6e fd                                     	movd   xmm7,ebp
  3a9198:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3a919b:	f3 41 0f 5e fb                                  	divss  xmm7,xmm11
  3a91a0:	f3 41 0f 59 f8                                  	mulss  xmm7,xmm8
  3a91a5:	f3 41 0f 58 fa                                  	addss  xmm7,xmm10
  3a91aa:	0f 28 c7                                        	movaps xmm0,xmm7
  3a91ad:	e8 ba fc 01 00                                  	call   0x3c8e6c
  3a91b2:	0f 28 f0                                        	movaps xmm6,xmm0
  3a91b5:	0f 28 c7                                        	movaps xmm0,xmm7
  3a91b8:	f3 41 0f 59 f1                                  	mulss  xmm6,xmm9
  3a91bd:	f3 0f 58 76 04                                  	addss  xmm6,DWORD PTR [rsi+0x4]
  3a91c2:	e8 d5 f7 01 00                                  	call   0x3c899c
  3a91c7:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3a91cc:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a91d1:	0f 28 d6                                        	movaps xmm2,xmm6
  3a91d4:	f3 0f 58 06                                     	addss  xmm0,DWORD PTR [rsi]
  3a91d8:	0f 28 c8                                        	movaps xmm1,xmm0
  3a91db:	e8 60 31 f2 ff                                  	call   0x2cc340
  3a91e0:	48 8b d0                                        	mov    rdx,rax
  3a91e3:	48 8b cb                                        	mov    rcx,rbx
  3a91e6:	e8 6d 14 fd ff                                  	call   0x37a658
  3a91eb:	ff c5                                           	inc    ebp
  3a91ed:	3b ef                                           	cmp    ebp,edi
  3a91ef:	7e a3                                           	jle    0x3a9194
  3a91f1:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3a91f6:	4c 8d 9c 24 98 00 00 00                         	lea    r11,[rsp+0x98]
  3a91fe:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3a9203:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3a9208:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3a920d:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3a9212:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3a9217:	49 8b e3                                        	mov    rsp,r11
  3a921a:	5f                                              	pop    rdi
  3a921b:	5e                                              	pop    rsi
  3a921c:	5d                                              	pop    rbp
  3a921d:	5b                                              	pop    rbx
  3a921e:	c3                                              	ret
