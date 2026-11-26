
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392198 <.data+0x392198>:
  392198:	48 83 ec 28                                     	sub    rsp,0x28
  39219c:	48 8b 0d 85 39 07 00                            	mov    rcx,QWORD PTR [rip+0x73985]        # 0x405b28
  3921a3:	33 d2                                           	xor    edx,edx
  3921a5:	48 81 c1 d8 48 00 00                            	add    rcx,0x48d8
  3921ac:	e8 d3 99 ff ff                                  	call   0x38bb84
  3921b1:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3921b4:	48 83 c4 28                                     	add    rsp,0x28
  3921b8:	e9 a7 ff ff ff                                  	jmp    0x392164
