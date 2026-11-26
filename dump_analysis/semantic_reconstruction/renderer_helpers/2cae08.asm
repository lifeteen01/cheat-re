
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cae08 <.data+0x2cae08>:
  2cae08:	40 53                                           	rex push rbx
  2cae0a:	48 83 ec 20                                     	sub    rsp,0x20
  2cae0e:	8b 05 4c b6 10 00                               	mov    eax,DWORD PTR [rip+0x10b64c]        # 0x3d6460
  2cae14:	48 8b d9                                        	mov    rbx,rcx
  2cae17:	a8 01                                           	test   al,0x1
  2cae19:	75 25                                           	jne    0x2cae40
  2cae1b:	83 c8 01                                        	or     eax,0x1
  2cae1e:	b9 da 5e 50 c0                                  	mov    ecx,0xc0505eda
  2cae23:	89 05 37 b6 10 00                               	mov    DWORD PTR [rip+0x10b637],eax        # 0x3d6460
  2cae29:	e8 e2 8e 06 00                                  	call   0x333d10
  2cae2e:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2cae31:	8b 05 29 b6 10 00                               	mov    eax,DWORD PTR [rip+0x10b629]        # 0x3d6460
  2cae37:	4c 89 05 1a b6 10 00                            	mov    QWORD PTR [rip+0x10b61a],r8        # 0x3d6458
  2cae3e:	eb 07                                           	jmp    0x2cae47
  2cae40:	4c 8b 05 11 b6 10 00                            	mov    r8,QWORD PTR [rip+0x10b611]        # 0x3d6458
  2cae47:	a8 02                                           	test   al,0x2
  2cae49:	75 1f                                           	jne    0x2cae6a
  2cae4b:	48 8b 0d 0e b0 10 00                            	mov    rcx,QWORD PTR [rip+0x10b00e]        # 0x3d5e60
  2cae52:	48 8d 15 17 b6 10 00                            	lea    rdx,[rip+0x10b617]        # 0x3d6470
  2cae59:	83 c8 02                                        	or     eax,0x2
  2cae5c:	45 33 c9                                        	xor    r9d,r9d
  2cae5f:	89 05 fb b5 10 00                               	mov    DWORD PTR [rip+0x10b5fb],eax        # 0x3d6460
  2cae65:	e8 ba 0e 00 00                                  	call   0x2cbd24
  2cae6a:	48 8b 0d ef af 10 00                            	mov    rcx,QWORD PTR [rip+0x10afef]        # 0x3d5e60
  2cae71:	48 8d 15 f8 b5 10 00                            	lea    rdx,[rip+0x10b5f8]        # 0x3d6470
  2cae78:	4c 8b c3                                        	mov    r8,rbx
  2cae7b:	48 83 c4 20                                     	add    rsp,0x20
  2cae7f:	5b                                              	pop    rbx
  2cae80:	e9 77 0b 00 00                                  	jmp    0x2cb9fc
