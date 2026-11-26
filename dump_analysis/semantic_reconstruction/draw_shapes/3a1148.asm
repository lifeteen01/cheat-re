
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a1148 <.data+0x3a1148>:
  3a1148:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  3a114f:	0f 84 ee 00 00 00                               	je     0x3a1243
  3a1155:	53                                              	push   rbx
  3a1156:	55                                              	push   rbp
  3a1157:	56                                              	push   rsi
  3a1158:	57                                              	push   rdi
  3a1159:	48 83 ec 58                                     	sub    rsp,0x58
  3a115d:	f6 41 30 01                                     	test   BYTE PTR [rcx+0x30],0x1
  3a1161:	41 8b f1                                        	mov    esi,r9d
  3a1164:	49 8b d8                                        	mov    rbx,r8
  3a1167:	48 8b ea                                        	mov    rbp,rdx
  3a116a:	48 8b f9                                        	mov    rdi,rcx
  3a116d:	74 44                                           	je     0x3a11b3
  3a116f:	f3 0f 10 15 d9 c0 ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeec0d9]        # 0x28d250
  3a1177:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a117c:	0f 28 ca                                        	movaps xmm1,xmm2
  3a117f:	e8 bc b1 f2 ff                                  	call   0x2cc340
  3a1184:	4c 8b c0                                        	mov    r8,rax
  3a1187:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3a118c:	48 8b d3                                        	mov    rdx,rbx
  3a118f:	e8 50 56 f9 ff                                  	call   0x3367e4
  3a1194:	f3 0f 10 15 b4 c0 ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeec0b4]        # 0x28d250
  3a119c:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3a11a1:	0f 28 ca                                        	movaps xmm1,xmm2
  3a11a4:	48 8b d8                                        	mov    rbx,rax
  3a11a7:	e8 94 b1 f2 ff                                  	call   0x2cc340
  3a11ac:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3a11b1:	eb 42                                           	jmp    0x3a11f5
  3a11b3:	f3 0f 10 0d fd bc f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff0bcfd]        # 0x2aceb8
  3a11bb:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3a11c0:	0f 28 d1                                        	movaps xmm2,xmm1
  3a11c3:	e8 78 b1 f2 ff                                  	call   0x2cc340
  3a11c8:	4c 8b c0                                        	mov    r8,rax
  3a11cb:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3a11d0:	48 8b d3                                        	mov    rdx,rbx
  3a11d3:	e8 0c 56 f9 ff                                  	call   0x3367e4
  3a11d8:	f3 0f 10 0d 70 c0 ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeec070]        # 0x28d250
  3a11e0:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  3a11e5:	0f 28 d1                                        	movaps xmm2,xmm1
  3a11e8:	48 8b d8                                        	mov    rbx,rax
  3a11eb:	e8 50 b1 f2 ff                                  	call   0x2cc340
  3a11f0:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a11f5:	4c 8b c0                                        	mov    r8,rax
  3a11f8:	48 8b d5                                        	mov    rdx,rbp
  3a11fb:	e8 d8 e7 f4 ff                                  	call   0x2ef9d8
  3a1200:	8b 8c 24 a8 00 00 00                            	mov    ecx,DWORD PTR [rsp+0xa8]
  3a1207:	4c 8b c3                                        	mov    r8,rbx
  3a120a:	f3 0f 10 9c 24 a0 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0xa0]
  3a1213:	48 8b d0                                        	mov    rdx,rax
  3a1216:	89 4c 24 20                                     	mov    DWORD PTR [rsp+0x20],ecx
  3a121a:	48 8b cf                                        	mov    rcx,rdi
  3a121d:	e8 56 59 00 00                                  	call   0x3a6b78
  3a1222:	f3 0f 10 9c 24 b0 00 00 00                      	movss  xmm3,DWORD PTR [rsp+0xb0]
  3a122b:	41 b8 01 00 00 00                               	mov    r8d,0x1
  3a1231:	8b d6                                           	mov    edx,esi
  3a1233:	48 8b cf                                        	mov    rcx,rdi
  3a1236:	e8 1d 75 ff ff                                  	call   0x398758
  3a123b:	48 83 c4 58                                     	add    rsp,0x58
  3a123f:	5f                                              	pop    rdi
  3a1240:	5e                                              	pop    rsi
  3a1241:	5d                                              	pop    rbp
  3a1242:	5b                                              	pop    rbx
  3a1243:	c3                                              	ret
