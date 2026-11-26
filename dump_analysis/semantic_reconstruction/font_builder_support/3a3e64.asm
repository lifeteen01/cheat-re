
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3e64 <.data+0x3a3e64>:
  3a3e64:	40 53                                           	rex push rbx
  3a3e66:	48 83 ec 20                                     	sub    rsp,0x20
  3a3e6a:	48 8b d9                                        	mov    rbx,rcx
  3a3e6d:	48 8b 49 30                                     	mov    rcx,QWORD PTR [rcx+0x30]
  3a3e71:	48 85 c9                                        	test   rcx,rcx
  3a3e74:	74 05                                           	je     0x3a3e7b
  3a3e76:	e8 01 13 ff ff                                  	call   0x39517c
  3a3e7b:	48 8b 4b 38                                     	mov    rcx,QWORD PTR [rbx+0x38]
  3a3e7f:	48 85 c9                                        	test   rcx,rcx
  3a3e82:	74 05                                           	je     0x3a3e89
  3a3e84:	e8 f3 12 ff ff                                  	call   0x39517c
  3a3e89:	48 c7 43 30 00 00 00 00                         	mov    QWORD PTR [rbx+0x30],0x0
  3a3e91:	48 c7 43 38 00 00 00 00                         	mov    QWORD PTR [rbx+0x38],0x0
  3a3e99:	c6 43 29 00                                     	mov    BYTE PTR [rbx+0x29],0x0
  3a3e9d:	48 83 c4 20                                     	add    rsp,0x20
  3a3ea1:	5b                                              	pop    rbx
  3a3ea2:	c3                                              	ret
