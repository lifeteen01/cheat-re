
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/321484.bin:     file format binary


Disassembly of section .data:

0000000000321484 <.data>:
  321484:	40 53                	rex push rbx
  321486:	48 83 ec 20          	sub    rsp,0x20
  32148a:	48 8b d9             	mov    rbx,rcx
  32148d:	e8 ba f9 fb ff       	call   0x2e0e4c
  321492:	84 c0                	test   al,al
  321494:	75 3b                	jne    0x3214d1
  321496:	e8 01 f2 fb ff       	call   0x2e069c
  32149b:	48 8b c8             	mov    rcx,rax
  32149e:	e8 65 9a fa ff       	call   0x2caf08
  3214a3:	84 c0                	test   al,al
  3214a5:	74 2a                	je     0x3214d1
  3214a7:	e8 f0 c5 fb ff       	call   0x2dda9c
  3214ac:	48 8b c8             	mov    rcx,rax
  3214af:	e8 54 9a fa ff       	call   0x2caf08
  3214b4:	84 c0                	test   al,al
  3214b6:	74 19                	je     0x3214d1
  3214b8:	48 85 db             	test   rbx,rbx
  3214bb:	74 14                	je     0x3214d1
  3214bd:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  3214c0:	48 85 c9             	test   rcx,rcx
  3214c3:	74 0c                	je     0x3214d1
  3214c5:	e8 d2 f9 fb ff       	call   0x2e0e9c
  3214ca:	84 c0                	test   al,al
  3214cc:	0f 95 c0             	setne  al
  3214cf:	eb 02                	jmp    0x3214d3
  3214d1:	32 c0                	xor    al,al
  3214d3:	48 83 c4 20          	add    rsp,0x20
  3214d7:	5b                   	pop    rbx
  3214d8:	c3                   	ret
