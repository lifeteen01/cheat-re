
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4520 <.data+0x3a4520>:
  3a4520:	48 63 41 18          	movsxd rax,DWORD PTR [rcx+0x18]
  3a4524:	44 0f b7 c2          	movzx  r8d,dx
  3a4528:	4c 3b c0             	cmp    r8,rax
  3a452b:	73 22                	jae    0x3a454f
  3a452d:	48 8b 41 20          	mov    rax,QWORD PTR [rcx+0x20]
  3a4531:	ba ff ff 00 00       	mov    edx,0xffff
  3a4536:	66 42 39 14 40       	cmp    WORD PTR [rax+r8*2],dx
  3a453b:	74 12                	je     0x3a454f
  3a453d:	42 0f b7 04 40       	movzx  eax,WORD PTR [rax+r8*2]
  3a4542:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  3a4546:	48 8b 41 30          	mov    rax,QWORD PTR [rcx+0x30]
  3a454a:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  3a454e:	c3                   	ret
  3a454f:	48 8b 41 38          	mov    rax,QWORD PTR [rcx+0x38]
  3a4553:	c3                   	ret
