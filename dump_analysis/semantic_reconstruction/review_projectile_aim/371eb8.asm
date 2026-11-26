
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371eb8 <.data+0x371eb8>:
  371eb8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  371ebd:	57                                              	push   rdi
  371ebe:	48 83 ec 20                                     	sub    rsp,0x20
  371ec2:	48 8b d9                                        	mov    rbx,rcx
  371ec5:	e8 3e 90 f5 ff                                  	call   0x2caf08
  371eca:	84 c0                                           	test   al,al
  371ecc:	74 49                                           	je     0x371f17
  371ece:	48 8b cb                                        	mov    rcx,rbx
  371ed1:	e8 76 f6 ff ff                                  	call   0x37154c
  371ed6:	48 8b c8                                        	mov    rcx,rax
  371ed9:	48 8b f8                                        	mov    rdi,rax
  371edc:	e8 27 90 f5 ff                                  	call   0x2caf08
  371ee1:	84 c0                                           	test   al,al
  371ee3:	74 32                                           	je     0x371f17
  371ee5:	48 8b cf                                        	mov    rcx,rdi
  371ee8:	e8 2f 07 00 00                                  	call   0x37261c
  371eed:	3d 7c e8 65 1a                                  	cmp    eax,0x1a65e87c
  371ef2:	74 0e                                           	je     0x371f02
  371ef4:	3d 5b 8a 8f b1                                  	cmp    eax,0xb18f8a5b
  371ef9:	74 07                                           	je     0x371f02
  371efb:	3d 60 26 09 bd                                  	cmp    eax,0xbd092660
  371f00:	75 15                                           	jne    0x371f17
  371f02:	48 8b cf                                        	mov    rcx,rdi
  371f05:	e8 62 04 00 00                                  	call   0x37236c
  371f0a:	33 c9                                           	xor    ecx,ecx
  371f0c:	85 c0                                           	test   eax,eax
  371f0e:	48 0f 45 d9                                     	cmovne rbx,rcx
  371f12:	48 8b c3                                        	mov    rax,rbx
  371f15:	eb 02                                           	jmp    0x371f19
  371f17:	33 c0                                           	xor    eax,eax
  371f19:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  371f1e:	48 83 c4 20                                     	add    rsp,0x20
  371f22:	5f                                              	pop    rdi
  371f23:	c3                                              	ret
