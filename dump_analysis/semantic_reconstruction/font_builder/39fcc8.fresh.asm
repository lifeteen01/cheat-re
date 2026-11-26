
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039fcc8 <.data+0x39fcc8>:
  39fcc8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39fccd:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  39fcd2:	57                                              	push   rdi
  39fcd3:	48 83 ec 40                                     	sub    rsp,0x40
  39fcd7:	48 8b f9                                        	mov    rdi,rcx
  39fcda:	41 8b f0                                        	mov    esi,r8d
  39fcdd:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  39fce2:	8b da                                           	mov    ebx,edx
  39fce4:	e8 13 f8 ff ff                                  	call   0x39f4fc
  39fce9:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  39fcee:	66 89 5c 24 20                                  	mov    WORD PTR [rsp+0x20],bx
  39fcf3:	48 8d 4f 68                                     	lea    rcx,[rdi+0x68]
  39fcf7:	66 89 74 24 22                                  	mov    WORD PTR [rsp+0x22],si
  39fcfc:	e8 2f 97 00 00                                  	call   0x3a9430
  39fd01:	8b 47 68                                        	mov    eax,DWORD PTR [rdi+0x68]
  39fd04:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  39fd09:	ff c8                                           	dec    eax
  39fd0b:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  39fd10:	48 83 c4 40                                     	add    rsp,0x40
  39fd14:	5f                                              	pop    rdi
  39fd15:	c3                                              	ret
