
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394268 <.data+0x394268>:
  394268:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39426d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  394272:	57                                              	push   rdi
  394273:	48 83 ec 40                                     	sub    rsp,0x40
  394277:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  39427c:	41 8b f8                                        	mov    edi,r8d
  39427f:	8b f2                                           	mov    esi,edx
  394281:	8b d9                                           	mov    ebx,ecx
  394283:	e8 8c e4 ff ff                                  	call   0x392714
  394288:	80 38 00                                        	cmp    BYTE PTR [rax],0x0
  39428b:	74 59                                           	je     0x3942e6
  39428d:	f3 0f 10 70 04                                  	movss  xmm6,DWORD PTR [rax+0x4]
  394292:	0f 57 c0                                        	xorps  xmm0,xmm0
  394295:	0f 2f c6                                        	comiss xmm0,xmm6
  394298:	77 4c                                           	ja     0x3942e6
  39429a:	0f 2e f0                                        	ucomiss xmm6,xmm0
  39429d:	7a 02                                           	jp     0x3942a1
  39429f:	74 35                                           	je     0x3942d6
  3942a1:	40 f6 c7 01                                     	test   dil,0x1
  3942a5:	74 3f                                           	je     0x3942e6
  3942a7:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3942ac:	8b cf                                           	mov    ecx,edi
  3942ae:	48 8d 54 24 68                                  	lea    rdx,[rsp+0x68]
  3942b3:	e8 9c ea ff ff                                  	call   0x392d54
  3942b8:	0f 2f 74 24 68                                  	comiss xmm6,DWORD PTR [rsp+0x68]
  3942bd:	76 27                                           	jbe    0x3942e6
  3942bf:	f3 0f 10 54 24 20                               	movss  xmm2,DWORD PTR [rsp+0x20]
  3942c5:	8b cb                                           	mov    ecx,ebx
  3942c7:	f3 0f 10 4c 24 68                               	movss  xmm1,DWORD PTR [rsp+0x68]
  3942cd:	e8 fe e4 ff ff                                  	call   0x3927d0
  3942d2:	85 c0                                           	test   eax,eax
  3942d4:	7e 10                                           	jle    0x3942e6
  3942d6:	8b d6                                           	mov    edx,esi
  3942d8:	8b cb                                           	mov    ecx,ebx
  3942da:	e8 2d 7c 00 00                                  	call   0x39bf0c
  3942df:	84 c0                                           	test   al,al
  3942e1:	0f 95 c0                                        	setne  al
  3942e4:	eb 02                                           	jmp    0x3942e8
  3942e6:	32 c0                                           	xor    al,al
  3942e8:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  3942ed:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  3942f2:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3942f7:	48 83 c4 40                                     	add    rsp,0x40
  3942fb:	5f                                              	pop    rdi
  3942fc:	c3                                              	ret
