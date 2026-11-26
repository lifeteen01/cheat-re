
dump_analysis/semantic_reconstruction/game_input_physics/2e9c7c.bin:     file format binary


Disassembly of section .data:

00000000002e9c7c <.data>:
  2e9c7c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e9c81:	57                                              	push   rdi
  2e9c82:	48 83 ec 20                                     	sub    rsp,0x20
  2e9c86:	8b da                                           	mov    ebx,edx
  2e9c88:	48 63 f9                                        	movsxd rdi,ecx
  2e9c8b:	e8 5c c2 ff ff                                  	call   0x2e5eec
  2e9c90:	48 8b c8                                        	mov    rcx,rax
  2e9c93:	48 8b d0                                        	mov    rdx,rax
  2e9c96:	e8 6d 12 fe ff                                  	call   0x2caf08
  2e9c9b:	84 c0                                           	test   al,al
  2e9c9d:	74 5d                                           	je     0x2e9cfc
  2e9c9f:	48 8b ca                                        	mov    rcx,rdx
  2e9ca2:	e8 51 c3 ff ff                                  	call   0x2e5ff8
  2e9ca7:	48 8b c8                                        	mov    rcx,rax
  2e9caa:	48 8b d0                                        	mov    rdx,rax
  2e9cad:	e8 56 12 fe ff                                  	call   0x2caf08
  2e9cb2:	84 c0                                           	test   al,al
  2e9cb4:	74 46                                           	je     0x2e9cfc
  2e9cb6:	85 ff                                           	test   edi,edi
  2e9cb8:	78 42                                           	js     0x2e9cfc
  2e9cba:	3b 7a 18                                        	cmp    edi,DWORD PTR [rdx+0x18]
  2e9cbd:	7d 3d                                           	jge    0x2e9cfc
  2e9cbf:	48 8b 54 fa 20                                  	mov    rdx,QWORD PTR [rdx+rdi*8+0x20]
  2e9cc4:	48 8b ca                                        	mov    rcx,rdx
  2e9cc7:	e8 3c 12 fe ff                                  	call   0x2caf08
  2e9ccc:	84 c0                                           	test   al,al
  2e9cce:	74 2c                                           	je     0x2e9cfc
  2e9cd0:	85 db                                           	test   ebx,ebx
  2e9cd2:	74 1e                                           	je     0x2e9cf2
  2e9cd4:	83 eb 01                                        	sub    ebx,0x1
  2e9cd7:	74 0f                                           	je     0x2e9ce8
  2e9cd9:	83 fb 01                                        	cmp    ebx,0x1
  2e9cdc:	75 1e                                           	jne    0x2e9cfc
  2e9cde:	48 8b ca                                        	mov    rcx,rdx
  2e9ce1:	e8 d2 cb ff ff                                  	call   0x2e68b8
  2e9ce6:	eb 16                                           	jmp    0x2e9cfe
  2e9ce8:	48 8b ca                                        	mov    rcx,rdx
  2e9ceb:	e8 e8 f3 ff ff                                  	call   0x2e90d8
  2e9cf0:	eb 0c                                           	jmp    0x2e9cfe
  2e9cf2:	48 8b ca                                        	mov    rcx,rdx
  2e9cf5:	e8 8e f1 ff ff                                  	call   0x2e8e88
  2e9cfa:	eb 02                                           	jmp    0x2e9cfe
  2e9cfc:	32 c0                                           	xor    al,al
  2e9cfe:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e9d03:	48 83 c4 20                                     	add    rsp,0x20
  2e9d07:	5f                                              	pop    rdi
  2e9d08:	c3                                              	ret
