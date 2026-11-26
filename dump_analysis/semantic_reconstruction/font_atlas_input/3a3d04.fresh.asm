
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3d04 <.data+0x3a3d04>:
  3a3d04:	40 53                                           	rex push rbx
  3a3d06:	55                                              	push   rbp
  3a3d07:	56                                              	push   rsi
  3a3d08:	57                                              	push   rdi
  3a3d09:	41 56                                           	push   r14
  3a3d0b:	48 83 ec 20                                     	sub    rsp,0x20
  3a3d0f:	33 f6                                           	xor    esi,esi
  3a3d11:	48 8d 79 78                                     	lea    rdi,[rcx+0x78]
  3a3d15:	48 8b d9                                        	mov    rbx,rcx
  3a3d18:	39 37                                           	cmp    DWORD PTR [rdi],esi
  3a3d1a:	7e 49                                           	jle    0x3a3d65
  3a3d1c:	8b d6                                           	mov    edx,esi
  3a3d1e:	48 8b cf                                        	mov    rcx,rdi
  3a3d21:	e8 fa b8 ff ff                                  	call   0x39f620
  3a3d26:	48 83 38 00                                     	cmp    QWORD PTR [rax],0x0
  3a3d2a:	74 33                                           	je     0x3a3d5f
  3a3d2c:	8b d6                                           	mov    edx,esi
  3a3d2e:	48 8b cf                                        	mov    rcx,rdi
  3a3d31:	e8 ea b8 ff ff                                  	call   0x39f620
  3a3d36:	80 78 0c 00                                     	cmp    BYTE PTR [rax+0xc],0x0
  3a3d3a:	74 23                                           	je     0x3a3d5f
  3a3d3c:	8b d6                                           	mov    edx,esi
  3a3d3e:	48 8b cf                                        	mov    rcx,rdi
  3a3d41:	e8 da b8 ff ff                                  	call   0x39f620
  3a3d46:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a3d49:	e8 2e 14 ff ff                                  	call   0x39517c
  3a3d4e:	8b d6                                           	mov    edx,esi
  3a3d50:	48 8b cf                                        	mov    rcx,rdi
  3a3d53:	e8 c8 b8 ff ff                                  	call   0x39f620
  3a3d58:	48 c7 00 00 00 00 00                            	mov    QWORD PTR [rax],0x0
  3a3d5f:	ff c6                                           	inc    esi
  3a3d61:	3b 37                                           	cmp    esi,DWORD PTR [rdi]
  3a3d63:	7c b7                                           	jl     0x3a3d1c
  3a3d65:	33 f6                                           	xor    esi,esi
  3a3d67:	48 8d 6b 58                                     	lea    rbp,[rbx+0x58]
  3a3d6b:	39 75 00                                        	cmp    DWORD PTR [rbp+0x0],esi
  3a3d6e:	7e 69                                           	jle    0x3a3dd9
  3a3d70:	4c 8b b3 80 00 00 00                            	mov    r14,QWORD PTR [rbx+0x80]
  3a3d77:	8b d6                                           	mov    edx,esi
  3a3d79:	48 8b cd                                        	mov    rcx,rbp
  3a3d7c:	e8 03 7e fe ff                                  	call   0x38bb84
  3a3d81:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a3d84:	4c 39 71 48                                     	cmp    QWORD PTR [rcx+0x48],r14
  3a3d88:	72 48                                           	jb     0x3a3dd2
  3a3d8a:	8b d6                                           	mov    edx,esi
  3a3d8c:	48 8b cd                                        	mov    rcx,rbp
  3a3d8f:	e8 f0 7d fe ff                                  	call   0x38bb84
  3a3d94:	48 63 0f                                        	movsxd rcx,DWORD PTR [rdi]
  3a3d97:	48 69 d1 88 00 00 00                            	imul   rdx,rcx,0x88
  3a3d9e:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3a3da1:	49 03 d6                                        	add    rdx,r14
  3a3da4:	48 39 50 48                                     	cmp    QWORD PTR [rax+0x48],rdx
  3a3da8:	73 28                                           	jae    0x3a3dd2
  3a3daa:	8b d6                                           	mov    edx,esi
  3a3dac:	48 8b cd                                        	mov    rcx,rbp
  3a3daf:	e8 d0 7d fe ff                                  	call   0x38bb84
  3a3db4:	8b d6                                           	mov    edx,esi
  3a3db6:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3a3db9:	48 c7 41 48 00 00 00 00                         	mov    QWORD PTR [rcx+0x48],0x0
  3a3dc1:	48 8b cd                                        	mov    rcx,rbp
  3a3dc4:	e8 bb 7d fe ff                                  	call   0x38bb84
  3a3dc9:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3a3dcc:	33 c0                                           	xor    eax,eax
  3a3dce:	66 89 42 50                                     	mov    WORD PTR [rdx+0x50],ax
  3a3dd2:	ff c6                                           	inc    esi
  3a3dd4:	3b 75 00                                        	cmp    esi,DWORD PTR [rbp+0x0]
  3a3dd7:	7c 97                                           	jl     0x3a3d70
  3a3dd9:	48 8b cf                                        	mov    rcx,rdi
  3a3ddc:	e8 97 57 fd ff                                  	call   0x379578
  3a3de1:	48 8d 4b 68                                     	lea    rcx,[rbx+0x68]
  3a3de5:	e8 8e 57 fd ff                                  	call   0x379578
  3a3dea:	83 c8 ff                                        	or     eax,0xffffffff
  3a3ded:	89 83 98 04 00 00                               	mov    DWORD PTR [rbx+0x498],eax
  3a3df3:	89 83 94 04 00 00                               	mov    DWORD PTR [rbx+0x494],eax
  3a3df9:	89 83 a0 04 00 00                               	mov    DWORD PTR [rbx+0x4a0],eax
  3a3dff:	89 83 9c 04 00 00                               	mov    DWORD PTR [rbx+0x49c],eax
  3a3e05:	48 83 c4 20                                     	add    rsp,0x20
  3a3e09:	41 5e                                           	pop    r14
  3a3e0b:	5f                                              	pop    rdi
  3a3e0c:	5e                                              	pop    rsi
  3a3e0d:	5d                                              	pop    rbp
  3a3e0e:	5b                                              	pop    rbx
  3a3e0f:	c3                                              	ret
