
dump_analysis/semantic_reconstruction/game_input_physics/2d4dc0.bin:     file format binary


Disassembly of section .data:

00000000002d4dc0 <.data>:
  2d4dc0:	e9 f3 ff ff ff                                  	jmp    0x2d4db8
  2d4dc5:	cc                                              	int3
  2d4dc6:	cc                                              	int3
  2d4dc7:	cc                                              	int3
  2d4dc8:	40 53                                           	rex push rbx
  2d4dca:	48 83 ec 20                                     	sub    rsp,0x20
  2d4dce:	48 8b da                                        	mov    rbx,rdx
  2d4dd1:	48 8b d1                                        	mov    rdx,rcx
  2d4dd4:	48 8b cb                                        	mov    rcx,rbx
  2d4dd7:	e8 e0 f2 ff ff                                  	call   0x2d40bc
  2d4ddc:	48 8b c3                                        	mov    rax,rbx
  2d4ddf:	48 83 c4 20                                     	add    rsp,0x20
  2d4de3:	5b                                              	pop    rbx
  2d4de4:	c3                                              	ret
  2d4de5:	cc                                              	int3
  2d4de6:	cc                                              	int3
  2d4de7:	cc                                              	int3
  2d4de8:	e9 eb 97 ff ff                                  	jmp    0x2ce5d8
  2d4ded:	cc                                              	int3
  2d4dee:	cc                                              	int3
  2d4def:	cc                                              	int3
  2d4df0:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  2d4df3:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  2d4df6:	48 8b c1                                        	mov    rax,rcx
  2d4df9:	48 89 11                                        	mov    QWORD PTR [rcx],rdx
  2d4dfc:	c3                                              	ret
  2d4dfd:	cc                                              	int3
  2d4dfe:	cc                                              	int3
  2d4dff:	cc                                              	int3
  2d4e00:	40 53                                           	rex push rbx
  2d4e02:	48 83 ec 20                                     	sub    rsp,0x20
  2d4e06:	48 8b d9                                        	mov    rbx,rcx
  2d4e09:	e8 e2 ff ff ff                                  	call   0x2d4df0
  2d4e0e:	48 8b c3                                        	mov    rax,rbx
  2d4e11:	48 83 c4 20                                     	add    rsp,0x20
  2d4e15:	5b                                              	pop    rbx
  2d4e16:	c3                                              	ret
  2d4e17:	cc                                              	int3
  2d4e18:	48 83 01 20                                     	add    QWORD PTR [rcx],0x20
  2d4e1c:	48 8b c1                                        	mov    rax,rcx
  2d4e1f:	c3                                              	ret
  2d4e20:	40 53                                           	rex push rbx
  2d4e22:	48 83 ec 20                                     	sub    rsp,0x20
  2d4e26:	48 8b d9                                        	mov    rbx,rcx
  2d4e29:	e8 ea ff ff ff                                  	call   0x2d4e18
  2d4e2e:	48 8b c3                                        	mov    rax,rbx
  2d4e31:	48 83 c4 20                                     	add    rsp,0x20
  2d4e35:	5b                                              	pop    rbx
  2d4e36:	c3                                              	ret
  2d4e37:	cc                                              	int3
  2d4e38:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
  2d4e3b:	48 8b 50 08                                     	mov    rdx,QWORD PTR [rax+0x8]
  2d4e3f:	48                                              	rex.W
