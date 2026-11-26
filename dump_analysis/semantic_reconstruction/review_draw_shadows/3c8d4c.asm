
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8d4c <.data+0x3c8d4c>:
  3c8d4c:	4c 8b dc                                        	mov    r11,rsp
  3c8d4f:	49 89 73 08                                     	mov    QWORD PTR [r11+0x8],rsi
  3c8d53:	49 89 7b 10                                     	mov    QWORD PTR [r11+0x10],rdi
  3c8d57:	48 8b c1                                        	mov    rax,rcx
  3c8d5a:	48 8b f9                                        	mov    rdi,rcx
  3c8d5d:	49 8b c8                                        	mov    rcx,r8
  3c8d60:	48 8b f2                                        	mov    rsi,rdx
  3c8d63:	f3 a4                                           	rep movs BYTE PTR [rdi],BYTE PTR [rsi]
  3c8d65:	49 8b 73 08                                     	mov    rsi,QWORD PTR [r11+0x8]
  3c8d69:	49 8b 7b 10                                     	mov    rdi,QWORD PTR [r11+0x10]
  3c8d6d:	c3                                              	ret
