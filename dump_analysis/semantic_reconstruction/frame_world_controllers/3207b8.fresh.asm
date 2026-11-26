
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3207b8.bin:     file format binary


Disassembly of section .data:

00000000003207b8 <.data>:
  3207b8:	40 53                	rex push rbx
  3207ba:	55                   	push   rbp
  3207bb:	56                   	push   rsi
  3207bc:	57                   	push   rdi
  3207bd:	48 83 ec 28          	sub    rsp,0x28
  3207c1:	49 8b d8             	mov    rbx,r8
  3207c4:	48 8b ea             	mov    rbp,rdx
  3207c7:	48 8b f1             	mov    rsi,rcx
  3207ca:	4d 3b c1             	cmp    r8,r9
  3207cd:	74 2a                	je     0x3207f9
  3207cf:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  3207d3:	49 8b c9             	mov    rcx,r9
  3207d6:	e8 a9 bb fc ff       	call   0x2ec384
  3207db:	48 8b ce             	mov    rcx,rsi
  3207de:	48 8b f8             	mov    rdi,rax
  3207e1:	e8 3e cb fa ff       	call   0x2cd324
  3207e6:	48 8b 56 08          	mov    rdx,QWORD PTR [rsi+0x8]
  3207ea:	4c 8b c0             	mov    r8,rax
  3207ed:	48 8b cf             	mov    rcx,rdi
  3207f0:	e8 63 d8 fb ff       	call   0x2de058
  3207f5:	48 89 7e 08          	mov    QWORD PTR [rsi+0x8],rdi
  3207f9:	48 8b ce             	mov    rcx,rsi
  3207fc:	e8 a3 ab fa ff       	call   0x2cb3a4
  320801:	4c 8b c0             	mov    r8,rax
  320804:	48 8b d3             	mov    rdx,rbx
  320807:	48 8b cd             	mov    rcx,rbp
  32080a:	e8 d1 37 fb ff       	call   0x2d3fe0
  32080f:	48 8b c5             	mov    rax,rbp
  320812:	48 83 c4 28          	add    rsp,0x28
  320816:	5f                   	pop    rdi
  320817:	5e                   	pop    rsi
  320818:	5d                   	pop    rbp
  320819:	5b                   	pop    rbx
  32081a:	c3                   	ret
