
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369790 <.data+0x369790>:
  369790:	40 55                                           	rex push rbp
  369792:	53                                              	push   rbx
  369793:	56                                              	push   rsi
  369794:	57                                              	push   rdi
  369795:	41 54                                           	push   r12
  369797:	41 55                                           	push   r13
  369799:	41 56                                           	push   r14
  36979b:	41 57                                           	push   r15
  36979d:	48 8d 6c 24 e1                                  	lea    rbp,[rsp-0x1f]
  3697a2:	48 81 ec 88 00 00 00                            	sub    rsp,0x88
  3697a9:	4c 8b ea                                        	mov    r13,rdx
  3697ac:	48 8b f1                                        	mov    rsi,rcx
  3697af:	e8 54 17 f6 ff                                  	call   0x2caf08
  3697b4:	84 c0                                           	test   al,al
  3697b6:	0f 84 40 04 00 00                               	je     0x369bfc
  3697bc:	48 8b ce                                        	mov    rcx,rsi
  3697bf:	e8 d8 76 f7 ff                                  	call   0x2e0e9c
  3697c4:	84 c0                                           	test   al,al
  3697c6:	0f 84 30 04 00 00                               	je     0x369bfc
  3697cc:	48 8b ce                                        	mov    rcx,rsi
  3697cf:	e8 80 c2 f7 ff                                  	call   0x2e5a54
  3697d4:	48 8b c8                                        	mov    rcx,rax
  3697d7:	48 8b d0                                        	mov    rdx,rax
  3697da:	e8 29 17 f6 ff                                  	call   0x2caf08
  3697df:	84 c0                                           	test   al,al
  3697e1:	0f 84 15 04 00 00                               	je     0x369bfc
  3697e7:	48 8b ca                                        	mov    rcx,rdx
  3697ea:	e8 65 cb f6 ff                                  	call   0x2d6354
  3697ef:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  3697f3:	4c 8b f0                                        	mov    r14,rax
  3697f6:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  3697fa:	e8 dd e2 ff ff                                  	call   0x367adc
  3697ff:	48 8b c8                                        	mov    rcx,rax
  369802:	e8 81 39 f7 ff                                  	call   0x2dd188
  369807:	48 8b c8                                        	mov    rcx,rax
  36980a:	48 ba 25 23 22 84 e4 9c f2 cb                   	movabs rdx,0xcbf29ce484222325
  369814:	e8 33 c3 f7 ff                                  	call   0x2e5b4c
  369819:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  36981d:	4c 8b f8                                        	mov    r15,rax
  369820:	e8 97 e3 05 00                                  	call   0x3c7bbc
  369825:	8b 05 ad 34 09 00                               	mov    eax,DWORD PTR [rip+0x934ad]        # 0x3fccd8
  36982b:	ba 0b 00 00 00                                  	mov    edx,0xb
  369830:	8d 4a 04                                        	lea    ecx,[rdx+0x4]
  369833:	8d 5a 29                                        	lea    ebx,[rdx+0x29]
  369836:	8d 7a 23                                        	lea    edi,[rdx+0x23]
  369839:	44 8d 4a 06                                     	lea    r9d,[rdx+0x6]
  36983d:	44 8d 62 0a                                     	lea    r12d,[rdx+0xa]
  369841:	44 8d 42 03                                     	lea    r8d,[rdx+0x3]
  369845:	85 c0                                           	test   eax,eax
  369847:	75 7a                                           	jne    0x3698c3
  369849:	44 8d 42 2c                                     	lea    r8d,[rdx+0x2c]
  36984d:	4d 3b f7                                        	cmp    r14,r15
  369850:	48 8b ce                                        	mov    rcx,rsi
  369853:	44 0f 44 c2                                     	cmove  r8d,edx
  369857:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  36985b:	e8 88 f3 ff ff                                  	call   0x368be8
  369860:	44 8d 43 02                                     	lea    r8d,[rbx+0x2]
  369864:	4d 3b f7                                        	cmp    r14,r15
  369867:	8d 43 db                                        	lea    eax,[rbx-0x25]
  36986a:	48 8b ce                                        	mov    rcx,rsi
  36986d:	44 0f 44 c0                                     	cmove  r8d,eax
  369871:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  369875:	e8 6e f3 ff ff                                  	call   0x368be8
  36987a:	f3 0f 10 5d cf                                  	movss  xmm3,DWORD PTR [rbp-0x31]
  36987f:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  369883:	f3 0f 10 55 db                                  	movss  xmm2,DWORD PTR [rbp-0x25]
  369888:	f3 0f 10 4d c7                                  	movss  xmm1,DWORD PTR [rbp-0x39]
  36988d:	e8 16 e3 05 00                                  	call   0x3c7ba8
  369892:	f3 0f 10 15 fe 97 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff297fe]        # 0x293098
  36989a:	48 8d 4d f3                                     	lea    rcx,[rbp-0xd]
  36989e:	0f 57 db                                        	xorps  xmm3,xmm3
  3698a1:	0f 57 c9                                        	xorps  xmm1,xmm1
  3698a4:	48 8b d8                                        	mov    rbx,rax
  3698a7:	e8 fc e2 05 00                                  	call   0x3c7ba8
  3698ac:	4c 8b c0                                        	mov    r8,rax
  3698af:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  3698b3:	48 8b cb                                        	mov    rcx,rbx
  3698b6:	e8 4d 5e f7 ff                                  	call   0x2df708
  3698bb:	8d 5f 06                                        	lea    ebx,[rdi+0x6]
  3698be:	e9 ae 00 00 00                                  	jmp    0x369971
  3698c3:	83 f8 01                                        	cmp    eax,0x1
  3698c6:	75 0f                                           	jne    0x3698d7
  3698c8:	4d 3b f7                                        	cmp    r14,r15
  3698cb:	44 8b c3                                        	mov    r8d,ebx
  3698ce:	44 0f 44 c7                                     	cmove  r8d,edi
  3698d2:	e9 8e 00 00 00                                  	jmp    0x369965
  3698d7:	83 f8 02                                        	cmp    eax,0x2
  3698da:	75 0d                                           	jne    0x3698e9
  3698dc:	4d 3b f7                                        	cmp    r14,r15
  3698df:	44 8d 40 15                                     	lea    r8d,[rax+0x15]
  3698e3:	45 0f 44 c1                                     	cmove  r8d,r9d
  3698e7:	eb 7c                                           	jmp    0x369965
  3698e9:	83 f8 03                                        	cmp    eax,0x3
  3698ec:	75 0c                                           	jne    0x3698fa
  3698ee:	4d 3b f7                                        	cmp    r14,r15
  3698f1:	45 8b c4                                        	mov    r8d,r12d
  3698f4:	44 0f 44 c1                                     	cmove  r8d,ecx
  3698f8:	eb 6b                                           	jmp    0x369965
  3698fa:	83 f8 04                                        	cmp    eax,0x4
  3698fd:	75 04                                           	jne    0x369903
  3698ff:	33 d2                                           	xor    edx,edx
  369901:	eb 57                                           	jmp    0x36995a
  369903:	83 f8 05                                        	cmp    eax,0x5
  369906:	75 78                                           	jne    0x369980
  369908:	8b 05 aa 35 09 00                               	mov    eax,DWORD PTR [rip+0x935aa]        # 0x3fceb8
  36990e:	85 c0                                           	test   eax,eax
  369910:	75 0d                                           	jne    0x36991f
  369912:	33 d2                                           	xor    edx,edx
  369914:	4d 3b f7                                        	cmp    r14,r15
  369917:	0f 95 c2                                        	setne  dl
  36991a:	83 c2 2f                                        	add    edx,0x2f
  36991d:	eb 3b                                           	jmp    0x36995a
  36991f:	83 f8 01                                        	cmp    eax,0x1
  369922:	75 04                                           	jne    0x369928
  369924:	8b d7                                           	mov    edx,edi
  369926:	eb 32                                           	jmp    0x36995a
  369928:	83 f8 02                                        	cmp    eax,0x2
  36992b:	75 0c                                           	jne    0x369939
  36992d:	4d 3b f7                                        	cmp    r14,r15
  369930:	8d 50 14                                        	lea    edx,[rax+0x14]
  369933:	41 0f 44 d1                                     	cmove  edx,r9d
  369937:	eb 21                                           	jmp    0x36995a
  369939:	83 f8 03                                        	cmp    eax,0x3
  36993c:	75 0b                                           	jne    0x369949
  36993e:	4d 3b f7                                        	cmp    r14,r15
  369941:	41 8b d4                                        	mov    edx,r12d
  369944:	0f 44 d1                                        	cmove  edx,ecx
  369947:	eb 11                                           	jmp    0x36995a
  369949:	33 d2                                           	xor    edx,edx
  36994b:	83 f8 04                                        	cmp    eax,0x4
  36994e:	75 0a                                           	jne    0x36995a
  369950:	4d 3b f7                                        	cmp    r14,r15
  369953:	8d 50 10                                        	lea    edx,[rax+0x10]
  369956:	41 0f 44 d0                                     	cmove  edx,r8d
  36995a:	48 8b ce                                        	mov    rcx,rsi
  36995d:	e8 4e f3 ff ff                                  	call   0x368cb0
  369962:	44 8b c0                                        	mov    r8d,eax
  369965:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  369969:	48 8b ce                                        	mov    rcx,rsi
  36996c:	e8 77 f2 ff ff                                  	call   0x368be8
  369971:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  369975:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  36997a:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  36997d:	89 45 bf                                        	mov    DWORD PTR [rbp-0x41],eax
  369980:	8b 0d 12 ab 08 00                               	mov    ecx,DWORD PTR [rip+0x8ab12]        # 0x3f4498
  369986:	b2 01                                           	mov    dl,0x1
  369988:	e8 bf c4 f7 ff                                  	call   0x2e5e4c
  36998d:	84 c0                                           	test   al,al
  36998f:	0f 84 a3 01 00 00                               	je     0x369b38
  369995:	8b 05 8d 33 09 00                               	mov    eax,DWORD PTR [rip+0x9338d]        # 0x3fcd28
  36999b:	85 c0                                           	test   eax,eax
  36999d:	0f 85 8e 00 00 00                               	jne    0x369a31
  3699a3:	8d 78 37                                        	lea    edi,[rax+0x37]
  3699a6:	4d 3b f7                                        	cmp    r14,r15
  3699a9:	44 8b c7                                        	mov    r8d,edi
  3699ac:	8d 47 d4                                        	lea    eax,[rdi-0x2c]
  3699af:	44 0f 44 c0                                     	cmove  r8d,eax
  3699b3:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  3699b7:	48 8b ce                                        	mov    rcx,rsi
  3699ba:	e8 29 f2 ff ff                                  	call   0x368be8
  3699bf:	8d 47 d8                                        	lea    eax,[rdi-0x28]
  3699c2:	4d 3b f7                                        	cmp    r14,r15
  3699c5:	44 8d 67 ff                                     	lea    r12d,[rdi-0x1]
  3699c9:	48 8b ce                                        	mov    rcx,rsi
  3699cc:	45 8b c4                                        	mov    r8d,r12d
  3699cf:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  3699d3:	44 0f 44 c0                                     	cmove  r8d,eax
  3699d7:	e8 0c f2 ff ff                                  	call   0x368be8
  3699dc:	f3 0f 10 5d cf                                  	movss  xmm3,DWORD PTR [rbp-0x31]
  3699e1:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  3699e5:	f3 0f 10 55 db                                  	movss  xmm2,DWORD PTR [rbp-0x25]
  3699ea:	f3 0f 10 4d c7                                  	movss  xmm1,DWORD PTR [rbp-0x39]
  3699ef:	e8 b4 e1 05 00                                  	call   0x3c7ba8
  3699f4:	f3 0f 10 15 9c 96 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff2969c]        # 0x293098
  3699fc:	48 8d 4d f3                                     	lea    rcx,[rbp-0xd]
  369a00:	0f 57 db                                        	xorps  xmm3,xmm3
  369a03:	0f 57 c9                                        	xorps  xmm1,xmm1
  369a06:	48 8b d8                                        	mov    rbx,rax
  369a09:	e8 9a e1 05 00                                  	call   0x3c7ba8
  369a0e:	4c 8b c0                                        	mov    r8,rax
  369a11:	48 8d 55 e7                                     	lea    rdx,[rbp-0x19]
  369a15:	48 8b cb                                        	mov    rcx,rbx
  369a18:	e8 eb 5c f7 ff                                  	call   0x2df708
  369a1d:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  369a21:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  369a26:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  369a29:	89 4d bf                                        	mov    DWORD PTR [rbp-0x41],ecx
  369a2c:	e9 1a 01 00 00                                  	jmp    0x369b4b
  369a31:	83 f8 01                                        	cmp    eax,0x1
  369a34:	75 29                                           	jne    0x369a5f
  369a36:	4d 3b f7                                        	cmp    r14,r15
  369a39:	0f 44 df                                        	cmove  ebx,edi
  369a3c:	44 8b c3                                        	mov    r8d,ebx
  369a3f:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  369a43:	48 8b ce                                        	mov    rcx,rsi
  369a46:	e8 9d f1 ff ff                                  	call   0x368be8
  369a4b:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  369a4f:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  369a54:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  369a57:	89 4d bf                                        	mov    DWORD PTR [rbp-0x41],ecx
  369a5a:	e9 e1 00 00 00                                  	jmp    0x369b40
  369a5f:	83 f8 02                                        	cmp    eax,0x2
  369a62:	75 10                                           	jne    0x369a74
  369a64:	4d 3b f7                                        	cmp    r14,r15
  369a67:	8d 48 0f                                        	lea    ecx,[rax+0xf]
  369a6a:	44 8d 40 15                                     	lea    r8d,[rax+0x15]
  369a6e:	44 0f 44 c1                                     	cmove  r8d,ecx
  369a72:	eb cb                                           	jmp    0x369a3f
  369a74:	83 f8 03                                        	cmp    eax,0x3
  369a77:	75 36                                           	jne    0x369aaf
  369a79:	4d 3b f7                                        	cmp    r14,r15
  369a7c:	8d 58 0c                                        	lea    ebx,[rax+0xc]
  369a7f:	44 0f 44 e3                                     	cmove  r12d,ebx
  369a83:	45 8b c4                                        	mov    r8d,r12d
  369a86:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  369a8a:	48 8b ce                                        	mov    rcx,rsi
  369a8d:	e8 56 f1 ff ff                                  	call   0x368be8
  369a92:	bf 37 00 00 00                                  	mov    edi,0x37
  369a97:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  369a9b:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  369aa0:	44 8d 67 ff                                     	lea    r12d,[rdi-0x1]
  369aa4:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  369aa7:	89 4d bf                                        	mov    DWORD PTR [rbp-0x41],ecx
  369aaa:	e9 a1 00 00 00                                  	jmp    0x369b50
  369aaf:	83 f8 04                                        	cmp    eax,0x4
  369ab2:	75 12                                           	jne    0x369ac6
  369ab4:	33 d2                                           	xor    edx,edx
  369ab6:	48 8b ce                                        	mov    rcx,rsi
  369ab9:	e8 f2 f1 ff ff                                  	call   0x368cb0
  369abe:	44 8b c0                                        	mov    r8d,eax
  369ac1:	e9 79 ff ff ff                                  	jmp    0x369a3f
  369ac6:	83 f8 05                                        	cmp    eax,0x5
  369ac9:	75 6d                                           	jne    0x369b38
  369acb:	8b 05 37 34 09 00                               	mov    eax,DWORD PTR [rip+0x93437]        # 0x3fcf08
  369ad1:	85 c0                                           	test   eax,eax
  369ad3:	75 0e                                           	jne    0x369ae3
  369ad5:	33 ff                                           	xor    edi,edi
  369ad7:	4d 3b f7                                        	cmp    r14,r15
  369ada:	40 0f 95 c7                                     	setne  dil
  369ade:	83 c7 2f                                        	add    edi,0x2f
  369ae1:	eb 3e                                           	jmp    0x369b21
  369ae3:	83 f8 01                                        	cmp    eax,0x1
  369ae6:	74 39                                           	je     0x369b21
  369ae8:	83 f8 02                                        	cmp    eax,0x2
  369aeb:	75 0e                                           	jne    0x369afb
  369aed:	4d 3b f7                                        	cmp    r14,r15
  369af0:	8d 78 14                                        	lea    edi,[rax+0x14]
  369af3:	8d 48 0f                                        	lea    ecx,[rax+0xf]
  369af6:	0f 44 f9                                        	cmove  edi,ecx
  369af9:	eb 26                                           	jmp    0x369b21
  369afb:	83 f8 03                                        	cmp    eax,0x3
  369afe:	75 0e                                           	jne    0x369b0e
  369b00:	4d 3b f7                                        	cmp    r14,r15
  369b03:	8d 58 0c                                        	lea    ebx,[rax+0xc]
  369b06:	41 8b fc                                        	mov    edi,r12d
  369b09:	0f 44 fb                                        	cmove  edi,ebx
  369b0c:	eb 18                                           	jmp    0x369b26
  369b0e:	33 ff                                           	xor    edi,edi
  369b10:	83 f8 04                                        	cmp    eax,0x4
  369b13:	75 0c                                           	jne    0x369b21
  369b15:	8d 78 10                                        	lea    edi,[rax+0x10]
  369b18:	4d 3b f7                                        	cmp    r14,r15
  369b1b:	8d 47 fa                                        	lea    eax,[rdi-0x6]
  369b1e:	0f 44 f8                                        	cmove  edi,eax
  369b21:	bb 0f 00 00 00                                  	mov    ebx,0xf
  369b26:	8b d7                                           	mov    edx,edi
  369b28:	48 8b ce                                        	mov    rcx,rsi
  369b2b:	e8 80 f1 ff ff                                  	call   0x368cb0
  369b30:	44 8b c0                                        	mov    r8d,eax
  369b33:	e9 4e ff ff ff                                  	jmp    0x369a86
  369b38:	8b 4d bf                                        	mov    ecx,DWORD PTR [rbp-0x41]
  369b3b:	f2 0f 10 45 b7                                  	movsd  xmm0,QWORD PTR [rbp-0x49]
  369b40:	41 bc 36 00 00 00                               	mov    r12d,0x36
  369b46:	41 8d 7c 24 01                                  	lea    edi,[r12+0x1]
  369b4b:	bb 0f 00 00 00                                  	mov    ebx,0xf
  369b50:	80 3d 01 e5 06 00 00                            	cmp    BYTE PTR [rip+0x6e501],0x0        # 0x3d8058
  369b57:	0f 84 93 00 00 00                               	je     0x369bf0
  369b5d:	80 3d 64 e3 06 00 00                            	cmp    BYTE PTR [rip+0x6e364],0x0        # 0x3d7ec8
  369b64:	0f 84 86 00 00 00                               	je     0x369bf0
  369b6a:	80 3d 07 e3 06 00 00                            	cmp    BYTE PTR [rip+0x6e307],0x0        # 0x3d7e78
  369b71:	74 7d                                           	je     0x369bf0
  369b73:	b8 0b 00 00 00                                  	mov    eax,0xb
  369b78:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  369b7c:	4d 3b f7                                        	cmp    r14,r15
  369b7f:	48 8b ce                                        	mov    rcx,rsi
  369b82:	0f 44 f8                                        	cmove  edi,eax
  369b85:	44 8b c7                                        	mov    r8d,edi
  369b88:	e8 5b f0 ff ff                                  	call   0x368be8
  369b8d:	4d 3b f7                                        	cmp    r14,r15
  369b90:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  369b94:	48 8b ce                                        	mov    rcx,rsi
  369b97:	44 0f 44 e3                                     	cmove  r12d,ebx
  369b9b:	45 8b c4                                        	mov    r8d,r12d
  369b9e:	e8 45 f0 ff ff                                  	call   0x368be8
  369ba3:	f3 0f 10 5d cf                                  	movss  xmm3,DWORD PTR [rbp-0x31]
  369ba8:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  369bac:	f3 0f 10 55 db                                  	movss  xmm2,DWORD PTR [rbp-0x25]
  369bb1:	f3 0f 10 4d c7                                  	movss  xmm1,DWORD PTR [rbp-0x39]
  369bb6:	e8 ed df 05 00                                  	call   0x3c7ba8
  369bbb:	f3 0f 10 15 d5 94 f2 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff294d5]        # 0x293098
  369bc3:	48 8d 4d f3                                     	lea    rcx,[rbp-0xd]
  369bc7:	0f 57 db                                        	xorps  xmm3,xmm3
  369bca:	0f 57 c9                                        	xorps  xmm1,xmm1
  369bcd:	48 8b d8                                        	mov    rbx,rax
  369bd0:	e8 d3 df 05 00                                  	call   0x3c7ba8
  369bd5:	4c 8b c0                                        	mov    r8,rax
  369bd8:	48 8d 55 e7                                     	lea    rdx,[rbp-0x19]
  369bdc:	48 8b cb                                        	mov    rcx,rbx
  369bdf:	e8 24 5b f7 ff                                  	call   0x2df708
  369be4:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  369be8:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  369bed:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  369bf0:	f2 41 0f 11 45 00                               	movsd  QWORD PTR [r13+0x0],xmm0
  369bf6:	41 89 4d 08                                     	mov    DWORD PTR [r13+0x8],ecx
  369bfa:	eb 08                                           	jmp    0x369c04
  369bfc:	49 8b cd                                        	mov    rcx,r13
  369bff:	e8 b8 df 05 00                                  	call   0x3c7bbc
  369c04:	49 8b c5                                        	mov    rax,r13
  369c07:	48 81 c4 88 00 00 00                            	add    rsp,0x88
  369c0e:	41 5f                                           	pop    r15
  369c10:	41 5e                                           	pop    r14
  369c12:	41 5d                                           	pop    r13
  369c14:	41 5c                                           	pop    r12
  369c16:	5f                                              	pop    rdi
  369c17:	5e                                              	pop    rsi
  369c18:	5b                                              	pop    rbx
  369c19:	5d                                              	pop    rbp
  369c1a:	c3                                              	ret
