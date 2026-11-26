
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a49ec <.data+0x3a49ec>:
  3a49ec:	48 8b c4                                        	mov    rax,rsp
  3a49ef:	48 89 58 10                                     	mov    QWORD PTR [rax+0x10],rbx
  3a49f3:	48 89 70 18                                     	mov    QWORD PTR [rax+0x18],rsi
  3a49f7:	57                                              	push   rdi
  3a49f8:	41 56                                           	push   r14
  3a49fa:	41 57                                           	push   r15
  3a49fc:	48 83 ec 30                                     	sub    rsp,0x30
  3a4a00:	48 83 79 38 00                                  	cmp    QWORD PTR [rcx+0x38],0x0
  3a4a05:	49 8b f1                                        	mov    rsi,r9
  3a4a08:	4d 8b f0                                        	mov    r14,r8
  3a4a0b:	4c 8b fa                                        	mov    r15,rdx
  3a4a0e:	48 8b d9                                        	mov    rbx,rcx
  3a4a11:	75 66                                           	jne    0x3a4a79
  3a4a13:	45 33 c9                                        	xor    r9d,r9d
  3a4a16:	48 c7 40 08 00 00 00 00                         	mov    QWORD PTR [rax+0x8],0x0
  3a4a1e:	45 33 c0                                        	xor    r8d,r8d
  3a4a21:	48 c7 40 d8 00 00 00 00                         	mov    QWORD PTR [rax-0x28],0x0
  3a4a29:	48 8d 50 08                                     	lea    rdx,[rax+0x8]
  3a4a2d:	e8 62 ff ff ff                                  	call   0x3a4994
  3a4a32:	48 8b 7c 24 50                                  	mov    rdi,QWORD PTR [rsp+0x50]
  3a4a37:	48 85 ff                                        	test   rdi,rdi
  3a4a3a:	74 3d                                           	je     0x3a4a79
  3a4a3c:	48 63 43 40                                     	movsxd rax,DWORD PTR [rbx+0x40]
  3a4a40:	48 63 4b 44                                     	movsxd rcx,DWORD PTR [rbx+0x44]
  3a4a44:	48 0f af c8                                     	imul   rcx,rax
  3a4a48:	48 c1 e1 02                                     	shl    rcx,0x2
  3a4a4c:	e8 07 07 ff ff                                  	call   0x395158
  3a4a51:	8b 53 44                                        	mov    edx,DWORD PTR [rbx+0x44]
  3a4a54:	0f af 53 40                                     	imul   edx,DWORD PTR [rbx+0x40]
  3a4a58:	48 89 43 38                                     	mov    QWORD PTR [rbx+0x38],rax
  3a4a5c:	eb 17                                           	jmp    0x3a4a75
  3a4a5e:	0f b6 0f                                        	movzx  ecx,BYTE PTR [rdi]
  3a4a61:	48 ff c7                                        	inc    rdi
  3a4a64:	c1 e1 18                                        	shl    ecx,0x18
  3a4a67:	81 c9 ff ff ff 00                               	or     ecx,0xffffff
  3a4a6d:	89 08                                           	mov    DWORD PTR [rax],ecx
  3a4a6f:	ff ca                                           	dec    edx
  3a4a71:	48 8d 40 04                                     	lea    rax,[rax+0x4]
  3a4a75:	85 d2                                           	test   edx,edx
  3a4a77:	7f e5                                           	jg     0x3a4a5e
  3a4a79:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a4a7d:	49 89 07                                        	mov    QWORD PTR [r15],rax
  3a4a80:	4d 85 f6                                        	test   r14,r14
  3a4a83:	74 06                                           	je     0x3a4a8b
  3a4a85:	8b 43 40                                        	mov    eax,DWORD PTR [rbx+0x40]
  3a4a88:	41 89 06                                        	mov    DWORD PTR [r14],eax
  3a4a8b:	48 85 f6                                        	test   rsi,rsi
  3a4a8e:	74 05                                           	je     0x3a4a95
  3a4a90:	8b 43 44                                        	mov    eax,DWORD PTR [rbx+0x44]
  3a4a93:	89 06                                           	mov    DWORD PTR [rsi],eax
  3a4a95:	48 8b 44 24 70                                  	mov    rax,QWORD PTR [rsp+0x70]
  3a4a9a:	48 85 c0                                        	test   rax,rax
  3a4a9d:	74 06                                           	je     0x3a4aa5
  3a4a9f:	c7 00 04 00 00 00                               	mov    DWORD PTR [rax],0x4
  3a4aa5:	48 8b 5c 24 58                                  	mov    rbx,QWORD PTR [rsp+0x58]
  3a4aaa:	48 8b 74 24 60                                  	mov    rsi,QWORD PTR [rsp+0x60]
  3a4aaf:	48 83 c4 30                                     	add    rsp,0x30
  3a4ab3:	41 5f                                           	pop    r15
  3a4ab5:	41 5e                                           	pop    r14
  3a4ab7:	5f                                              	pop    rdi
  3a4ab8:	c3                                              	ret
