
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369764 <.data+0x369764>:
  369764:	48 83 ec 28                                     	sub    rsp,0x28
  369768:	4c 8b c1                                        	mov    r8,rcx
  36976b:	e8 98 17 f6 ff                                  	call   0x2caf08
  369770:	84 c0                                           	test   al,al
  369772:	75 04                                           	jne    0x369778
  369774:	33 c0                                           	xor    eax,eax
  369776:	eb 10                                           	jmp    0x369788
  369778:	ba 00 03 00 00                                  	mov    edx,0x300
  36977d:	49 8b c8                                        	mov    rcx,r8
  369780:	e8 b7 56 f7 ff                                  	call   0x2dee3c
  369785:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  369788:	48 83 c4 28                                     	add    rsp,0x28
  36978c:	c3                                              	ret
