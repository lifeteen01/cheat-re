
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000364aec <.data+0x364aec>:
  364aec:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [rsp+0x10],xmm1
  364af2:	55                                              	push   rbp
  364af3:	53                                              	push   rbx
  364af4:	57                                              	push   rdi
  364af5:	48 8b ec                                        	mov    rbp,rsp
  364af8:	48 83 ec 30                                     	sub    rsp,0x30
  364afc:	48 8b f9                                        	mov    rdi,rcx
  364aff:	4c 8d 45 28                                     	lea    r8,[rbp+0x28]
  364b03:	48 83 c1 10                                     	add    rcx,0x10
  364b07:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  364b0b:	e8 8c ff ff ff                                  	call   0x364a9c
  364b10:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  364b14:	48 8d 4f 10                                     	lea    rcx,[rdi+0x10]
  364b18:	e8 9b 3b f7 ff                                  	call   0x2d86b8
  364b1d:	48 8b d0                                        	mov    rdx,rax
  364b20:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  364b24:	e8 0b 7a f6 ff                                  	call   0x2cc534
  364b29:	84 c0                                           	test   al,al
  364b2b:	74 60                                           	je     0x364b8d
  364b2d:	48 83 c7 58                                     	add    rdi,0x58
  364b31:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  364b35:	48 8b cf                                        	mov    rcx,rdi
  364b38:	e8 73 3c f7 ff                                  	call   0x2d87b0
  364b3d:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  364b41:	48 8b cf                                        	mov    rcx,rdi
  364b44:	48 8b 18                                        	mov    rbx,QWORD PTR [rax]
  364b47:	e8 44 32 f7 ff                                  	call   0x2d7d90
  364b4c:	4c 8d 4d 28                                     	lea    r9,[rbp+0x28]
  364b50:	4c 8b c3                                        	mov    r8,rbx
  364b53:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  364b57:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  364b5a:	e8 99 15 fd ff                                  	call   0x3360f8
  364b5f:	48 8d 55 f0                                     	lea    rdx,[rbp-0x10]
  364b63:	48 8b cf                                        	mov    rcx,rdi
  364b66:	48 8b d8                                        	mov    rbx,rax
  364b69:	e8 42 3c f7 ff                                  	call   0x2d87b0
  364b6e:	48 8b d0                                        	mov    rdx,rax
  364b71:	48 8b cb                                        	mov    rcx,rbx
  364b74:	e8 bb 79 f6 ff                                  	call   0x2cc534
  364b79:	84 c0                                           	test   al,al
  364b7b:	74 0c                                           	je     0x364b89
  364b7d:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  364b81:	48 8b cf                                        	mov    rcx,rdi
  364b84:	e8 43 15 fd ff                                  	call   0x3360cc
  364b89:	33 c0                                           	xor    eax,eax
  364b8b:	eb 0d                                           	jmp    0x364b9a
  364b8d:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  364b91:	e8 0a 02 f7 ff                                  	call   0x2d4da0
  364b96:	48 8b 40 08                                     	mov    rax,QWORD PTR [rax+0x8]
  364b9a:	48 83 c4 30                                     	add    rsp,0x30
  364b9e:	5f                                              	pop    rdi
  364b9f:	5b                                              	pop    rbx
  364ba0:	5d                                              	pop    rbp
  364ba1:	c3                                              	ret
