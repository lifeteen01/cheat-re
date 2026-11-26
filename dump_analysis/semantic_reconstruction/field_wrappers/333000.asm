
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000333000 <.data+0x333000>:
  333000:	5d                                              	pop    rbp
  333001:	5b                                              	pop    rbx
  333002:	c3                                              	ret
  333003:	cc                                              	int3
  333004:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  333009:	57                                              	push   rdi
  33300a:	48 83 ec 20                                     	sub    rsp,0x20
  33300e:	48 8b d9                                        	mov    rbx,rcx
  333011:	48 8b ca                                        	mov    rcx,rdx
  333014:	e8 8b 83 f9 ff                                  	call   0x2cb3a4
  333019:	48 8b d3                                        	mov    rdx,rbx
  33301c:	b9 10 00 00 00                                  	mov    ecx,0x10
  333021:	48 8b f8                                        	mov    rdi,rax
  333024:	e8 07 95 f9 ff                                  	call   0x2cc530
  333029:	48 8b c8                                        	mov    rcx,rax
  33302c:	48 8b d7                                        	mov    rdx,rdi
  33302f:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  333034:	48 83 c4 20                                     	add    rsp,0x20
  333038:	5f                                              	pop    rdi
  333039:	e9 0a f7 ff ff                                  	jmp    0x332748
  33303e:	cc                                              	int3
  33303f:	cc                                              	int3
  333040:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  333045:	57                                              	push   rdi
  333046:	48 83 ec 30                                     	sub    rsp,0x30
  33304a:	48 8b d9                                        	mov    rbx,rcx
  33304d:	48 8b fa                                        	mov    rdi,rdx
  333050:	49 8b c8                                        	mov    rcx,r8
  333053:	e8 4c 83 f9 ff                                  	call   0x2cb3a4
  333058:	4c 8b c0                                        	mov    r8,rax
  33305b:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  333060:	48 8b cb                                        	mov    rcx,rbx
  333063:	e8 80 f8 ff ff                                  	call   0x3328e8
  333068:	48 8b cb                                        	mov    rcx,rbx
  33306b:	e8 b4 a2 f9 ff                                  	call   0x2cd324
  333070:	48 8b 54 24 20                                  	mov    rdx,QWORD PTR [rsp+0x20]
  333075:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  33307a:	4c 8b c0                                        	mov    r8,rax
  33307d:	e8 76 0f fa ff                                  	call   0x2d3ff8
  333082:	48 8b d0                                        	mov    rdx,rax
  333085:	4c 8d 44 24 28                                  	lea    r8,[rsp+0x28]
  33308a:	48 8b cf                                        	mov    rcx,rdi
  33308d:	e8 76 bd f9 ff                                  	call   0x2cee08
  333092:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  333097:	48 8b c7                                        	mov    rax,rdi
  33309a:	48 83 c4 30                                     	add    rsp,0x30
  33309e:	5f                                              	pop    rdi
  33309f:	c3                                              	ret
