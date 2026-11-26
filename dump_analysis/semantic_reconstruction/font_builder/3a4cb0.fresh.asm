
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4cb0 <.data+0x3a4cb0>:
  3a4cb0:	40 53                                           	rex push rbx
  3a4cb2:	48 83 ec 20                                     	sub    rsp,0x20
  3a4cb6:	83 b9 94 04 00 00 00                            	cmp    DWORD PTR [rcx+0x494],0x0
  3a4cbd:	48 8b d9                                        	mov    rbx,rcx
  3a4cc0:	7d 24                                           	jge    0x3a4ce6
  3a4cc2:	ba 02 00 00 00                                  	mov    edx,0x2
  3a4cc7:	84 11                                           	test   BYTE PTR [rcx],dl
  3a4cc9:	75 0d                                           	jne    0x3a4cd8
  3a4ccb:	ba f5 00 00 00                                  	mov    edx,0xf5
  3a4cd0:	41 b8 1b 00 00 00                               	mov    r8d,0x1b
  3a4cd6:	eb 03                                           	jmp    0x3a4cdb
  3a4cd8:	44 8b c2                                        	mov    r8d,edx
  3a4cdb:	e8 e8 af ff ff                                  	call   0x39fcc8
  3a4ce0:	89 83 94 04 00 00                               	mov    DWORD PTR [rbx+0x494],eax
  3a4ce6:	83 bb 98 04 00 00 00                            	cmp    DWORD PTR [rbx+0x498],0x0
  3a4ced:	7d 1c                                           	jge    0x3a4d0b
  3a4cef:	f6 03 04                                        	test   BYTE PTR [rbx],0x4
  3a4cf2:	75 17                                           	jne    0x3a4d0b
  3a4cf4:	ba 41 00 00 00                                  	mov    edx,0x41
  3a4cf9:	48 8b cb                                        	mov    rcx,rbx
  3a4cfc:	44 8d 42 ff                                     	lea    r8d,[rdx-0x1]
  3a4d00:	e8 c3 af ff ff                                  	call   0x39fcc8
  3a4d05:	89 83 98 04 00 00                               	mov    DWORD PTR [rbx+0x498],eax
  3a4d0b:	48 8b cb                                        	mov    rcx,rbx
  3a4d0e:	48 83 c4 20                                     	add    rsp,0x20
  3a4d12:	5b                                              	pop    rbx
  3a4d13:	e9 a4 01 00 00                                  	jmp    0x3a4ebc
