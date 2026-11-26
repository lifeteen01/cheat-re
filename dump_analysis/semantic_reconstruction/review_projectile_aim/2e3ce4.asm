
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3ce4 <.data+0x2e3ce4>:
  2e3ce4:	40 53                                           	rex push rbx
  2e3ce6:	48 83 ec 20                                     	sub    rsp,0x20
  2e3cea:	8b 05 78 34 0f 00                               	mov    eax,DWORD PTR [rip+0xf3478]        # 0x3d7168
  2e3cf0:	48 8b d9                                        	mov    rbx,rcx
  2e3cf3:	a8 01                                           	test   al,0x1
  2e3cf5:	75 20                                           	jne    0x2e3d17
  2e3cf7:	83 c8 01                                        	or     eax,0x1
  2e3cfa:	89 05 68 34 0f 00                               	mov    DWORD PTR [rip+0xf3468],eax        # 0x3d7168
  2e3d00:	e8 47 b1 ff ff                                  	call   0x2dee4c
  2e3d05:	4c 8b c0                                        	mov    r8,rax
  2e3d08:	48 89 05 51 34 0f 00                            	mov    QWORD PTR [rip+0xf3451],rax        # 0x3d7160
  2e3d0f:	8b 05 53 34 0f 00                               	mov    eax,DWORD PTR [rip+0xf3453]        # 0x3d7168
  2e3d15:	eb 07                                           	jmp    0x2e3d1e
  2e3d17:	4c 8b 05 42 34 0f 00                            	mov    r8,QWORD PTR [rip+0xf3442]        # 0x3d7160
  2e3d1e:	a8 02                                           	test   al,0x2
  2e3d20:	75 1f                                           	jne    0x2e3d41
  2e3d22:	48 8b 0d 37 21 0f 00                            	mov    rcx,QWORD PTR [rip+0xf2137]        # 0x3d5e60
  2e3d29:	48 8d 15 40 34 0f 00                            	lea    rdx,[rip+0xf3440]        # 0x3d7170
  2e3d30:	83 c8 02                                        	or     eax,0x2
  2e3d33:	45 33 c9                                        	xor    r9d,r9d
  2e3d36:	89 05 2c 34 0f 00                               	mov    DWORD PTR [rip+0xf342c],eax        # 0x3d7168
  2e3d3c:	e8 e3 7f fe ff                                  	call   0x2cbd24
  2e3d41:	48 8b 0d 18 21 0f 00                            	mov    rcx,QWORD PTR [rip+0xf2118]        # 0x3d5e60
  2e3d48:	48 8d 15 21 34 0f 00                            	lea    rdx,[rip+0xf3421]        # 0x3d7170
  2e3d4f:	4c 8b c3                                        	mov    r8,rbx
  2e3d52:	48 83 c4 20                                     	add    rsp,0x20
  2e3d56:	5b                                              	pop    rbx
  2e3d57:	e9 a0 7c fe ff                                  	jmp    0x2cb9fc
