
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032308c <.data+0x32308c>:
  32308c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  323091:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  323096:	57                                              	push   rdi
  323097:	48 83 ec 20                                     	sub    rsp,0x20
  32309b:	49 8b f0                                        	mov    rsi,r8
  32309e:	48 8b fa                                        	mov    rdi,rdx
  3230a1:	48 8b d9                                        	mov    rbx,rcx
  3230a4:	e8 53 34 ff ff                                  	call   0x3164fc
  3230a9:	84 c0                                           	test   al,al
  3230ab:	75 10                                           	jne    0x3230bd
  3230ad:	48 8b 07                                        	mov    rax,QWORD PTR [rdi]
  3230b0:	48 89 03                                        	mov    QWORD PTR [rbx],rax
  3230b3:	48 89 37                                        	mov    QWORD PTR [rdi],rsi
  3230b6:	c7 43 30 04 00 00 00                            	mov    DWORD PTR [rbx+0x30],0x4
  3230bd:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3230c2:	b0 01                                           	mov    al,0x1
  3230c4:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3230c9:	48 83 c4 20                                     	add    rsp,0x20
  3230cd:	5f                                              	pop    rdi
  3230ce:	c3                                              	ret
