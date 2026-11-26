
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ade50 <.data+0x3ade50>:
  3ade50:	40 53                                           	rex push rbx
  3ade52:	55                                              	push   rbp
  3ade53:	56                                              	push   rsi
  3ade54:	57                                              	push   rdi
  3ade55:	41 54                                           	push   r12
  3ade57:	41 56                                           	push   r14
  3ade59:	41 57                                           	push   r15
  3ade5b:	48 83 ec 30                                     	sub    rsp,0x30
  3ade5f:	48 8b da                                        	mov    rbx,rdx
  3ade62:	49 63 f0                                        	movsxd rsi,r8d
  3ade65:	33 d2                                           	xor    edx,edx
  3ade67:	4c 8b e1                                        	mov    r12,rcx
  3ade6a:	bf 01 00 00 00                                  	mov    edi,0x1
  3ade6f:	45 85 c0                                        	test   r8d,r8d
  3ade72:	7e 0f                                           	jle    0x3ade83
  3ade74:	4c 8d 04 52                                     	lea    r8,[rdx+rdx*2]
  3ade78:	42 89 54 c3 14                                  	mov    DWORD PTR [rbx+r8*8+0x14],edx
  3ade7d:	ff c2                                           	inc    edx
  3ade7f:	3b d6                                           	cmp    edx,esi
  3ade81:	7c f1                                           	jl     0x3ade74
  3ade83:	4c 8d 0d 8e b6 ff ff                            	lea    r9,[rip+0xffffffffffffb68e]        # 0x3a9518
  3ade8a:	41 b8 18 00 00 00                               	mov    r8d,0x18
  3ade90:	48 8b d6                                        	mov    rdx,rsi
  3ade93:	48 8b cb                                        	mov    rcx,rbx
  3ade96:	e8 b1 55 fe ff                                  	call   0x39344c
  3ade9b:	45 33 f6                                        	xor    r14d,r14d
  3ade9e:	85 f6                                           	test   esi,esi
  3adea0:	7e 53                                           	jle    0x3adef5
  3adea2:	4b 8d 2c 76                                     	lea    rbp,[r14+r14*2]
  3adea6:	44 8b 44 eb 04                                  	mov    r8d,DWORD PTR [rbx+rbp*8+0x4]
  3adeab:	45 85 c0                                        	test   r8d,r8d
  3adeae:	74 31                                           	je     0x3adee1
  3adeb0:	44 8b 4c eb 08                                  	mov    r9d,DWORD PTR [rbx+rbp*8+0x8]
  3adeb5:	45 85 c9                                        	test   r9d,r9d
  3adeb8:	74 27                                           	je     0x3adee1
  3adeba:	49 8b d4                                        	mov    rdx,r12
  3adebd:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3adec2:	e8 f1 bc ff ff                                  	call   0x3a9bb8
  3adec7:	48 8b c8                                        	mov    rcx,rax
  3adeca:	48 83 78 08 00                                  	cmp    QWORD PTR [rax+0x8],0x0
  3adecf:	74 07                                           	je     0x3aded8
  3aded1:	8b 00                                           	mov    eax,DWORD PTR [rax]
  3aded3:	8b 49 04                                        	mov    ecx,DWORD PTR [rcx+0x4]
  3aded6:	eb 0d                                           	jmp    0x3adee5
  3aded8:	b9 ff ff ff 7f                                  	mov    ecx,0x7fffffff
  3adedd:	8b c1                                           	mov    eax,ecx
  3adedf:	eb 04                                           	jmp    0x3adee5
  3adee1:	33 c0                                           	xor    eax,eax
  3adee3:	33 c9                                           	xor    ecx,ecx
  3adee5:	41 ff c6                                        	inc    r14d
  3adee8:	89 4c eb 10                                     	mov    DWORD PTR [rbx+rbp*8+0x10],ecx
  3adeec:	89 44 eb 0c                                     	mov    DWORD PTR [rbx+rbp*8+0xc],eax
  3adef0:	44 3b f6                                        	cmp    r14d,esi
  3adef3:	7c ad                                           	jl     0x3adea2
  3adef5:	4c 8d 0d 44 b6 ff ff                            	lea    r9,[rip+0xffffffffffffb644]        # 0x3a9540
  3adefc:	41 b8 18 00 00 00                               	mov    r8d,0x18
  3adf02:	48 8b d6                                        	mov    rdx,rsi
  3adf05:	48 8b cb                                        	mov    rcx,rbx
  3adf08:	e8 3f 55 fe ff                                  	call   0x39344c
  3adf0d:	33 c9                                           	xor    ecx,ecx
  3adf0f:	85 f6                                           	test   esi,esi
  3adf11:	7e 31                                           	jle    0x3adf44
  3adf13:	48 8d 14 49                                     	lea    rdx,[rcx+rcx*2]
  3adf17:	81 7c d3 0c ff ff ff 7f                         	cmp    DWORD PTR [rbx+rdx*8+0xc],0x7fffffff
  3adf1f:	75 0e                                           	jne    0x3adf2f
  3adf21:	81 7c d3 10 ff ff ff 7f                         	cmp    DWORD PTR [rbx+rdx*8+0x10],0x7fffffff
  3adf29:	75 04                                           	jne    0x3adf2f
  3adf2b:	33 c0                                           	xor    eax,eax
  3adf2d:	eb 05                                           	jmp    0x3adf34
  3adf2f:	b8 01 00 00 00                                  	mov    eax,0x1
  3adf34:	89 44 d3 14                                     	mov    DWORD PTR [rbx+rdx*8+0x14],eax
  3adf38:	f7 d8                                           	neg    eax
  3adf3a:	1b c0                                           	sbb    eax,eax
  3adf3c:	ff c1                                           	inc    ecx
  3adf3e:	23 f8                                           	and    edi,eax
  3adf40:	3b ce                                           	cmp    ecx,esi
  3adf42:	7c cf                                           	jl     0x3adf13
  3adf44:	8b c7                                           	mov    eax,edi
  3adf46:	48 83 c4 30                                     	add    rsp,0x30
  3adf4a:	41 5f                                           	pop    r15
  3adf4c:	41 5e                                           	pop    r14
  3adf4e:	41 5c                                           	pop    r12
  3adf50:	5f                                              	pop    rdi
  3adf51:	5e                                              	pop    rsi
  3adf52:	5d                                              	pop    rbp
  3adf53:	5b                                              	pop    rbx
  3adf54:	c3                                              	ret
  3adf55:	cc                                              	int3
  3adf56:	cc                                              	int3
  3adf57:	cc                                              	int3
  3adf58:	4c 8b c1                                        	mov    r8,rcx
  3adf5b:	85 d2                                           	test   edx,edx
  3adf5d:	74 07                                           	je     0x3adf66
  3adf5f:	b8 01 00 00 00                                  	mov    eax,0x1
  3adf64:	eb 0d                                           	jmp    0x3adf73
  3adf66:	8b 49 14                                        	mov    ecx,DWORD PTR [rcx+0x14]
  3adf69:	41 8b 00                                        	mov    eax,DWORD PTR [r8]
  3adf6c:	ff c8                                           	dec    eax
  3adf6e:	03 c1                                           	add    eax,ecx
  3adf70:	99                                              	cdq
  3adf71:	f7 f9                                           	idiv   ecx
  3adf73:	41 89 40 08                                     	mov    DWORD PTR [r8+0x8],eax
  3adf77:	c3                                              	ret
