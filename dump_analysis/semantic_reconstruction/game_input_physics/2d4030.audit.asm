
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d4030.audit.bin:     file format binary


Disassembly of section .data:

00000000002d4030 <.data>:
  2d4030:	40 53                                           	rex push rbx
  2d4032:	48 83 ec 20                                     	sub    rsp,0x20
  2d4036:	8a 54 24 30                                     	mov    dl,BYTE PTR [rsp+0x30]
  2d403a:	4c 8d 4c 24 38                                  	lea    r9,[rsp+0x38]
  2d403f:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  2d4044:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [rsp+0x38],0x0
  2d404c:	48 8b d9                                        	mov    rbx,rcx
  2d404f:	e8 6c ad ff ff                                  	call   0x2cedc0
  2d4054:	48 8b c3                                        	mov    rax,rbx
  2d4057:	48 83 c4 20                                     	add    rsp,0x20
  2d405b:	5b                                              	pop    rbx
  2d405c:	c3                                              	ret
