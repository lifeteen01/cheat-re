
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395108 <.data+0x395108>:
  395108:	f7 41 14 00 01 00 00                            	test   DWORD PTR [rcx+0x14],0x100
  39510f:	75 1c                                           	jne    0x39512d
  395111:	48 8b 0d 10 0a 07 00                            	mov    rcx,QWORD PTR [rip+0x70a10]        # 0x405b28
  395118:	0f 57 c0                                        	xorps  xmm0,xmm0
  39511b:	0f 2f 81 fc 5b 00 00                            	comiss xmm0,DWORD PTR [rcx+0x5bfc]
  395122:	72 09                                           	jb     0x39512d
  395124:	8b 41 1c                                        	mov    eax,DWORD PTR [rcx+0x1c]
  395127:	89 81 fc 5b 00 00                               	mov    DWORD PTR [rcx+0x5bfc],eax
  39512d:	c3                                              	ret
