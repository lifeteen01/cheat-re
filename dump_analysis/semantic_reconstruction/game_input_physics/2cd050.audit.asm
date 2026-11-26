
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2cd050.audit.bin:     file format binary


Disassembly of section .data:

00000000002cd050 <.data>:
  2cd050:	c2 00 00                                        	ret    0x0
  2cd053:	cc                                              	int3
  2cd054:	40 53                                           	rex push rbx
  2cd056:	48 83 ec 20                                     	sub    rsp,0x20
  2cd05a:	48 8b d9                                        	mov    rbx,rcx
  2cd05d:	48 89 54 24 38                                  	mov    QWORD PTR [rsp+0x38],rdx
  2cd062:	48 8d 4c 24 38                                  	lea    rcx,[rsp+0x38]
  2cd067:	4c 8b ca                                        	mov    r9,rdx
  2cd06a:	e8 05 f5 ff ff                                  	call   0x2cc574
  2cd06f:	48 8b cb                                        	mov    rcx,rbx
  2cd072:	e8 a5 02 00 00                                  	call   0x2cd31c
  2cd077:	48 8b c8                                        	mov    rcx,rax
  2cd07a:	49 8b d1                                        	mov    rdx,r9
  2cd07d:	e8 1e 00 00 00                                  	call   0x2cd0a0
  2cd082:	48 8b cb                                        	mov    rcx,rbx
  2cd085:	48 8b d0                                        	mov    rdx,rax
  2cd088:	e8 8f 02 00 00                                  	call   0x2cd31c
  2cd08d:	48 8b c8                                        	mov    rcx,rax
  2cd090:	e8 8b e6 ff ff                                  	call   0x2cb720
  2cd095:	48 8b 44 24 38                                  	mov    rax,QWORD PTR [rsp+0x38]
  2cd09a:	48 83 c4 20                                     	add    rsp,0x20
  2cd09e:	5b                                              	pop    rbx
  2cd09f:	c3                                              	ret
