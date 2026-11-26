
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000373eb4 <.data+0x373eb4>:
  373eb4:	48 83 ec 28                                     	sub    rsp,0x28
  373eb8:	4c 8b c1                                        	mov    r8,rcx
  373ebb:	e8 48 70 f5 ff                                  	call   0x2caf08
  373ec0:	84 c0                                           	test   al,al
  373ec2:	74 40                                           	je     0x373f04
  373ec4:	8b 05 5e dd 08 00                               	mov    eax,DWORD PTR [rip+0x8dd5e]        # 0x401c28
  373eca:	85 c0                                           	test   eax,eax
  373ecc:	75 0d                                           	jne    0x373edb
  373ece:	41 8b 80 10 02 00 00                            	mov    eax,DWORD PTR [r8+0x210]
  373ed5:	89 05 4d dd 08 00                               	mov    DWORD PTR [rip+0x8dd4d],eax        # 0x401c28
  373edb:	8b 0d 4b dd 08 00                               	mov    ecx,DWORD PTR [rip+0x8dd4b]        # 0x401c2c
  373ee1:	85 c9                                           	test   ecx,ecx
  373ee3:	75 0d                                           	jne    0x373ef2
  373ee5:	41 8b 88 00 02 00 00                            	mov    ecx,DWORD PTR [r8+0x200]
  373eec:	89 0d 3a dd 08 00                               	mov    DWORD PTR [rip+0x8dd3a],ecx        # 0x401c2c
  373ef2:	84 d2                                           	test   dl,dl
  373ef4:	74 0e                                           	je     0x373f04
  373ef6:	41 89 80 10 02 00 00                            	mov    DWORD PTR [r8+0x210],eax
  373efd:	41 89 88 00 02 00 00                            	mov    DWORD PTR [r8+0x200],ecx
  373f04:	48 83 c4 28                                     	add    rsp,0x28
  373f08:	c3                                              	ret
