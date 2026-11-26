
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9430 <.data+0x3a9430>:
  3a9430:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a9435:	57                                              	push   rdi
  3a9436:	48 83 ec 20                                     	sub    rsp,0x20
  3a943a:	48 8b fa                                        	mov    rdi,rdx
  3a943d:	48 8b d9                                        	mov    rbx,rcx
  3a9440:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  3a9442:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  3a9445:	75 11                                           	jne    0x3a9458
  3a9447:	ff c2                                           	inc    edx
  3a9449:	e8 ae 9a fb ff                                  	call   0x362efc
  3a944e:	8b d0                                           	mov    edx,eax
  3a9450:	48 8b cb                                        	mov    rcx,rbx
  3a9453:	e8 64 13 fd ff                                  	call   0x37a7bc
  3a9458:	48 63 13                                        	movsxd rdx,DWORD PTR [rbx]
  3a945b:	48 8b 43 08                                     	mov    rax,QWORD PTR [rbx+0x8]
  3a945f:	0f 10 07                                        	movups xmm0,XMMWORD PTR [rdi]
  3a9462:	48 c1 e2 05                                     	shl    rdx,0x5
  3a9466:	0f 11 04 02                                     	movups XMMWORD PTR [rdx+rax*1],xmm0
  3a946a:	0f 10 4f 10                                     	movups xmm1,XMMWORD PTR [rdi+0x10]
  3a946e:	0f 11 4c 02 10                                  	movups XMMWORD PTR [rdx+rax*1+0x10],xmm1
  3a9473:	ff 03                                           	inc    DWORD PTR [rbx]
  3a9475:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3a947a:	48 83 c4 20                                     	add    rsp,0x20
  3a947e:	5f                                              	pop    rdi
  3a947f:	c3                                              	ret
