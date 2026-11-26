
dump_analysis/semantic_reconstruction/game_input_physics/2e4f88.bin:     file format binary


Disassembly of section .data:

00000000002e4f88 <.data>:
  2e4f88:	e9 a3 ff ff ff                                  	jmp    0x2e4f30
  2e4f8d:	cc                                              	int3
  2e4f8e:	cc                                              	int3
  2e4f8f:	cc                                              	int3
  2e4f90:	48 83 ec 28                                     	sub    rsp,0x28
  2e4f94:	48 8b 09                                        	mov    rcx,QWORD PTR [rcx]
  2e4f97:	48 85 c9                                        	test   rcx,rcx
  2e4f9a:	74 05                                           	je     0x2e4fa1
  2e4f9c:	e8 13 28 ff ff                                  	call   0x2d77b4
  2e4fa1:	48 83 c4 28                                     	add    rsp,0x28
  2e4fa5:	c3                                              	ret
  2e4fa6:	cc                                              	int3
  2e4fa7:	cc                                              	int3
  2e4fa8:	40 53                                           	rex push rbx
  2e4faa:	48 83 ec 20                                     	sub    rsp,0x20
  2e4fae:	48 8b d9                                        	mov    rbx,rcx
  2e4fb1:	48 83 c1 48                                     	add    rcx,0x48
  2e4fb5:	e8 ce fa fe ff                                  	call   0x2d4a88
  2e4fba:	48 8b cb                                        	mov    rcx,rbx
  2e4fbd:	48 83 c4 20                                     	add    rsp,0x20
  2e4fc1:	5b                                              	pop    rbx
  2e4fc2:	e9 7d 66 ff ff                                  	jmp    0x2db644
  2e4fc7:	cc                                              	int3
  2e4fc8:	e9 93 47 00 00                                  	jmp    0x2e9760
  2e4fcd:	cc                                              	int3
  2e4fce:	cc                                              	int3
  2e4fcf:	cc                                              	int3
  2e4fd0:	e9 93 ff ff ff                                  	jmp    0x2e4f68
  2e4fd5:	cc                                              	int3
  2e4fd6:	cc                                              	int3
  2e4fd7:	cc                                              	int3
  2e4fd8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e4fdd:	57                                              	push   rdi
  2e4fde:	48 83 ec 20                                     	sub    rsp,0x20
  2e4fe2:	48 8b d9                                        	mov    rbx,rcx
  2e4fe5:	48 8b fa                                        	mov    rdi,rdx
  2e4fe8:	48 8b ca                                        	mov    rcx,rdx
  2e4feb:	e8 b4 63 fe ff                                  	call   0x2cb3a4
  2e4ff0:	48 3b d8                                        	cmp    rbx,rax
  2e4ff3:	74 13                                           	je     0x2e5008
  2e4ff5:	48 8b cb                                        	mov    rcx,rbx
  2e4ff8:	e8 b7 27 ff ff                                  	call   0x2d77b4
  2e4ffd:	48 8b d7                                        	mov    rdx,rdi
  2e5000:	48 8b cb                                        	mov    rcx,rbx
  2e5003:	e8 d8 7d ff ff                                  	call   0x2dcde0
