
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032cb8c <.data+0x32cb8c>:
  32cb8c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  32cb91:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  32cb96:	57                                              	push   rdi
  32cb97:	48 83 ec 20                                     	sub    rsp,0x20
  32cb9b:	48 8b f9                                        	mov    rdi,rcx
  32cb9e:	48 8b f2                                        	mov    rsi,rdx
  32cba1:	49 8d 48 08                                     	lea    rcx,[r8+0x8]
  32cba5:	49 8b d8                                        	mov    rbx,r8
  32cba8:	48 8b 57 08                                     	mov    rdx,QWORD PTR [rdi+0x8]
  32cbac:	e8 17 eb ff ff                                  	call   0x32b6c8
  32cbb1:	48 83 47 08 f8                                  	add    QWORD PTR [rdi+0x8],0xfffffffffffffff8
  32cbb6:	48 8b cf                                        	mov    rcx,rdi
  32cbb9:	e8 e6 e7 f9 ff                                  	call   0x2cb3a4
  32cbbe:	4c 8b c0                                        	mov    r8,rax
  32cbc1:	48 8b d3                                        	mov    rdx,rbx
  32cbc4:	48 8b ce                                        	mov    rcx,rsi
  32cbc7:	e8 14 74 fa ff                                  	call   0x2d3fe0
  32cbcc:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  32cbd1:	48 8b c6                                        	mov    rax,rsi
  32cbd4:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  32cbd9:	48 83 c4 20                                     	add    rsp,0x20
  32cbdd:	5f                                              	pop    rdi
  32cbde:	c3                                              	ret
