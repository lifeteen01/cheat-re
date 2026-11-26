
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c4438 <.data+0x3c4438>:
  3c4438:	4c 8b dc                                        	mov    r11,rsp
  3c443b:	45 89 4b 20                                     	mov    DWORD PTR [r11+0x20],r9d
  3c443f:	45 89 43 18                                     	mov    DWORD PTR [r11+0x18],r8d
  3c4443:	48 83 ec 48                                     	sub    rsp,0x48
  3c4447:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  3c444b:	4d 8d 4b 18                                     	lea    r9,[r11+0x18]
  3c444f:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3c4453:	4c 8b c2                                        	mov    r8,rdx
  3c4456:	48 8b 44 24 70                                  	mov    rax,QWORD PTR [rsp+0x70]
  3c445b:	ba 04 00 00 00                                  	mov    edx,0x4
  3c4460:	49 89 43 e0                                     	mov    QWORD PTR [r11-0x20],rax
  3c4464:	49 8d 43 20                                     	lea    rax,[r11+0x20]
  3c4468:	49 89 43 d8                                     	mov    QWORD PTR [r11-0x28],rax
  3c446c:	e8 07 00 00 00                                  	call   0x3c4478
  3c4471:	48 83 c4 48                                     	add    rsp,0x48
  3c4475:	c3                                              	ret
