
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d07d4.audit.bin:     file format binary


Disassembly of section .data:

00000000002d07d4 <.data>:
  2d07d4:	40 53                                           	rex push rbx
  2d07d6:	55                                              	push   rbp
  2d07d7:	56                                              	push   rsi
  2d07d8:	57                                              	push   rdi
  2d07d9:	41 56                                           	push   r14
  2d07db:	48 83 ec 20                                     	sub    rsp,0x20
  2d07df:	48 8b 41 30                                     	mov    rax,QWORD PTR [rcx+0x30]
  2d07e3:	48 8b f1                                        	mov    rsi,rcx
  2d07e6:	48 8b 69 18                                     	mov    rbp,QWORD PTR [rcx+0x18]
  2d07ea:	49 23 c1                                        	and    rax,r9
  2d07ed:	48 8b 49 08                                     	mov    rcx,QWORD PTR [rcx+0x8]
  2d07f1:	48 03 c0                                        	add    rax,rax
  2d07f4:	4d 8b f0                                        	mov    r14,r8
  2d07f7:	48 8b da                                        	mov    rbx,rdx
  2d07fa:	48 8b 7c c5 08                                  	mov    rdi,QWORD PTR [rbp+rax*8+0x8]
  2d07ff:	48 3b f9                                        	cmp    rdi,rcx
  2d0802:	75 0d                                           	jne    0x2d0811
  2d0804:	48 89 0a                                        	mov    QWORD PTR [rdx],rcx
  2d0807:	48 c7 42 08 00 00 00 00                         	mov    QWORD PTR [rdx+0x8],0x0
  2d080f:	eb 35                                           	jmp    0x2d0846
  2d0811:	48 8b 6c c5 00                                  	mov    rbp,QWORD PTR [rbp+rax*8+0x0]
  2d0816:	eb 09                                           	jmp    0x2d0821
  2d0818:	48 3b fd                                        	cmp    rdi,rbp
  2d081b:	74 37                                           	je     0x2d0854
  2d081d:	48 8b 7f 08                                     	mov    rdi,QWORD PTR [rdi+0x8]
  2d0821:	48 8d 4f 10                                     	lea    rcx,[rdi+0x10]
  2d0825:	e8 7a ab ff ff                                  	call   0x2cb3a4
  2d082a:	4c 8b c0                                        	mov    r8,rax
  2d082d:	49 8b d6                                        	mov    rdx,r14
  2d0830:	48 8b ce                                        	mov    rcx,rsi
  2d0833:	e8 b4 e8 ff ff                                  	call   0x2cf0ec
  2d0838:	84 c0                                           	test   al,al
  2d083a:	75 dc                                           	jne    0x2d0818
  2d083c:	48 8b 07                                        	mov    rax,QWORD PTR [rdi]
  2d083f:	48 89 03                                        	mov    QWORD PTR [rbx],rax
  2d0842:	48 89 7b 08                                     	mov    QWORD PTR [rbx+0x8],rdi
  2d0846:	48 8b c3                                        	mov    rax,rbx
  2d0849:	48 83 c4 20                                     	add    rsp,0x20
  2d084d:	41 5e                                           	pop    r14
  2d084f:	5f                                              	pop    rdi
  2d0850:	5e                                              	pop    rsi
  2d0851:	5d                                              	pop    rbp
  2d0852:	5b                                              	pop    rbx
  2d0853:	c3                                              	ret
  2d0854:	48 89 3b                                        	mov    QWORD PTR [rbx],rdi
  2d0857:	48 c7 43 08 00 00 00 00                         	mov    QWORD PTR [rbx+0x8],0x0
  2d085f:	eb e5                                           	jmp    0x2d0846
