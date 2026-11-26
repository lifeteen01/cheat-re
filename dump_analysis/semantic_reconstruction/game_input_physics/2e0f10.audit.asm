
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e0f10.audit.bin:     file format binary


Disassembly of section .data:

00000000002e0f10 <.data>:
  2e0f10:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e0f15:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  2e0f1a:	57                                              	push   rdi
  2e0f1b:	48 83 ec 60                                     	sub    rsp,0x60
  2e0f1f:	44 8b 0d 7a 2f 10 00                            	mov    r9d,DWORD PTR [rip+0x102f7a]        # 0x3e3ea0
  2e0f26:	41 8b d8                                        	mov    ebx,r8d
  2e0f29:	0f 29 74 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm6
  2e0f2e:	0f 28 f3                                        	movaps xmm6,xmm3
  2e0f31:	48 8b fa                                        	mov    rdi,rdx
  2e0f34:	48 8b f1                                        	mov    rsi,rcx
  2e0f37:	41 f6 c1 01                                     	test   r9b,0x1
  2e0f3b:	75 22                                           	jne    0x2e0f5f
  2e0f3d:	4c 8b 05 bc 5f 0f 00                            	mov    r8,QWORD PTR [rip+0xf5fbc]        # 0x3d6f00
  2e0f44:	41 83 c9 01                                     	or     r9d,0x1
  2e0f48:	49 81 c0 20 88 11 03                            	add    r8,0x3118820
  2e0f4f:	44 89 0d 4a 2f 10 00                            	mov    DWORD PTR [rip+0x102f4a],r9d        # 0x3e3ea0
  2e0f56:	4c 89 05 3b 2f 10 00                            	mov    QWORD PTR [rip+0x102f3b],r8        # 0x3e3e98
  2e0f5d:	eb 07                                           	jmp    0x2e0f66
  2e0f5f:	4c 8b 05 32 2f 10 00                            	mov    r8,QWORD PTR [rip+0x102f32]        # 0x3e3e98
  2e0f66:	41 f6 c1 02                                     	test   r9b,0x2
  2e0f6a:	75 21                                           	jne    0x2e0f8d
  2e0f6c:	48 8b 0d ed 4e 0f 00                            	mov    rcx,QWORD PTR [rip+0xf4eed]        # 0x3d5e60
  2e0f73:	48 8d 15 36 2f 10 00                            	lea    rdx,[rip+0x102f36]        # 0x3e3eb0
  2e0f7a:	41 83 c9 02                                     	or     r9d,0x2
  2e0f7e:	44 89 0d 1b 2f 10 00                            	mov    DWORD PTR [rip+0x102f1b],r9d        # 0x3e3ea0
  2e0f85:	45 33 c9                                        	xor    r9d,r9d
  2e0f88:	e8 97 ad fe ff                                  	call   0x2cbd24
  2e0f8d:	f3 0f 10 84 24 98 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x98]
  2e0f96:	48 8d 15 13 2f 10 00                            	lea    rdx,[rip+0x102f13]        # 0x3e3eb0
  2e0f9d:	f3 0f 10 8c 24 90 00 00 00                      	movss  xmm1,DWORD PTR [rsp+0x90]
  2e0fa6:	4c 8b cf                                        	mov    r9,rdi
  2e0fa9:	48 8b 0d b0 4e 0f 00                            	mov    rcx,QWORD PTR [rip+0xf4eb0]        # 0x3d5e60
  2e0fb0:	4c 8b c6                                        	mov    r8,rsi
  2e0fb3:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [rsp+0x40],0x0
  2e0fbb:	f3 0f 11 44 24 38                               	movss  DWORD PTR [rsp+0x38],xmm0
  2e0fc1:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm1
  2e0fc7:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  2e0fcd:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  2e0fd1:	e8 9e d8 ff ff                                  	call   0x2de874
  2e0fd6:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  2e0fdb:	84 c0                                           	test   al,al
  2e0fdd:	48 8b 74 24 78                                  	mov    rsi,QWORD PTR [rsp+0x78]
  2e0fe2:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  2e0fe7:	0f 95 c0                                        	setne  al
  2e0fea:	48 83 c4 60                                     	add    rsp,0x60
  2e0fee:	5f                                              	pop    rdi
  2e0fef:	c3                                              	ret
