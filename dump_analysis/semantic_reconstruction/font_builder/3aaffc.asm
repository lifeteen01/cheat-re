
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaffc <.data+0x3aaffc>:
  3aaffc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3ab001:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3ab006:	57                   	push   rdi
  3ab007:	48 83 ec 20          	sub    rsp,0x20
  3ab00b:	8b 72 08             	mov    esi,DWORD PTR [rdx+0x8]
  3ab00e:	48 8b da             	mov    rbx,rdx
  3ab011:	48 8b f9             	mov    rdi,rcx
  3ab014:	ba 02 00 00 00       	mov    edx,0x2
  3ab019:	48 8b cb             	mov    rcx,rbx
  3ab01c:	e8 1b ff ff ff       	call   0x3aaf3c
  3ab021:	44 8b d0             	mov    r10d,eax
  3ab024:	85 c0                	test   eax,eax
  3ab026:	74 2e                	je     0x3ab056
  3ab028:	48 8b cb             	mov    rcx,rbx
  3ab02b:	e8 ec fe ff ff       	call   0x3aaf1c
  3ab030:	44 0f b6 c8          	movzx  r9d,al
  3ab034:	48 8b cb             	mov    rcx,rbx
  3ab037:	41 8b d1             	mov    edx,r9d
  3ab03a:	41 0f af d2          	imul   edx,r10d
  3ab03e:	e8 b1 ff ff ff       	call   0x3aaff4
  3ab043:	41 8b d1             	mov    edx,r9d
  3ab046:	e8 f1 fe ff ff       	call   0x3aaf3c
  3ab04b:	48 8b cb             	mov    rcx,rbx
  3ab04e:	8d 50 ff             	lea    edx,[rax-0x1]
  3ab051:	e8 9e ff ff ff       	call   0x3aaff4
  3ab056:	44 8b 4b 08          	mov    r9d,DWORD PTR [rbx+0x8]
  3ab05a:	44 8b c6             	mov    r8d,esi
  3ab05d:	44 2b ce             	sub    r9d,esi
  3ab060:	48 8b d3             	mov    rdx,rbx
  3ab063:	48 8b cf             	mov    rcx,rdi
  3ab066:	e8 21 ff ff ff       	call   0x3aaf8c
  3ab06b:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3ab070:	48 8b c7             	mov    rax,rdi
  3ab073:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  3ab078:	48 83 c4 20          	add    rsp,0x20
  3ab07c:	5f                   	pop    rdi
  3ab07d:	c3                   	ret
