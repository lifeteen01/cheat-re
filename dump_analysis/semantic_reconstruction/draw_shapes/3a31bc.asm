
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a31bc <.data+0x3a31bc>:
  3a31bc:	4c 8b dc                                        	mov    r11,rsp
  3a31bf:	48 83 ec 58                                     	sub    rsp,0x58
  3a31c3:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  3a31cb:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a31ce:	49 c7 43 e8 00 00 00 00                         	mov    QWORD PTR [r11-0x18],0x0
  3a31d6:	f3 0f 11 54 24 38                               	movss  DWORD PTR [rsp+0x38],xmm2
  3a31dc:	49 89 43 d8                                     	mov    QWORD PTR [r11-0x28],rax
  3a31e0:	4d 89 4b d0                                     	mov    QWORD PTR [r11-0x30],r9
  3a31e4:	4c 8b ca                                        	mov    r9,rdx
  3a31e7:	33 d2                                           	xor    edx,edx
  3a31e9:	45 89 43 c8                                     	mov    DWORD PTR [r11-0x38],r8d
  3a31ed:	e8 06 00 00 00                                  	call   0x3a31f8
  3a31f2:	48 83 c4 58                                     	add    rsp,0x58
  3a31f6:	c3                                              	ret
