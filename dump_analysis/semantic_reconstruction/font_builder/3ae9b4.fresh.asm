
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae9b4 <.data+0x3ae9b4>:
  3ae9b4:	40 53                                           	rex push rbx
  3ae9b6:	48 83 ec 20                                     	sub    rsp,0x20
  3ae9ba:	48 8b d9                                        	mov    rbx,rcx
  3ae9bd:	48 8b 49 38                                     	mov    rcx,QWORD PTR [rcx+0x38]
  3ae9c1:	e8 b6 67 fe ff                                  	call   0x39517c
  3ae9c6:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  3ae9ca:	48 83 c4 20                                     	add    rsp,0x20
  3ae9ce:	5b                                              	pop    rbx
  3ae9cf:	e9 a8 67 fe ff                                  	jmp    0x39517c
