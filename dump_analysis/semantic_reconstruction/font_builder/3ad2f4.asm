
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ad2f4 <.data+0x3ad2f4>:
  3ad2f4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3ad2f9:	41 b8 01 00 00 00    	mov    r8d,0x1
  3ad2ff:	44 8b d2             	mov    r10d,edx
  3ad302:	4c 8b c9             	mov    r9,rcx
  3ad305:	41 3b d0             	cmp    edx,r8d
  3ad308:	0f 8e 80 00 00 00    	jle    0x3ad38e
  3ad30e:	41 8b c0             	mov    eax,r8d
  3ad311:	41 8b d0             	mov    edx,r8d
  3ad314:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad318:	41 8b 04 89          	mov    eax,DWORD PTR [r9+rcx*4]
  3ad31c:	f3 41 0f 10 4c 89 04 	movss  xmm1,DWORD PTR [r9+rcx*4+0x4]
  3ad323:	f2 41 0f 10 54 89 08 	movsd  xmm2,QWORD PTR [r9+rcx*4+0x8]
  3ad32a:	41 8b 5c 89 10       	mov    ebx,DWORD PTR [r9+rcx*4+0x10]
  3ad32f:	8b ca                	mov    ecx,edx
  3ad331:	4c 8d 1c 89          	lea    r11,[rcx+rcx*4]
  3ad335:	33 c9                	xor    ecx,ecx
  3ad337:	f3 43 0f 10 44 99 f0 	movss  xmm0,DWORD PTR [r9+r11*4-0x10]
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
  3ad437:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
  3ad43a:	42 0f 11 0c 83       	movups XMMWORD PTR [rbx+r8*4],xmm1
  3ad43f:	42 89 4c 83 10       	mov    DWORD PTR [rbx+r8*4+0x10],ecx
  3ad444:	44 8d 47 ff          	lea    r8d,[rdi-0x1]
  3ad448:	f3 0f 10 4b 04       	movss  xmm1,DWORD PTR [rbx+0x4]
  3ad44d:	eb 03                	jmp    0x3ad452
  3ad44f:	41 ff c1             	inc    r9d
  3ad452:	49 63 c1             	movsxd rax,r9d
  3ad455:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad459:	0f 2f 4c 8b 04       	comiss xmm1,DWORD PTR [rbx+rcx*4+0x4]
  3ad45e:	77 ef                	ja     0x3ad44f
  3ad460:	eb 03                	jmp    0x3ad465
  3ad462:	41 ff c8             	dec    r8d
  3ad465:	49 63 c0             	movsxd rax,r8d
  3ad468:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad46c:	f3 0f 10 44 8b 04    	movss  xmm0,DWORD PTR [rbx+rcx*4+0x4]
  3ad472:	0f 2f c1             	comiss xmm0,xmm1
  3ad475:	77 eb                	ja     0x3ad462
  3ad477:	49 63 c1             	movsxd rax,r9d
  3ad47a:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad47e:	4c 8d 14 8b          	lea    r10,[rbx+rcx*4]
  3ad482:	45 3b c8             	cmp    r9d,r8d
  3ad485:	7d 2f                	jge    0x3ad4b6
  3ad487:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  3ad48b:	41 8b 52 10          	mov    edx,DWORD PTR [r10+0x10]
  3ad48f:	41 ff c1             	inc    r9d
  3ad492:	49 63 c0             	movsxd rax,r8d
  3ad495:	41 ff c8             	dec    r8d
  3ad498:	48 8d 0c 80          	lea    rcx,[rax+rax*4]
  3ad49c:	0f 10 04 8b          	movups xmm0,XMMWORD PTR [rbx+rcx*4]
  3ad4a0:	41 0f 11 02          	movups XMMWORD PTR [r10],xmm0
  3ad4a4:	8b 44 8b 10          	mov    eax,DWORD PTR [rbx+rcx*4+0x10]
  3ad4a8:	41 89 42 10          	mov    DWORD PTR [r10+0x10],eax
  3ad4ac:	0f 11 0c 8b          	movups XMMWORD PTR [rbx+rcx*4],xmm1
  3ad4b0:	89 54 8b 10          	mov    DWORD PTR [rbx+rcx*4+0x10],edx
  3ad4b4:	eb 92                	jmp    0x3ad448
  3ad4b6:	41 2b f9             	sub    edi,r9d
  3ad4b9:	8b c7                	mov    eax,edi
  3ad4bb:	44 3b c7             	cmp    r8d,edi
  3ad4be:	7d 08                	jge    0x3ad4c8
  3ad4c0:	48 8b cb             	mov    rcx,rbx
  3ad4c3:	49 8b da             	mov    rbx,r10
  3ad4c6:	eb 09                	jmp    0x3ad4d1
  3ad4c8:	41 8b f8             	mov    edi,r8d
  3ad4cb:	49 8b ca             	mov    rcx,r10
  3ad4ce:	44 8b c0             	mov    r8d,eax
  3ad4d1:	41 8b d0             	mov    edx,r8d
  3ad4d4:	e8 bb fe ff ff       	call   0x3ad394
  3ad4d9:	83 ff 0c             	cmp    edi,0xc
  3ad4dc:	0f 8f ca fe ff ff    	jg     0x3ad3ac
  3ad4e2:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3ad4e7:	48 83 c4 20          	add    rsp,0x20
  3ad4eb:	5f                   	pop    rdi
  3ad4ec:	c3                   	ret
  3ad4ed:	cc                   	int3
  3ad4ee:	cc                   	int3
  3ad4ef:	cc                   	int3
