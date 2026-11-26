
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d5744.bin:     file format binary


Disassembly of section .data:

00000000002d5744 <.data>:
  2d5744:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d5749:	55                   	push   rbp
  2d574a:	56                   	push   rsi
  2d574b:	57                   	push   rdi
  2d574c:	48 83 ec 30          	sub    rsp,0x30
  2d5750:	48 8b f2             	mov    rsi,rdx
  2d5753:	48 8b e9             	mov    rbp,rcx
  2d5756:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d575b:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d5760:	e8 a7 fa ff ff       	call   0x2d520c
  2d5765:	48 8b c8             	mov    rcx,rax
  2d5768:	e8 87 85 ff ff       	call   0x2cdcf4
  2d576d:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  2d5772:	48 8b d8             	mov    rbx,rax
  2d5775:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2d577a:	e8 a9 f8 ff ff       	call   0x2d5028
  2d577f:	48 8b c8             	mov    rcx,rax
  2d5782:	e8 45 85 ff ff       	call   0x2cdccc
  2d5787:	48 8b c8             	mov    rcx,rax
  2d578a:	48 8b d3             	mov    rdx,rbx
  2d578d:	e8 92 ea 05 00       	call   0x334224
  2d5792:	48 8b c8             	mov    rcx,rax
  2d5795:	48 8b d6             	mov    rdx,rsi
  2d5798:	e8 d7 35 00 00       	call   0x2d8d74
  2d579d:	48 8b f8             	mov    rdi,rax
  2d57a0:	48 85 c0             	test   rax,rax
  2d57a3:	74 21                	je     0x2d57c6
  2d57a5:	33 db                	xor    ebx,ebx
  2d57a7:	48 85 f6             	test   rsi,rsi
  2d57aa:	74 17                	je     0x2d57c3
  2d57ac:	8b d3                	mov    edx,ebx
  2d57ae:	48 8b cf             	mov    rcx,rdi
  2d57b1:	e8 f2 fe ff ff       	call   0x2d56a8
  2d57b6:	8a 0c 2b             	mov    cl,BYTE PTR [rbx+rbp*1]
  2d57b9:	48 ff c3             	inc    rbx
  2d57bc:	88 08                	mov    BYTE PTR [rax],cl
  2d57be:	48 3b de             	cmp    rbx,rsi
  2d57c1:	72 e9                	jb     0x2d57ac
  2d57c3:	48 8b c7             	mov    rax,rdi
  2d57c6:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
  2d57cb:	48 83 c4 30          	add    rsp,0x30
  2d57cf:	5f                   	pop    rdi
  2d57d0:	5e                   	pop    rsi
  2d57d1:	5d                   	pop    rbp
  2d57d2:	c3                   	ret
