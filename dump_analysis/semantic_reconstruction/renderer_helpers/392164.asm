
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392164 <.data+0x392164>:
  392164:	40 53                                           	rex push rbx
  392166:	48 83 ec 30                                     	sub    rsp,0x30
  39216a:	48 8b d9                                        	mov    rbx,rcx
  39216d:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  392172:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  392177:	e8 50 a5 ff ff                                  	call   0x38c6cc
  39217c:	48 8b c8                                        	mov    rcx,rax
  39217f:	e8 a8 c9 00 00                                  	call   0x39eb2c
  392184:	4c 8b c0                                        	mov    r8,rax
  392187:	33 d2                                           	xor    edx,edx
  392189:	48 8b cb                                        	mov    rcx,rbx
  39218c:	e8 3b 0c 00 00                                  	call   0x392dcc
  392191:	48 83 c4 30                                     	add    rsp,0x30
  392195:	5b                                              	pop    rbx
  392196:	c3                                              	ret
