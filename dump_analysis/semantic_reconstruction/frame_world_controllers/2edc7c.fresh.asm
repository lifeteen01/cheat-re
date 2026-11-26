
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2edc7c.bin:     file format binary


Disassembly of section .data:

00000000002edc7c <.data>:
  2edc7c:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2edc81:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  2edc86:	53                   	push   rbx
  2edc87:	56                   	push   rsi
  2edc88:	57                   	push   rdi
  2edc89:	48 83 ec 20          	sub    rsp,0x20
  2edc8d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2edc92:	e8 41 09 fe ff       	call   0x2ce5d8
  2edc97:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2edc9c:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  2edca1:	48 8b d8             	mov    rbx,rax
  2edca4:	e8 2f 09 fe ff       	call   0x2ce5d8
  2edca9:	48 8b f0             	mov    rsi,rax
  2edcac:	48 3b d8             	cmp    rbx,rax
  2edcaf:	74 25                	je     0x2edcd6
  2edcb1:	48 8b fb             	mov    rdi,rbx
  2edcb4:	48 8b d3             	mov    rdx,rbx
  2edcb7:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2edcbc:	e8 27 cb ff ff       	call   0x2ea7e8
  2edcc1:	84 c0                	test   al,al
  2edcc3:	75 11                	jne    0x2edcd6
  2edcc5:	48 8d 5f 40          	lea    rbx,[rdi+0x40]
  2edcc9:	48 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],rbx
  2edcce:	48 8b fb             	mov    rdi,rbx
  2edcd1:	48 3b de             	cmp    rbx,rsi
  2edcd4:	75 de                	jne    0x2edcb4
  2edcd6:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  2edcdb:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2edce0:	e8 07 3b fe ff       	call   0x2d17ec
  2edce5:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  2edcea:	48 83 c4 20          	add    rsp,0x20
  2edcee:	5f                   	pop    rdi
  2edcef:	5e                   	pop    rsi
  2edcf0:	5b                   	pop    rbx
  2edcf1:	c3                   	ret
