
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2ee658.bin:     file format binary


Disassembly of section .data:

00000000002ee658 <.data>:
  2ee658:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  2ee65d:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2ee662:	55                   	push   rbp
  2ee663:	53                   	push   rbx
  2ee664:	56                   	push   rsi
  2ee665:	57                   	push   rdi
  2ee666:	41 56                	push   r14
  2ee668:	48 8b ec             	mov    rbp,rsp
  2ee66b:	48 83 ec 30          	sub    rsp,0x30
  2ee66f:	4c 8b f1             	mov    r14,rcx
  2ee672:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2ee676:	e8 c9 23 fe ff       	call   0x2d0a44
  2ee67b:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  2ee67f:	48 8b f0             	mov    rsi,rax
  2ee682:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2ee686:	e8 19 cd fd ff       	call   0x2cb3a4
  2ee68b:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2ee68f:	48 8b d8             	mov    rbx,rax
  2ee692:	e8 ad 23 fe ff       	call   0x2d0a44
  2ee697:	44 8a 03             	mov    r8b,BYTE PTR [rbx]
  2ee69a:	48 8b c8             	mov    rcx,rax
  2ee69d:	48 8b d6             	mov    rdx,rsi
  2ee6a0:	e8 4f f6 ff ff       	call   0x2edcf4
  2ee6a5:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  2ee6a9:	48 8b d8             	mov    rbx,rax
  2ee6ac:	48 8b f8             	mov    rdi,rax
  2ee6af:	48 3b c6             	cmp    rax,rsi
  2ee6b2:	74 36                	je     0x2ee6ea
  2ee6b4:	eb 2b                	jmp    0x2ee6e1
  2ee6b6:	48 8b d3             	mov    rdx,rbx
  2ee6b9:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2ee6bd:	e8 3a c1 ff ff       	call   0x2ea7fc
  2ee6c2:	84 c0                	test   al,al
  2ee6c4:	75 1b                	jne    0x2ee6e1
  2ee6c6:	48 8b cb             	mov    rcx,rbx
  2ee6c9:	e8 d6 cc fd ff       	call   0x2cb3a4
  2ee6ce:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  2ee6d1:	f3 0f 7f 07          	movdqu XMMWORD PTR [rdi],xmm0
  2ee6d5:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  2ee6d9:	48 83 c7 10          	add    rdi,0x10
  2ee6dd:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  2ee6e1:	48 83 c3 10          	add    rbx,0x10
  2ee6e5:	48 3b de             	cmp    rbx,rsi
  2ee6e8:	75 cc                	jne    0x2ee6b6
  2ee6ea:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  2ee6ee:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2ee6f2:	e8 35 31 fe ff       	call   0x2d182c
  2ee6f7:	48 8b 45 38          	mov    rax,QWORD PTR [rbp+0x38]
  2ee6fb:	49 89 06             	mov    QWORD PTR [r14],rax
  2ee6fe:	49 8b c6             	mov    rax,r14
  2ee701:	48 83 c4 30          	add    rsp,0x30
  2ee705:	41 5e                	pop    r14
  2ee707:	5f                   	pop    rdi
  2ee708:	5e                   	pop    rsi
  2ee709:	5b                   	pop    rbx
  2ee70a:	5d                   	pop    rbp
  2ee70b:	c3                   	ret
