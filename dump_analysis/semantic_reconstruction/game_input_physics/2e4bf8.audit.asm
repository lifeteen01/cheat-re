
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e4bf8.audit.bin:     file format binary


Disassembly of section .data:

00000000002e4bf8 <.data>:
  2e4bf8:	40 53                                           	rex push rbx
  2e4bfa:	55                                              	push   rbp
  2e4bfb:	56                                              	push   rsi
  2e4bfc:	57                                              	push   rdi
  2e4bfd:	48 83 ec 28                                     	sub    rsp,0x28
  2e4c01:	49 8b d8                                        	mov    rbx,r8
  2e4c04:	48 8b e9                                        	mov    rbp,rcx
  2e4c07:	e8 54 f4 fe ff                                  	call   0x2d4060
  2e4c0c:	48 8b d3                                        	mov    rdx,rbx
  2e4c0f:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  2e4c13:	e8 90 01 00 00                                  	call   0x2e4da8
  2e4c18:	48 8b d3                                        	mov    rdx,rbx
  2e4c1b:	48 8d 4d 18                                     	lea    rcx,[rbp+0x18]
  2e4c1f:	e8 e0 a0 fe ff                                  	call   0x2ced04
  2e4c24:	48 8b cd                                        	mov    rcx,rbp
  2e4c27:	48 c7 45 30 07 00 00 00                         	mov    QWORD PTR [rbp+0x30],0x7
  2e4c2f:	48 c7 45 38 08 00 00 00                         	mov    QWORD PTR [rbp+0x38],0x8
  2e4c37:	e8 e8 86 fe ff                                  	call   0x2cd324
  2e4c3c:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2e4c41:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  2e4c45:	c7 00 00 00 80 3f                               	mov    DWORD PTR [rax],0x3f800000
  2e4c4b:	e8 50 2d ff ff                                  	call   0x2d79a0
  2e4c50:	ba 10 00 00 00                                  	mov    edx,0x10
  2e4c55:	48 8d 4d 18                                     	lea    rcx,[rbp+0x18]
  2e4c59:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e4c5c:	e8 3f 1c ff ff                                  	call   0x2d68a0
  2e4c61:	48 8b c5                                        	mov    rax,rbp
  2e4c64:	48 83 c4 28                                     	add    rsp,0x28
  2e4c68:	5f                                              	pop    rdi
  2e4c69:	5e                                              	pop    rsi
  2e4c6a:	5d                                              	pop    rbp
  2e4c6b:	5b                                              	pop    rbx
  2e4c6c:	c3                                              	ret
