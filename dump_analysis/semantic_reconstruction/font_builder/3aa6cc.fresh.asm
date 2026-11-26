
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aa6cc <.data+0x3aa6cc>:
  3aa6cc:	48 8b c4                                        	mov    rax,rsp
  3aa6cf:	48 89 58 10                                     	mov    QWORD PTR [rax+0x10],rbx
  3aa6d3:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  3aa6d7:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3aa6db:	55                                              	push   rbp
  3aa6dc:	56                                              	push   rsi
  3aa6dd:	57                                              	push   rdi
  3aa6de:	41 54                                           	push   r12
  3aa6e0:	41 55                                           	push   r13
  3aa6e2:	41 56                                           	push   r14
  3aa6e4:	41 57                                           	push   r15
  3aa6e6:	48 81 ec 20 01 00 00                            	sub    rsp,0x120
  3aa6ed:	4c 8b 79 08                                     	mov    r15,QWORD PTR [rcx+0x8]
  3aa6f1:	49 8b d8                                        	mov    rbx,r8
  3aa6f4:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3aa6f8:	4c 8b e9                                        	mov    r13,rcx
  3aa6fb:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3aa6ff:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3aa704:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3aa709:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  3aa711:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  3aa719:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  3aa721:	44 0f 29 a8 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm13
  3aa729:	44 0f 29 b0 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm14
  3aa731:	44 0f 29 b8 28 ff ff ff                         	movaps XMMWORD PTR [rax-0xd8],xmm15
  3aa739:	e8 b2 fd ff ff                                  	call   0x3aa4f0
  3aa73e:	45 33 c0                                        	xor    r8d,r8d
  3aa741:	4c 89 03                                        	mov    QWORD PTR [rbx],r8
  3aa744:	85 c0                                           	test   eax,eax
  3aa746:	0f 88 67 07 00 00                               	js     0x3aaeb3
  3aa74c:	4c 63 f0                                        	movsxd r14,eax
  3aa74f:	4b 8d 34 3e                                     	lea    rsi,[r14+r15*1]
  3aa753:	48 8b ce                                        	mov    rcx,rsi
  3aa756:	e8 39 36 00 00                                  	call   0x3add94
  3aa75b:	66 85 c0                                        	test   ax,ax
  3aa75e:	0f 8e b6 03 00 00                               	jle    0x3aab1a
  3aa764:	98                                              	cwde
  3aa765:	8d 2c 00                                        	lea    ebp,[rax+rax*1]
  3aa768:	4c 63 e5                                        	movsxd r12,ebp
  3aa76b:	89 6c 24 60                                     	mov    DWORD PTR [rsp+0x60],ebp
  3aa76f:	49 8d 4c 24 0a                                  	lea    rcx,[r12+0xa]
  3aa774:	49 03 ce                                        	add    rcx,r14
  3aa777:	49 03 cf                                        	add    rcx,r15
  3aa77a:	e8 15 36 00 00                                  	call   0x3add94
  3aa77f:	49 8d 4c 24 08                                  	lea    rcx,[r12+0x8]
  3aa784:	66 89 84 24 60 01 00 00                         	mov    WORD PTR [rsp+0x160],ax
  3aa78c:	48 03 ce                                        	add    rcx,rsi
  3aa78f:	e8 00 36 00 00                                  	call   0x3add94
  3aa794:	0f b7 c0                                        	movzx  eax,ax
  3aa797:	41 8d 78 01                                     	lea    edi,[r8+0x1]
  3aa79b:	8b cd                                           	mov    ecx,ebp
  3aa79d:	89 44 24 70                                     	mov    DWORD PTR [rsp+0x70],eax
  3aa7a1:	0b cf                                           	or     ecx,edi
  3aa7a3:	03 c8                                           	add    ecx,eax
  3aa7a5:	48 63 d1                                        	movsxd rdx,ecx
  3aa7a8:	48 6b ca 0e                                     	imul   rcx,rdx,0xe
  3aa7ac:	e8 a7 a9 fe ff                                  	call   0x395158
  3aa7b1:	48 8b d8                                        	mov    rbx,rax
  3aa7b4:	33 c0                                           	xor    eax,eax
  3aa7b6:	48 85 db                                        	test   rbx,rbx
  3aa7b9:	0f 84 f4 06 00 00                               	je     0x3aaeb3
  3aa7bf:	0f b7 94 24 60 01 00 00                         	movzx  edx,WORD PTR [rsp+0x160]
  3aa7c7:	49 83 c7 0c                                     	add    r15,0xc
  3aa7cb:	49 03 d4                                        	add    rdx,r12
  3aa7ce:	89 44 24 6c                                     	mov    DWORD PTR [rsp+0x6c],eax
  3aa7d2:	49 03 d6                                        	add    rdx,r14
  3aa7d5:	89 44 24 5c                                     	mov    DWORD PTR [rsp+0x5c],eax
  3aa7d9:	44 8a d8                                        	mov    r11b,al
  3aa7dc:	44 8b e8                                        	mov    r13d,eax
  3aa7df:	44 8b c8                                        	mov    r9d,eax
  3aa7e2:	49 03 d7                                        	add    rdx,r15
  3aa7e5:	48 8d 46 0a                                     	lea    rax,[rsi+0xa]
  3aa7e9:	8b 74 24 70                                     	mov    esi,DWORD PTR [rsp+0x70]
  3aa7ed:	ff c6                                           	inc    esi
  3aa7ef:	48 89 44 24 78                                  	mov    QWORD PTR [rsp+0x78],rax
  3aa7f4:	45 33 ff                                        	xor    r15d,r15d
  3aa7f7:	44 89 7c 24 68                                  	mov    DWORD PTR [rsp+0x68],r15d
  3aa7fc:	45 8a c7                                        	mov    r8b,r15b
  3aa7ff:	45 8b d7                                        	mov    r10d,r15d
  3aa802:	45 84 c0                                        	test   r8b,r8b
  3aa805:	75 1e                                           	jne    0x3aa825
  3aa807:	44 8a 1a                                        	mov    r11b,BYTE PTR [rdx]
  3aa80a:	41 8a c3                                        	mov    al,r11b
  3aa80d:	24 08                                           	and    al,0x8
  3aa80f:	74 04                                           	je     0x3aa815
  3aa811:	44 8a 42 01                                     	mov    r8b,BYTE PTR [rdx+0x1]
  3aa815:	f6 d8                                           	neg    al
  3aa817:	48 1b c0                                        	sbb    rax,rax
  3aa81a:	48 f7 d8                                        	neg    rax
  3aa81d:	48 03 c7                                        	add    rax,rdi
  3aa820:	48 03 d0                                        	add    rdx,rax
  3aa823:	eb 04                                           	jmp    0x3aa829
  3aa825:	41 80 c0 ff                                     	add    r8b,0xff
  3aa829:	41 8d 04 2a                                     	lea    eax,[r10+rbp*1]
  3aa82d:	44 03 d7                                        	add    r10d,edi
  3aa830:	48 63 c8                                        	movsxd rcx,eax
  3aa833:	48 6b c1 0e                                     	imul   rax,rcx,0xe
  3aa837:	44 88 5c 03 0c                                  	mov    BYTE PTR [rbx+rax*1+0xc],r11b
  3aa83c:	44 3b d6                                        	cmp    r10d,esi
  3aa83f:	7c c1                                           	jl     0x3aa802
  3aa841:	45 8b c7                                        	mov    r8d,r15d
  3aa844:	45 8b d7                                        	mov    r10d,r15d
  3aa847:	41 8d 04 2a                                     	lea    eax,[r10+rbp*1]
  3aa84b:	48 63 c8                                        	movsxd rcx,eax
  3aa84e:	4c 6b f1 0e                                     	imul   r14,rcx,0xe
  3aa852:	46 8a 5c 33 0c                                  	mov    r11b,BYTE PTR [rbx+r14*1+0xc]
  3aa857:	41 80 e3 10                                     	and    r11b,0x10
  3aa85b:	42 f6 44 33 0c 02                               	test   BYTE PTR [rbx+r14*1+0xc],0x2
  3aa861:	74 15                                           	je     0x3aa878
  3aa863:	0f b6 0a                                        	movzx  ecx,BYTE PTR [rdx]
  3aa866:	48 03 d7                                        	add    rdx,rdi
  3aa869:	8b c1                                           	mov    eax,ecx
  3aa86b:	f7 d8                                           	neg    eax
  3aa86d:	45 84 db                                        	test   r11b,r11b
  3aa870:	0f 45 c1                                        	cmovne eax,ecx
  3aa873:	44 03 c0                                        	add    r8d,eax
  3aa876:	eb 1c                                           	jmp    0x3aa894
  3aa878:	45 84 db                                        	test   r11b,r11b
  3aa87b:	75 17                                           	jne    0x3aa894
  3aa87d:	0f b6 02                                        	movzx  eax,BYTE PTR [rdx]
  3aa880:	66 c1 e0 08                                     	shl    ax,0x8
  3aa884:	0f bf c8                                        	movsx  ecx,ax
  3aa887:	0f b6 42 01                                     	movzx  eax,BYTE PTR [rdx+0x1]
  3aa88b:	0b c8                                           	or     ecx,eax
  3aa88d:	44 03 c1                                        	add    r8d,ecx
  3aa890:	48 83 c2 02                                     	add    rdx,0x2
  3aa894:	44 03 d7                                        	add    r10d,edi
  3aa897:	66 46 89 04 33                                  	mov    WORD PTR [rbx+r14*1],r8w
  3aa89c:	44 3b d6                                        	cmp    r10d,esi
  3aa89f:	7c a6                                           	jl     0x3aa847
  3aa8a1:	45 8b c7                                        	mov    r8d,r15d
  3aa8a4:	45 8b d7                                        	mov    r10d,r15d
  3aa8a7:	41 8d 04 2a                                     	lea    eax,[r10+rbp*1]
  3aa8ab:	48 63 c8                                        	movsxd rcx,eax
  3aa8ae:	4c 6b f1 0e                                     	imul   r14,rcx,0xe
  3aa8b2:	46 8a 5c 33 0c                                  	mov    r11b,BYTE PTR [rbx+r14*1+0xc]
  3aa8b7:	41 80 e3 20                                     	and    r11b,0x20
  3aa8bb:	42 f6 44 33 0c 04                               	test   BYTE PTR [rbx+r14*1+0xc],0x4
  3aa8c1:	74 15                                           	je     0x3aa8d8
  3aa8c3:	0f b6 0a                                        	movzx  ecx,BYTE PTR [rdx]
  3aa8c6:	48 03 d7                                        	add    rdx,rdi
  3aa8c9:	8b c1                                           	mov    eax,ecx
  3aa8cb:	f7 d8                                           	neg    eax
  3aa8cd:	45 84 db                                        	test   r11b,r11b
  3aa8d0:	0f 45 c1                                        	cmovne eax,ecx
  3aa8d3:	44 03 c0                                        	add    r8d,eax
  3aa8d6:	eb 1c                                           	jmp    0x3aa8f4
  3aa8d8:	45 84 db                                        	test   r11b,r11b
  3aa8db:	75 17                                           	jne    0x3aa8f4
  3aa8dd:	0f b6 02                                        	movzx  eax,BYTE PTR [rdx]
  3aa8e0:	66 c1 e0 08                                     	shl    ax,0x8
  3aa8e4:	0f bf c8                                        	movsx  ecx,ax
  3aa8e7:	0f b6 42 01                                     	movzx  eax,BYTE PTR [rdx+0x1]
  3aa8eb:	0b c8                                           	or     ecx,eax
  3aa8ed:	44 03 c1                                        	add    r8d,ecx
  3aa8f0:	48 83 c2 02                                     	add    rdx,0x2
  3aa8f4:	44 03 d7                                        	add    r10d,edi
  3aa8f7:	66 46 89 44 33 02                               	mov    WORD PTR [rbx+r14*1+0x2],r8w
  3aa8fd:	44 3b d6                                        	cmp    r10d,esi
  3aa900:	7c a5                                           	jl     0x3aa8a7
  3aa902:	41 8b d7                                        	mov    edx,r15d
  3aa905:	44 89 7c 24 54                                  	mov    DWORD PTR [rsp+0x54],r15d
  3aa90a:	89 54 24 50                                     	mov    DWORD PTR [rsp+0x50],edx
  3aa90e:	45 8b d7                                        	mov    r10d,r15d
  3aa911:	44 89 7c 24 58                                  	mov    DWORD PTR [rsp+0x58],r15d
  3aa916:	45 8b c7                                        	mov    r8d,r15d
  3aa919:	44 89 bc 24 78 01 00 00                         	mov    DWORD PTR [rsp+0x178],r15d
  3aa921:	45 8b df                                        	mov    r11d,r15d
  3aa924:	41 8b f7                                        	mov    esi,r15d
  3aa927:	45 8b f7                                        	mov    r14d,r15d
  3aa92a:	41 8d 04 2e                                     	lea    eax,[r14+rbp*1]
  3aa92e:	48 63 c8                                        	movsxd rcx,eax
  3aa931:	48 6b e9 0e                                     	imul   rbp,rcx,0xe
  3aa935:	8a 44 2b 0c                                     	mov    al,BYTE PTR [rbx+rbp*1+0xc]
  3aa939:	44 0f bf 3c 2b                                  	movsx  r15d,WORD PTR [rbx+rbp*1]
  3aa93e:	44 0f bf 64 2b 02                               	movsx  r12d,WORD PTR [rbx+rbp*1+0x2]
  3aa944:	88 84 24 60 01 00 00                            	mov    BYTE PTR [rsp+0x160],al
  3aa94b:	44 39 74 24 68                                  	cmp    DWORD PTR [rsp+0x68],r14d
  3aa950:	0f 85 d0 00 00 00                               	jne    0x3aaa26
  3aa956:	45 85 f6                                        	test   r14d,r14d
  3aa959:	74 3a                                           	je     0x3aa995
  3aa95b:	8b 44 24 54                                     	mov    eax,DWORD PTR [rsp+0x54]
  3aa95f:	48 8b cb                                        	mov    rcx,rbx
  3aa962:	89 54 24 48                                     	mov    DWORD PTR [rsp+0x48],edx
  3aa966:	41 8b d2                                        	mov    edx,r10d
  3aa969:	44 89 44 24 40                                  	mov    DWORD PTR [rsp+0x40],r8d
  3aa96e:	45 8b c5                                        	mov    r8d,r13d
  3aa971:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3aa975:	8b 44 24 58                                     	mov    eax,DWORD PTR [rsp+0x58]
  3aa979:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3aa97d:	44 89 5c 24 28                                  	mov    DWORD PTR [rsp+0x28],r11d
  3aa982:	89 74 24 20                                     	mov    DWORD PTR [rsp+0x20],esi
  3aa986:	e8 99 09 00 00                                  	call   0x3ab324
  3aa98b:	44 8b d0                                        	mov    r10d,eax
  3aa98e:	8a 84 24 60 01 00 00                            	mov    al,BYTE PTR [rsp+0x160]
  3aa995:	0f b6 c0                                        	movzx  eax,al
  3aa998:	f7 d0                                           	not    eax
  3aa99a:	23 c7                                           	and    eax,edi
  3aa99c:	89 44 24 5c                                     	mov    DWORD PTR [rsp+0x5c],eax
  3aa9a0:	74 2e                                           	je     0x3aa9d0
  3aa9a2:	0f bf 74 2b 0e                                  	movsx  esi,WORD PTR [rbx+rbp*1+0xe]
  3aa9a7:	44 0f bf 5c 2b 10                               	movsx  r11d,WORD PTR [rbx+rbp*1+0x10]
  3aa9ad:	44 89 7c 24 58                                  	mov    DWORD PTR [rsp+0x58],r15d
  3aa9b2:	44 89 64 24 54                                  	mov    DWORD PTR [rsp+0x54],r12d
  3aa9b7:	40 84 7c 2b 1a                                  	test   BYTE PTR [rbx+rbp*1+0x1a],dil
  3aa9bc:	75 0d                                           	jne    0x3aa9cb
  3aa9be:	41 03 f7                                        	add    esi,r15d
  3aa9c1:	45 03 dc                                        	add    r11d,r12d
  3aa9c4:	d1 fe                                           	sar    esi,1
  3aa9c6:	41 d1 fb                                        	sar    r11d,1
  3aa9c9:	eb 0b                                           	jmp    0x3aa9d6
  3aa9cb:	44 03 f7                                        	add    r14d,edi
  3aa9ce:	eb 06                                           	jmp    0x3aa9d6
  3aa9d0:	41 8b f7                                        	mov    esi,r15d
  3aa9d3:	45 8b dc                                        	mov    r11d,r12d
  3aa9d6:	49 63 c2                                        	movsxd rax,r10d
  3aa9d9:	33 ed                                           	xor    ebp,ebp
  3aa9db:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aa9df:	89 6c 24 28                                     	mov    DWORD PTR [rsp+0x28],ebp
  3aa9e3:	45 8b cb                                        	mov    r9d,r11d
  3aa9e6:	48 03 cb                                        	add    rcx,rbx
  3aa9e9:	89 6c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebp
  3aa9ed:	44 8b c6                                        	mov    r8d,esi
  3aa9f0:	40 8a d7                                        	mov    dl,dil
  3aa9f3:	44 03 d7                                        	add    r10d,edi
  3aa9f6:	e8 59 33 00 00                                  	call   0x3add54
  3aa9fb:	8b 54 24 6c                                     	mov    edx,DWORD PTR [rsp+0x6c]
  3aa9ff:	44 8b ed                                        	mov    r13d,ebp
  3aaa02:	8d 04 12                                        	lea    eax,[rdx+rdx*1]
  3aaa05:	48 63 c8                                        	movsxd rcx,eax
  3aaa08:	48 03 4c 24 78                                  	add    rcx,QWORD PTR [rsp+0x78]
  3aaa0d:	e8 82 33 00 00                                  	call   0x3add94
  3aaa12:	0f b7 c0                                        	movzx  eax,ax
  3aaa15:	03 c7                                           	add    eax,edi
  3aaa17:	03 d7                                           	add    edx,edi
  3aaa19:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  3aaa1d:	89 54 24 6c                                     	mov    DWORD PTR [rsp+0x6c],edx
  3aaa21:	e9 89 00 00 00                                  	jmp    0x3aaaaf
  3aaa26:	40 84 c7                                        	test   dil,al
  3aaa29:	75 4c                                           	jne    0x3aaa77
  3aaa2b:	45 85 ed                                        	test   r13d,r13d
  3aaa2e:	74 30                                           	je     0x3aaa60
  3aaa30:	49 63 c2                                        	movsxd rax,r10d
  3aaa33:	45 8d 0c 14                                     	lea    r9d,[r12+rdx*1]
  3aaa37:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aaa3b:	8b 84 24 78 01 00 00                            	mov    eax,DWORD PTR [rsp+0x178]
  3aaa42:	45 03 c7                                        	add    r8d,r15d
  3aaa45:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3aaa49:	48 03 cb                                        	add    rcx,rbx
  3aaa4c:	44 03 d7                                        	add    r10d,edi
  3aaa4f:	41 d1 f9                                        	sar    r9d,1
  3aaa52:	41 d1 f8                                        	sar    r8d,1
  3aaa55:	b2 03                                           	mov    dl,0x3
  3aaa57:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3aaa5b:	e8 f4 32 00 00                                  	call   0x3add54
  3aaa60:	41 8b d4                                        	mov    edx,r12d
  3aaa63:	44 89 bc 24 78 01 00 00                         	mov    DWORD PTR [rsp+0x178],r15d
  3aaa6b:	89 54 24 50                                     	mov    DWORD PTR [rsp+0x50],edx
  3aaa6f:	45 8b c7                                        	mov    r8d,r15d
  3aaa72:	44 8b ef                                        	mov    r13d,edi
  3aaa75:	eb 44                                           	jmp    0x3aaabb
  3aaa77:	49 63 c2                                        	movsxd rax,r10d
  3aaa7a:	33 ed                                           	xor    ebp,ebp
  3aaa7c:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aaa80:	48 03 cb                                        	add    rcx,rbx
  3aaa83:	41 ff c2                                        	inc    r10d
  3aaa86:	45 85 ed                                        	test   r13d,r13d
  3aaa89:	74 04                                           	je     0x3aaa8f
  3aaa8b:	b0 03                                           	mov    al,0x3
  3aaa8d:	eb 07                                           	jmp    0x3aaa96
  3aaa8f:	b0 02                                           	mov    al,0x2
  3aaa91:	44 8b c5                                        	mov    r8d,ebp
  3aaa94:	8b d5                                           	mov    edx,ebp
  3aaa96:	89 54 24 28                                     	mov    DWORD PTR [rsp+0x28],edx
  3aaa9a:	45 8b cc                                        	mov    r9d,r12d
  3aaa9d:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  3aaaa2:	8a d0                                           	mov    dl,al
  3aaaa4:	45 8b c7                                        	mov    r8d,r15d
  3aaaa7:	e8 a8 32 00 00                                  	call   0x3add54
  3aaaac:	44 8b ed                                        	mov    r13d,ebp
  3aaaaf:	44 8b 84 24 78 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x178]
  3aaab7:	8b 54 24 50                                     	mov    edx,DWORD PTR [rsp+0x50]
  3aaabb:	8b 44 24 70                                     	mov    eax,DWORD PTR [rsp+0x70]
  3aaabf:	44 03 f7                                        	add    r14d,edi
  3aaac2:	44 8b 4c 24 5c                                  	mov    r9d,DWORD PTR [rsp+0x5c]
  3aaac7:	ff c0                                           	inc    eax
  3aaac9:	8b 6c 24 60                                     	mov    ebp,DWORD PTR [rsp+0x60]
  3aaacd:	44 3b f0                                        	cmp    r14d,eax
  3aaad0:	0f 8c 54 fe ff ff                               	jl     0x3aa92a
  3aaad6:	8b 44 24 54                                     	mov    eax,DWORD PTR [rsp+0x54]
  3aaada:	48 8b cb                                        	mov    rcx,rbx
  3aaadd:	89 54 24 48                                     	mov    DWORD PTR [rsp+0x48],edx
  3aaae1:	41 8b d2                                        	mov    edx,r10d
  3aaae4:	44 89 44 24 40                                  	mov    DWORD PTR [rsp+0x40],r8d
  3aaae9:	45 8b c5                                        	mov    r8d,r13d
  3aaaec:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3aaaf0:	8b 44 24 58                                     	mov    eax,DWORD PTR [rsp+0x58]
  3aaaf4:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3aaaf8:	44 89 5c 24 28                                  	mov    DWORD PTR [rsp+0x28],r11d
  3aaafd:	89 74 24 20                                     	mov    DWORD PTR [rsp+0x20],esi
  3aab01:	e8 1e 08 00 00                                  	call   0x3ab324
  3aab06:	8b e8                                           	mov    ebp,eax
  3aab08:	48 8b 84 24 70 01 00 00                         	mov    rax,QWORD PTR [rsp+0x170]
  3aab10:	48 89 18                                        	mov    QWORD PTR [rax],rbx
  3aab13:	8b c5                                           	mov    eax,ebp
  3aab15:	e9 9b 03 00 00                                  	jmp    0x3aaeb5
  3aab1a:	41 8b e8                                        	mov    ebp,r8d
  3aab1d:	49 8b d8                                        	mov    rbx,r8
  3aab20:	79 e6                                           	jns    0x3aab08
  3aab22:	f3 44 0f 10 15 55 23 f0 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff02355]        # 0x2ace80
  3aab2b:	48 83 c6 0a                                     	add    rsi,0xa
  3aab2f:	f3 44 0f 10 2d 1c 27 ee ff                      	movss  xmm13,DWORD PTR [rip+0xffffffffffee271c]        # 0x28d254
  3aab38:	bf 01 00 00 00                                  	mov    edi,0x1
  3aab3d:	41 ba 0c 00 00 00                               	mov    r10d,0xc
  3aab43:	4c 89 44 24 60                                  	mov    QWORD PTR [rsp+0x60],r8
  3aab48:	48 8b ce                                        	mov    rcx,rsi
  3aab4b:	45 8d 4a fe                                     	lea    r9d,[r10-0x2]
  3aab4f:	41 8d 52 fc                                     	lea    edx,[r10-0x4]
  3aab53:	e8 3c 32 00 00                                  	call   0x3add94
  3aab58:	48 8d 4e 02                                     	lea    rcx,[rsi+0x2]
  3aab5c:	44 0f b7 f8                                     	movzx  r15d,ax
  3aab60:	e8 2f 32 00 00                                  	call   0x3add94
  3aab65:	44 0f b7 e0                                     	movzx  r12d,ax
  3aab69:	41 f6 c7 02                                     	test   r15b,0x2
  3aab6d:	74 6e                                           	je     0x3aabdd
  3aab6f:	48 8d 4e 04                                     	lea    rcx,[rsi+0x4]
  3aab73:	44 84 ff                                        	test   dil,r15b
  3aab76:	74 38                                           	je     0x3aabb0
  3aab78:	e8 17 32 00 00                                  	call   0x3add94
  3aab7d:	0f bf c8                                        	movsx  ecx,ax
  3aab80:	66 44 0f 6e d9                                  	movd   xmm11,ecx
  3aab85:	48 8d 4e 06                                     	lea    rcx,[rsi+0x6]
  3aab89:	45 0f 5b db                                     	cvtdq2ps xmm11,xmm11
  3aab8d:	e8 02 32 00 00                                  	call   0x3add94
  3aab92:	0f bf c8                                        	movsx  ecx,ax
  3aab95:	45 8b c2                                        	mov    r8d,r10d
  3aab98:	45 8b f1                                        	mov    r14d,r9d
  3aab9b:	8b c2                                           	mov    eax,edx
  3aab9d:	45 8d 4a 02                                     	lea    r9d,[r10+0x2]
  3aaba1:	66 44 0f 6e e1                                  	movd   xmm12,ecx
  3aaba6:	45 8d 50 04                                     	lea    r10d,[r8+0x4]
  3aabaa:	45 0f 5b e4                                     	cvtdq2ps xmm12,xmm12
  3aabae:	eb 41                                           	jmp    0x3aabf1
  3aabb0:	0f be 01                                        	movsx  eax,BYTE PTR [rcx]
  3aabb3:	4d 8b c1                                        	mov    r8,r9
  3aabb6:	4d 8b ca                                        	mov    r9,r10
  3aabb9:	4c 8b f2                                        	mov    r14,rdx
  3aabbc:	66 44 0f 6e d8                                  	movd   xmm11,eax
  3aabc1:	0f be 46 05                                     	movsx  eax,BYTE PTR [rsi+0x5]
  3aabc5:	45 0f 5b db                                     	cvtdq2ps xmm11,xmm11
  3aabc9:	66 44 0f 6e e0                                  	movd   xmm12,eax
  3aabce:	b8 06 00 00 00                                  	mov    eax,0x6
  3aabd3:	45 0f 5b e4                                     	cvtdq2ps xmm12,xmm12
  3aabd7:	44 8d 50 08                                     	lea    r10d,[rax+0x8]
  3aabdb:	eb 14                                           	jmp    0x3aabf1
  3aabdd:	b8 04 00 00 00                                  	mov    eax,0x4
  3aabe2:	45 0f 57 db                                     	xorps  xmm11,xmm11
  3aabe6:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  3aabea:	4c 8b c2                                        	mov    r8,rdx
  3aabed:	44 8d 70 02                                     	lea    r14d,[rax+0x2]
  3aabf1:	48 8d 0c 06                                     	lea    rcx,[rsi+rax*1]
  3aabf5:	44 84 fa                                        	test   dl,r15b
  3aabf8:	74 1c                                           	je     0x3aac16
  3aabfa:	e8 95 31 00 00                                  	call   0x3add94
  3aabff:	0f bf c8                                        	movsx  ecx,ax
  3aac02:	66 0f 6e f1                                     	movd   xmm6,ecx
  3aac06:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3aac09:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  3aac0e:	0f 28 fe                                        	movaps xmm7,xmm6
  3aac11:	e9 b4 00 00 00                                  	jmp    0x3aacca
  3aac16:	41 f6 c7 40                                     	test   r15b,0x40
  3aac1a:	74 39                                           	je     0x3aac55
  3aac1c:	e8 73 31 00 00                                  	call   0x3add94
  3aac21:	0f bf c8                                        	movsx  ecx,ax
  3aac24:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3aac28:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  3aac2c:	66 0f 6e f9                                     	movd   xmm7,ecx
  3aac30:	4a 8d 0c 36                                     	lea    rcx,[rsi+r14*1]
  3aac34:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3aac37:	f3 41 0f 59 fa                                  	mulss  xmm7,xmm10
  3aac3c:	e8 53 31 00 00                                  	call   0x3add94
  3aac41:	0f bf c8                                        	movsx  ecx,ax
  3aac44:	4d 8b f0                                        	mov    r14,r8
  3aac47:	66 0f 6e f1                                     	movd   xmm6,ecx
  3aac4b:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3aac4e:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  3aac53:	eb 7d                                           	jmp    0x3aacd2
  3aac55:	45 84 ff                                        	test   r15b,r15b
  3aac58:	79 65                                           	jns    0x3aacbf
  3aac5a:	e8 35 31 00 00                                  	call   0x3add94
  3aac5f:	0f bf c8                                        	movsx  ecx,ax
  3aac62:	66 0f 6e f9                                     	movd   xmm7,ecx
  3aac66:	4a 8d 0c 36                                     	lea    rcx,[rsi+r14*1]
  3aac6a:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3aac6d:	f3 41 0f 59 fa                                  	mulss  xmm7,xmm10
  3aac72:	e8 1d 31 00 00                                  	call   0x3add94
  3aac77:	0f bf c8                                        	movsx  ecx,ax
  3aac7a:	66 44 0f 6e c9                                  	movd   xmm9,ecx
  3aac7f:	4a 8d 0c 06                                     	lea    rcx,[rsi+r8*1]
  3aac83:	45 0f 5b c9                                     	cvtdq2ps xmm9,xmm9
  3aac87:	f3 45 0f 59 ca                                  	mulss  xmm9,xmm10
  3aac8c:	e8 03 31 00 00                                  	call   0x3add94
  3aac91:	0f bf c8                                        	movsx  ecx,ax
  3aac94:	66 44 0f 6e c1                                  	movd   xmm8,ecx
  3aac99:	4a 8d 0c 0e                                     	lea    rcx,[rsi+r9*1]
  3aac9d:	45 0f 5b c0                                     	cvtdq2ps xmm8,xmm8
  3aaca1:	f3 45 0f 59 c2                                  	mulss  xmm8,xmm10
  3aaca6:	e8 e9 30 00 00                                  	call   0x3add94
  3aacab:	0f bf c8                                        	movsx  ecx,ax
  3aacae:	4d 8b f2                                        	mov    r14,r10
  3aacb1:	66 0f 6e f1                                     	movd   xmm6,ecx
  3aacb5:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3aacb8:	f3 41 0f 59 f2                                  	mulss  xmm6,xmm10
  3aacbd:	eb 13                                           	jmp    0x3aacd2
  3aacbf:	41 0f 28 fd                                     	movaps xmm7,xmm13
  3aacc3:	41 0f 28 f5                                     	movaps xmm6,xmm13
  3aacc7:	4c 8b f0                                        	mov    r14,rax
  3aacca:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3aacce:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  3aacd2:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3aacd6:	0f 28 cf                                        	movaps xmm1,xmm7
  3aacd9:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3aacde:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  3aace2:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3aace6:	e8 49 e2 01 00                                  	call   0x3c8f34
  3aaceb:	44 0f 28 f0                                     	movaps xmm14,xmm0
  3aacef:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3aacf3:	0f 28 c6                                        	movaps xmm0,xmm6
  3aacf6:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  3aacfb:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3aacff:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3aad03:	e8 2c e2 01 00                                  	call   0x3c8f34
  3aad08:	41 8b d4                                        	mov    edx,r12d
  3aad0b:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  3aad10:	49 8b cd                                        	mov    rcx,r13
  3aad13:	44 0f 28 f8                                     	movaps xmm15,xmm0
  3aad17:	e8 f8 38 00 00                                  	call   0x3ae614
  3aad1c:	45 33 c0                                        	xor    r8d,r8d
  3aad1f:	4c 63 e8                                        	movsxd r13,eax
  3aad22:	85 c0                                           	test   eax,eax
  3aad24:	0f 8e 53 01 00 00                               	jle    0x3aae7d
  3aad2a:	45 8b c8                                        	mov    r9d,r8d
  3aad2d:	48 8b 54 24 60                                  	mov    rdx,QWORD PTR [rsp+0x60]
  3aad32:	0f 57 db                                        	xorps  xmm3,xmm3
  3aad35:	0f 57 d2                                        	xorps  xmm2,xmm2
  3aad38:	41 8b c9                                        	mov    ecx,r9d
  3aad3b:	4c 6b c1 0e                                     	imul   r8,rcx,0xe
  3aad3f:	44 03 cf                                        	add    r9d,edi
  3aad42:	41 0f bf 44 10 02                               	movsx  eax,WORD PTR [r8+rdx*1+0x2]
  3aad48:	41 0f bf 0c 10                                  	movsx  ecx,WORD PTR [r8+rdx*1]
  3aad4d:	f3 0f 2a d8                                     	cvtsi2ss xmm3,eax
  3aad51:	f3 0f 2a d1                                     	cvtsi2ss xmm2,ecx
  3aad55:	0f 28 cb                                        	movaps xmm1,xmm3
  3aad58:	f3 0f 59 de                                     	mulss  xmm3,xmm6
  3aad5c:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  3aad61:	0f 28 c2                                        	movaps xmm0,xmm2
  3aad64:	f3 41 0f 59 d1                                  	mulss  xmm2,xmm9
  3aad69:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3aad6d:	f3 0f 58 da                                     	addss  xmm3,xmm2
  3aad71:	0f 57 d2                                        	xorps  xmm2,xmm2
  3aad74:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3aad78:	f3 41 0f 58 dc                                  	addss  xmm3,xmm12
  3aad7d:	f3 41 0f 58 cb                                  	addss  xmm1,xmm11
  3aad82:	f3 41 0f 59 df                                  	mulss  xmm3,xmm15
  3aad87:	f3 41 0f 59 ce                                  	mulss  xmm1,xmm14
  3aad8c:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3aad90:	66 41 89 04 10                                  	mov    WORD PTR [r8+rdx*1],ax
  3aad95:	f3 0f 2c c3                                     	cvttss2si eax,xmm3
  3aad99:	0f 57 db                                        	xorps  xmm3,xmm3
  3aad9c:	66 41 89 44 10 02                               	mov    WORD PTR [r8+rdx*1+0x2],ax
  3aada2:	41 0f bf 44 10 04                               	movsx  eax,WORD PTR [r8+rdx*1+0x4]
  3aada8:	f3 0f 2a d0                                     	cvtsi2ss xmm2,eax
  3aadac:	41 0f bf 44 10 06                               	movsx  eax,WORD PTR [r8+rdx*1+0x6]
  3aadb2:	f3 0f 2a d8                                     	cvtsi2ss xmm3,eax
  3aadb6:	0f 28 c2                                        	movaps xmm0,xmm2
  3aadb9:	f3 41 0f 59 d1                                  	mulss  xmm2,xmm9
  3aadbe:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3aadc2:	0f 28 cb                                        	movaps xmm1,xmm3
  3aadc5:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  3aadca:	f3 0f 59 de                                     	mulss  xmm3,xmm6
  3aadce:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3aadd2:	f3 0f 58 da                                     	addss  xmm3,xmm2
  3aadd6:	f3 41 0f 58 cb                                  	addss  xmm1,xmm11
  3aaddb:	f3 41 0f 58 dc                                  	addss  xmm3,xmm12
  3aade0:	f3 41 0f 59 ce                                  	mulss  xmm1,xmm14
  3aade5:	f3 41 0f 59 df                                  	mulss  xmm3,xmm15
  3aadea:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3aadee:	66 41 89 44 10 04                               	mov    WORD PTR [r8+rdx*1+0x4],ax
  3aadf4:	f3 0f 2c c3                                     	cvttss2si eax,xmm3
  3aadf8:	66 41 89 44 10 06                               	mov    WORD PTR [r8+rdx*1+0x6],ax
  3aadfe:	45 3b cd                                        	cmp    r9d,r13d
  3aae01:	0f 8c 26 ff ff ff                               	jl     0x3aad2d
  3aae07:	41 8b c5                                        	mov    eax,r13d
  3aae0a:	03 c5                                           	add    eax,ebp
  3aae0c:	89 84 24 78 01 00 00                            	mov    DWORD PTR [rsp+0x178],eax
  3aae13:	48 98                                           	cdqe
  3aae15:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aae19:	e8 3a a3 fe ff                                  	call   0x395158
  3aae1e:	4c 8b e0                                        	mov    r12,rax
  3aae21:	48 85 c0                                        	test   rax,rax
  3aae24:	74 71                                           	je     0x3aae97
  3aae26:	85 ed                                           	test   ebp,ebp
  3aae28:	7e 17                                           	jle    0x3aae41
  3aae2a:	48 85 db                                        	test   rbx,rbx
  3aae2d:	74 12                                           	je     0x3aae41
  3aae2f:	48 63 cd                                        	movsxd rcx,ebp
  3aae32:	48 8b d3                                        	mov    rdx,rbx
  3aae35:	4c 6b c1 0e                                     	imul   r8,rcx,0xe
  3aae39:	48 8b c8                                        	mov    rcx,rax
  3aae3c:	e8 0b df 01 00                                  	call   0x3c8d4c
  3aae41:	48 8b 54 24 60                                  	mov    rdx,QWORD PTR [rsp+0x60]
  3aae46:	48 63 c5                                        	movsxd rax,ebp
  3aae49:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3aae4d:	4d 6b c5 0e                                     	imul   r8,r13,0xe
  3aae51:	49 03 cc                                        	add    rcx,r12
  3aae54:	e8 f3 de 01 00                                  	call   0x3c8d4c
  3aae59:	48 85 db                                        	test   rbx,rbx
  3aae5c:	74 08                                           	je     0x3aae66
  3aae5e:	48 8b cb                                        	mov    rcx,rbx
  3aae61:	e8 16 a3 fe ff                                  	call   0x39517c
  3aae66:	48 8b 4c 24 60                                  	mov    rcx,QWORD PTR [rsp+0x60]
  3aae6b:	49 8b dc                                        	mov    rbx,r12
  3aae6e:	e8 09 a3 fe ff                                  	call   0x39517c
  3aae73:	8b ac 24 78 01 00 00                            	mov    ebp,DWORD PTR [rsp+0x178]
  3aae7a:	45 33 c0                                        	xor    r8d,r8d
  3aae7d:	49 03 f6                                        	add    rsi,r14
  3aae80:	41 f6 c7 20                                     	test   r15b,0x20
  3aae84:	0f 84 7e fc ff ff                               	je     0x3aab08
  3aae8a:	4c 8b ac 24 60 01 00 00                         	mov    r13,QWORD PTR [rsp+0x160]
  3aae92:	e9 a6 fc ff ff                                  	jmp    0x3aab3d
  3aae97:	48 85 db                                        	test   rbx,rbx
  3aae9a:	74 08                                           	je     0x3aaea4
  3aae9c:	48 8b cb                                        	mov    rcx,rbx
  3aae9f:	e8 d8 a2 fe ff                                  	call   0x39517c
  3aaea4:	48 8b 4c 24 60                                  	mov    rcx,QWORD PTR [rsp+0x60]
  3aaea9:	48 85 c9                                        	test   rcx,rcx
  3aaeac:	74 05                                           	je     0x3aaeb3
  3aaeae:	e8 c9 a2 fe ff                                  	call   0x39517c
  3aaeb3:	33 c0                                           	xor    eax,eax
  3aaeb5:	4c 8d 9c 24 20 01 00 00                         	lea    r11,[rsp+0x120]
  3aaebd:	49 8b 5b 48                                     	mov    rbx,QWORD PTR [r11+0x48]
  3aaec1:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3aaec6:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3aaecb:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3aaed0:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3aaed5:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3aaeda:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3aaedf:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3aaee4:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3aaee9:	45 0f 28 b3 70 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x90]
  3aaef1:	45 0f 28 bb 60 ff ff ff                         	movaps xmm15,XMMWORD PTR [r11-0xa0]
  3aaef9:	49 8b e3                                        	mov    rsp,r11
  3aaefc:	41 5f                                           	pop    r15
  3aaefe:	41 5e                                           	pop    r14
  3aaf00:	41 5d                                           	pop    r13
  3aaf02:	41 5c                                           	pop    r12
  3aaf04:	5f                                              	pop    rdi
  3aaf05:	5e                                              	pop    rsi
  3aaf06:	5d                                              	pop    rbp
  3aaf07:	c3                                              	ret
