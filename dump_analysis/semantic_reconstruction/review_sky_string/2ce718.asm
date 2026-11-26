
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ce718 <.data+0x2ce718>:
  2ce718:	40 53                                           	rex push rbx
  2ce71a:	48 83 ec 20                                     	sub    rsp,0x20
  2ce71e:	8b 05 4c 77 10 00                               	mov    eax,DWORD PTR [rip+0x10774c]        # 0x3d5e70
  2ce724:	48 8b d9                                        	mov    rbx,rcx
  2ce727:	a8 01                                           	test   al,0x1
  2ce729:	75 20                                           	jne    0x2ce74b
  2ce72b:	83 c8 01                                        	or     eax,0x1
  2ce72e:	89 05 3c 77 10 00                               	mov    DWORD PTR [rip+0x10773c],eax        # 0x3d5e70
  2ce734:	e8 2b da ff ff                                  	call   0x2cc164
  2ce739:	4c 8b c0                                        	mov    r8,rax
  2ce73c:	48 89 05 25 77 10 00                            	mov    QWORD PTR [rip+0x107725],rax        # 0x3d5e68
  2ce743:	8b 05 27 77 10 00                               	mov    eax,DWORD PTR [rip+0x107727]        # 0x3d5e70
  2ce749:	eb 07                                           	jmp    0x2ce752
  2ce74b:	4c 8b 05 16 77 10 00                            	mov    r8,QWORD PTR [rip+0x107716]        # 0x3d5e68
  2ce752:	a8 02                                           	test   al,0x2
  2ce754:	75 1f                                           	jne    0x2ce775
  2ce756:	48 8b 0d 03 77 10 00                            	mov    rcx,QWORD PTR [rip+0x107703]        # 0x3d5e60
  2ce75d:	48 8d 15 1c 77 10 00                            	lea    rdx,[rip+0x10771c]        # 0x3d5e80
  2ce764:	83 c8 02                                        	or     eax,0x2
  2ce767:	45 33 c9                                        	xor    r9d,r9d
  2ce76a:	89 05 00 77 10 00                               	mov    DWORD PTR [rip+0x107700],eax        # 0x3d5e70
  2ce770:	e8 af d5 ff ff                                  	call   0x2cbd24
  2ce775:	48 8b 0d e4 76 10 00                            	mov    rcx,QWORD PTR [rip+0x1076e4]        # 0x3d5e60
  2ce77c:	48 8d 15 fd 76 10 00                            	lea    rdx,[rip+0x1076fd]        # 0x3d5e80
  2ce783:	4c 8b c3                                        	mov    r8,rbx
  2ce786:	48 83 c4 20                                     	add    rsp,0x20
  2ce78a:	5b                                              	pop    rbx
  2ce78b:	e9 6c d2 ff ff                                  	jmp    0x2cb9fc
