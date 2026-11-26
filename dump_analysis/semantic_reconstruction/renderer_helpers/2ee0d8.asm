
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ee0d8 <.data+0x2ee0d8>:
  2ee0d8:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2ee0dd:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  2ee0e2:	55                                              	push   rbp
  2ee0e3:	53                                              	push   rbx
  2ee0e4:	56                                              	push   rsi
  2ee0e5:	57                                              	push   rdi
  2ee0e6:	48 8b ec                                        	mov    rbp,rsp
  2ee0e9:	48 83 ec 28                                     	sub    rsp,0x28
  2ee0ed:	48 8b f9                                        	mov    rdi,rcx
  2ee0f0:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee0f4:	e8 4b 29 fe ff                                  	call   0x2d0a44
  2ee0f9:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  2ee0fd:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  2ee101:	48 8b d8                                        	mov    rbx,rax
  2ee104:	e8 3b 29 fe ff                                  	call   0x2d0a44
  2ee109:	48 8b f0                                        	mov    rsi,rax
  2ee10c:	48 3b d8                                        	cmp    rbx,rax
  2ee10f:	74 21                                           	je     0x2ee132
  2ee111:	48 8b d3                                        	mov    rdx,rbx
  2ee114:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2ee118:	e8 c3 80 00 00                                  	call   0x2f61e0
  2ee11d:	84 c0                                           	test   al,al
  2ee11f:	75 11                                           	jne    0x2ee132
  2ee121:	48 8b 5d 28                                     	mov    rbx,QWORD PTR [rbp+0x28]
  2ee125:	48 83 c3 68                                     	add    rbx,0x68
  2ee129:	48 89 5d 28                                     	mov    QWORD PTR [rbp+0x28],rbx
  2ee12d:	48 3b de                                        	cmp    rbx,rsi
  2ee130:	75 df                                           	jne    0x2ee111
  2ee132:	48 8d 55 28                                     	lea    rdx,[rbp+0x28]
  2ee136:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2ee13a:	e8 ed 36 fe ff                                  	call   0x2d182c
  2ee13f:	48 8b 45 30                                     	mov    rax,QWORD PTR [rbp+0x30]
  2ee143:	48 89 07                                        	mov    QWORD PTR [rdi],rax
  2ee146:	48 8b c7                                        	mov    rax,rdi
  2ee149:	48 83 c4 28                                     	add    rsp,0x28
  2ee14d:	5f                                              	pop    rdi
  2ee14e:	5e                                              	pop    rsi
  2ee14f:	5b                                              	pop    rbx
  2ee150:	5d                                              	pop    rbp
  2ee151:	c3                                              	ret
