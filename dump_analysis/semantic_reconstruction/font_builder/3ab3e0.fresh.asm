
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab3e0 <.data+0x3ab3e0>:
  3ab3e0:	48 83 ec 48                                     	sub    rsp,0x48
  3ab3e4:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [rcx+0x8]
  3ab3e9:	0f 2e 49 10                                     	ucomiss xmm1,DWORD PTR [rcx+0x10]
  3ab3ed:	7a 0f                                           	jp     0x3ab3fe
  3ab3ef:	75 0d                                           	jne    0x3ab3fe
  3ab3f1:	f3 0f 10 41 0c                                  	movss  xmm0,DWORD PTR [rcx+0xc]
  3ab3f6:	0f 2e 41 14                                     	ucomiss xmm0,DWORD PTR [rcx+0x14]
  3ab3fa:	7a 02                                           	jp     0x3ab3fe
  3ab3fc:	74 24                                           	je     0x3ab422
  3ab3fe:	f3 44 0f 2c 49 0c                               	cvttss2si r9d,DWORD PTR [rcx+0xc]
  3ab404:	33 c0                                           	xor    eax,eax
  3ab406:	b2 02                                           	mov    dl,0x2
  3ab408:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  3ab40c:	89 44 24 30                                     	mov    DWORD PTR [rsp+0x30],eax
  3ab410:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3ab414:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3ab418:	f3 44 0f 2c c1                                  	cvttss2si r8d,xmm1
  3ab41d:	e8 36 01 00 00                                  	call   0x3ab558
  3ab422:	48 83 c4 48                                     	add    rsp,0x48
  3ab426:	c3                                              	ret
