
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e8fac <.data+0x2e8fac>:
  2e8fac:	40 53                                           	rex push rbx
  2e8fae:	55                                              	push   rbp
  2e8faf:	56                                              	push   rsi
  2e8fb0:	57                                              	push   rdi
  2e8fb1:	41 56                                           	push   r14
  2e8fb3:	48 83 ec 70                                     	sub    rsp,0x70
  2e8fb7:	8b 05 6b c7 0f 00                               	mov    eax,DWORD PTR [rip+0xfc76b]        # 0x3e5728
  2e8fbd:	41 8b f1                                        	mov    esi,r9d
  2e8fc0:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  2e8fc5:	0f 28 f2                                        	movaps xmm6,xmm2
  2e8fc8:	48 8b ea                                        	mov    rbp,rdx
  2e8fcb:	4c 8b f1                                        	mov    r14,rcx
  2e8fce:	a8 01                                           	test   al,0x1
  2e8fd0:	0f 85 85 00 00 00                               	jne    0x2e905b
  2e8fd6:	83 c8 01                                        	or     eax,0x1
  2e8fd9:	48 8d 54 24 41                                  	lea    rdx,[rsp+0x41]
  2e8fde:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e8fe3:	89 05 3f c7 0f 00                               	mov    DWORD PTR [rip+0xfc73f],eax        # 0x3e5728
  2e8fe9:	e8 9e c7 ff ff                                  	call   0x2e578c
  2e8fee:	48 8b c8                                        	mov    rcx,rax
  2e8ff1:	e8 42 41 ff ff                                  	call   0x2dd138
  2e8ff6:	48 8d 54 24 51                                  	lea    rdx,[rsp+0x51]
  2e8ffb:	48 8b f8                                        	mov    rdi,rax
  2e8ffe:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e9003:	e8 d0 c5 ff ff                                  	call   0x2e55d8
  2e9008:	48 8b c8                                        	mov    rcx,rax
  2e900b:	e8 fc 4d fe ff                                  	call   0x2cde0c
  2e9010:	48 8d 54 24 49                                  	lea    rdx,[rsp+0x49]
  2e9015:	48 8b d8                                        	mov    rbx,rax
  2e9018:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e901d:	e8 5a c4 ff ff                                  	call   0x2e547c
  2e9022:	48 8b c8                                        	mov    rcx,rax
  2e9025:	e8 0e 41 ff ff                                  	call   0x2dd138
  2e902a:	48 8b c8                                        	mov    rcx,rax
  2e902d:	48 8b d3                                        	mov    rdx,rbx
  2e9030:	e8 ef b1 04 00                                  	call   0x334224
  2e9035:	48 8b c8                                        	mov    rcx,rax
  2e9038:	41 b1 01                                        	mov    r9b,0x1
  2e903b:	41 b8 06 00 00 00                               	mov    r8d,0x6
  2e9041:	48 8b d7                                        	mov    rdx,rdi
  2e9044:	e8 47 ba 04 00                                  	call   0x334a90
  2e9049:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e904c:	8b 05 d6 c6 0f 00                               	mov    eax,DWORD PTR [rip+0xfc6d6]        # 0x3e5728
  2e9052:	4c 89 05 c7 c6 0f 00                            	mov    QWORD PTR [rip+0xfc6c7],r8        # 0x3e5720
  2e9059:	eb 07                                           	jmp    0x2e9062
  2e905b:	4c 8b 05 be c6 0f 00                            	mov    r8,QWORD PTR [rip+0xfc6be]        # 0x3e5720
  2e9062:	a8 02                                           	test   al,0x2
  2e9064:	75 1f                                           	jne    0x2e9085
  2e9066:	48 8b 0d f3 cd 0e 00                            	mov    rcx,QWORD PTR [rip+0xecdf3]        # 0x3d5e60
  2e906d:	48 8d 15 bc c6 0f 00                            	lea    rdx,[rip+0xfc6bc]        # 0x3e5730
  2e9074:	83 c8 02                                        	or     eax,0x2
  2e9077:	45 33 c9                                        	xor    r9d,r9d
  2e907a:	89 05 a8 c6 0f 00                               	mov    DWORD PTR [rip+0xfc6a8],eax        # 0x3e5728
  2e9080:	e8 9f 2c fe ff                                  	call   0x2cbd24
  2e9085:	8b 84 24 c8 00 00 00                            	mov    eax,DWORD PTR [rsp+0xc8]
  2e908c:	48 8d 15 9d c6 0f 00                            	lea    rdx,[rip+0xfc69d]        # 0x3e5730
  2e9093:	48 8b 0d c6 cd 0e 00                            	mov    rcx,QWORD PTR [rip+0xecdc6]        # 0x3d5e60
  2e909a:	4c 8b cd                                        	mov    r9,rbp
  2e909d:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2e90a1:	4d 8b c6                                        	mov    r8,r14
  2e90a4:	48 8b 84 24 c0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xc0]
  2e90ac:	89 74 24 30                                     	mov    DWORD PTR [rsp+0x30],esi
  2e90b0:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  2e90b6:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  2e90bb:	e8 7c b6 ff ff                                  	call   0x2e473c
  2e90c0:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  2e90c5:	84 c0                                           	test   al,al
  2e90c7:	0f 95 c0                                        	setne  al
  2e90ca:	48 83 c4 70                                     	add    rsp,0x70
  2e90ce:	41 5e                                           	pop    r14
  2e90d0:	5f                                              	pop    rdi
  2e90d1:	5e                                              	pop    rsi
  2e90d2:	5d                                              	pop    rbp
  2e90d3:	5b                                              	pop    rbx
  2e90d4:	c3                                              	ret
