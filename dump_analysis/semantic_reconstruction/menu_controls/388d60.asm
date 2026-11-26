
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000388d60 <.data+0x388d60>:
  388d60:	40 55                                           	rex push rbp
  388d62:	53                                              	push   rbx
  388d63:	56                                              	push   rsi
  388d64:	57                                              	push   rdi
  388d65:	48 8b ec                                        	mov    rbp,rsp
  388d68:	48 83 ec 28                                     	sub    rsp,0x28
  388d6c:	f3 0f 10 0d e0 4d f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff04de0]        # 0x28db54
  388d74:	48 8b d9                                        	mov    rbx,rcx
  388d77:	0f 28 d1                                        	movaps xmm2,xmm1
  388d7a:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  388d7e:	e8 bd 35 f4 ff                                  	call   0x2cc340
  388d83:	f3 0f 10 0d b9 06 f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff206b9]        # 0x2a9444
  388d8b:	48 8d 4d 28                                     	lea    rcx,[rbp+0x28]
  388d8f:	0f 28 d1                                        	movaps xmm2,xmm1
  388d92:	e8 a9 35 f4 ff                                  	call   0x2cc340
  388d97:	e8 30 a1 00 00                                  	call   0x392ecc
  388d9c:	8b 3d 2e a0 07 00                               	mov    edi,DWORD PTR [rip+0x7a02e]        # 0x402dd0
  388da2:	48 8d 70 20                                     	lea    rsi,[rax+0x20]
  388da6:	eb 48                                           	jmp    0x388df0
  388da8:	8b d7                                           	mov    edx,edi
  388daa:	48 8b ce                                        	mov    rcx,rsi
  388dad:	e8 f6 9f ff ff                                  	call   0x382da8
  388db2:	4c 8b c0                                        	mov    r8,rax
  388db5:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  388db9:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  388dbd:	e8 ae a2 ff ff                                  	call   0x383070
  388dc2:	8b d7                                           	mov    edx,edi
  388dc4:	48 8b ce                                        	mov    rcx,rsi
  388dc7:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  388dcb:	f2 0f 11 45 30                                  	movsd  QWORD PTR [rbp+0x30],xmm0
  388dd0:	e8 d3 9f ff ff                                  	call   0x382da8
  388dd5:	4c 8b c0                                        	mov    r8,rax
  388dd8:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  388ddc:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  388de0:	e8 5f a2 ff ff                                  	call   0x383044
  388de5:	ff c7                                           	inc    edi
  388de7:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  388deb:	f2 0f 11 45 28                                  	movsd  QWORD PTR [rbp+0x28],xmm0
  388df0:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  388df2:	7c b4                                           	jl     0x388da8
  388df4:	f3 0f 10 05 54 44 f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff04454]        # 0x28d250
  388dfc:	48 8b cb                                        	mov    rcx,rbx
  388dff:	f3 0f 10 55 2c                                  	movss  xmm2,DWORD PTR [rbp+0x2c]
  388e04:	f3 0f 10 4d 28                                  	movss  xmm1,DWORD PTR [rbp+0x28]
  388e09:	f3 0f 58 55 34                                  	addss  xmm2,DWORD PTR [rbp+0x34]
  388e0e:	f3 0f 58 4d 30                                  	addss  xmm1,DWORD PTR [rbp+0x30]
  388e13:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  388e17:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  388e1b:	e8 20 35 f4 ff                                  	call   0x2cc340
  388e20:	48 8b c3                                        	mov    rax,rbx
  388e23:	48 83 c4 28                                     	add    rsp,0x28
  388e27:	5f                                              	pop    rdi
  388e28:	5e                                              	pop    rsi
  388e29:	5b                                              	pop    rbx
  388e2a:	5d                                              	pop    rbp
  388e2b:	c3                                              	ret
