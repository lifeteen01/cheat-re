
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ad338 <.data+0x3ad338>:
  3ad338:	43 0f 10 44 99 f0    	movups xmm0,XMMWORD PTR [r9+r11*4-0x10]
  3ad33e:	0f 2f c1             	comiss xmm0,xmm1
  3ad341:	0f 97 c1             	seta   cl
  3ad344:	85 c9                	test   ecx,ecx
  3ad346:	74 1b                	je     0x3ad363
  3ad348:	43 0f 10 44 99 ec    	movups xmm0,XMMWORD PTR [r9+r11*4-0x14]
  3ad34e:	43 8b 4c 99 fc       	mov    ecx,DWORD PTR [r9+r11*4-0x4]
  3ad353:	ff ca                	dec    edx
  3ad355:	43 0f 11 04 99       	movups XMMWORD PTR [r9+r11*4],xmm0
  3ad35a:	43 89 4c 99 10       	mov    DWORD PTR [r9+r11*4+0x10],ecx
  3ad35f:	85 d2                	test   edx,edx
  3ad361:	7f cc                	jg     0x3ad32f
  3ad363:	44 3b c2             	cmp    r8d,edx
  3ad366:	74 1e                	je     0x3ad386
  3ad368:	48 63 ca             	movsxd rcx,edx
  3ad36b:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
  3ad36f:	f2 41 0f 11 54 91 08 	movsd  QWORD PTR [r9+rdx*4+0x8],xmm2
  3ad376:	41 89 5c 91 10       	mov    DWORD PTR [r9+rdx*4+0x10],ebx
  3ad37b:	f3 41 0f 11 4c 91 04 	movss  DWORD PTR [r9+rdx*4+0x4],xmm1
  3ad382:	41 89 04 91          	mov    DWORD PTR [r9+rdx*4],eax
  3ad386:	41 ff c0             	inc    r8d
  3ad389:	45 3b c2             	cmp    r8d,r10d
  3ad38c:	7c 80                	jl     0x3ad30e
  3ad38e:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  3ad393:	c3                   	ret
  3ad394:	83 fa 0c             	cmp    edx,0xc
  3ad397:	0f 8e 4f 01 00 00    	jle    0x3ad4ec
  3ad39d:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3ad3a2:	57                   	push   rdi
  3ad3a3:	48 83 ec 20          	sub    rsp,0x20
  3ad3a7:	8b fa                	mov    edi,edx
  3ad3a9:	48 8b d9             	mov    rbx,rcx
  3ad3ac:	45 33 c9             	xor    r9d,r9d
  3ad3af:	8b c7                	mov    eax,edi
  3ad3b1:	d1 e8                	shr    eax,1
  3ad3b3:	4c 8d 04 80          	lea    r8,[rax+rax*4]
  3ad3b7:	8b c7                	mov    eax,edi
  3ad3b9:	f3 42 0f 10 44 83 04 	movss  xmm0,DWORD PTR [rbx+r8*4+0x4]
  3ad3c0:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad3c4:	f3 0f 10 4c 8b f0    	movss  xmm1,DWORD PTR [rbx+rcx*4-0x10]
  3ad3ca:	0f 2f c8             	comiss xmm1,xmm0
  3ad3cd:	41 0f 97 c1          	seta   r9b
  3ad3d1:	33 c0                	xor    eax,eax
  3ad3d3:	0f 2f 43 04          	comiss xmm0,DWORD PTR [rbx+0x4]
  3ad3d7:	0f 97 c0             	seta   al
  3ad3da:	41 3b c1             	cmp    eax,r9d
  3ad3dd:	74 3f                	je     0x3ad41e
  3ad3df:	42 0f 10 04 83       	movups xmm0,XMMWORD PTR [rbx+r8*4]
  3ad3e4:	33 d2                	xor    edx,edx
  3ad3e6:	8d 4f ff             	lea    ecx,[rdi-0x1]
  3ad3e9:	0f 2f 4b 04          	comiss xmm1,DWORD PTR [rbx+0x4]
  3ad3ed:	0f 97 c2             	seta   dl
  3ad3f0:	33 c0                	xor    eax,eax
  3ad3f2:	41 3b d1             	cmp    edx,r9d
  3ad3f5:	0f 44 c8             	cmove  ecx,eax
  3ad3f8:	48 63 c1             	movsxd rax,ecx
  3ad3fb:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad3ff:	0f 10 0c 8b          	movups xmm1,XMMWORD PTR [rbx+rcx*4]
  3ad403:	8b 54 8b 10          	mov    edx,DWORD PTR [rbx+rcx*4+0x10]
  3ad407:	0f 11 04 8b          	movups XMMWORD PTR [rbx+rcx*4],xmm0
  3ad40b:	42 8b 44 83 10       	mov    eax,DWORD PTR [rbx+r8*4+0x10]
  3ad410:	89 44 8b 10          	mov    DWORD PTR [rbx+rcx*4+0x10],eax
  3ad414:	42 0f 11 0c 83       	movups XMMWORD PTR [rbx+r8*4],xmm1
  3ad419:	42 89 54 83 10       	mov    DWORD PTR [rbx+r8*4+0x10],edx
  3ad41e:	42 0f 10 04 83       	movups xmm0,XMMWORD PTR [rbx+r8*4]
  3ad423:	8b 4b 10             	mov    ecx,DWORD PTR [rbx+0x10]
  3ad426:	41 b9 01 00 00 00    	mov    r9d,0x1
  3ad42c:	0f 10 0b             	movups xmm1,XMMWORD PTR [rbx]
  3ad42f:	0f 11 03             	movups XMMWORD PTR [rbx],xmm0
  3ad432:	42 8b 44 83 10       	mov    eax,DWORD PTR [rbx+r8*4+0x10]
  3ad437:	89               	mov    DWORD PTR [rbx+0x10],eax
