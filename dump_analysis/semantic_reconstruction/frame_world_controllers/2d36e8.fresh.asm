
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d36e8.bin:     file format binary


Disassembly of section .data:

00000000002d36e8 <.data>:
  2d36e8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d36ed:	57                   	push   rdi
  2d36ee:	48 83 ec 50          	sub    rsp,0x50
  2d36f2:	48 8b f9             	mov    rdi,rcx
  2d36f5:	0f 29 74 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm6
  2d36fa:	48 8b ca             	mov    rcx,rdx
  2d36fd:	0f 28 f2             	movaps xmm6,xmm2
  2d3700:	e8 e7 a0 ff ff       	call   0x2cd7ec
  2d3705:	48 8b c8             	mov    rcx,rax
  2d3708:	e8 47 2c 00 00       	call   0x2d6354
  2d370d:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d3712:	0f 28 ce             	movaps xmm1,xmm6
  2d3715:	48 8b d8             	mov    rbx,rax
  2d3718:	e8 23 5e 00 00       	call   0x2d9540
  2d371d:	4c 8b c0             	mov    r8,rax
  2d3720:	8b d3                	mov    edx,ebx
  2d3722:	48 8b cf             	mov    rcx,rdi
  2d3725:	e8 fe 5b 00 00       	call   0x2d9328
  2d372a:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d372f:	e8 c0 8d ff ff       	call   0x2cc4f4
  2d3734:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  2d3739:	0f 28 74 24 40       	movaps xmm6,XMMWORD PTR [rsp+0x40]
  2d373e:	48 83 c4 50          	add    rsp,0x50
  2d3742:	5f                   	pop    rdi
  2d3743:	c3                   	ret
