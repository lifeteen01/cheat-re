
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e0198 <.data+0x2e0198>:
  2e0198:	4c 8b dc                                        	mov    r11,rsp
  2e019b:	53                                              	push   rbx
  2e019c:	56                                              	push   rsi
  2e019d:	57                                              	push   rdi
  2e019e:	48 83 ec 60                                     	sub    rsp,0x60
  2e01a2:	8b 05 d8 77 0f 00                               	mov    eax,DWORD PTR [rip+0xf77d8]        # 0x3d7980
  2e01a8:	0f 29 74 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm6
  2e01ad:	0f 28 f0                                        	movaps xmm6,xmm0
  2e01b0:	a8 01                                           	test   al,0x1
  2e01b2:	0f 85 ac 00 00 00                               	jne    0x2e0264
  2e01b8:	83 c8 01                                        	or     eax,0x1
  2e01bb:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2e01bf:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2e01c3:	89 05 b7 77 0f 00                               	mov    DWORD PTR [rip+0xf77b7],eax        # 0x3d7980
  2e01c9:	e8 62 c5 fe ff                                  	call   0x2cc730
  2e01ce:	48 8b c8                                        	mov    rcx,rax
  2e01d1:	e8 ce da fe ff                                  	call   0x2cdca4
  2e01d6:	48 8d 94 24 98 00 00 00                         	lea    rdx,[rsp+0x98]
  2e01de:	48 8b f0                                        	mov    rsi,rax
  2e01e1:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e01e9:	e8 0a f9 ff ff                                  	call   0x2dfaf8
  2e01ee:	48 8b c8                                        	mov    rcx,rax
  2e01f1:	e8 f2 ce ff ff                                  	call   0x2dd0e8
  2e01f6:	48 8d 54 24 36                                  	lea    rdx,[rsp+0x36]
  2e01fb:	48 8b f8                                        	mov    rdi,rax
  2e01fe:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e0206:	e8 89 f7 ff ff                                  	call   0x2df994
  2e020b:	48 8b c8                                        	mov    rcx,rax
  2e020e:	e8 f9 db fe ff                                  	call   0x2cde0c
  2e0213:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e0218:	48 8b d8                                        	mov    rbx,rax
  2e021b:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2e0223:	e8 3c f6 ff ff                                  	call   0x2df864
  2e0228:	48 8b c8                                        	mov    rcx,rax
  2e022b:	e8 84 82 ff ff                                  	call   0x2d84b4
  2e0230:	48 8b c8                                        	mov    rcx,rax
  2e0233:	48 8b d3                                        	mov    rdx,rbx
  2e0236:	e8 e9 3f 05 00                                  	call   0x334224
  2e023b:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e023f:	48 8b c8                                        	mov    rcx,rax
  2e0242:	4c 8b ce                                        	mov    r9,rsi
  2e0245:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e024a:	48 8b d7                                        	mov    rdx,rdi
  2e024d:	e8 5a 47 05 00                                  	call   0x3349ac
  2e0252:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e0255:	8b 05 25 77 0f 00                               	mov    eax,DWORD PTR [rip+0xf7725]        # 0x3d7980
  2e025b:	4c 89 05 16 77 0f 00                            	mov    QWORD PTR [rip+0xf7716],r8        # 0x3d7978
  2e0262:	eb 07                                           	jmp    0x2e026b
  2e0264:	4c 8b 05 0d 77 0f 00                            	mov    r8,QWORD PTR [rip+0xf770d]        # 0x3d7978
  2e026b:	a8 02                                           	test   al,0x2
  2e026d:	75 1f                                           	jne    0x2e028e
  2e026f:	48 8b 0d ea 5b 0f 00                            	mov    rcx,QWORD PTR [rip+0xf5bea]        # 0x3d5e60
  2e0276:	48 8d 15 13 77 0f 00                            	lea    rdx,[rip+0xf7713]        # 0x3d7990
  2e027d:	83 c8 02                                        	or     eax,0x2
  2e0280:	45 33 c9                                        	xor    r9d,r9d
  2e0283:	89 05 f7 76 0f 00                               	mov    DWORD PTR [rip+0xf76f7],eax        # 0x3d7980
  2e0289:	e8 96 ba fe ff                                  	call   0x2cbd24
  2e028e:	48 8b 0d cb 5b 0f 00                            	mov    rcx,QWORD PTR [rip+0xf5bcb]        # 0x3d5e60
  2e0295:	48 8d 15 f4 76 0f 00                            	lea    rdx,[rip+0xf76f4]        # 0x3d7990
  2e029c:	0f 28 d6                                        	movaps xmm2,xmm6
  2e029f:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  2e02a4:	48 83 c4 60                                     	add    rsp,0x60
  2e02a8:	5f                                              	pop    rdi
  2e02a9:	5e                                              	pop    rsi
  2e02aa:	5b                                              	pop    rbx
  2e02ab:	e9 cc e6 ff ff                                  	jmp    0x2de97c
