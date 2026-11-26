
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000319024 <.data+0x319024>:
  319024:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  319029:	55                                              	push   rbp
  31902a:	56                                              	push   rsi
  31902b:	57                                              	push   rdi
  31902c:	48 83 ec 50                                     	sub    rsp,0x50
  319030:	48 8b ca                                        	mov    rcx,rdx
  319033:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  319038:	48 8b f2                                        	mov    rsi,rdx
  31903b:	e8 c8 1e fb ff                                  	call   0x2caf08
  319040:	33 ed                                           	xor    ebp,ebp
  319042:	84 c0                                           	test   al,al
  319044:	0f 84 7e 02 00 00                               	je     0x3192c8
  31904a:	48 8b ca                                        	mov    rcx,rdx
  31904d:	e8 4a 7e fc ff                                  	call   0x2e0e9c
  319052:	84 c0                                           	test   al,al
  319054:	0f 84 6e 02 00 00                               	je     0x3192c8
  31905a:	48 8b ce                                        	mov    rcx,rsi
  31905d:	e8 22 fa 04 00                                  	call   0x368a84
  319062:	48 8b c8                                        	mov    rcx,rax
  319065:	48 8b f8                                        	mov    rdi,rax
  319068:	e8 9b 1e fb ff                                  	call   0x2caf08
  31906d:	84 c0                                           	test   al,al
  31906f:	0f 84 53 02 00 00                               	je     0x3192c8
  319075:	48 8b cf                                        	mov    rcx,rdi
  319078:	e8 37 91 05 00                                  	call   0x3721b4
  31907d:	48 8b c8                                        	mov    rcx,rax
  319080:	48 8b d0                                        	mov    rdx,rax
  319083:	e8 80 1e fb ff                                  	call   0x2caf08
  319088:	84 c0                                           	test   al,al
  31908a:	74 10                                           	je     0x31909c
  31908c:	40 38 2d 65 04 0d 00                            	cmp    BYTE PTR [rip+0xd0465],bpl        # 0x3e94f8
  319093:	74 07                                           	je     0x31909c
  319095:	40 88 aa c1 03 00 00                            	mov    BYTE PTR [rdx+0x3c1],bpl
  31909c:	40 38 2d 25 07 0d 00                            	cmp    BYTE PTR [rip+0xd0725],bpl        # 0x3e97c8
  3190a3:	75 0d                                           	jne    0x3190b2
  3190a5:	40 38 2d ec bf 0c 00                            	cmp    BYTE PTR [rip+0xcbfec],bpl        # 0x3e5098
  3190ac:	0f 84 a3 00 00 00                               	je     0x319155
  3190b2:	48 8b cf                                        	mov    rcx,rdi
  3190b5:	e8 9a c9 fc ff                                  	call   0x2e5a54
  3190ba:	48 8b c8                                        	mov    rcx,rax
  3190bd:	48 8b d0                                        	mov    rdx,rax
  3190c0:	e8 43 1e fb ff                                  	call   0x2caf08
  3190c5:	84 c0                                           	test   al,al
  3190c7:	0f 84 88 00 00 00                               	je     0x319155
  3190cd:	48 8b ca                                        	mov    rcx,rdx
  3190d0:	e8 7f d2 fb ff                                  	call   0x2d6354
  3190d5:	48 8d 54 24 28                                  	lea    rdx,[rsp+0x28]
  3190da:	48 8b d8                                        	mov    rbx,rax
  3190dd:	48 8d 8c 24 80 00 00 00                         	lea    rcx,[rsp+0x80]
  3190e5:	e8 9e 8e fd ff                                  	call   0x2f1f88
  3190ea:	48 8b c8                                        	mov    rcx,rax
  3190ed:	e8 ea 0a fd ff                                  	call   0x2e9bdc
  3190f2:	48 8b c8                                        	mov    rcx,rax
  3190f5:	48 ba 25 23 22 84 e4 9c f2 cb                   	movabs rdx,0xcbf29ce484222325
  3190ff:	e8 48 ca fc ff                                  	call   0x2e5b4c
  319104:	48 3b d8                                        	cmp    rbx,rax
  319107:	75 4c                                           	jne    0x319155
  319109:	8b 05 59 59 0d 00                               	mov    eax,DWORD PTR [rip+0xd5959]        # 0x3eea68
  31910f:	83 f8 01                                        	cmp    eax,0x1
  319112:	74 30                                           	je     0x319144
  319114:	40 38 2d 7d bf 0c 00                            	cmp    BYTE PTR [rip+0xcbf7d],bpl        # 0x3e5098
  31911b:	75 27                                           	jne    0x319144
  31911d:	85 c0                                           	test   eax,eax
  31911f:	75 12                                           	jne    0x319133
  319121:	f3 0f 10 05 bf 47 0d 00                         	movss  xmm0,DWORD PTR [rip+0xd47bf]        # 0x3ed8e8
  319129:	f3 0f 11 87 d8 04 00 00                         	movss  DWORD PTR [rdi+0x4d8],xmm0
  319131:	eb 22                                           	jmp    0x319155
  319133:	83 f8 02                                        	cmp    eax,0x2
  319136:	75 1d                                           	jne    0x319155
  319138:	c7 87 d8 04 00 00 00 3c 1c c6                   	mov    DWORD PTR [rdi+0x4d8],0xc61c3c00
  319142:	eb 11                                           	jmp    0x319155
  319144:	c7 87 d8 04 00 00 00 00 80 3f                   	mov    DWORD PTR [rdi+0x4d8],0x3f800000
  31914e:	c6 87 e8 04 00 00 01                            	mov    BYTE PTR [rdi+0x4e8],0x1
  319155:	40 38 2d 45 f1 0b 00                            	cmp    BYTE PTR [rip+0xbf145],bpl        # 0x3d82a1
  31915c:	75 12                                           	jne    0x319170
  31915e:	40 38 2d a3 0c 0d 00                            	cmp    BYTE PTR [rip+0xd0ca3],bpl        # 0x3e9e08
  319165:	75 09                                           	jne    0x319170
  319167:	40 38 2d 33 6a 0d 00                            	cmp    BYTE PTR [rip+0xd6a33],bpl        # 0x3efba1
  31916e:	74 5d                                           	je     0x3191cd
  319170:	48 8b cf                                        	mov    rcx,rdi
  319173:	e8 4c 83 05 00                                  	call   0x3714c4
  319178:	48 8b c8                                        	mov    rcx,rax
  31917b:	48 8b d0                                        	mov    rdx,rax
  31917e:	e8 85 1d fb ff                                  	call   0x2caf08
  319183:	84 c0                                           	test   al,al
  319185:	74 46                                           	je     0x3191cd
  319187:	48 8b 92 18 02 00 00                            	mov    rdx,QWORD PTR [rdx+0x218]
  31918e:	48 8b ca                                        	mov    rcx,rdx
  319191:	e8 72 1d fb ff                                  	call   0x2caf08
  319196:	84 c0                                           	test   al,al
  319198:	0f 84 2a 01 00 00                               	je     0x3192c8
  31919e:	48 8b 52 28                                     	mov    rdx,QWORD PTR [rdx+0x28]
  3191a2:	48 8b ca                                        	mov    rcx,rdx
  3191a5:	e8 5e 1d fb ff                                  	call   0x2caf08
  3191aa:	84 c0                                           	test   al,al
  3191ac:	0f 84 16 01 00 00                               	je     0x3192c8
  3191b2:	48 8b 92 f0 00 00 00                            	mov    rdx,QWORD PTR [rdx+0xf0]
  3191b9:	48 8b ca                                        	mov    rcx,rdx
  3191bc:	e8 47 1d fb ff                                  	call   0x2caf08
  3191c1:	84 c0                                           	test   al,al
  3191c3:	0f 84 ff 00 00 00                               	je     0x3192c8
  3191c9:	66 89 6a 20                                     	mov    WORD PTR [rdx+0x20],bp
  3191cd:	48 8b cf                                        	mov    rcx,rdi
  3191d0:	e8 8f 82 05 00                                  	call   0x371464
  3191d5:	48 8b c8                                        	mov    rcx,rax
  3191d8:	48 8b d8                                        	mov    rbx,rax
  3191db:	e8 28 1d fb ff                                  	call   0x2caf08
  3191e0:	84 c0                                           	test   al,al
  3191e2:	0f 84 e0 00 00 00                               	je     0x3192c8
  3191e8:	8a 15 13 6a 0d 00                               	mov    dl,BYTE PTR [rip+0xd6a13]        # 0x3efc01
  3191ee:	4c 8b c6                                        	mov    r8,rsi
  3191f1:	48 8b cb                                        	mov    rcx,rbx
  3191f4:	e8 1b 2a 05 00                                  	call   0x36bc14
  3191f9:	48 8b cb                                        	mov    rcx,rbx
  3191fc:	e8 67 e4 04 00                                  	call   0x367668
  319201:	48 8d 94 24 80 00 00 00                         	lea    rdx,[rsp+0x80]
  319209:	89 84 24 80 00 00 00                            	mov    DWORD PTR [rsp+0x80],eax
  319210:	48 8d 0d f9 cc 0c 00                            	lea    rcx,[rip+0xcccf9]        # 0x3e5f10
  319217:	e8 08 65 fd ff                                  	call   0x2ef724
  31921c:	48 8b f8                                        	mov    rdi,rax
  31921f:	48 85 c0                                        	test   rax,rax
  319222:	74 79                                           	je     0x31929d
  319224:	40 38 2d 4d 05 0d 00                            	cmp    BYTE PTR [rip+0xd054d],bpl        # 0x3e9778
  31922b:	f3 0f 10 05 c5 45 0d 00                         	movss  xmm0,DWORD PTR [rip+0xd45c5]        # 0x3ed7f8
  319233:	f3 0f 5c 05 8d 4f f7 ff                         	subss  xmm0,DWORD PTR [rip+0xfffffffffff74f8d]        # 0x28e1c8
  31923b:	f3 0f 10 35 11 40 f7 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff74011]        # 0x28d254
  319243:	c7 84 24 88 00 00 00 00 00 80 3f                	mov    DWORD PTR [rsp+0x88],0x3f800000
  31924e:	89 6c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebp
  319252:	f3 0f 5e 05 72 9e f7 ff                         	divss  xmm0,DWORD PTR [rip+0xfffffffffff79e72]        # 0x2930cc
  31925a:	f3 0f 11 44 24 24                               	movss  DWORD PTR [rsp+0x24],xmm0
  319260:	74 2e                                           	je     0x319290
  319262:	4c 8d 84 24 88 00 00 00                         	lea    r8,[rsp+0x88]
  31926a:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  31926f:	48 8d 4c 24 24                                  	lea    rcx,[rsp+0x24]
  319274:	e8 33 40 fd ff                                  	call   0x2ed2ac
  319279:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  31927d:	f3 0f 59 05 47 9e f7 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff79e47]        # 0x2930cc
  319285:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  319289:	f3 0f 59 77 10                                  	mulss  xmm6,DWORD PTR [rdi+0x10]
  31928e:	eb 05                                           	jmp    0x319295
  319290:	f3 0f 10 70 10                                  	movss  xmm6,DWORD PTR [rax+0x10]
  319295:	f3 0f 11 b3 04 03 00 00                         	movss  DWORD PTR [rbx+0x304],xmm6
  31929d:	40 38 2d 84 04 0d 00                            	cmp    BYTE PTR [rip+0xd0484],bpl        # 0x3e9728
  3192a4:	75 09                                           	jne    0x3192af
  3192a6:	40 38 2d eb bd 0c 00                            	cmp    BYTE PTR [rip+0xcbdeb],bpl        # 0x3e5098
  3192ad:	74 08                                           	je     0x3192b7
  3192af:	48 8b cb                                        	mov    rcx,rbx
  3192b2:	e8 7d 21 05 00                                  	call   0x36b434
  3192b7:	40 38 2d 1a 04 0d 00                            	cmp    BYTE PTR [rip+0xd041a],bpl        # 0x3e96d8
  3192be:	74 08                                           	je     0x3192c8
  3192c0:	48 8b cb                                        	mov    rcx,rbx
  3192c3:	e8 d4 2b 05 00                                  	call   0x36be9c
  3192c8:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  3192cd:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  3192d2:	48 83 c4 50                                     	add    rsp,0x50
  3192d6:	5f                                              	pop    rdi
  3192d7:	5e                                              	pop    rsi
  3192d8:	5d                                              	pop    rbp
  3192d9:	c3                                              	ret
