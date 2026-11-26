
dump_analysis/semantic_reconstruction/game_input_physics/2e9300.bin:     file format binary


Disassembly of section .data:

00000000002e9300 <.data>:
  2e9300:	40 53                                           	rex push rbx
  2e9302:	48 83 ec 20                                     	sub    rsp,0x20
  2e9306:	48 8b d9                                        	mov    rbx,rcx
  2e9309:	48 c7 41 08 00 00 00 00                         	mov    QWORD PTR [rcx+0x8],0x0
  2e9311:	48 8b 09                                        	mov    rcx,QWORD PTR [rcx]
  2e9314:	ba 01 00 00 00                                  	mov    edx,0x1
  2e9319:	e8 ba 05 00 00                                  	call   0x2e98d8
  2e931e:	48 89 43 08                                     	mov    QWORD PTR [rbx+0x8],rax
  2e9322:	48 83 c4 20                                     	add    rsp,0x20
  2e9326:	5b                                              	pop    rbx
  2e9327:	c3                                              	ret
