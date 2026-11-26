
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c43f4 <.data+0x3c43f4>:
  3c43f4:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm3
  3c43fa:	f3 0f 11 54 24 18                               	movss  DWORD PTR [rsp+0x18],xmm2
  3c4400:	4c 8b dc                                        	mov    r11,rsp
  3c4403:	48 83 ec 48                                     	sub    rsp,0x48
  3c4407:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  3c440b:	4d 8d 4b 18                                     	lea    r9,[r11+0x18]
  3c440f:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3c4413:	4c 8b c2                                        	mov    r8,rdx
  3c4416:	48 8b 44 24 70                                  	mov    rax,QWORD PTR [rsp+0x70]
  3c441b:	ba 08 00 00 00                                  	mov    edx,0x8
  3c4420:	49 89 43 e0                                     	mov    QWORD PTR [r11-0x20],rax
  3c4424:	49 8d 43 20                                     	lea    rax,[r11+0x20]
  3c4428:	49 89 43 d8                                     	mov    QWORD PTR [r11-0x28],rax
  3c442c:	e8 47 00 00 00                                  	call   0x3c4478
  3c4431:	48 83 c4 48                                     	add    rsp,0x48
  3c4435:	c3                                              	ret
