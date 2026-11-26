
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaf3c <.data+0x3aaf3c>:
  3aaf3c:	40 53                                           	rex push rbx
  3aaf3e:	48 83 ec 20                                     	sub    rsp,0x20
  3aaf42:	45 33 d2                                        	xor    r10d,r10d
  3aaf45:	44 8b da                                        	mov    r11d,edx
  3aaf48:	48 8b d9                                        	mov    rbx,rcx
  3aaf4b:	85 d2                                           	test   edx,edx
  3aaf4d:	7e 19                                           	jle    0x3aaf68
  3aaf4f:	48 8b cb                                        	mov    rcx,rbx
  3aaf52:	e8 c5 ff ff ff                                  	call   0x3aaf1c
  3aaf57:	41 c1 e2 08                                     	shl    r10d,0x8
  3aaf5b:	44 0f b6 c8                                     	movzx  r9d,al
  3aaf5f:	45 0b d1                                        	or     r10d,r9d
  3aaf62:	41 83 eb 01                                     	sub    r11d,0x1
  3aaf66:	75 e7                                           	jne    0x3aaf4f
  3aaf68:	41 8b c2                                        	mov    eax,r10d
  3aaf6b:	48 83 c4 20                                     	add    rsp,0x20
  3aaf6f:	5b                                              	pop    rbx
  3aaf70:	c3                                              	ret
