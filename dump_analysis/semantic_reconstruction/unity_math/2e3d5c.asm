
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3d5c <.data+0x2e3d5c>:
  2e3d5c:	4c 8b dc                                        	mov    r11,rsp
  2e3d5f:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  2e3d63:	49 89 73 10                                     	mov    QWORD PTR [r11+0x10],rsi
  2e3d67:	57                                              	push   rdi
  2e3d68:	48 83 ec 70                                     	sub    rsp,0x70
  2e3d6c:	8b 05 2e 3a 0f 00                               	mov    eax,DWORD PTR [rip+0xf3a2e]        # 0x3d77a0
  2e3d72:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  2e3d77:	0f 28 f1                                        	movaps xmm6,xmm1
  2e3d7a:	0f 29 7c 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm7
  2e3d7f:	0f 28 f8                                        	movaps xmm7,xmm0
  2e3d82:	a8 01                                           	test   al,0x1
  2e3d84:	0f 85 a9 00 00 00                               	jne    0x2e3e33
  2e3d8a:	83 c8 01                                        	or     eax,0x1
  2e3d8d:	49 8d 53 18                                     	lea    rdx,[r11+0x18]
  2e3d91:	49 8d 4b 18                                     	lea    rcx,[r11+0x18]
  2e3d95:	89 05 05 3a 0f 00                               	mov    DWORD PTR [rip+0xf3a05],eax        # 0x3d77a0
  2e3d9b:	e8 90 89 fe ff                                  	call   0x2cc730
  2e3da0:	48 8b c8                                        	mov    rcx,rax
  2e3da3:	e8 fc 9e fe ff                                  	call   0x2cdca4
  2e3da8:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e3dad:	48 8b f0                                        	mov    rsi,rax
  2e3db0:	48 8d 8c 24 98 00 00 00                         	lea    rcx,[rsp+0x98]
  2e3db8:	e8 f7 bd ff ff                                  	call   0x2dfbb4
  2e3dbd:	48 8b c8                                        	mov    rcx,rax
  2e3dc0:	e8 ef 46 ff ff                                  	call   0x2d84b4
  2e3dc5:	48 8d 54 24 3d                                  	lea    rdx,[rsp+0x3d]
  2e3dca:	48 8b f8                                        	mov    rdi,rax
  2e3dcd:	48 8d 8c 24 98 00 00 00                         	lea    rcx,[rsp+0x98]
  2e3dd5:	e8 7e bc ff ff                                  	call   0x2dfa58
  2e3dda:	48 8b c8                                        	mov    rcx,rax
  2e3ddd:	e8 2a a0 fe ff                                  	call   0x2cde0c
  2e3de2:	48 8d 54 24 36                                  	lea    rdx,[rsp+0x36]
  2e3de7:	48 8b d8                                        	mov    rbx,rax
  2e3dea:	48 8d 8c 24 98 00 00 00                         	lea    rcx,[rsp+0x98]
  2e3df2:	e8 45 bb ff ff                                  	call   0x2df93c
  2e3df7:	48 8b c8                                        	mov    rcx,rax
  2e3dfa:	e8 11 93 ff ff                                  	call   0x2dd110
  2e3dff:	48 8b c8                                        	mov    rcx,rax
  2e3e02:	48 8b d3                                        	mov    rdx,rbx
  2e3e05:	e8 1a 04 05 00                                  	call   0x334224
  2e3e0a:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e3e0e:	48 8b c8                                        	mov    rcx,rax
  2e3e11:	4c 8b ce                                        	mov    r9,rsi
  2e3e14:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e3e19:	48 8b d7                                        	mov    rdx,rdi
  2e3e1c:	e8 8b 0b 05 00                                  	call   0x3349ac
  2e3e21:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e3e24:	8b 05 76 39 0f 00                               	mov    eax,DWORD PTR [rip+0xf3976]        # 0x3d77a0
  2e3e2a:	4c 89 05 67 39 0f 00                            	mov    QWORD PTR [rip+0xf3967],r8        # 0x3d7798
  2e3e31:	eb 07                                           	jmp    0x2e3e3a
  2e3e33:	4c 8b 05 5e 39 0f 00                            	mov    r8,QWORD PTR [rip+0xf395e]        # 0x3d7798
  2e3e3a:	a8 02                                           	test   al,0x2
  2e3e3c:	75 1f                                           	jne    0x2e3e5d
  2e3e3e:	48 8b 0d 1b 20 0f 00                            	mov    rcx,QWORD PTR [rip+0xf201b]        # 0x3d5e60
  2e3e45:	48 8d 15 64 39 0f 00                            	lea    rdx,[rip+0xf3964]        # 0x3d77b0
  2e3e4c:	83 c8 02                                        	or     eax,0x2
  2e3e4f:	45 33 c9                                        	xor    r9d,r9d
  2e3e52:	89 05 48 39 0f 00                               	mov    DWORD PTR [rip+0xf3948],eax        # 0x3d77a0
  2e3e58:	e8 c7 7e fe ff                                  	call   0x2cbd24
  2e3e5d:	48 8b 0d fc 1f 0f 00                            	mov    rcx,QWORD PTR [rip+0xf1ffc]        # 0x3d5e60
  2e3e64:	48 8d 15 45 39 0f 00                            	lea    rdx,[rip+0xf3945]        # 0x3d77b0
  2e3e6b:	0f 28 de                                        	movaps xmm3,xmm6
  2e3e6e:	0f 28 d7                                        	movaps xmm2,xmm7
  2e3e71:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  2e3e76:	4c 8d 5c 24 70                                  	lea    r11,[rsp+0x70]
  2e3e7b:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  2e3e7f:	49 8b 73 18                                     	mov    rsi,QWORD PTR [r11+0x18]
  2e3e83:	0f 28 7c 24 50                                  	movaps xmm7,XMMWORD PTR [rsp+0x50]
  2e3e88:	49 8b e3                                        	mov    rsp,r11
  2e3e8b:	5f                                              	pop    rdi
  2e3e8c:	e9 43 ab ff ff                                  	jmp    0x2de9d4
