
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8a6c <.data+0x3c8a6c>:
  3c8a6c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3c8a71:	48 89 7c 24 10                                  	mov    QWORD PTR [rsp+0x10],rdi
  3c8a76:	66 0f 7e ca                                     	movd   edx,xmm1
  3c8a7a:	44 8b ca                                        	mov    r9d,edx
  3c8a7d:	41 81 e1 ff ff ff 7f                            	and    r9d,0x7fffffff
  3c8a84:	0f 84 33 01 00 00                               	je     0x3c8bbd
  3c8a8a:	66 0f 7e c0                                     	movd   eax,xmm0
  3c8a8e:	bb 00 00 80 7f                                  	mov    ebx,0x7f800000
  3c8a93:	44 8b d8                                        	mov    r11d,eax
  3c8a96:	41 81 e3 00 00 00 80                            	and    r11d,0x80000000
  3c8a9d:	45 8b c3                                        	mov    r8d,r11d
  3c8aa0:	44 33 c0                                        	xor    r8d,eax
  3c8aa3:	44 3b c3                                        	cmp    r8d,ebx
  3c8aa6:	0f 8d 11 01 00 00                               	jge    0x3c8bbd
  3c8aac:	44 3b cb                                        	cmp    r9d,ebx
  3c8aaf:	0f 87 08 01 00 00                               	ja     0x3c8bbd
  3c8ab5:	45 3b c1                                        	cmp    r8d,r9d
  3c8ab8:	0f 8c 07 01 00 00                               	jl     0x3c8bc5
  3c8abe:	75 18                                           	jne    0x3c8ad8
  3c8ac0:	41 8b c3                                        	mov    eax,r11d
  3c8ac3:	48 8d 0d 4e 50 ee ff                            	lea    rcx,[rip+0xffffffffffee504e]        # 0x2adb18
  3c8aca:	48 c1 e8 1f                                     	shr    rax,0x1f
  3c8ace:	f3 0f 10 04 81                                  	movss  xmm0,DWORD PTR [rcx+rax*4]
  3c8ad3:	e9 ed 00 00 00                                  	jmp    0x3c8bc5
  3c8ad8:	bf 00 00 80 00                                  	mov    edi,0x800000
  3c8add:	41 ba 82 ff ff ff                               	mov    r10d,0xffffff82
  3c8ae3:	44 3b c7                                        	cmp    r8d,edi
  3c8ae6:	7d 15                                           	jge    0x3c8afd
  3c8ae8:	41 8b c8                                        	mov    ecx,r8d
  3c8aeb:	41 8b c2                                        	mov    eax,r10d
  3c8aee:	c1 e1 08                                        	shl    ecx,0x8
  3c8af1:	eb 04                                           	jmp    0x3c8af7
  3c8af3:	ff c8                                           	dec    eax
  3c8af5:	03 c9                                           	add    ecx,ecx
  3c8af7:	85 c9                                           	test   ecx,ecx
  3c8af9:	7f f8                                           	jg     0x3c8af3
  3c8afb:	eb 09                                           	jmp    0x3c8b06
  3c8afd:	41 8b c0                                        	mov    eax,r8d
  3c8b00:	c1 f8 17                                        	sar    eax,0x17
  3c8b03:	83 e8 7f                                        	sub    eax,0x7f
  3c8b06:	85 d3                                           	test   ebx,edx
  3c8b08:	75 15                                           	jne    0x3c8b1f
  3c8b0a:	41 8b c9                                        	mov    ecx,r9d
  3c8b0d:	41 8b d2                                        	mov    edx,r10d
  3c8b10:	c1 e1 08                                        	shl    ecx,0x8
  3c8b13:	85 c9                                           	test   ecx,ecx
  3c8b15:	78 11                                           	js     0x3c8b28
  3c8b17:	ff ca                                           	dec    edx
  3c8b19:	03 c9                                           	add    ecx,ecx
  3c8b1b:	79 fa                                           	jns    0x3c8b17
  3c8b1d:	eb 09                                           	jmp    0x3c8b28
  3c8b1f:	41 8b d1                                        	mov    edx,r9d
  3c8b22:	c1 ea 17                                        	shr    edx,0x17
  3c8b25:	83 ea 7f                                        	sub    edx,0x7f
  3c8b28:	bb ff ff 7f 00                                  	mov    ebx,0x7fffff
  3c8b2d:	41 3b c2                                        	cmp    eax,r10d
  3c8b30:	7c 08                                           	jl     0x3c8b3a
  3c8b32:	44 23 c3                                        	and    r8d,ebx
  3c8b35:	44 0b c7                                        	or     r8d,edi
  3c8b38:	eb 08                                           	jmp    0x3c8b42
  3c8b3a:	41 8b ca                                        	mov    ecx,r10d
  3c8b3d:	2b c8                                           	sub    ecx,eax
  3c8b3f:	41 d3 e0                                        	shl    r8d,cl
  3c8b42:	41 3b d2                                        	cmp    edx,r10d
  3c8b45:	7c 08                                           	jl     0x3c8b4f
  3c8b47:	44 23 cb                                        	and    r9d,ebx
  3c8b4a:	44 0b cf                                        	or     r9d,edi
  3c8b4d:	eb 08                                           	jmp    0x3c8b57
  3c8b4f:	41 8b ca                                        	mov    ecx,r10d
  3c8b52:	2b ca                                           	sub    ecx,edx
  3c8b54:	41 d3 e1                                        	shl    r9d,cl
  3c8b57:	2b c2                                           	sub    eax,edx
  3c8b59:	74 1c                                           	je     0x3c8b77
  3c8b5b:	41 8b c8                                        	mov    ecx,r8d
  3c8b5e:	41 2b c9                                        	sub    ecx,r9d
  3c8b61:	78 0b                                           	js     0x3c8b6e
  3c8b63:	85 c9                                           	test   ecx,ecx
  3c8b65:	0f 84 55 ff ff ff                               	je     0x3c8ac0
  3c8b6b:	44 8b c1                                        	mov    r8d,ecx
  3c8b6e:	47 8d 04 00                                     	lea    r8d,[r8+r8*1]
  3c8b72:	83 e8 01                                        	sub    eax,0x1
  3c8b75:	75 e4                                           	jne    0x3c8b5b
  3c8b77:	41 8b c0                                        	mov    eax,r8d
  3c8b7a:	41 2b c1                                        	sub    eax,r9d
  3c8b7d:	41 0f 48 c0                                     	cmovs  eax,r8d
  3c8b81:	85 c0                                           	test   eax,eax
  3c8b83:	0f 84 37 ff ff ff                               	je     0x3c8ac0
  3c8b89:	eb 04                                           	jmp    0x3c8b8f
  3c8b8b:	03 c0                                           	add    eax,eax
  3c8b8d:	ff ca                                           	dec    edx
  3c8b8f:	3b c7                                           	cmp    eax,edi
  3c8b91:	7c f8                                           	jl     0x3c8b8b
  3c8b93:	41 3b d2                                        	cmp    edx,r10d
  3c8b96:	7c 12                                           	jl     0x3c8baa
  3c8b98:	c1 e2 17                                        	shl    edx,0x17
  3c8b9b:	05 00 00 80 ff                                  	add    eax,0xff800000
  3c8ba0:	81 c2 00 00 80 3f                               	add    edx,0x3f800000
  3c8ba6:	0b d0                                           	or     edx,eax
  3c8ba8:	eb 0a                                           	jmp    0x3c8bb4
  3c8baa:	44 2b d2                                        	sub    r10d,edx
  3c8bad:	8b d0                                           	mov    edx,eax
  3c8baf:	41 8a ca                                        	mov    cl,r10b
  3c8bb2:	d3 fa                                           	sar    edx,cl
  3c8bb4:	41 0b d3                                        	or     edx,r11d
  3c8bb7:	66 0f 6e c2                                     	movd   xmm0,edx
  3c8bbb:	eb 08                                           	jmp    0x3c8bc5
  3c8bbd:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3c8bc1:	f3 0f 5e c0                                     	divss  xmm0,xmm0
  3c8bc5:	48 8b 5c 24 08                                  	mov    rbx,QWORD PTR [rsp+0x8]
  3c8bca:	48 8b 7c 24 10                                  	mov    rdi,QWORD PTR [rsp+0x10]
  3c8bcf:	c3                                              	ret
