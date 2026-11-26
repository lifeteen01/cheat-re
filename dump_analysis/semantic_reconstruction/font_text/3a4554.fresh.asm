
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4554 <.data+0x3a4554>:
  3a4554:	48 63 41 18                                     	movsxd rax,DWORD PTR [rcx+0x18]
  3a4558:	44 0f b7 c2                                     	movzx  r8d,dx
  3a455c:	4c 3b c0                                        	cmp    r8,rax
  3a455f:	73 22                                           	jae    0x3a4583
  3a4561:	48 8b 41 20                                     	mov    rax,QWORD PTR [rcx+0x20]
  3a4565:	ba ff ff 00 00                                  	mov    edx,0xffff
  3a456a:	66 42 39 14 40                                  	cmp    WORD PTR [rax+r8*2],dx
  3a456f:	74 12                                           	je     0x3a4583
  3a4571:	42 0f b7 04 40                                  	movzx  eax,WORD PTR [rax+r8*2]
  3a4576:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  3a457a:	48 8b 41 30                                     	mov    rax,QWORD PTR [rcx+0x30]
  3a457e:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  3a4582:	c3                                              	ret
  3a4583:	33 c0                                           	xor    eax,eax
  3a4585:	c3                                              	ret
