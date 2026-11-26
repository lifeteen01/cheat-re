
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ccb6c <.data+0x2ccb6c>:
  2ccb6c:	40 53                                           	rex push rbx
  2ccb6e:	48 83 ec 20                                     	sub    rsp,0x20
  2ccb72:	e8 35 fd ff ff                                  	call   0x2cc8ac
  2ccb77:	84 c0                                           	test   al,al
  2ccb79:	74 04                                           	je     0x2ccb7f
  2ccb7b:	b0 01                                           	mov    al,0x1
  2ccb7d:	eb 54                                           	jmp    0x2ccbd3
  2ccb7f:	80 3d db 95 10 00 00                            	cmp    BYTE PTR [rip+0x1095db],0x0        # 0x3d6161
  2ccb86:	48 c7 05 d7 95 10 00 00 00 00 00                	mov    QWORD PTR [rip+0x1095d7],0x0        # 0x3d6168
  2ccb91:	75 3e                                           	jne    0x2ccbd1
  2ccb93:	45 33 c9                                        	xor    r9d,r9d
  2ccb96:	c6 05 c4 95 10 00 01                            	mov    BYTE PTR [rip+0x1095c4],0x1        # 0x3d6161
  2ccb9d:	41 b8 4e 51 21 00                               	mov    r8d,0x21514e
  2ccba3:	48 8d 15 16 6a d3 ff                            	lea    rdx,[rip+0xffffffffffd36a16]        # 0x35c0
  2ccbaa:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2ccbaf:	e8 54 90 0a 00                                  	call   0x375c08
  2ccbb4:	48 8b d8                                        	mov    rbx,rax
  2ccbb7:	48 85 c0                                        	test   rax,rax
  2ccbba:	74 15                                           	je     0x2ccbd1
  2ccbbc:	48 8b c8                                        	mov    rcx,rax
  2ccbbf:	e8 48 00 00 00                                  	call   0x2ccc0c
  2ccbc4:	84 c0                                           	test   al,al
  2ccbc6:	74 09                                           	je     0x2ccbd1
  2ccbc8:	48 89 1d 99 95 10 00                            	mov    QWORD PTR [rip+0x109599],rbx        # 0x3d6168
  2ccbcf:	eb aa                                           	jmp    0x2ccb7b
  2ccbd1:	32 c0                                           	xor    al,al
  2ccbd3:	48 83 c4 20                                     	add    rsp,0x20
  2ccbd7:	5b                                              	pop    rbx
  2ccbd8:	c3                                              	ret
