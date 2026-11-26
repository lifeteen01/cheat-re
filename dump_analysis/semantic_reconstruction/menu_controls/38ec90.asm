
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038ec90 <.data+0x38ec90>:
  38ec90:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  38ec95:	48 89 74 24 18                                  	mov    QWORD PTR [rsp+0x18],rsi
  38ec9a:	57                                              	push   rdi
  38ec9b:	48 83 ec 20                                     	sub    rsp,0x20
  38ec9f:	48 8b 35 82 6e 07 00                            	mov    rsi,QWORD PTR [rip+0x76e82]        # 0x405b28
  38eca6:	48 8b be 08 3f 00 00                            	mov    rdi,QWORD PTR [rsi+0x3f08]
  38ecad:	48 8d 9e a0 48 00 00                            	lea    rbx,[rsi+0x48a0]
  38ecb4:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  38ecb6:	48 8b cb                                        	mov    rcx,rbx
  38ecb9:	ff c2                                           	inc    edx
  38ecbb:	e8 34 c1 fe ff                                  	call   0x37adf4
  38ecc0:	48 8b cb                                        	mov    rcx,rbx
  38ecc3:	e8 80 f6 00 00                                  	call   0x39e348
  38ecc8:	8b 4f 10                                        	mov    ecx,DWORD PTR [rdi+0x10]
  38eccb:	48 8b d0                                        	mov    rdx,rax
  38ecce:	0f 57 d2                                        	xorps  xmm2,xmm2
  38ecd1:	89 08                                           	mov    DWORD PTR [rax],ecx
  38ecd3:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  38ecd8:	f2 0f 10 87 00 01 00 00                         	movsd  xmm0,QWORD PTR [rdi+0x100]
  38ece0:	f2 0f 11 40 04                                  	movsd  QWORD PTR [rax+0x4],xmm0
  38ece5:	f2 0f 10 8f 18 01 00 00                         	movsd  xmm1,QWORD PTR [rdi+0x118]
  38eced:	f2 0f 11 48 0c                                  	movsd  QWORD PTR [rax+0xc],xmm1
  38ecf2:	f3 0f 10 87 44 01 00 00                         	movss  xmm0,DWORD PTR [rdi+0x144]
  38ecfa:	f3 0f 11 40 14                                  	movss  DWORD PTR [rax+0x14],xmm0
  38ecff:	f3 0f 10 8f 4c 01 00 00                         	movss  xmm1,DWORD PTR [rdi+0x14c]
  38ed07:	f3 0f 11 48 18                                  	movss  DWORD PTR [rax+0x18],xmm1
  38ed0c:	f2 0f 10 87 28 01 00 00                         	movsd  xmm0,QWORD PTR [rdi+0x128]
  38ed14:	f2 0f 11 40 1c                                  	movsd  QWORD PTR [rax+0x1c],xmm0
  38ed19:	8b 87 38 01 00 00                               	mov    eax,DWORD PTR [rdi+0x138]
  38ed1f:	89 42 24                                        	mov    DWORD PTR [rdx+0x24],eax
  38ed22:	8b 86 6c 3f 00 00                               	mov    eax,DWORD PTR [rsi+0x3f6c]
  38ed28:	89 42 28                                        	mov    DWORD PTR [rdx+0x28],eax
  38ed2b:	83 be 54 3f 00 00 00                            	cmp    DWORD PTR [rsi+0x3f54],0x0
  38ed32:	0f 95 c0                                        	setne  al
  38ed35:	88 42 2d                                        	mov    BYTE PTR [rdx+0x2d],al
  38ed38:	8a 86 9c 3f 00 00                               	mov    al,BYTE PTR [rsi+0x3f9c]
  38ed3e:	88 42 2c                                        	mov    BYTE PTR [rdx+0x2c],al
  38ed41:	c6 42 2e 01                                     	mov    BYTE PTR [rdx+0x2e],0x1
  38ed45:	f3 0f 10 87 00 01 00 00                         	movss  xmm0,DWORD PTR [rdi+0x100]
  38ed4d:	f3 0f 5c 47 20                                  	subss  xmm0,DWORD PTR [rdi+0x20]
  38ed52:	f2 0f 10 8f 00 01 00 00                         	movsd  xmm1,QWORD PTR [rdi+0x100]
  38ed5a:	f2 0f 11 8f 18 01 00 00                         	movsd  QWORD PTR [rdi+0x118],xmm1
  38ed62:	0f 57 c9                                        	xorps  xmm1,xmm1
  38ed65:	f3 0f 5c 87 48 01 00 00                         	subss  xmm0,DWORD PTR [rdi+0x148]
  38ed6d:	f3 0f 11 87 4c 01 00 00                         	movss  DWORD PTR [rdi+0x14c],xmm0
  38ed75:	f3 0f 10 87 4c 01 00 00                         	movss  xmm0,DWORD PTR [rdi+0x14c]
  38ed7d:	f3 0f 11 87 44 01 00 00                         	movss  DWORD PTR [rdi+0x144],xmm0
  38ed85:	e8 b6 d5 f3 ff                                  	call   0x2cc340
  38ed8a:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  38ed8e:	f2 0f 11 87 28 01 00 00                         	movsd  QWORD PTR [rdi+0x128],xmm0
  38ed96:	80 be 90 5c 00 00 00                            	cmp    BYTE PTR [rsi+0x5c90],0x0
  38ed9d:	74 0a                                           	je     0x38eda9
  38ed9f:	c7 86 c0 5c 00 00 ff ff 7f ff                   	mov    DWORD PTR [rsi+0x5cc0],0xff7fffff
  38eda9:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  38edae:	48 8b 74 24 40                                  	mov    rsi,QWORD PTR [rsp+0x40]
  38edb3:	48 83 c4 20                                     	add    rsp,0x20
  38edb7:	5f                                              	pop    rdi
  38edb8:	c3                                              	ret
