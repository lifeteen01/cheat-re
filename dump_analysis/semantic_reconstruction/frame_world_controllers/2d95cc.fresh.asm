
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d95cc.bin:     file format binary


Disassembly of section .data:

00000000002d95cc <.data>:
  2d95cc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d95d1:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d95d6:	57                   	push   rdi
  2d95d7:	48 83 ec 20          	sub    rsp,0x20
  2d95db:	48 8b f1             	mov    rsi,rcx
  2d95de:	e8 f9 fa ff ff       	call   0x2d90dc
  2d95e3:	48 8d 4e 20          	lea    rcx,[rsi+0x20]
  2d95e7:	e8 ec f4 ff ff       	call   0x2d8ad8
  2d95ec:	48 8d 4e 20          	lea    rcx,[rsi+0x20]
  2d95f0:	48 8b f8             	mov    rdi,rax
  2d95f3:	e8 f4 41 ff ff       	call   0x2cd7ec
  2d95f8:	48 8b c8             	mov    rcx,rax
  2d95fb:	48 8b d7             	mov    rdx,rdi
  2d95fe:	e8 41 c1 ff ff       	call   0x2d5744
  2d9603:	48 8b d8             	mov    rbx,rax
  2d9606:	48 85 c0             	test   rax,rax
  2d9609:	74 21                	je     0x2d962c
  2d960b:	48 8b ce             	mov    rcx,rsi
  2d960e:	e8 d9 41 ff ff       	call   0x2cd7ec
  2d9613:	48 8b c8             	mov    rcx,rax
  2d9616:	48 8b d3             	mov    rdx,rbx
  2d9619:	e8 be cf ff ff       	call   0x2d65dc
  2d961e:	48 8b ce             	mov    rcx,rsi
  2d9621:	e8 8e f3 ff ff       	call   0x2d89b4
  2d9626:	89 86 80 00 00 00    	mov    DWORD PTR [rsi+0x80],eax
  2d962c:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2d9631:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2d9636:	48 83 c4 20          	add    rsp,0x20
  2d963a:	5f                   	pop    rdi
  2d963b:	c3                   	ret
