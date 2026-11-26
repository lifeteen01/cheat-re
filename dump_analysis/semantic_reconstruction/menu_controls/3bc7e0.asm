
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bc7e0 <.data+0x3bc7e0>:
  3bc7e0:	48 8b c4                                        	mov    rax,rsp
  3bc7e3:	4c 89 48 20                                     	mov    QWORD PTR [rax+0x20],r9
  3bc7e7:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  3bc7eb:	89 50 10                                        	mov    DWORD PTR [rax+0x10],edx
  3bc7ee:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3bc7f2:	53                                              	push   rbx
  3bc7f3:	55                                              	push   rbp
  3bc7f4:	56                                              	push   rsi
  3bc7f5:	57                                              	push   rdi
  3bc7f6:	41 54                                           	push   r12
  3bc7f8:	41 55                                           	push   r13
  3bc7fa:	41 56                                           	push   r14
  3bc7fc:	41 57                                           	push   r15
  3bc7fe:	48 83 ec 38                                     	sub    rsp,0x38
  3bc802:	48 8b 35 1f 93 04 00                            	mov    rsi,QWORD PTR [rip+0x4931f]        # 0x405b28
  3bc809:	44 8b f2                                        	mov    r14d,edx
  3bc80c:	4c 8b e1                                        	mov    r12,rcx
  3bc80f:	e8 ec 09 fa ff                                  	call   0x35d200
  3bc814:	44 8b 94 24 a0 00 00 00                         	mov    r10d,DWORD PTR [rsp+0xa0]
  3bc81c:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bc821:	48 8b 9e 10 3f 00 00                            	mov    rbx,QWORD PTR [rsi+0x3f10]
  3bc828:	45 8b da                                        	mov    r11d,r10d
  3bc82b:	44 0b d9                                        	or     r11d,ecx
  3bc82e:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3bc833:	41 f6 c2 07                                     	test   r10b,0x7
  3bc837:	4c 8b e8                                        	mov    r13,rax
  3bc83a:	45 0f 45 da                                     	cmovne r11d,r10d
  3bc83e:	41 8b eb                                        	mov    ebp,r11d
  3bc841:	83 cd 20                                        	or     ebp,0x20
  3bc844:	41 f7 c3 f0 03 00 00                            	test   r11d,0x3f0
  3bc84b:	41 0f 45 eb                                     	cmovne ebp,r11d
  3bc84f:	0f ba e5 0b                                     	bt     ebp,0xb
  3bc853:	73 1a                                           	jae    0x3bc86f
  3bc855:	48 85 db                                        	test   rbx,rbx
  3bc858:	74 15                                           	je     0x3bc86f
  3bc85a:	48 39 83 78 03 00 00                            	cmp    QWORD PTR [rbx+0x378],rax
  3bc861:	75 0c                                           	jne    0x3bc86f
  3bc863:	40 8a f9                                        	mov    dil,cl
  3bc866:	48 89 86 10 3f 00 00                            	mov    QWORD PTR [rsi+0x3f10],rax
  3bc86d:	eb 03                                           	jmp    0x3bc872
  3bc86f:	40 32 ff                                        	xor    dil,dil
  3bc872:	41 8b d6                                        	mov    edx,r14d
  3bc875:	49 8b cc                                        	mov    rcx,r12
  3bc878:	45 32 ff                                        	xor    r15b,r15b
  3bc87b:	e8 94 81 fd ff                                  	call   0x394a14
  3bc880:	44 8a e0                                        	mov    r12b,al
  3bc883:	84 c0                                           	test   al,al
  3bc885:	74 20                                           	je     0x3bc8a7
  3bc887:	44 38 be 8c 4a 00 00                            	cmp    BYTE PTR [rsi+0x4a8c],r15b
  3bc88e:	74 7e                                           	je     0x3bc90e
  3bc890:	44 39 b6 ac 4a 00 00                            	cmp    DWORD PTR [rsi+0x4aac],r14d
  3bc897:	75 0e                                           	jne    0x3bc8a7
  3bc899:	f6 86 90 4a 00 00 02                            	test   BYTE PTR [rsi+0x4a90],0x2
  3bc8a0:	75 05                                           	jne    0x3bc8a7
  3bc8a2:	45 32 e4                                        	xor    r12b,r12b
  3bc8a5:	eb 09                                           	jmp    0x3bc8b0
  3bc8a7:	44 38 be 8c 4a 00 00                            	cmp    BYTE PTR [rsi+0x4a8c],r15b
  3bc8ae:	74 5e                                           	je     0x3bc90e
  3bc8b0:	0f ba e5 09                                     	bt     ebp,0x9
  3bc8b4:	73 58                                           	jae    0x3bc90e
  3bc8b6:	f6 86 90 4a 00 00 04                            	test   BYTE PTR [rsi+0x4a90],0x4
  3bc8bd:	75 4f                                           	jne    0x3bc90e
  3bc8bf:	b9 80 00 00 00                                  	mov    ecx,0x80
  3bc8c4:	e8 e3 77 fd ff                                  	call   0x3940ac
  3bc8c9:	84 c0                                           	test   al,al
  3bc8cb:	74 41                                           	je     0x3bc90e
  3bc8cd:	41 8b ce                                        	mov    ecx,r14d
  3bc8d0:	41 b4 01                                        	mov    r12b,0x1
  3bc8d3:	e8 54 ec fd ff                                  	call   0x39b52c
  3bc8d8:	f3 0f 10 8e 60 3f 00 00                         	movss  xmm1,DWORD PTR [rsi+0x3f60]
  3bc8e0:	f3 0f 10 15 e4 67 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed67e4]        # 0x2930cc
  3bc8e8:	0f 28 c1                                        	movaps xmm0,xmm1
  3bc8eb:	f3 0f 5c 46 18                                  	subss  xmm0,DWORD PTR [rsi+0x18]
  3bc8f0:	0f 2f d0                                        	comiss xmm2,xmm0
  3bc8f3:	72 19                                           	jb     0x3bc90e
  3bc8f5:	0f 2f ca                                        	comiss xmm1,xmm2
  3bc8f8:	72 14                                           	jb     0x3bc90e
  3bc8fa:	33 d2                                           	xor    edx,edx
  3bc8fc:	44 89 b6 08 4b 00 00                            	mov    DWORD PTR [rsi+0x4b08],r14d
  3bc903:	49 8b cd                                        	mov    rcx,r13
  3bc906:	45 8a fc                                        	mov    r15b,r12b
  3bc909:	e8 ee 55 fd ff                                  	call   0x391efc
  3bc90e:	40 84 ff                                        	test   dil,dil
  3bc911:	74 07                                           	je     0x3bc91a
  3bc913:	48 89 9e 10 3f 00 00                            	mov    QWORD PTR [rsi+0x3f10],rbx
  3bc91a:	45 84 e4                                        	test   r12b,r12b
  3bc91d:	74 1d                                           	je     0x3bc93c
  3bc91f:	0f ba e5 0c                                     	bt     ebp,0xc
  3bc923:	73 17                                           	jae    0x3bc93c
  3bc925:	8b 8e 58 3f 00 00                               	mov    ecx,DWORD PTR [rsi+0x3f58]
  3bc92b:	41 3b ce                                        	cmp    ecx,r14d
  3bc92e:	74 0c                                           	je     0x3bc93c
  3bc930:	33 c0                                           	xor    eax,eax
  3bc932:	45 0f b6 e4                                     	movzx  r12d,r12b
  3bc936:	85 c9                                           	test   ecx,ecx
  3bc938:	44 0f 45 e0                                     	cmovne r12d,eax
  3bc93c:	0f ba e5 15                                     	bt     ebp,0x15
  3bc940:	41 8b ce                                        	mov    ecx,r14d
  3bc943:	b8 00 00 00 00                                  	mov    eax,0x0
  3bc948:	0f 42 c8                                        	cmovb  ecx,eax
  3bc94b:	89 8c 24 a0 00 00 00                            	mov    DWORD PTR [rsp+0xa0],ecx
  3bc952:	45 84 e4                                        	test   r12b,r12b
  3bc955:	0f 84 d0 01 00 00                               	je     0x3bcb2b
  3bc95b:	83 cb ff                                        	or     ebx,0xffffffff
  3bc95e:	44 8b f1                                        	mov    r14d,ecx
  3bc961:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3bc965:	33 ff                                           	xor    edi,edi
  3bc967:	44 8b eb                                        	mov    r13d,ebx
  3bc96a:	0f a3 fd                                        	bt     ebp,edi
  3bc96d:	73 32                                           	jae    0x3bc9a1
  3bc96f:	45 33 c0                                        	xor    r8d,r8d
  3bc972:	41 8b d6                                        	mov    edx,r14d
  3bc975:	8b cf                                           	mov    ecx,edi
  3bc977:	e8 e4 79 fd ff                                  	call   0x394360
  3bc97c:	84 c0                                           	test   al,al
  3bc97e:	74 0a                                           	je     0x3bc98a
  3bc980:	83 fb ff                                        	cmp    ebx,0xffffffff
  3bc983:	8b c7                                           	mov    eax,edi
  3bc985:	0f 45 c3                                        	cmovne eax,ebx
  3bc988:	8b d8                                           	mov    ebx,eax
  3bc98a:	41 8b d6                                        	mov    edx,r14d
  3bc98d:	8b cf                                           	mov    ecx,edi
  3bc98f:	e8 2c 7c fd ff                                  	call   0x3945c0
  3bc994:	84 c0                                           	test   al,al
  3bc996:	74 09                                           	je     0x3bc9a1
  3bc998:	41 83 fd ff                                     	cmp    r13d,0xffffffff
  3bc99c:	75 03                                           	jne    0x3bc9a1
  3bc99e:	44 8b ef                                        	mov    r13d,edi
  3bc9a1:	ff c7                                           	inc    edi
  3bc9a3:	83 ff 03                                        	cmp    edi,0x3
  3bc9a6:	7c c2                                           	jl     0x3bc96a
  3bc9a8:	44 8b b4 24 88 00 00 00                         	mov    r14d,DWORD PTR [rsp+0x88]
  3bc9b0:	44 89 6c 24 20                                  	mov    DWORD PTR [rsp+0x20],r13d
  3bc9b5:	4c 8b 6c 24 28                                  	mov    r13,QWORD PTR [rsp+0x28]
  3bc9ba:	0f ba e5 10                                     	bt     ebp,0x10
  3bc9be:	73 27                                           	jae    0x3bc9e7
  3bc9c0:	80 be 24 0e 00 00 00                            	cmp    BYTE PTR [rsi+0xe24],0x0
  3bc9c7:	0f 85 52 01 00 00                               	jne    0x3bcb1f
  3bc9cd:	80 be 25 0e 00 00 00                            	cmp    BYTE PTR [rsi+0xe25],0x0
  3bc9d4:	0f 85 45 01 00 00                               	jne    0x3bcb1f
  3bc9da:	80 be 26 0e 00 00 00                            	cmp    BYTE PTR [rsi+0xe26],0x0
  3bc9e1:	0f 85 38 01 00 00                               	jne    0x3bcb1f
  3bc9e7:	83 fb ff                                        	cmp    ebx,0xffffffff
  3bc9ea:	0f 84 af 00 00 00                               	je     0x3bca9f
  3bc9f0:	44 39 b6 68 3f 00 00                            	cmp    DWORD PTR [rsi+0x3f68],r14d
  3bc9f7:	0f 84 a2 00 00 00                               	je     0x3bca9f
  3bc9fd:	0f ba e5 14                                     	bt     ebp,0x14
  3bca01:	72 14                                           	jb     0x3bca17
  3bca03:	8b cb                                           	mov    ecx,ebx
  3bca05:	e8 46 88 fd ff                                  	call   0x395250
  3bca0a:	8b c8                                           	mov    ecx,eax
  3bca0c:	45 33 c0                                        	xor    r8d,r8d
  3bca0f:	41 8b d6                                        	mov    edx,r14d
  3bca12:	e8 6d eb fd ff                                  	call   0x39b584
  3bca17:	40 f6 c5 60                                     	test   bpl,0x60
  3bca1b:	74 2c                                           	je     0x3bca49
  3bca1d:	49 8b d5                                        	mov    rdx,r13
  3bca20:	41 8b ce                                        	mov    ecx,r14d
  3bca23:	e8 a4 e6 fd ff                                  	call   0x39b0cc
  3bca28:	89 9e 94 3f 00 00                               	mov    DWORD PTR [rsi+0x3f94],ebx
  3bca2e:	0f ba e5 12                                     	bt     ebp,0x12
  3bca32:	72 0b                                           	jb     0x3bca3f
  3bca34:	49 8b d5                                        	mov    rdx,r13
  3bca37:	41 8b ce                                        	mov    ecx,r14d
  3bca3a:	e8 49 ea fd ff                                  	call   0x39b488
  3bca3f:	33 d2                                           	xor    edx,edx
  3bca41:	49 8b cd                                        	mov    rcx,r13
  3bca44:	e8 b3 54 fd ff                                  	call   0x391efc
  3bca49:	40 f6 c5 10                                     	test   bpl,0x10
  3bca4d:	75 14                                           	jne    0x3bca63
  3bca4f:	0f ba e5 08                                     	bt     ebp,0x8
  3bca53:	73 4a                                           	jae    0x3bca9f
  3bca55:	48 63 c3                                        	movsxd rax,ebx
  3bca58:	66 83 bc 46 52 37 00 00 02                      	cmp    WORD PTR [rsi+rax*2+0x3752],0x2
  3bca61:	75 3c                                           	jne    0x3bca9f
  3bca63:	41 b7 01                                        	mov    r15b,0x1
  3bca66:	0f ba e5 11                                     	bt     ebp,0x11
  3bca6a:	73 07                                           	jae    0x3bca73
  3bca6c:	e8 07 36 fd ff                                  	call   0x390078
  3bca71:	eb 0b                                           	jmp    0x3bca7e
  3bca73:	49 8b d5                                        	mov    rdx,r13
  3bca76:	41 8b ce                                        	mov    ecx,r14d
  3bca79:	e8 4e e6 fd ff                                  	call   0x39b0cc
  3bca7e:	0f ba e5 12                                     	bt     ebp,0x12
  3bca82:	72 0b                                           	jb     0x3bca8f
  3bca84:	49 8b d5                                        	mov    rdx,r13
  3bca87:	41 8b ce                                        	mov    ecx,r14d
  3bca8a:	e8 f9 e9 fd ff                                  	call   0x39b488
  3bca8f:	33 d2                                           	xor    edx,edx
  3bca91:	89 9e 94 3f 00 00                               	mov    DWORD PTR [rsi+0x3f94],ebx
  3bca97:	49 8b cd                                        	mov    rcx,r13
  3bca9a:	e8 5d 54 fd ff                                  	call   0x391efc
  3bca9f:	40 84 ed                                        	test   bpl,bpl
  3bcaa2:	79 38                                           	jns    0x3bcadc
  3bcaa4:	48 63 44 24 20                                  	movsxd rax,DWORD PTR [rsp+0x20]
  3bcaa9:	83 f8 ff                                        	cmp    eax,0xffffffff
  3bcaac:	74 2e                                           	je     0x3bcadc
  3bcaae:	0f ba e5 0a                                     	bt     ebp,0xa
  3bcab2:	73 0f                                           	jae    0x3bcac3
  3bcab4:	f3 0f 10 84 86 8c 37 00 00                      	movss  xmm0,DWORD PTR [rsi+rax*4+0x378c]
  3bcabd:	0f 2f 46 3c                                     	comiss xmm0,DWORD PTR [rsi+0x3c]
  3bcac1:	73 03                                           	jae    0x3bcac6
  3bcac3:	41 b7 01                                        	mov    r15b,0x1
  3bcac6:	0f ba e5 12                                     	bt     ebp,0x12
  3bcaca:	72 0b                                           	jb     0x3bcad7
  3bcacc:	49 8b d5                                        	mov    rdx,r13
  3bcacf:	41 8b ce                                        	mov    ecx,r14d
  3bcad2:	e8 b1 e9 fd ff                                  	call   0x39b488
  3bcad7:	e8 9c 35 fd ff                                  	call   0x390078
  3bcadc:	44 39 b6 68 3f 00 00                            	cmp    DWORD PTR [rsi+0x3f68],r14d
  3bcae3:	75 3a                                           	jne    0x3bcb1f
  3bcae5:	0f ba e5 0a                                     	bt     ebp,0xa
  3bcae9:	73 34                                           	jae    0x3bcb1f
  3bcaeb:	48 63 8e 94 3f 00 00                            	movsxd rcx,DWORD PTR [rsi+0x3f94]
  3bcaf2:	f3 0f 10 84 8e 78 37 00 00                      	movss  xmm0,DWORD PTR [rsi+rcx*4+0x3778]
  3bcafb:	0f 2f 05 4a 07 ed ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffed074a]        # 0x28d24c
  3bcb02:	76 1b                                           	jbe    0x3bcb1f
  3bcb04:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xa0]
  3bcb0b:	41 b8 01 00 00 00                               	mov    r8d,0x1
  3bcb11:	e8 4a 78 fd ff                                  	call   0x394360
  3bcb16:	84 c0                                           	test   al,al
  3bcb18:	74 05                                           	je     0x3bcb1f
  3bcb1a:	41 b7 01                                        	mov    r15b,0x1
  3bcb1d:	eb 05                                           	jmp    0x3bcb24
  3bcb1f:	45 84 ff                                        	test   r15b,r15b
  3bcb22:	74 07                                           	je     0x3bcb2b
  3bcb24:	c6 86 26 49 00 00 01                            	mov    BYTE PTR [rsi+0x4926],0x1
  3bcb2b:	44 39 b6 f0 48 00 00                            	cmp    DWORD PTR [rsi+0x48f0],r14d
  3bcb32:	75 38                                           	jne    0x3bcb6c
  3bcb34:	80 be 26 49 00 00 00                            	cmp    BYTE PTR [rsi+0x4926],0x0
  3bcb3b:	75 2f                                           	jne    0x3bcb6c
  3bcb3d:	80 be 27 49 00 00 00                            	cmp    BYTE PTR [rsi+0x4927],0x0
  3bcb44:	74 26                                           	je     0x3bcb6c
  3bcb46:	8b 86 68 3f 00 00                               	mov    eax,DWORD PTR [rsi+0x3f68]
  3bcb4c:	85 c0                                           	test   eax,eax
  3bcb4e:	74 0b                                           	je     0x3bcb5b
  3bcb50:	41 3b c6                                        	cmp    eax,r14d
  3bcb53:	74 06                                           	je     0x3bcb5b
  3bcb55:	41 3b 45 7c                                     	cmp    eax,DWORD PTR [r13+0x7c]
  3bcb59:	75 11                                           	jne    0x3bcb6c
  3bcb5b:	0f ba e5 13                                     	bt     ebp,0x13
  3bcb5f:	45 0f b6 e4                                     	movzx  r12d,r12b
  3bcb63:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bcb68:	44 0f 43 e1                                     	cmovae r12d,ecx
  3bcb6c:	44 39 b6 fc 48 00 00                            	cmp    DWORD PTR [rsi+0x48fc],r14d
  3bcb73:	0f 85 c0 00 00 00                               	jne    0x3bcc39
  3bcb79:	44 39 b6 00 49 00 00                            	cmp    DWORD PTR [rsi+0x4900],r14d
  3bcb80:	8b 96 f8 48 00 00                               	mov    edx,DWORD PTR [rsi+0x48f8]
  3bcb86:	0f 94 c1                                        	sete   cl
  3bcb89:	89 94 24 88 00 00 00                            	mov    DWORD PTR [rsp+0x88],edx
  3bcb90:	74 6c                                           	je     0x3bcbfe
  3bcb92:	0f ba e5 0a                                     	bt     ebp,0xa
  3bcb96:	73 66                                           	jae    0x3bcbfe
  3bcb98:	b9 0c 02 00 00                                  	mov    ecx,0x20c
  3bcb9d:	e8 72 5b fd ff                                  	call   0x392714
  3bcba2:	b9 0d 02 00 00                                  	mov    ecx,0x20d
  3bcba7:	48 8b f8                                        	mov    rdi,rax
  3bcbaa:	e8 65 5b fd ff                                  	call   0x392714
  3bcbaf:	b9 6e 02 00 00                                  	mov    ecx,0x26e
  3bcbb4:	48 8b d8                                        	mov    rbx,rax
  3bcbb7:	e8 58 5b fd ff                                  	call   0x392714
  3bcbbc:	f3 0f 10 4b 04                                  	movss  xmm1,DWORD PTR [rbx+0x4]
  3bcbc1:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [rdi+0x4]
  3bcbc6:	e8 29 d8 fc ff                                  	call   0x38a3f4
  3bcbcb:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [rax+0x4]
  3bcbd0:	e8 1f d8 fc ff                                  	call   0x38a3f4
  3bcbd5:	f3 0f 10 5e 40                                  	movss  xmm3,DWORD PTR [rsi+0x40]
  3bcbda:	0f 28 e0                                        	movaps xmm4,xmm0
  3bcbdd:	f3 0f 5c 66 18                                  	subss  xmm4,DWORD PTR [rsi+0x18]
  3bcbe2:	f3 0f 10 56 3c                                  	movss  xmm2,DWORD PTR [rsi+0x3c]
  3bcbe7:	0f 28 c8                                        	movaps xmm1,xmm0
  3bcbea:	0f 28 c4                                        	movaps xmm0,xmm4
  3bcbed:	e8 6a 2c fd ff                                  	call   0x38f85c
  3bcbf2:	8b 94 24 88 00 00 00                            	mov    edx,DWORD PTR [rsp+0x88]
  3bcbf9:	85 c0                                           	test   eax,eax
  3bcbfb:	0f 9f c1                                        	setg   cl
  3bcbfe:	41 3b d6                                        	cmp    edx,r14d
  3bcc01:	74 04                                           	je     0x3bcc07
  3bcc03:	84 c9                                           	test   cl,cl
  3bcc05:	74 32                                           	je     0x3bcc39
  3bcc07:	bf 01 00 00 00                                  	mov    edi,0x1
  3bcc0c:	49 8b d5                                        	mov    rdx,r13
  3bcc0f:	41 8b ce                                        	mov    ecx,r14d
  3bcc12:	44 8a ff                                        	mov    r15b,dil
  3bcc15:	e8 b2 e4 fd ff                                  	call   0x39b0cc
  3bcc1a:	8b 86 1c 49 00 00                               	mov    eax,DWORD PTR [rsi+0x491c]
  3bcc20:	89 86 90 3f 00 00                               	mov    DWORD PTR [rsi+0x3f90],eax
  3bcc26:	0f ba e5 12                                     	bt     ebp,0x12
  3bcc2a:	72 12                                           	jb     0x3bcc3e
  3bcc2c:	49 8b d5                                        	mov    rdx,r13
  3bcc2f:	41 8b ce                                        	mov    ecx,r14d
  3bcc32:	e8 51 e8 fd ff                                  	call   0x39b488
  3bcc37:	eb 05                                           	jmp    0x3bcc3e
  3bcc39:	bf 01 00 00 00                                  	mov    edi,0x1
  3bcc3e:	45 32 ed                                        	xor    r13b,r13b
  3bcc41:	44 39 b6 68 3f 00 00                            	cmp    DWORD PTR [rsi+0x3f68],r14d
  3bcc48:	0f 85 19 01 00 00                               	jne    0x3bcd67
  3bcc4e:	8b 86 90 3f 00 00                               	mov    eax,DWORD PTR [rsi+0x3f90]
  3bcc54:	3b c7                                           	cmp    eax,edi
  3bcc56:	0f 85 ea 00 00 00                               	jne    0x3bcd46
  3bcc5c:	44 38 ae 74 3f 00 00                            	cmp    BYTE PTR [rsi+0x3f74],r13b
  3bcc63:	74 25                                           	je     0x3bcc8a
  3bcc65:	4c 8b 84 24 80 00 00 00                         	mov    r8,QWORD PTR [rsp+0x80]
  3bcc6d:	48 8d 96 08 0e 00 00                            	lea    rdx,[rsi+0xe08]
  3bcc74:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3bcc79:	e8 66 9b f7 ff                                  	call   0x3367e4
  3bcc7e:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3bcc82:	f2 0f 11 86 7c 3f 00 00                         	movsd  QWORD PTR [rsi+0x3f7c],xmm0
  3bcc8a:	48 63 9e 94 3f 00 00                            	movsxd rbx,DWORD PTR [rsi+0x3f94]
  3bcc91:	83 fb ff                                        	cmp    ebx,0xffffffff
  3bcc94:	0f 84 98 00 00 00                               	je     0x3bcd32
  3bcc9a:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xa0]
  3bcca1:	8b cb                                           	mov    ecx,ebx
  3bcca3:	e8 80 77 fd ff                                  	call   0x394428
  3bcca8:	84 c0                                           	test   al,al
  3bccaa:	74 08                                           	je     0x3bccb4
  3bccac:	44 8a ef                                        	mov    r13b,dil
  3bccaf:	e9 83 00 00 00                                  	jmp    0x3bcd37
  3bccb4:	45 84 e4                                        	test   r12b,r12b
  3bccb7:	74 06                                           	je     0x3bccbf
  3bccb9:	40 f6 c5 20                                     	test   bpl,0x20
  3bccbd:	75 06                                           	jne    0x3bccc5
  3bccbf:	40 f6 c5 40                                     	test   bpl,0x40
  3bccc3:	74 6d                                           	je     0x3bcd32
  3bccc5:	44 38 ae 8c 4a 00 00                            	cmp    BYTE PTR [rsi+0x4a8c],r13b
  3bcccc:	75 64                                           	jne    0x3bcd32
  3bccce:	0f ba e5 08                                     	bt     ebp,0x8
  3bccd2:	73 15                                           	jae    0x3bcce9
  3bccd4:	44 38 ac 33 66 37 00 00                         	cmp    BYTE PTR [rbx+rsi*1+0x3766],r13b
  3bccdc:	74 0b                                           	je     0x3bcce9
  3bccde:	66 83 bc 5e 5c 37 00 00 02                      	cmp    WORD PTR [rsi+rbx*2+0x375c],0x2
  3bcce7:	74 03                                           	je     0x3bccec
  3bcce9:	40 32 ff                                        	xor    dil,dil
  3bccec:	0f ba e5 0a                                     	bt     ebp,0xa
  3bccf0:	73 14                                           	jae    0x3bcd06
  3bccf2:	f3 0f 10 84 9e 8c 37 00 00                      	movss  xmm0,DWORD PTR [rsi+rbx*4+0x378c]
  3bccfb:	0f 2f 46 3c                                     	comiss xmm0,DWORD PTR [rsi+0x3c]
  3bccff:	72 05                                           	jb     0x3bcd06
  3bcd01:	41 b6 01                                        	mov    r14b,0x1
  3bcd04:	eb 03                                           	jmp    0x3bcd09
  3bcd06:	45 32 f6                                        	xor    r14b,r14b
  3bcd09:	8b cb                                           	mov    ecx,ebx
  3bcd0b:	e8 40 85 fd ff                                  	call   0x395250
  3bcd10:	8b 94 24 a0 00 00 00                            	mov    edx,DWORD PTR [rsp+0xa0]
  3bcd17:	8b c8                                           	mov    ecx,eax
  3bcd19:	e8 ee f1 fd ff                                  	call   0x39bf0c
  3bcd1e:	41 0a fe                                        	or     dil,r14b
  3bcd21:	bf 01 00 00 00                                  	mov    edi,0x1
  3bcd26:	75 0a                                           	jne    0x3bcd32
  3bcd28:	84 c0                                           	test   al,al
  3bcd2a:	45 0f b6 ff                                     	movzx  r15d,r15b
  3bcd2e:	44 0f 45 ff                                     	cmovne r15d,edi
  3bcd32:	e8 41 33 fd ff                                  	call   0x390078
  3bcd37:	0f ba e5 12                                     	bt     ebp,0x12
  3bcd3b:	72 1e                                           	jb     0x3bcd5b
  3bcd3d:	40 88 be 26 49 00 00                            	mov    BYTE PTR [rsi+0x4926],dil
  3bcd44:	eb 15                                           	jmp    0x3bcd5b
  3bcd46:	83 c0 fe                                        	add    eax,0xfffffffe
  3bcd49:	3b c7                                           	cmp    eax,edi
  3bcd4b:	77 0e                                           	ja     0x3bcd5b
  3bcd4d:	44 39 b6 fc 48 00 00                            	cmp    DWORD PTR [rsi+0x48fc],r14d
  3bcd54:	74 05                                           	je     0x3bcd5b
  3bcd56:	e8 1d 33 fd ff                                  	call   0x390078
  3bcd5b:	45 84 ff                                        	test   r15b,r15b
  3bcd5e:	74 07                                           	je     0x3bcd67
  3bcd60:	40 88 be 77 3f 00 00                            	mov    BYTE PTR [rsi+0x3f77],dil
  3bcd67:	48 8b 84 24 90 00 00 00                         	mov    rax,QWORD PTR [rsp+0x90]
  3bcd6f:	48 85 c0                                        	test   rax,rax
  3bcd72:	74 03                                           	je     0x3bcd77
  3bcd74:	44 88 20                                        	mov    BYTE PTR [rax],r12b
  3bcd77:	48 8b 84 24 98 00 00 00                         	mov    rax,QWORD PTR [rsp+0x98]
  3bcd7f:	48 85 c0                                        	test   rax,rax
  3bcd82:	74 03                                           	je     0x3bcd87
  3bcd84:	44 88 28                                        	mov    BYTE PTR [rax],r13b
  3bcd87:	41 8a c7                                        	mov    al,r15b
  3bcd8a:	48 83 c4 38                                     	add    rsp,0x38
  3bcd8e:	41 5f                                           	pop    r15
  3bcd90:	41 5e                                           	pop    r14
  3bcd92:	41 5d                                           	pop    r13
  3bcd94:	41 5c                                           	pop    r12
  3bcd96:	5f                                              	pop    rdi
  3bcd97:	5e                                              	pop    rsi
  3bcd98:	5d                                              	pop    rbp
  3bcd99:	5b                                              	pop    rbx
  3bcd9a:	c3                                              	ret
