
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4abc <.data+0x3a4abc>:
  3a4abc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3a4ac1:	57                   	push   rdi
  3a4ac2:	48 83 ec 20          	sub    rsp,0x20
  3a4ac6:	48 8d 79 18          	lea    rdi,[rcx+0x18]
  3a4aca:	8b da                	mov    ebx,edx
  3a4acc:	3b 17                	cmp    edx,DWORD PTR [rdi]
  3a4ace:	7e 2b                	jle    0x3a4afb
  3a4ad0:	4c 8d 44 24 38       	lea    r8,[rsp+0x38]
  3a4ad5:	c7 44 24 38 00 00 80 bf 	mov    DWORD PTR [rsp+0x38],0xbf800000
  3a4add:	e8 d6 4c 00 00       	call   0x3a97b8
  3a4ae2:	b8 ff ff 00 00       	mov    eax,0xffff
  3a4ae7:	4c 8d 44 24 38       	lea    r8,[rsp+0x38]
  3a4aec:	8b d3                	mov    edx,ebx
  3a4aee:	66 89 44 24 38       	mov    WORD PTR [rsp+0x38],ax
  3a4af3:	48 8b cf             	mov    rcx,rdi
  3a4af6:	e8 d1 4b 00 00       	call   0x3a96cc
  3a4afb:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3a4b00:	48 83 c4 20          	add    rsp,0x20
  3a4b04:	5f                   	pop    rdi
  3a4b05:	c3                   	ret
