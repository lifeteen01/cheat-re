
dump_analysis/semantic_reconstruction/game_input_physics/2cf0e4.bin:     file format binary


Disassembly of section .data:

00000000002cf0e4 <.data>:
  2cf0e4:	48 8b ca                                        	mov    rcx,rdx
  2cf0e7:	e9 50 64 00 00                                  	jmp    0x2d553c
  2cf0ec:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2cf0f1:	57                                              	push   rdi
  2cf0f2:	48 83 ec 20                                     	sub    rsp,0x20
  2cf0f6:	49 8b d8                                        	mov    rbx,r8
  2cf0f9:	48 8b fa                                        	mov    rdi,rdx
  2cf0fc:	e8 a3 c2 ff ff                                  	call   0x2cb3a4
  2cf101:	48 8b c8                                        	mov    rcx,rax
  2cf104:	4c 8b c3                                        	mov    r8,rbx
  2cf107:	48 8b d7                                        	mov    rdx,rdi
  2cf10a:	e8 35 64 00 00                                  	call   0x2d5544
  2cf10f:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2cf114:	34 01                                           	xor    al,0x1
  2cf116:	48 83 c4 20                                     	add    rsp,0x20
  2cf11a:	5f                                              	pop    rdi
  2cf11b:	c3                                              	ret
  2cf11c:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  2cf11f:	e9 38 8a 00 00                                  	jmp    0x2d7b5c
  2cf124:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  2cf127:	e9 60 8a 00 00                                  	jmp    0x2d7b8c
  2cf12c:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  2cf12f:	e9 70 8a 00 00                                  	jmp    0x2d7ba4
  2cf134:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  2cf137:	e9 98 8a 00 00                                  	jmp    0x2d7bd4
  2cf13c:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  2cf13f:	e9 a8 8a 00 00                                  	jmp    0x2d7bec
  2cf144:	40 53                                           	rex push rbx
  2cf146:	56                                              	push   rsi
  2cf147:	57                                              	push   rdi
  2cf148:	41 56                                           	push   r14
  2cf14a:	48 83 ec 28                                     	sub    rsp,0x28
  2cf14e:	48 ff 02                                        	inc    QWORD PTR [rdx]
  2cf151:	48 8b da                                        	mov    rbx,rdx
  2cf154:	e8 e3 ff ff ff                                  	call   0x2cf13c
  2cf159:	48 8b f0                                        	mov    rsi,rax
  2cf15c:	e8 43 f4 ff ff                                  	call   0x2ce5a4
  2cf161:	84 c0                                           	test   al,al
  2cf163:	74                                              	.byte 0x74
