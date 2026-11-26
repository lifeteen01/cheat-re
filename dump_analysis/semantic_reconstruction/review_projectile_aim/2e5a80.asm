
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5a80 <.data+0x2e5a80>:
  2e5a80:	48 8b c4                                        	mov    rax,rsp
  2e5a83:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  2e5a87:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  2e5a8b:	57                                              	push   rdi
  2e5a8c:	48 83 ec 70                                     	sub    rsp,0x70
  2e5a90:	48 8b d9                                        	mov    rbx,rcx
  2e5a93:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  2e5a97:	49 8b f0                                        	mov    rsi,r8
  2e5a9a:	48 8b fa                                        	mov    rdi,rdx
  2e5a9d:	4c 8b c3                                        	mov    r8,rbx
  2e5aa0:	48 8d 50 a8                                     	lea    rdx,[rax-0x58]
  2e5aa4:	48 83 c1 0c                                     	add    rcx,0xc
  2e5aa8:	e8 1f 9c ff ff                                  	call   0x2df6cc
  2e5aad:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2e5ab2:	e8 31 b4 ff ff                                  	call   0x2e0ee8
  2e5ab7:	0f 28 f0                                        	movaps xmm6,xmm0
  2e5aba:	0f 2e 35 8b 77 fa ff                            	ucomiss xmm6,DWORD PTR [rip+0xfffffffffffa778b]        # 0x28d24c
  2e5ac1:	7a 12                                           	jp     0x2e5ad5
  2e5ac3:	75 10                                           	jne    0x2e5ad5
  2e5ac5:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  2e5ac9:	f2 0f 11 07                                     	movsd  QWORD PTR [rdi],xmm0
  2e5acd:	8b 43 08                                        	mov    eax,DWORD PTR [rbx+0x8]
  2e5ad0:	89 47 08                                        	mov    DWORD PTR [rdi+0x8],eax
  2e5ad3:	eb 5a                                           	jmp    0x2e5b2f
  2e5ad5:	0f 28 d6                                        	movaps xmm2,xmm6
  2e5ad8:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e5add:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2e5ae2:	e8 5d 9c ff ff                                  	call   0x2df744
  2e5ae7:	4c 8b c3                                        	mov    r8,rbx
  2e5aea:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e5aef:	48 8b ce                                        	mov    rcx,rsi
  2e5af2:	e8 d5 9b ff ff                                  	call   0x2df6cc
  2e5af7:	48 8b c8                                        	mov    rcx,rax
  2e5afa:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e5aff:	e8 c0 00 00 00                                  	call   0x2e5bc4
  2e5b04:	0f 28 d6                                        	movaps xmm2,xmm6
  2e5b07:	0f 57 c9                                        	xorps  xmm1,xmm1
  2e5b0a:	e8 35 ff ff ff                                  	call   0x2e5a44
  2e5b0f:	0f 28 d0                                        	movaps xmm2,xmm0
  2e5b12:	48 8d 54 24 4c                                  	lea    rdx,[rsp+0x4c]
  2e5b17:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2e5b1c:	e8 4b 9b ff ff                                  	call   0x2df66c
  2e5b21:	4c 8b c0                                        	mov    r8,rax
  2e5b24:	48 8b d7                                        	mov    rdx,rdi
  2e5b27:	48 8b cb                                        	mov    rcx,rbx
  2e5b2a:	e8 d9 9b ff ff                                  	call   0x2df708
  2e5b2f:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  2e5b34:	4c 8d 5c 24 70                                  	lea    r11,[rsp+0x70]
  2e5b39:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  2e5b3d:	48 8b c7                                        	mov    rax,rdi
  2e5b40:	49 8b 73 18                                     	mov    rsi,QWORD PTR [r11+0x18]
  2e5b44:	49 8b e3                                        	mov    rsp,r11
  2e5b47:	5f                                              	pop    rdi
  2e5b48:	c3                                              	ret
