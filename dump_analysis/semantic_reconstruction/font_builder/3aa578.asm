
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aa578 <.data+0x3aa578>:
  3aa578:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3aa57d:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
  3aa582:	55                   	push   rbp
  3aa583:	48 8b ec             	mov    rbp,rsp
  3aa586:	48 83 ec 60          	sub    rsp,0x60
  3aa58a:	49 8b f8             	mov    rdi,r8
  3aa58d:	48 c7 45 c0 01 00 00 	mov    QWORD PTR [rbp-0x40],0x1
  3aa594:	00 
  3aa595:	0f 57 c0             	xorps  xmm0,xmm0
  3aa598:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  3aa59f:	00 
  3aa5a0:	0f 57 c9             	xorps  xmm1,xmm1
  3aa5a3:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  3aa5aa:	4c 8d 45 c0          	lea    r8,[rbp-0x40]
  3aa5ae:	49 8b d9             	mov    rbx,r9
  3aa5b1:	0f 11 45 c8          	movups XMMWORD PTR [rbp-0x38],xmm0
  3aa5b5:	f3 0f 7f 4d d8       	movdqu XMMWORD PTR [rbp-0x28],xmm1
  3aa5ba:	e8 8d 22 00 00       	call   0x3ac84c
  3aa5bf:	44 8b c0             	mov    r8d,eax
  3aa5c2:	48 85 ff             	test   rdi,rdi
  3aa5c5:	74 0b                	je     0x3aa5d2
  3aa5c7:	8b c8                	mov    ecx,eax
  3aa5c9:	f7 d9                	neg    ecx
  3aa5cb:	1b d2                	sbb    edx,edx
  3aa5cd:	23 55 d8             	and    edx,DWORD PTR [rbp-0x28]
  3aa5d0:	89 17                	mov    DWORD PTR [rdi],edx
  3aa5d2:	48 85 db             	test   rbx,rbx
  3aa5d5:	74 0c                	je     0x3aa5e3
  3aa5d7:	41 8b c8             	mov    ecx,r8d
  3aa5da:	f7 d9                	neg    ecx
  3aa5dc:	1b c0                	sbb    eax,eax
  3aa5de:	23 45 e0             	and    eax,DWORD PTR [rbp-0x20]
  3aa5e1:	89 03                	mov    DWORD PTR [rbx],eax
  3aa5e3:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
  3aa5e7:	48 85 d2             	test   rdx,rdx
  3aa5ea:	74 0c                	je     0x3aa5f8
  3aa5ec:	41 8b c0             	mov    eax,r8d
  3aa5ef:	f7 d8                	neg    eax
  3aa5f1:	1b c9                	sbb    ecx,ecx
  3aa5f3:	23 4d dc             	and    ecx,DWORD PTR [rbp-0x24]
  3aa5f6:	89 0a                	mov    DWORD PTR [rdx],ecx
  3aa5f8:	48 8b 55 38          	mov    rdx,QWORD PTR [rbp+0x38]
  3aa5fc:	48 85 d2             	test   rdx,rdx
  3aa5ff:	74 0c                	je     0x3aa60d
  3aa601:	41 8b c0             	mov    eax,r8d
  3aa604:	f7 d8                	neg    eax
  3aa606:	1b c9                	sbb    ecx,ecx
  3aa608:	23 4d e4             	and    ecx,DWORD PTR [rbp-0x1c]
  3aa60b:	89 0a                	mov    DWORD PTR [rdx],ecx
  3aa60d:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  3aa612:	41 f7 d8             	neg    r8d
  3aa615:	48 8b 7c 24 78       	mov    rdi,QWORD PTR [rsp+0x78]
  3aa61a:	1b c0                	sbb    eax,eax
  3aa61c:	23 45 f0             	and    eax,DWORD PTR [rbp-0x10]
  3aa61f:	48 83 c4 60          	add    rsp,0x60
  3aa623:	5d                   	pop    rbp
  3aa624:	c3                   	ret
