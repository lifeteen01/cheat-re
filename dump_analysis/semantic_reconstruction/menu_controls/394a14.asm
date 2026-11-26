
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394a14 <.data+0x394a14>:
  394a14:	40 53                                           	rex push rbx
  394a16:	55                                              	push   rbp
  394a17:	56                                              	push   rsi
  394a18:	57                                              	push   rdi
  394a19:	41 56                                           	push   r14
  394a1b:	41 57                                           	push   r15
  394a1d:	48 83 ec 48                                     	sub    rsp,0x48
  394a21:	48 8b 1d 00 11 07 00                            	mov    rbx,QWORD PTR [rip+0x71100]        # 0x405b28
  394a28:	8b fa                                           	mov    edi,edx
  394a2a:	4c 8b f1                                        	mov    r14,rcx
  394a2d:	8b 83 54 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f54]
  394a33:	85 c0                                           	test   eax,eax
  394a35:	74 11                                           	je     0x394a48
  394a37:	3b c2                                           	cmp    eax,edx
  394a39:	74 0d                                           	je     0x394a48
  394a3b:	80 bb 5c 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f5c],0x0
  394a42:	0f 84 84 00 00 00                               	je     0x394acc
  394a48:	48 8b b3 08 3f 00 00                            	mov    rsi,QWORD PTR [rbx+0x3f08]
  394a4f:	48 39 b3 10 3f 00 00                            	cmp    QWORD PTR [rbx+0x3f10],rsi
  394a56:	75 74                                           	jne    0x394acc
  394a58:	8b 83 68 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f68]
  394a5e:	85 c0                                           	test   eax,eax
  394a60:	74 0d                                           	je     0x394a6f
  394a62:	3b c7                                           	cmp    eax,edi
  394a64:	74 09                                           	je     0x394a6f
  394a66:	80 bb 75 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f75],0x0
  394a6d:	74 5d                                           	je     0x394acc
  394a6f:	41 b0 01                                        	mov    r8b,0x1
  394a72:	48 8d 51 08                                     	lea    rdx,[rcx+0x8]
  394a76:	e8 31 fa ff ff                                  	call   0x3944ac
  394a7b:	84 c0                                           	test   al,al
  394a7d:	74 4d                                           	je     0x394acc
  394a7f:	39 bb a4 47 00 00                               	cmp    DWORD PTR [rbx+0x47a4],edi
  394a85:	b8 a8 47 00 00                                  	mov    eax,0x47a8
  394a8a:	8d 48 e0                                        	lea    ecx,[rax-0x20]
  394a8d:	0f 45 c1                                        	cmovne eax,ecx
  394a90:	8b 2c 18                                        	mov    ebp,DWORD PTR [rax+rbx*1]
  394a93:	0f ba e5 08                                     	bt     ebp,0x8
  394a97:	72 0e                                           	jb     0x394aa7
  394a99:	33 d2                                           	xor    edx,edx
  394a9b:	48 8b ce                                        	mov    rcx,rsi
  394a9e:	e8 e1 fc ff ff                                  	call   0x394784
  394aa3:	84 c0                                           	test   al,al
  394aa5:	74 1e                                           	je     0x394ac5
  394aa7:	85 ff                                           	test   edi,edi
  394aa9:	74 07                                           	je     0x394ab2
  394aab:	8b cf                                           	mov    ecx,edi
  394aad:	e8 7a 6a 00 00                                  	call   0x39b52c
  394ab2:	40 f6 c5 04                                     	test   bpl,0x4
  394ab6:	74 23                                           	je     0x394adb
  394ab8:	39 bb 68 3f 00 00                               	cmp    DWORD PTR [rbx+0x3f68],edi
  394abe:	75 05                                           	jne    0x394ac5
  394ac0:	e8 b3 b5 ff ff                                  	call   0x390078
  394ac5:	c6 83 5d 3f 00 00 01                            	mov    BYTE PTR [rbx+0x3f5d],0x1
  394acc:	32 c0                                           	xor    al,al
  394ace:	48 83 c4 48                                     	add    rsp,0x48
  394ad2:	41 5f                                           	pop    r15
  394ad4:	41 5e                                           	pop    r14
  394ad6:	5f                                              	pop    rdi
  394ad7:	5e                                              	pop    rsi
  394ad8:	5d                                              	pop    rbp
  394ad9:	5b                                              	pop    rbx
  394ada:	c3                                              	ret
  394adb:	85 ff                                           	test   edi,edi
  394add:	74 53                                           	je     0x394b32
  394adf:	80 bb 03 5d 00 00 00                            	cmp    BYTE PTR [rbx+0x5d03],0x0
  394ae6:	74 41                                           	je     0x394b29
  394ae8:	39 bb 58 3f 00 00                               	cmp    DWORD PTR [rbx+0x3f58],edi
  394aee:	75 39                                           	jne    0x394b29
  394af0:	e8 af da ff ff                                  	call   0x3925a4
  394af5:	f3 0f 10 05 57 87 ef ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffef8757]        # 0x28d254
  394afd:	4d 8d 46 08                                     	lea    r8,[r14+0x8]
  394b01:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  394b07:	0f 57 c9                                        	xorps  xmm1,xmm1
  394b0a:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  394b12:	48 8b c8                                        	mov    rcx,rax
  394b15:	41 b9 ff ff 00 ff                               	mov    r9d,0xff00ffff
  394b1b:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  394b21:	49 8b d6                                        	mov    rdx,r14
  394b24:	e8 1f c6 00 00                                  	call   0x3a1148
  394b29:	39 bb 08 5d 00 00                               	cmp    DWORD PTR [rbx+0x5d08],edi
  394b2f:	75 01                                           	jne    0x394b32
  394b31:	cc                                              	int3
  394b32:	80 bb 27 49 00 00 00                            	cmp    BYTE PTR [rbx+0x4927],0x0
  394b39:	0f 94 c0                                        	sete   al
  394b3c:	eb 90                                           	jmp    0x394ace
