
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2ef634.bin:     file format binary


Disassembly of section .data:

00000000002ef634 <.data>:
  2ef634:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2ef639:	57                   	push   rdi
  2ef63a:	48 83 ec 20          	sub    rsp,0x20
  2ef63e:	8a 02                	mov    al,BYTE PTR [rdx]
  2ef640:	48 8b da             	mov    rbx,rdx
  2ef643:	88 01                	mov    BYTE PTR [rcx],al
  2ef645:	48 8b f9             	mov    rdi,rcx
  2ef648:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
  2ef64c:	48 83 c2 10          	add    rdx,0x10
  2ef650:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
  2ef654:	48 83 c1 10          	add    rcx,0x10
  2ef658:	e8 87 55 fe ff       	call   0x2d4be4
  2ef65d:	8b 43 30             	mov    eax,DWORD PTR [rbx+0x30]
  2ef660:	89 47 30             	mov    DWORD PTR [rdi+0x30],eax
  2ef663:	48 8b 43 38          	mov    rax,QWORD PTR [rbx+0x38]
  2ef667:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2ef66c:	48 89 47 38          	mov    QWORD PTR [rdi+0x38],rax
  2ef670:	48 8b c7             	mov    rax,rdi
  2ef673:	48 83 c4 20          	add    rsp,0x20
  2ef677:	5f                   	pop    rdi
  2ef678:	c3                   	ret
