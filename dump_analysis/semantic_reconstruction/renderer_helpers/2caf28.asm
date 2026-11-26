
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002caf28 <.data+0x2caf28>:
  2caf28:	4c 8b dc                                        	mov    r11,rsp
  2caf2b:	53                                              	push   rbx
  2caf2c:	55                                              	push   rbp
  2caf2d:	56                                              	push   rsi
  2caf2e:	57                                              	push   rdi
  2caf2f:	41 56                                           	push   r14
  2caf31:	41 57                                           	push   r15
  2caf33:	48 83 ec 68                                     	sub    rsp,0x68
  2caf37:	8b 05 43 b3 10 00                               	mov    eax,DWORD PTR [rip+0x10b343]        # 0x3d6280
  2caf3d:	49 8b e8                                        	mov    rbp,r8
  2caf40:	4c 8b f2                                        	mov    r14,rdx
  2caf43:	4c 8b f9                                        	mov    r15,rcx
  2caf46:	a8 01                                           	test   al,0x1
  2caf48:	0f 85 a2 00 00 00                               	jne    0x2caff0
  2caf4e:	83 c8 01                                        	or     eax,0x1
  2caf51:	49 8d 53 99                                     	lea    rdx,[r11-0x67]
  2caf55:	49 8d 4b 20                                     	lea    rcx,[r11+0x20]
  2caf59:	89 05 21 b3 10 00                               	mov    DWORD PTR [rip+0x10b321],eax        # 0x3d6280
  2caf5f:	e8 28 18 00 00                                  	call   0x2cc78c
  2caf64:	48 8b c8                                        	mov    rcx,rax
  2caf67:	e8 a0 2e 00 00                                  	call   0x2cde0c
  2caf6c:	48 8d 94 24 b8 00 00 00                         	lea    rdx,[rsp+0xb8]
  2caf74:	48 8b f0                                        	mov    rsi,rax
  2caf77:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2caf7c:	e8 af 17 00 00                                  	call   0x2cc730
  2caf81:	48 8b c8                                        	mov    rcx,rax
  2caf84:	e8 1b 2d 00 00                                  	call   0x2cdca4
  2caf89:	48 8d 54 24 49                                  	lea    rdx,[rsp+0x49]
  2caf8e:	48 8b f8                                        	mov    rdi,rax
  2caf91:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2caf96:	e8 31 17 00 00                                  	call   0x2cc6cc
  2caf9b:	48 8b c8                                        	mov    rcx,rax
  2caf9e:	e8 c9 2d 00 00                                  	call   0x2cdd6c
  2cafa3:	48 8d 54 24 3d                                  	lea    rdx,[rsp+0x3d]
  2cafa8:	48 8b d8                                        	mov    rbx,rax
  2cafab:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2cafb0:	e8 23 16 00 00                                  	call   0x2cc5d8
  2cafb5:	48 8b c8                                        	mov    rcx,rax
  2cafb8:	e8 4f 2e 00 00                                  	call   0x2cde0c
  2cafbd:	48 8b c8                                        	mov    rcx,rax
  2cafc0:	c7 44 24 28 ff ff ff ff                         	mov    DWORD PTR [rsp+0x28],0xffffffff
  2cafc8:	4c 8b cf                                        	mov    r9,rdi
  2cafcb:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  2cafd0:	41 b8 02 00 00 00                               	mov    r8d,0x2
  2cafd6:	48 8b d3                                        	mov    rdx,rbx
  2cafd9:	e8 16 8c 06 00                                  	call   0x333bf4
  2cafde:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2cafe1:	8b 05 99 b2 10 00                               	mov    eax,DWORD PTR [rip+0x10b299]        # 0x3d6280
  2cafe7:	4c 89 05 8a b2 10 00                            	mov    QWORD PTR [rip+0x10b28a],r8        # 0x3d6278
  2cafee:	eb 07                                           	jmp    0x2caff7
  2caff0:	4c 8b 05 81 b2 10 00                            	mov    r8,QWORD PTR [rip+0x10b281]        # 0x3d6278
  2caff7:	a8 02                                           	test   al,0x2
  2caff9:	75 1f                                           	jne    0x2cb01a
  2caffb:	48 8b 0d 5e ae 10 00                            	mov    rcx,QWORD PTR [rip+0x10ae5e]        # 0x3d5e60
  2cb002:	48 8d 15 87 b2 10 00                            	lea    rdx,[rip+0x10b287]        # 0x3d6290
  2cb009:	83 c8 02                                        	or     eax,0x2
  2cb00c:	45 33 c9                                        	xor    r9d,r9d
  2cb00f:	89 05 6b b2 10 00                               	mov    DWORD PTR [rip+0x10b26b],eax        # 0x3d6280
  2cb015:	e8 0a 0d 00 00                                  	call   0x2cbd24
  2cb01a:	49 8b ce                                        	mov    rcx,r14
  2cb01d:	e8 ba 35 00 00                                  	call   0x2ce5dc
  2cb022:	48 8b 0d 37 ae 10 00                            	mov    rcx,QWORD PTR [rip+0x10ae37]        # 0x3d5e60
  2cb029:	48 8d 15 60 b2 10 00                            	lea    rdx,[rip+0x10b260]        # 0x3d6290
  2cb030:	4c 8b c8                                        	mov    r9,rax
  2cb033:	48 89 6c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbp
  2cb038:	4d 8b c7                                        	mov    r8,r15
  2cb03b:	e8 10 0a 00 00                                  	call   0x2cba50
  2cb040:	48 83 c4 68                                     	add    rsp,0x68
  2cb044:	41 5f                                           	pop    r15
  2cb046:	41 5e                                           	pop    r14
  2cb048:	5f                                              	pop    rdi
  2cb049:	5e                                              	pop    rsi
  2cb04a:	5d                                              	pop    rbp
  2cb04b:	5b                                              	pop    rbx
  2cb04c:	c3                                              	ret
