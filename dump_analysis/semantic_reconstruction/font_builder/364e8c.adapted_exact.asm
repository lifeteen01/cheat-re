
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000364e8c <.data+0x364e8c>:
  364e8c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  364e91:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  364e96:	57                                              	push   rdi
  364e97:	48 83 ec 20                                     	sub    rsp,0x20
  364e9b:	48 63 fa                                        	movsxd rdi,edx
  364e9e:	48 8b d9                                        	mov    rbx,rcx
  364ea1:	3b 79 04                                        	cmp    edi,DWORD PTR [rcx+0x4]
  364ea4:	7e 37                                           	jle    0x364edd
  364ea6:	48 8b cf                                        	mov    rcx,rdi
  364ea9:	48 c1 e1 02                                     	shl    rcx,0x2
  364ead:	e8 a6 02 03 00                                  	call   0x395158
  364eb2:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  364eb6:	48 8b f0                                        	mov    rsi,rax
  364eb9:	48 85 d2                                        	test   rdx,rdx
  364ebc:	74 18                                           	je     0x364ed6
  364ebe:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  364ec1:	48 8b c8                                        	mov    rcx,rax
  364ec4:	49 c1 e0 02                                     	shl    r8,0x2
  364ec8:	e8 7f 3e 06 00                                  	call   0x3c8d4c
  364ecd:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  364ed1:	e8 a6 02 03 00                                  	call   0x39517c
  364ed6:	48 89 73 08                                     	mov    QWORD PTR [rbx+0x8],rsi
  364eda:	89 7b 04                                        	mov    DWORD PTR [rbx+0x4],edi
  364edd:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  364ee2:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  364ee7:	48 83 c4 20                                     	add    rsp,0x20
  364eeb:	5f                                              	pop    rdi
  364eec:	c3                                              	ret
