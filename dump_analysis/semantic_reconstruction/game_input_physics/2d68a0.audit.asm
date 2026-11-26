
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d68a0.audit.bin:     file format binary


Disassembly of section .data:

00000000002d68a0 <.data>:
  2d68a0:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  2d68a5:	53                                              	push   rbx
  2d68a6:	55                                              	push   rbp
  2d68a7:	56                                              	push   rsi
  2d68a8:	57                                              	push   rdi
  2d68a9:	48 83 ec 28                                     	sub    rsp,0x28
  2d68ad:	48 8b f2                                        	mov    rsi,rdx
  2d68b0:	48 8b d9                                        	mov    rbx,rcx
  2d68b3:	e8 ec 4a ff ff                                  	call   0x2cb3a4
  2d68b8:	48 8b cb                                        	mov    rcx,rbx
  2d68bb:	48 8b e8                                        	mov    rbp,rax
  2d68be:	e8 05 2b 00 00                                  	call   0x2d93c8
  2d68c3:	48 3b c6                                        	cmp    rax,rsi
  2d68c6:	73 47                                           	jae    0x2d690f
  2d68c8:	48 8b d6                                        	mov    rdx,rsi
  2d68cb:	48 8b cd                                        	mov    rcx,rbp
  2d68ce:	e8 e9 12 00 00                                  	call   0x2d7bbc
  2d68d3:	48 8b cb                                        	mov    rcx,rbx
  2d68d6:	48 8b f8                                        	mov    rdi,rax
  2d68d9:	e8 da 15 00 00                                  	call   0x2d7eb8
  2d68de:	48 85 c0                                        	test   rax,rax
  2d68e1:	74 0e                                           	je     0x2d68f1
  2d68e3:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
  2d68e6:	4c 8b c0                                        	mov    r8,rax
  2d68e9:	48 8b cd                                        	mov    rcx,rbp
  2d68ec:	e8 1f 1b 00 00                                  	call   0x2d8410
  2d68f1:	48 8d 14 f7                                     	lea    rdx,[rdi+rsi*8]
  2d68f5:	48 89 3b                                        	mov    QWORD PTR [rbx],rdi
  2d68f8:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2d68fd:	48 89 53 08                                     	mov    QWORD PTR [rbx+0x8],rdx
  2d6901:	48 8b cf                                        	mov    rcx,rdi
  2d6904:	48 89 53 10                                     	mov    QWORD PTR [rbx+0x10],rdx
  2d6908:	e8 ff d5 ff ff                                  	call   0x2d3f0c
  2d690d:	eb 11                                           	jmp    0x2d6920
  2d690f:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  2d6913:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2d6918:	48 8b 0b                                        	mov    rcx,QWORD PTR [rbx]
  2d691b:	e8 84 c1 ff ff                                  	call   0x2d2aa4
  2d6920:	48 83 c4 28                                     	add    rsp,0x28
  2d6924:	5f                                              	pop    rdi
  2d6925:	5e                                              	pop    rsi
  2d6926:	5d                                              	pop    rbp
  2d6927:	5b                                              	pop    rbx
  2d6928:	c3                                              	ret
