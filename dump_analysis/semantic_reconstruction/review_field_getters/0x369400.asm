
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369400 <.data+0x369400>:
  369400:	48 83 ec 28                                     	sub    rsp,0x28
  369404:	4c 8b c1                                        	mov    r8,rcx
  369407:	e8 fc 1a f6 ff                                  	call   0x2caf08
  36940c:	84 c0                                           	test   al,al
  36940e:	75 04                                           	jne    0x369414
  369410:	33 c0                                           	xor    eax,eax
  369412:	eb 10                                           	jmp    0x369424
  369414:	ba 50 03 00 00                                  	mov    edx,0x350
  369419:	49 8b c8                                        	mov    rcx,r8
  36941c:	e8 1b 5a f7 ff                                  	call   0x2dee3c
  369421:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  369424:	48 83 c4 28                                     	add    rsp,0x28
  369428:	c3                                              	ret
