
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cea84 <.data+0x2cea84>:
  2cea84:	40 53                                           	rex push rbx
  2cea86:	48 83 ec 20                                     	sub    rsp,0x20
  2cea8a:	8b 05 d0 74 10 00                               	mov    eax,DWORD PTR [rip+0x1074d0]        # 0x3d5f60
  2cea90:	48 8b d9                                        	mov    rbx,rcx
  2cea93:	a8 01                                           	test   al,0x1
  2cea95:	75 20                                           	jne    0x2ceab7
  2cea97:	83 c8 01                                        	or     eax,0x1
  2cea9a:	89 05 c0 74 10 00                               	mov    DWORD PTR [rip+0x1074c0],eax        # 0x3d5f60
  2ceaa0:	e8 c7 d6 ff ff                                  	call   0x2cc16c
  2ceaa5:	4c 8b c0                                        	mov    r8,rax
  2ceaa8:	48 89 05 a9 74 10 00                            	mov    QWORD PTR [rip+0x1074a9],rax        # 0x3d5f58
  2ceaaf:	8b 05 ab 74 10 00                               	mov    eax,DWORD PTR [rip+0x1074ab]        # 0x3d5f60
  2ceab5:	eb 07                                           	jmp    0x2ceabe
  2ceab7:	4c 8b 05 9a 74 10 00                            	mov    r8,QWORD PTR [rip+0x10749a]        # 0x3d5f58
  2ceabe:	a8 02                                           	test   al,0x2
  2ceac0:	75 1f                                           	jne    0x2ceae1
  2ceac2:	48 8b 0d 97 73 10 00                            	mov    rcx,QWORD PTR [rip+0x107397]        # 0x3d5e60
  2ceac9:	48 8d 15 a0 74 10 00                            	lea    rdx,[rip+0x1074a0]        # 0x3d5f70
  2cead0:	83 c8 02                                        	or     eax,0x2
  2cead3:	45 33 c9                                        	xor    r9d,r9d
  2cead6:	89 05 84 74 10 00                               	mov    DWORD PTR [rip+0x107484],eax        # 0x3d5f60
  2ceadc:	e8 43 d2 ff ff                                  	call   0x2cbd24
  2ceae1:	48 8b 0d 78 73 10 00                            	mov    rcx,QWORD PTR [rip+0x107378]        # 0x3d5e60
  2ceae8:	48 8d 15 81 74 10 00                            	lea    rdx,[rip+0x107481]        # 0x3d5f70
  2ceaef:	4c 8b c3                                        	mov    r8,rbx
  2ceaf2:	48 83 c4 20                                     	add    rsp,0x20
  2ceaf6:	5b                                              	pop    rbx
  2ceaf7:	e9 00 cf ff ff                                  	jmp    0x2cb9fc
