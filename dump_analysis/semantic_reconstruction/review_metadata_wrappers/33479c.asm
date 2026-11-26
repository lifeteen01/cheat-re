
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000033479c <.data+0x33479c>:
  33479c:	48 83 ec 28                                     	sub    rsp,0x28
  3347a0:	8b 05 ba 50 0c 00                               	mov    eax,DWORD PTR [rip+0xc50ba]        # 0x3f9860
  3347a6:	a8 01                                           	test   al,0x1
  3347a8:	75 20                                           	jne    0x3347ca
  3347aa:	83 c8 01                                        	or     eax,0x1
  3347ad:	89 05 ad 50 0c 00                               	mov    DWORD PTR [rip+0xc50ad],eax        # 0x3f9860
  3347b3:	e8 44 f2 ff ff                                  	call   0x3339fc
  3347b8:	4c 8b c0                                        	mov    r8,rax
  3347bb:	48 89 05 96 50 0c 00                            	mov    QWORD PTR [rip+0xc5096],rax        # 0x3f9858
  3347c2:	8b 05 98 50 0c 00                               	mov    eax,DWORD PTR [rip+0xc5098]        # 0x3f9860
  3347c8:	eb 07                                           	jmp    0x3347d1
  3347ca:	4c 8b 05 87 50 0c 00                            	mov    r8,QWORD PTR [rip+0xc5087]        # 0x3f9858
  3347d1:	a8 02                                           	test   al,0x2
  3347d3:	75 1f                                           	jne    0x3347f4
  3347d5:	48 8b 0d 84 16 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1684]        # 0x3d5e60
  3347dc:	48 8d 15 8d 50 0c 00                            	lea    rdx,[rip+0xc508d]        # 0x3f9870
  3347e3:	83 c8 02                                        	or     eax,0x2
  3347e6:	45 33 c9                                        	xor    r9d,r9d
  3347e9:	89 05 71 50 0c 00                               	mov    DWORD PTR [rip+0xc5071],eax        # 0x3f9860
  3347ef:	e8 30 75 f9 ff                                  	call   0x2cbd24
  3347f4:	48 8b 0d 65 16 0a 00                            	mov    rcx,QWORD PTR [rip+0xa1665]        # 0x3d5e60
  3347fb:	48 8d 15 6e 50 0c 00                            	lea    rdx,[rip+0xc506e]        # 0x3f9870
  334802:	48 83 c4 28                                     	add    rsp,0x28
  334806:	e9 0d 92 fa ff                                  	jmp    0x2dda18
