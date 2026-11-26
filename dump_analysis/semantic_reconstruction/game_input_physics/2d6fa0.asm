
dump_analysis/semantic_reconstruction/game_input_physics/2d6fa0.bin:     file format binary


Disassembly of section .data:

00000000002d6fa0 <.data>:
  2d6fa0:	e9 3f 9b ff ff                                  	jmp    0x2d0ae4
  2d6fa5:	cc                                              	int3
  2d6fa6:	cc                                              	int3
  2d6fa7:	cc                                              	int3
  2d6fa8:	40 53                                           	rex push rbx
  2d6faa:	48 83 ec 20                                     	sub    rsp,0x20
  2d6fae:	48 8b da                                        	mov    rbx,rdx
  2d6fb1:	48 89 51 10                                     	mov    QWORD PTR [rcx+0x10],rdx
  2d6fb5:	c6 44 24 30 00                                  	mov    BYTE PTR [rsp+0x30],0x0
  2d6fba:	e8 25 65 ff ff                                  	call   0x2cd4e4
  2d6fbf:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2d6fc4:	48 8d 0c 03                                     	lea    rcx,[rbx+rax*1]
  2d6fc8:	e8 17 68 ff ff                                  	call   0x2cd7e4
  2d6fcd:	48 83 c4 20                                     	add    rsp,0x20
  2d6fd1:	5b                                              	pop    rbx
  2d6fd2:	c3                                              	ret
  2d6fd3:	cc                                              	int3
  2d6fd4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2d6fd9:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  2d6fde:	57                                              	push   rdi
  2d6fdf:	48                                              	rex.W
