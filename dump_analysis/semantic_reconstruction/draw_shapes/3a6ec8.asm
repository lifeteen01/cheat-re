
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a6ec8 <.data+0x3a6ec8>:
  3a6ec8:	48 89 5c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbx
  3a6ecd:	48 89 6c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbp
  3a6ed2:	56                                              	push   rsi
  3a6ed3:	57                                              	push   rdi
  3a6ed4:	41 56                                           	push   r14
  3a6ed6:	48 83 ec 20                                     	sub    rsp,0x20
  3a6eda:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  3a6edf:	48 8b d9                                        	mov    rbx,rcx
  3a6ee2:	f3 41 0f 10 08                                  	movss  xmm1,DWORD PTR [r8]
  3a6ee7:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3a6eec:	41 8b f9                                        	mov    edi,r9d
  3a6eef:	49 8b f0                                        	mov    rsi,r8
  3a6ef2:	48 8b ea                                        	mov    rbp,rdx
  3a6ef5:	e8 46 54 f2 ff                                  	call   0x2cc340
  3a6efa:	f3 0f 10 56 04                                  	movss  xmm2,DWORD PTR [rsi+0x4]
  3a6eff:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3a6f04:	f3 0f 10 4d 00                                  	movss  xmm1,DWORD PTR [rbp+0x0]
  3a6f09:	e8 32 54 f2 ff                                  	call   0x2cc340
  3a6f0e:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a6f12:	45 33 c0                                        	xor    r8d,r8d
  3a6f15:	44 0f b7 4b 34                                  	movzx  r9d,WORD PTR [rbx+0x34]
  3a6f1a:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3a6f1e:	45 8d 70 01                                     	lea    r14d,[r8+0x1]
  3a6f22:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3a6f27:	47 8d 14 0e                                     	lea    r10d,[r14+r9*1]
  3a6f2b:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a6f2f:	45 8d 58 02                                     	lea    r11d,[r8+0x2]
  3a6f33:	66 44 89 08                                     	mov    WORD PTR [rax],r9w
  3a6f37:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a6f3b:	43 8d 14 02                                     	lea    edx,[r10+r8*1]
  3a6f3f:	66 42 89 54 40 02                               	mov    WORD PTR [rax+r8*2+0x2],dx
  3a6f45:	45 03 c6                                        	add    r8d,r14d
  3a6f48:	45 3b c3                                        	cmp    r8d,r11d
  3a6f4b:	7c ea                                           	jl     0x3a6f37
  3a6f4d:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a6f51:	45 33 c0                                        	xor    r8d,r8d
  3a6f54:	66 44 89 48 06                                  	mov    WORD PTR [rax+0x6],r9w
  3a6f59:	66 45 03 cb                                     	add    r9w,r11w
  3a6f5d:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a6f61:	43 8d 14 01                                     	lea    edx,[r9+r8*1]
  3a6f65:	66 42 89 54 40 08                               	mov    WORD PTR [rax+r8*2+0x8],dx
  3a6f6b:	45 03 c6                                        	add    r8d,r14d
  3a6f6e:	45 3b c3                                        	cmp    r8d,r11d
  3a6f71:	7c ea                                           	jl     0x3a6f5d
  3a6f73:	f2 0f 10 45 00                                  	movsd  xmm0,QWORD PTR [rbp+0x0]
  3a6f78:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6f7c:	48 8b 6c 24 58                                  	mov    rbp,QWORD PTR [rsp+0x58]
  3a6f81:	f2 0f 11 00                                     	movsd  QWORD PTR [rax],xmm0
  3a6f85:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6f89:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  3a6f8f:	f3 0f 11 48 08                                  	movss  DWORD PTR [rax+0x8],xmm1
  3a6f94:	f3 0f 11 50 0c                                  	movss  DWORD PTR [rax+0xc],xmm2
  3a6f99:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6f9d:	89 78 10                                        	mov    DWORD PTR [rax+0x10],edi
  3a6fa0:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fa4:	f2 0f 11 40 14                                  	movsd  QWORD PTR [rax+0x14],xmm0
  3a6fa9:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fad:	f3 0f 11 48 1c                                  	movss  DWORD PTR [rax+0x1c],xmm1
  3a6fb2:	f3 0f 11 50 20                                  	movss  DWORD PTR [rax+0x20],xmm2
  3a6fb7:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fbb:	89 78 24                                        	mov    DWORD PTR [rax+0x24],edi
  3a6fbe:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  3a6fc2:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fc6:	f2 0f 11 40 28                                  	movsd  QWORD PTR [rax+0x28],xmm0
  3a6fcb:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fcf:	f2 0f 10 44 24 48                               	movsd  xmm0,QWORD PTR [rsp+0x48]
  3a6fd5:	f3 0f 11 48 30                                  	movss  DWORD PTR [rax+0x30],xmm1
  3a6fda:	f3 0f 11 50 34                                  	movss  DWORD PTR [rax+0x34],xmm2
  3a6fdf:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fe3:	89 78 38                                        	mov    DWORD PTR [rax+0x38],edi
  3a6fe6:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6fea:	f2 0f 11 40 3c                                  	movsd  QWORD PTR [rax+0x3c],xmm0
  3a6fef:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a6ff3:	f3 0f 11 48 44                                  	movss  DWORD PTR [rax+0x44],xmm1
  3a6ff8:	f3 0f 11 50 48                                  	movss  DWORD PTR [rax+0x48],xmm2
  3a6ffd:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7001:	89 78 4c                                        	mov    DWORD PTR [rax+0x4c],edi
  3a7004:	48 83 43 48 50                                  	add    QWORD PTR [rbx+0x48],0x50
  3a7009:	83 43 34 04                                     	add    DWORD PTR [rbx+0x34],0x4
  3a700d:	48 83 43 50 0c                                  	add    QWORD PTR [rbx+0x50],0xc
  3a7012:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  3a7017:	48 83 c4 20                                     	add    rsp,0x20
  3a701b:	41 5e                                           	pop    r14
  3a701d:	5f                                              	pop    rdi
  3a701e:	5e                                              	pop    rsi
  3a701f:	c3                                              	ret
