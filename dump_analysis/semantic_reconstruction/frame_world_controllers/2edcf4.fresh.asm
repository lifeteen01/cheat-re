
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2edcf4.bin:     file format binary


Disassembly of section .data:

00000000002edcf4 <.data>:
  2edcf4:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2edcf9:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  2edcfe:	53                   	push   rbx
  2edcff:	56                   	push   rsi
  2edd00:	57                   	push   rdi
  2edd01:	48 83 ec 20          	sub    rsp,0x20
  2edd05:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2edd0a:	e8 c9 08 fe ff       	call   0x2ce5d8
  2edd0f:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2edd14:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  2edd19:	48 8b d8             	mov    rbx,rax
  2edd1c:	e8 b7 08 fe ff       	call   0x2ce5d8
  2edd21:	48 8b f0             	mov    rsi,rax
  2edd24:	48 3b d8             	cmp    rbx,rax
  2edd27:	74 25                	je     0x2edd4e
  2edd29:	48 8b fb             	mov    rdi,rbx
  2edd2c:	48 8b d3             	mov    rdx,rbx
  2edd2f:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2edd34:	e8 c3 ca ff ff       	call   0x2ea7fc
  2edd39:	84 c0                	test   al,al
  2edd3b:	75 11                	jne    0x2edd4e
  2edd3d:	48 8d 5f 10          	lea    rbx,[rdi+0x10]
  2edd41:	48 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],rbx
  2edd46:	48 8b fb             	mov    rdi,rbx
  2edd49:	48 3b de             	cmp    rbx,rsi
  2edd4c:	75 de                	jne    0x2edd2c
  2edd4e:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  2edd53:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2edd58:	e8 8f 3a fe ff       	call   0x2d17ec
  2edd5d:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  2edd62:	48 83 c4 20          	add    rsp,0x20
  2edd66:	5f                   	pop    rdi
  2edd67:	5e                   	pop    rsi
  2edd68:	5b                   	pop    rbx
  2edd69:	c3                   	ret
