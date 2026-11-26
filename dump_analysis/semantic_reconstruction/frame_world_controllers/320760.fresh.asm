
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/320760.bin:     file format binary


Disassembly of section .data:

0000000000320760 <.data>:
  320760:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  320765:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  32076a:	57                   	push   rdi
  32076b:	48 83 ec 20          	sub    rsp,0x20
  32076f:	49 8b d8             	mov    rbx,r8
  320772:	48 8b f2             	mov    rsi,rdx
  320775:	48 8b f9             	mov    rdi,rcx
  320778:	4d 3b c1             	cmp    r8,r9
  32077b:	74 10                	je     0x32078d
  32077d:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  320781:	49 8b c9             	mov    rcx,r9
  320784:	e8 9b bb fc ff       	call   0x2ec324
  320789:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  32078d:	48 8b cf             	mov    rcx,rdi
  320790:	e8 0f ac fa ff       	call   0x2cb3a4
  320795:	4c 8b c0             	mov    r8,rax
  320798:	48 8b d3             	mov    rdx,rbx
  32079b:	48 8b ce             	mov    rcx,rsi
  32079e:	e8 3d 38 fb ff       	call   0x2d3fe0
  3207a3:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3207a8:	48 8b c6             	mov    rax,rsi
  3207ab:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  3207b0:	48 83 c4 20          	add    rsp,0x20
  3207b4:	5f                   	pop    rdi
  3207b5:	c3                   	ret
