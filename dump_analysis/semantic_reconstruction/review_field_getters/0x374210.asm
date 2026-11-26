
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000374210 <.data+0x374210>:
  374210:	48 83 ec 28                                     	sub    rsp,0x28
  374214:	4c 8b c1                                        	mov    r8,rcx
  374217:	e8 ec 6c f5 ff                                  	call   0x2caf08
  37421c:	84 c0                                           	test   al,al
  37421e:	75 04                                           	jne    0x374224
  374220:	33 c0                                           	xor    eax,eax
  374222:	eb 10                                           	jmp    0x374234
  374224:	ba 28 01 00 00                                  	mov    edx,0x128
  374229:	49 8b c8                                        	mov    rcx,r8
  37422c:	e8 0b ac f6 ff                                  	call   0x2dee3c
  374231:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  374234:	48 83 c4 28                                     	add    rsp,0x28
  374238:	c3                                              	ret
