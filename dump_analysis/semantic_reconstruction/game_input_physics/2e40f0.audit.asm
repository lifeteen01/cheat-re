
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e40f0.audit.bin:     file format binary


Disassembly of section .data:

00000000002e40f0 <.data>:
  2e40f0:	40 53                                           	rex push rbx
  2e40f2:	48 83 ec 20                                     	sub    rsp,0x20
  2e40f6:	48 8b d9                                        	mov    rbx,rcx
  2e40f9:	48 8b ca                                        	mov    rcx,rdx
  2e40fc:	e8 a3 72 fe ff                                  	call   0x2cb3a4
  2e4101:	48 8b c8                                        	mov    rcx,rax
  2e4104:	e8 cf a4 fe ff                                  	call   0x2ce5d8
  2e4109:	8b 10                                           	mov    edx,DWORD PTR [rax]
  2e410b:	48 8b c3                                        	mov    rax,rbx
  2e410e:	89 13                                           	mov    DWORD PTR [rbx],edx
  2e4110:	c6 43 04 00                                     	mov    BYTE PTR [rbx+0x4],0x0
  2e4114:	48 83 c4 20                                     	add    rsp,0x20
  2e4118:	5b                                              	pop    rbx
  2e4119:	c3                                              	ret
