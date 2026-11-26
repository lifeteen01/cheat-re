
dump_analysis/semantic_reconstruction/movement_main_helpers/324904.bin:     file format binary


Disassembly of section .data:

0000000000324904 <.data>:
  324904:	40 55                                           	rex push rbp
  324906:	53                                              	push   rbx
  324907:	56                                              	push   rsi
  324908:	57                                              	push   rdi
  324909:	41 54                                           	push   r12
  32490b:	41 56                                           	push   r14
  32490d:	41 57                                           	push   r15
  32490f:	48 8d 6c 24 d9                                  	lea    rbp,[rsp-0x27]
  324914:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  32491b:	48 8b 05 de 25 0b 00                            	mov    rax,QWORD PTR [rip+0xb25de]        # 0x3d6f00
  324922:	48 8b 90 98 c0 1f 0f                            	mov    rdx,QWORD PTR [rax+0xf1fc098]
  324929:	48 8b ca                                        	mov    rcx,rdx
  32492c:	e8 d7 65 fa ff                                  	call   0x2caf08
  324931:	84 c0                                           	test   al,al
  324933:	0f 84 e5 01 00 00                               	je     0x324b1e
  324939:	4c 8b 82 b8 00 00 00                            	mov    r8,QWORD PTR [rdx+0xb8]
  324940:	49 8b c8                                        	mov    rcx,r8
  324943:	e8 c0 65 fa ff                                  	call   0x2caf08
  324948:	84 c0                                           	test   al,al
  32494a:	0f 84 ce 01 00 00                               	je     0x324b1e
  324950:	4d 8b 78 20                                     	mov    r15,QWORD PTR [r8+0x20]
  324954:	49 8b cf                                        	mov    rcx,r15
  324957:	e8 ac 65 fa ff                                  	call   0x2caf08
  32495c:	84 c0                                           	test   al,al
  32495e:	0f 84 ba 01 00 00                               	je     0x324b1e
  324964:	4d 8b 7f 30                                     	mov    r15,QWORD PTR [r15+0x30]
  324968:	49 8b cf                                        	mov    rcx,r15
  32496b:	e8 98 65 fa ff                                  	call   0x2caf08
  324970:	84 c0                                           	test   al,al
  324972:	0f 84 a6 01 00 00                               	je     0x324b1e
  324978:	45 8b 67 18                                     	mov    r12d,DWORD PTR [r15+0x18]
  32497c:	45 33 f6                                        	xor    r14d,r14d
  32497f:	45 85 e4                                        	test   r12d,r12d
  324982:	0f 8e 96 01 00 00                               	jle    0x324b1e
  324988:	49 8b 57 10                                     	mov    rdx,QWORD PTR [r15+0x10]
  32498c:	48 8b ca                                        	mov    rcx,rdx
  32498f:	e8 74 65 fa ff                                  	call   0x2caf08
  324994:	84 c0                                           	test   al,al
  324996:	0f 84 76 01 00 00                               	je     0x324b12
  32499c:	42 8d 04 f5 00 00 00 00                         	lea    eax,[r14*8+0x0]
  3249a4:	48 63 c8                                        	movsxd rcx,eax
  3249a7:	48 8b 54 0a 20                                  	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  3249ac:	48 8b ca                                        	mov    rcx,rdx
  3249af:	e8 54 65 fa ff                                  	call   0x2caf08
  3249b4:	84 c0                                           	test   al,al
  3249b6:	0f 84 56 01 00 00                               	je     0x324b12
  3249bc:	48 83 3d 7c f8 0b 00 00                         	cmp    QWORD PTR [rip+0xbf87c],0x0        # 0x3e4240
  3249c4:	0f 84 48 01 00 00                               	je     0x324b12
  3249ca:	8b 52 58                                        	mov    edx,DWORD PTR [rdx+0x58]
  3249cd:	48 8d 4d 07                                     	lea    rcx,[rbp+0x7]
  3249d1:	e8 3a 4b fb ff                                  	call   0x2d9510
  3249d6:	48 8d 55 d1                                     	lea    rdx,[rbp-0x2f]
  3249da:	48 8b d8                                        	mov    rbx,rax
  3249dd:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  3249e1:	e8 5e ef ff ff                                  	call   0x323944
  3249e6:	48 8b c8                                        	mov    rcx,rax
  3249e9:	e8 8e 3b fb ff                                  	call   0x2d857c
  3249ee:	48 8b d0                                        	mov    rdx,rax
  3249f1:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  3249f5:	4c 8b c3                                        	mov    r8,rbx
  3249f8:	e8 df 5c fc ff                                  	call   0x2ea6dc
  3249fd:	48 8d 4d 07                                     	lea    rcx,[rbp+0x7]
  324a01:	e8 ee 7a fa ff                                  	call   0x2cc4f4
  324a06:	8b 05 34 fe 0c 00                               	mov    eax,DWORD PTR [rip+0xcfe34]        # 0x3f4840
  324a0c:	a8 01                                           	test   al,0x1
  324a0e:	0f 85 9d 00 00 00                               	jne    0x324ab1
  324a14:	83 c8 01                                        	or     eax,0x1
  324a17:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  324a1b:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  324a1f:	89 05 1b fe 0c 00                               	mov    DWORD PTR [rip+0xcfe1b],eax        # 0x3f4840
  324a25:	e8 06 7d fa ff                                  	call   0x2cc730
  324a2a:	48 8b c8                                        	mov    rcx,rax
  324a2d:	e8 72 92 fa ff                                  	call   0x2cdca4
  324a32:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  324a36:	48 8b f0                                        	mov    rsi,rax
  324a39:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  324a3d:	e8 9e f3 ff ff                                  	call   0x323de0
  324a42:	48 8b c8                                        	mov    rcx,rax
  324a45:	e8 d2 92 fa ff                                  	call   0x2cdd1c
  324a4a:	48 8d 55 77                                     	lea    rdx,[rbp+0x77]
  324a4e:	48 8b f8                                        	mov    rdi,rax
  324a51:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  324a55:	e8 d6 7c fa ff                                  	call   0x2cc730
  324a5a:	48 8b c8                                        	mov    rcx,rax
  324a5d:	e8 42 92 fa ff                                  	call   0x2cdca4
  324a62:	48 8d 55 d1                                     	lea    rdx,[rbp-0x2f]
  324a66:	48 8b d8                                        	mov    rbx,rax
  324a69:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  324a6d:	e8 02 f1 ff ff                                  	call   0x323b74
  324a72:	48 8b c8                                        	mov    rcx,rax
  324a75:	e8 02 3b fb ff                                  	call   0x2d857c
  324a7a:	48 8b c8                                        	mov    rcx,rax
  324a7d:	48 8b d3                                        	mov    rdx,rbx
  324a80:	e8 9f f7 00 00                                  	call   0x334224
  324a85:	48 8b c8                                        	mov    rcx,rax
  324a88:	c7 44 24 20 ff ff ff ff                         	mov    DWORD PTR [rsp+0x20],0xffffffff
  324a90:	4c 8b ce                                        	mov    r9,rsi
  324a93:	41 83 c8 ff                                     	or     r8d,0xffffffff
  324a97:	48 8b d7                                        	mov    rdx,rdi
  324a9a:	e8 0d ff 00 00                                  	call   0x3349ac
  324a9f:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  324aa2:	8b 05 98 fd 0c 00                               	mov    eax,DWORD PTR [rip+0xcfd98]        # 0x3f4840
  324aa8:	4c 89 05 89 fd 0c 00                            	mov    QWORD PTR [rip+0xcfd89],r8        # 0x3f4838
  324aaf:	eb 07                                           	jmp    0x324ab8
  324ab1:	4c 8b 05 80 fd 0c 00                            	mov    r8,QWORD PTR [rip+0xcfd80]        # 0x3f4838
  324ab8:	a8 02                                           	test   al,0x2
  324aba:	75 1f                                           	jne    0x324adb
  324abc:	48 8b 0d 9d 13 0b 00                            	mov    rcx,QWORD PTR [rip+0xb139d]        # 0x3d5e60
  324ac3:	48 8d 15 86 fd 0c 00                            	lea    rdx,[rip+0xcfd86]        # 0x3f4850
  324aca:	83 c8 02                                        	or     eax,0x2
  324acd:	45 33 c9                                        	xor    r9d,r9d
  324ad0:	89 05 6a fd 0c 00                               	mov    DWORD PTR [rip+0xcfd6a],eax        # 0x3f4840
  324ad6:	e8 49 72 fa ff                                  	call   0x2cbd24
  324adb:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  324adf:	e8 08 8d fa ff                                  	call   0x2cd7ec
  324ae4:	48 8b c8                                        	mov    rcx,rax
  324ae7:	e8 f0 9a fa ff                                  	call   0x2ce5dc
  324aec:	4c 8b 05 4d f7 0b 00                            	mov    r8,QWORD PTR [rip+0xbf74d]        # 0x3e4240
  324af3:	48 8d 15 56 fd 0c 00                            	lea    rdx,[rip+0xcfd56]        # 0x3f4850
  324afa:	48 8b 0d 5f 13 0b 00                            	mov    rcx,QWORD PTR [rip+0xb135f]        # 0x3d5e60
  324b01:	4c 8b c8                                        	mov    r9,rax
  324b04:	e8 8b d5 fa ff                                  	call   0x2d2094
  324b09:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  324b0d:	e8 e2 79 fa ff                                  	call   0x2cc4f4
  324b12:	41 ff c6                                        	inc    r14d
  324b15:	45 3b f4                                        	cmp    r14d,r12d
  324b18:	0f 8c 6a fe ff ff                               	jl     0x324988
  324b1e:	48 81 c4 90 00 00 00                            	add    rsp,0x90
  324b25:	41 5f                                           	pop    r15
  324b27:	41 5e                                           	pop    r14
  324b29:	41 5c                                           	pop    r12
  324b2b:	5f                                              	pop    rdi
  324b2c:	5e                                              	pop    rsi
  324b2d:	5b                                              	pop    rbx
  324b2e:	5d                                              	pop    rbp
  324b2f:	c3                                              	ret
