
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003925a4 <.data+0x3925a4>:
  3925a4:	48 83 ec 28                                     	sub    rsp,0x28
  3925a8:	48 8b 0d 79 35 07 00                            	mov    rcx,QWORD PTR [rip+0x73579]        # 0x405b28
  3925af:	33 d2                                           	xor    edx,edx
  3925b1:	48 81 c1 d8 48 00 00                            	add    rcx,0x48d8
  3925b8:	e8 c7 95 ff ff                                  	call   0x38bb84
  3925bd:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3925c0:	48 83 c4 28                                     	add    rsp,0x28
  3925c4:	e9 a3 ff ff ff                                  	jmp    0x39256c
