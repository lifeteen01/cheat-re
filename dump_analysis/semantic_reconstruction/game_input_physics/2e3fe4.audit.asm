
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e3fe4.audit.bin:     file format binary


Disassembly of section .data:

00000000002e3fe4 <.data>:
  2e3fe4:	40 53                                           	rex push rbx
  2e3fe6:	48 83 ec 30                                     	sub    rsp,0x30
  2e3fea:	4d 8b d1                                        	mov    r10,r9
  2e3fed:	49 8b d0                                        	mov    rdx,r8
  2e3ff0:	32 c0                                           	xor    al,al
  2e3ff2:	4d 8b c2                                        	mov    r8,r10
  2e3ff5:	45 32 c9                                        	xor    r9b,r9b
  2e3ff8:	88 44 24 20                                     	mov    BYTE PTR [rsp+0x20],al
  2e3ffc:	48 8b d9                                        	mov    rbx,rcx
  2e3fff:	e8 ec 00 00 00                                  	call   0x2e40f0
  2e4004:	48 8b c3                                        	mov    rax,rbx
  2e4007:	48 83 c4 30                                     	add    rsp,0x30
  2e400b:	5b                                              	pop    rbx
  2e400c:	c3                                              	ret
