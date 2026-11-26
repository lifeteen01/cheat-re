
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2ee5a0.bin:     file format binary


Disassembly of section .data:

00000000002ee5a0 <.data>:
  2ee5a0:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  2ee5a5:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2ee5aa:	55                   	push   rbp
  2ee5ab:	53                   	push   rbx
  2ee5ac:	56                   	push   rsi
  2ee5ad:	57                   	push   rdi
  2ee5ae:	41 56                	push   r14
  2ee5b0:	48 8b ec             	mov    rbp,rsp
  2ee5b3:	48 83 ec 30          	sub    rsp,0x30
  2ee5b7:	4c 8b f1             	mov    r14,rcx
  2ee5ba:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2ee5be:	e8 81 24 fe ff       	call   0x2d0a44
  2ee5c3:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  2ee5c7:	48 8b f0             	mov    rsi,rax
  2ee5ca:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2ee5ce:	e8 d1 cd fd ff       	call   0x2cb3a4
  2ee5d3:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2ee5d7:	48 8b d8             	mov    rbx,rax
  2ee5da:	e8 65 24 fe ff       	call   0x2d0a44
  2ee5df:	44 8a 03             	mov    r8b,BYTE PTR [rbx]
  2ee5e2:	48 8b c8             	mov    rcx,rax
  2ee5e5:	48 8b d6             	mov    rdx,rsi
  2ee5e8:	e8 8f f6 ff ff       	call   0x2edc7c
  2ee5ed:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  2ee5f1:	48 8b d8             	mov    rbx,rax
  2ee5f4:	48 8b f8             	mov    rdi,rax
  2ee5f7:	48 3b c6             	cmp    rax,rsi
  2ee5fa:	74 3a                	je     0x2ee636
  2ee5fc:	eb 2f                	jmp    0x2ee62d
  2ee5fe:	48 8b d3             	mov    rdx,rbx
  2ee601:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2ee605:	e8 de c1 ff ff       	call   0x2ea7e8
  2ee60a:	84 c0                	test   al,al
  2ee60c:	75 1f                	jne    0x2ee62d
  2ee60e:	48 8b cb             	mov    rcx,rbx
  2ee611:	e8 8e cd fd ff       	call   0x2cb3a4
  2ee616:	48 8b d0             	mov    rdx,rax
  2ee619:	48 8b cf             	mov    rcx,rdi
  2ee61c:	e8 13 10 00 00       	call   0x2ef634
  2ee621:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
  2ee625:	48 83 c7 40          	add    rdi,0x40
  2ee629:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  2ee62d:	48 83 c3 40          	add    rbx,0x40
  2ee631:	48 3b de             	cmp    rbx,rsi
  2ee634:	75 c8                	jne    0x2ee5fe
  2ee636:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  2ee63a:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2ee63e:	e8 e9 31 fe ff       	call   0x2d182c
  2ee643:	48 8b 45 38          	mov    rax,QWORD PTR [rbp+0x38]
  2ee647:	49 89 06             	mov    QWORD PTR [r14],rax
  2ee64a:	49 8b c6             	mov    rax,r14
  2ee64d:	48 83 c4 30          	add    rsp,0x30
  2ee651:	41 5e                	pop    r14
  2ee653:	5f                   	pop    rdi
  2ee654:	5e                   	pop    rsi
  2ee655:	5b                   	pop    rbx
  2ee656:	5d                   	pop    rbp
  2ee657:	c3                   	ret
