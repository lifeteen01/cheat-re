
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cee44 <.data+0x2cee44>:
  2cee44:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2cee49:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2cee4e:	53                                              	push   rbx
  2cee4f:	56                                              	push   rsi
  2cee50:	57                                              	push   rdi
  2cee51:	48 83 ec 30                                     	sub    rsp,0x30
  2cee55:	8a 54 24 50                                     	mov    dl,BYTE PTR [rsp+0x50]
  2cee59:	4d 8b c1                                        	mov    r8,r9
  2cee5c:	48 8b f1                                        	mov    rsi,rcx
  2cee5f:	e8 5c bd ff ff                                  	call   0x2cabc0
  2cee64:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  2cee69:	e8 d6 1b 00 00                                  	call   0x2d0a44
  2cee6e:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  2cee73:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  2cee78:	48 8b d8                                        	mov    rbx,rax
  2cee7b:	e8 c4 1b 00 00                                  	call   0x2d0a44
  2cee80:	48 89 44 24 50                                  	mov    QWORD PTR [rsp+0x50],rax
  2cee85:	48 3b d8                                        	cmp    rbx,rax
  2cee88:	75 0a                                           	jne    0x2cee94
  2cee8a:	48 8b ce                                        	mov    rcx,rsi
  2cee8d:	e8 06 80 00 00                                  	call   0x2d6e98
  2cee92:	eb 3e                                           	jmp    0x2ceed2
  2cee94:	48 8b d0                                        	mov    rdx,rax
  2cee97:	48 8b cb                                        	mov    rcx,rbx
  2cee9a:	e8 7d 38 00 00                                  	call   0x2d271c
  2cee9f:	48 8b c8                                        	mov    rcx,rax
  2ceea2:	e8 fd c4 ff ff                                  	call   0x2cb3a4
  2ceea7:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2ceeac:	48 8b f8                                        	mov    rdi,rax
  2ceeaf:	e8 f0 c4 ff ff                                  	call   0x2cb3a4
  2ceeb4:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  2ceeb9:	48 8b d8                                        	mov    rbx,rax
  2ceebc:	e8 e3 c4 ff ff                                  	call   0x2cb3a4
  2ceec1:	4c 8b 03                                        	mov    r8,QWORD PTR [rbx]
  2ceec4:	4c 8b cf                                        	mov    r9,rdi
  2ceec7:	48 8b ce                                        	mov    rcx,rsi
  2ceeca:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  2ceecd:	e8 ca 06 00 00                                  	call   0x2cf59c
  2ceed2:	48 8b c6                                        	mov    rax,rsi
  2ceed5:	48 83 c4 30                                     	add    rsp,0x30
  2ceed9:	5f                                              	pop    rdi
  2ceeda:	5e                                              	pop    rsi
  2ceedb:	5b                                              	pop    rbx
  2ceedc:	c3                                              	ret
