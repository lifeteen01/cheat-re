
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cee08.audit.bin:     file format binary


Disassembly of section .data:

00000000002cee08 <.data>:
  2cee08:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2cee0d:	57                                              	push   rdi
  2cee0e:	48 83 ec 20                                     	sub    rsp,0x20
  2cee12:	48 8b f9                                        	mov    rdi,rcx
  2cee15:	49 8b d8                                        	mov    rbx,r8
  2cee18:	48 8b ca                                        	mov    rcx,rdx
  2cee1b:	e8 84 c5 ff ff                                  	call   0x2cb3a4
  2cee20:	48 8b cb                                        	mov    rcx,rbx
  2cee23:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  2cee26:	48 89 17                                        	mov    QWORD PTR [rdi],rdx
  2cee29:	e8 76 c5 ff ff                                  	call   0x2cb3a4
  2cee2e:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2cee33:	8a 10                                           	mov    dl,BYTE PTR [rax]
  2cee35:	48 8b c7                                        	mov    rax,rdi
  2cee38:	88 57 08                                        	mov    BYTE PTR [rdi+0x8],dl
  2cee3b:	48 83 c4 20                                     	add    rsp,0x20
  2cee3f:	5f                                              	pop    rdi
  2cee40:	c3                                              	ret
