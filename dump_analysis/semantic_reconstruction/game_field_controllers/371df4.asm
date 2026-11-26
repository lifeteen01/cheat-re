
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371df4 <.data+0x371df4>:
  371df4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  371df9:	57                                              	push   rdi
  371dfa:	48 83 ec 20                                     	sub    rsp,0x20
  371dfe:	48 8b d9                                        	mov    rbx,rcx
  371e01:	e8 02 91 f5 ff                                  	call   0x2caf08
  371e06:	84 c0                                           	test   al,al
  371e08:	74 43                                           	je     0x371e4d
  371e0a:	48 8b cb                                        	mov    rcx,rbx
  371e0d:	e8 3a f7 ff ff                                  	call   0x37154c
  371e12:	48 8b c8                                        	mov    rcx,rax
  371e15:	48 8b f8                                        	mov    rdi,rax
  371e18:	e8 eb 90 f5 ff                                  	call   0x2caf08
  371e1d:	84 c0                                           	test   al,al
  371e1f:	74 2c                                           	je     0x371e4d
  371e21:	48 8b cf                                        	mov    rcx,rdi
  371e24:	e8 f3 07 00 00                                  	call   0x37261c
  371e29:	3d de 7f 54 40                                  	cmp    eax,0x40547fde
  371e2e:	74 07                                           	je     0x371e37
  371e30:	3d f0 9b 7b 84                                  	cmp    eax,0x847b9bf0
  371e35:	75 16                                           	jne    0x371e4d
  371e37:	48 8b cf                                        	mov    rcx,rdi
  371e3a:	e8 2d 05 00 00                                  	call   0x37236c
  371e3f:	33 c9                                           	xor    ecx,ecx
  371e41:	83 f8 06                                        	cmp    eax,0x6
  371e44:	48 0f 45 d9                                     	cmovne rbx,rcx
  371e48:	48 8b c3                                        	mov    rax,rbx
  371e4b:	eb 02                                           	jmp    0x371e4f
  371e4d:	33 c0                                           	xor    eax,eax
  371e4f:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  371e54:	48 83 c4 20                                     	add    rsp,0x20
  371e58:	5f                                              	pop    rdi
  371e59:	c3                                              	ret
