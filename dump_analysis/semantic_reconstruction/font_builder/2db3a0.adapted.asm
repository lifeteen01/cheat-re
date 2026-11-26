
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002db3a0 <.data+0x2db3a0>:
  2db3a0:	33 c0                                           	xor    eax,eax
  2db3a2:	48 89 01                                        	mov    QWORD PTR [rcx],rax
  2db3a5:	48 89 41 08                                     	mov    QWORD PTR [rcx+0x8],rax
  2db3a9:	48 8b c1                                        	mov    rax,rcx
  2db3ac:	c3                                              	ret
  2db3ad:	cc                                              	int3
  2db3ae:	cc                                              	int3
  2db3af:	cc                                              	int3
  2db3b0:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2db3b5:	57                                              	push   rdi
  2db3b6:	48 83 ec 20                                     	sub    rsp,0x20
  2db3ba:	48 8b da                                        	mov    rbx,rdx
  2db3bd:	48 8b f9                                        	mov    rdi,rcx
  2db3c0:	e8 bf 0e ff ff                                  	call   0x2cc284
  2db3c5:	8b 43 20                                        	mov    eax,DWORD PTR [rbx+0x20]
  2db3c8:	89 47 20                                        	mov    DWORD PTR [rdi+0x20],eax
  2db3cb:	f2 0f 10 43 24                                  	movsd  xmm0,QWORD PTR [rbx+0x24]
  2db3d0:	f2 0f 11 47 24                                  	movsd  QWORD PTR [rdi+0x24],xmm0
  2db3d5:	8a 43 2c                                        	mov    al,BYTE PTR [rbx+0x2c]
  2db3d8:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2db3dd:	88 47 2c                                        	mov    BYTE PTR [rdi+0x2c],al
