
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab5f0 <.data+0x3ab5f0>:
  3ab5f0:	40 53                                           	rex push rbx
  3ab5f2:	55                                              	push   rbp
  3ab5f3:	56                                              	push   rsi
  3ab5f4:	57                                              	push   rdi
  3ab5f5:	48 83 ec 28                                     	sub    rsp,0x28
  3ab5f9:	48 8b da                                        	mov    rbx,rdx
  3ab5fc:	48 8b f1                                        	mov    rsi,rcx
  3ab5ff:	48 8b cb                                        	mov    rcx,rbx
  3ab602:	33 d2                                           	xor    edx,edx
  3ab604:	41 8b e8                                        	mov    ebp,r8d
  3ab607:	e8 d8 f9 ff ff                                  	call   0x3aafe4
  3ab60c:	eb 3d                                           	jmp    0x3ab64b
  3ab60e:	e8 a1 fb ff ff                                  	call   0x3ab1b4
  3ab613:	48 8b cb                                        	mov    rcx,rbx
  3ab616:	e8 59 f9 ff ff                                  	call   0x3aaf74
  3ab61b:	48 8b cb                                        	mov    rcx,rbx
  3ab61e:	3c 1c                                           	cmp    al,0x1c
  3ab620:	73 ec                                           	jae    0x3ab60e
  3ab622:	44 8b 53 08                                     	mov    r10d,DWORD PTR [rbx+0x8]
  3ab626:	e8 f1 f8 ff ff                                  	call   0x3aaf1c
  3ab62b:	3c 0c                                           	cmp    al,0xc
  3ab62d:	75 13                                           	jne    0x3ab642
  3ab62f:	48 8b cb                                        	mov    rcx,rbx
  3ab632:	e8 e5 f8 ff ff                                  	call   0x3aaf1c
  3ab637:	44 0f b6 c8                                     	movzx  r9d,al
  3ab63b:	41 0f ba e9 08                                  	bts    r9d,0x8
  3ab640:	eb 04                                           	jmp    0x3ab646
  3ab642:	44 0f b6 c8                                     	movzx  r9d,al
  3ab646:	44 3b cd                                        	cmp    r9d,ebp
  3ab649:	74 25                                           	je     0x3ab670
  3ab64b:	8b 7b 08                                        	mov    edi,DWORD PTR [rbx+0x8]
  3ab64e:	3b 7b 0c                                        	cmp    edi,DWORD PTR [rbx+0xc]
  3ab651:	7c c0                                           	jl     0x3ab613
  3ab653:	45 33 c9                                        	xor    r9d,r9d
  3ab656:	45 33 c0                                        	xor    r8d,r8d
  3ab659:	48 8b d3                                        	mov    rdx,rbx
  3ab65c:	48 8b ce                                        	mov    rcx,rsi
  3ab65f:	e8 28 f9 ff ff                                  	call   0x3aaf8c
  3ab664:	48 8b c6                                        	mov    rax,rsi
  3ab667:	48 83 c4 28                                     	add    rsp,0x28
  3ab66b:	5f                                              	pop    rdi
  3ab66c:	5e                                              	pop    rsi
  3ab66d:	5d                                              	pop    rbp
  3ab66e:	5b                                              	pop    rbx
  3ab66f:	c3                                              	ret
  3ab670:	44 2b d7                                        	sub    r10d,edi
  3ab673:	44 8b c7                                        	mov    r8d,edi
  3ab676:	45 8b ca                                        	mov    r9d,r10d
  3ab679:	eb de                                           	jmp    0x3ab659
