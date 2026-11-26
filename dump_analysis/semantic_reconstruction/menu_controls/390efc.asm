
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000390efc <.data+0x390efc>:
  390efc:	40 53                                           	rex push rbx
  390efe:	55                                              	push   rbp
  390eff:	56                                              	push   rsi
  390f00:	57                                              	push   rdi
  390f01:	41 56                                           	push   r14
  390f03:	41 57                                           	push   r15
  390f05:	48 83 ec 38                                     	sub    rsp,0x38
  390f09:	48 8b 35 18 4c 07 00                            	mov    rsi,QWORD PTR [rip+0x74c18]        # 0x405b28
  390f10:	4c 8b b6 08 3f 00 00                            	mov    r14,QWORD PTR [rsi+0x3f08]
  390f17:	4c 8d be a0 48 00 00                            	lea    r15,[rsi+0x48a0]
  390f1e:	49 8b cf                                        	mov    rcx,r15
  390f21:	e8 22 d4 00 00                                  	call   0x39e348
  390f26:	41 80 be 41 01 00 00 00                         	cmp    BYTE PTR [r14+0x141],0x0
  390f2e:	48 8b e8                                        	mov    rbp,rax
  390f31:	74 05                                           	je     0x390f38
  390f33:	e8 4c 02 00 00                                  	call   0x391184
  390f38:	48 8d 5d 04                                     	lea    rbx,[rbp+0x4]
  390f3c:	49 8d be 18 01 00 00                            	lea    rdi,[r14+0x118]
  390f43:	4c 8b c3                                        	mov    r8,rbx
  390f46:	48 8b d7                                        	mov    rdx,rdi
  390f49:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  390f4e:	e8 f1 20 ff ff                                  	call   0x383044
  390f53:	4c 8b c0                                        	mov    r8,rax
  390f56:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  390f5b:	48 8b d3                                        	mov    rdx,rbx
  390f5e:	e8 25 a4 f4 ff                                  	call   0x2db388
  390f63:	f2 0f 10 03                                     	movsd  xmm0,QWORD PTR [rbx]
  390f67:	48 8d 55 0c                                     	lea    rdx,[rbp+0xc]
  390f6b:	4c 8b c7                                        	mov    r8,rdi
  390f6e:	f2 41 0f 11 86 00 01 00 00                      	movsd  QWORD PTR [r14+0x100],xmm0
  390f77:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  390f7c:	e8 c3 20 ff ff                                  	call   0x383044
  390f81:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  390f85:	f2 0f 11 07                                     	movsd  QWORD PTR [rdi],xmm0
  390f89:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [rbp+0x14]
  390f8e:	f3 41 0f 11 8e 44 01 00 00                      	movss  DWORD PTR [r14+0x144],xmm1
  390f97:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [rbp+0x18]
  390f9c:	f3 41 0f 11 86 4c 01 00 00                      	movss  DWORD PTR [r14+0x14c],xmm0
  390fa5:	f2 0f 10 4d 1c                                  	movsd  xmm1,QWORD PTR [rbp+0x1c]
  390faa:	f2 41 0f 11 8e 28 01 00 00                      	movsd  QWORD PTR [r14+0x128],xmm1
  390fb3:	8b 45 24                                        	mov    eax,DWORD PTR [rbp+0x24]
  390fb6:	41 89 86 38 01 00 00                            	mov    DWORD PTR [r14+0x138],eax
  390fbd:	80 be 90 5c 00 00 00                            	cmp    BYTE PTR [rsi+0x5c90],0x0
  390fc4:	74 0a                                           	je     0x390fd0
  390fc6:	c7 86 c0 5c 00 00 ff ff 7f ff                   	mov    DWORD PTR [rsi+0x5cc0],0xff7fffff
  390fd0:	80 7d 2e 00                                     	cmp    BYTE PTR [rbp+0x2e],0x0
  390fd4:	0f 84 f9 00 00 00                               	je     0x3910d3
  390fda:	f3 0f 10 4d 24                                  	movss  xmm1,DWORD PTR [rbp+0x24]
  390fdf:	f3 41 0f 10 86 3c 01 00 00                      	movss  xmm0,DWORD PTR [r14+0x13c]
  390fe8:	e8 07 94 ff ff                                  	call   0x38a3f4
  390fed:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  390ff2:	f3 41 0f 11 86 38 01 00 00                      	movss  DWORD PTR [r14+0x138],xmm0
  390ffb:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  391000:	e8 3b 79 fe ff                                  	call   0x378940
  391005:	f3 0f 10 0d 53 22 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff02253]        # 0x293260
  39100d:	48 8b c8                                        	mov    rcx,rax
  391010:	e8 2b 3b 00 00                                  	call   0x394b40
  391015:	bb 01 00 00 00                                  	mov    ebx,0x1
  39101a:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39101f:	44 8b cb                                        	mov    r9d,ebx
  391022:	45 33 c0                                        	xor    r8d,r8d
  391025:	33 d2                                           	xor    edx,edx
  391027:	e8 b0 38 00 00                                  	call   0x3948dc
  39102c:	8b 8e 68 3f 00 00                               	mov    ecx,DWORD PTR [rsi+0x3f68]
  391032:	39 4d 28                                        	cmp    DWORD PTR [rbp+0x28],ecx
  391035:	74 10                                           	je     0x391047
  391037:	39 8e 6c 3f 00 00                               	cmp    DWORD PTR [rsi+0x3f6c],ecx
  39103d:	75 08                                           	jne    0x391047
  39103f:	85 c9                                           	test   ecx,ecx
  391041:	74 04                                           	je     0x391047
  391043:	8a d3                                           	mov    dl,bl
  391045:	eb 02                                           	jmp    0x391049
  391047:	32 d2                                           	xor    dl,dl
  391049:	80 7d 2c 00                                     	cmp    BYTE PTR [rbp+0x2c],0x0
  39104d:	75 08                                           	jne    0x391057
  39104f:	38 9e 9c 3f 00 00                               	cmp    BYTE PTR [rsi+0x3f9c],bl
  391055:	74 02                                           	je     0x391059
  391057:	32 db                                           	xor    bl,bl
  391059:	84 d2                                           	test   dl,dl
  39105b:	74 08                                           	je     0x391065
  39105d:	89 8e a4 47 00 00                               	mov    DWORD PTR [rsi+0x47a4],ecx
  391063:	eb 10                                           	jmp    0x391075
  391065:	84 db                                           	test   bl,bl
  391067:	74 0c                                           	je     0x391075
  391069:	8b 86 98 3f 00 00                               	mov    eax,DWORD PTR [rsi+0x3f98]
  39106f:	89 86 a4 47 00 00                               	mov    DWORD PTR [rsi+0x47a4],eax
  391075:	0f 10 44 24 20                                  	movups xmm0,XMMWORD PTR [rsp+0x20]
  39107a:	f3 0f 7f 86 b0 47 00 00                         	movdqu XMMWORD PTR [rsi+0x47b0],xmm0
  391082:	80 7d 2d 00                                     	cmp    BYTE PTR [rbp+0x2d],0x0
  391086:	75 11                                           	jne    0x391099
  391088:	83 be 54 3f 00 00 00                            	cmp    DWORD PTR [rsi+0x3f54],0x0
  39108f:	74 08                                           	je     0x391099
  391091:	0f ba ae ac 47 00 00 07                         	bts    DWORD PTR [rsi+0x47ac],0x7
  391099:	84 d2                                           	test   dl,dl
  39109b:	74 10                                           	je     0x3910ad
  39109d:	80 be 79 3f 00 00 00                            	cmp    BYTE PTR [rsi+0x3f79],0x0
  3910a4:	74 07                                           	je     0x3910ad
  3910a6:	83 8e ac 47 00 00 04                            	or     DWORD PTR [rsi+0x47ac],0x4
  3910ad:	8b 96 ac 47 00 00                               	mov    edx,DWORD PTR [rsi+0x47ac]
  3910b3:	8b c2                                           	mov    eax,edx
  3910b5:	83 c8 20                                        	or     eax,0x20
  3910b8:	89 86 ac 47 00 00                               	mov    DWORD PTR [rsi+0x47ac],eax
  3910be:	84 db                                           	test   bl,bl
  3910c0:	74 11                                           	je     0x3910d3
  3910c2:	3b 8e 98 3f 00 00                               	cmp    ecx,DWORD PTR [rsi+0x3f98]
  3910c8:	74 09                                           	je     0x3910d3
  3910ca:	83 ca 60                                        	or     edx,0x60
  3910cd:	89 96 ac 47 00 00                               	mov    DWORD PTR [rsi+0x47ac],edx
  3910d3:	49 8b cf                                        	mov    rcx,r15
  3910d6:	48 83 c4 38                                     	add    rsp,0x38
  3910da:	41 5f                                           	pop    r15
  3910dc:	41 5e                                           	pop    r14
  3910de:	5f                                              	pop    rdi
  3910df:	5e                                              	pop    rsi
  3910e0:	5d                                              	pop    rbp
  3910e1:	5b                                              	pop    rbx
  3910e2:	e9 b9 dd 00 00                                  	jmp    0x39eea0
