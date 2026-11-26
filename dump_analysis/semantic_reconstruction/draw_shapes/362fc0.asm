
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000362fc0 <.data+0x362fc0>:
  362fc0:	e9 53 59 06 00                                  	jmp    0x3c8918
  362fc5:	cc                                              	int3
  362fc6:	cc                                              	int3
  362fc7:	cc                                              	int3
  362fc8:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  362fcd:	57                                              	push   rdi
  362fce:	48 83 ec 20                                     	sub    rsp,0x20
  362fd2:	48 83 79 10 00                                  	cmp    QWORD PTR [rcx+0x10],0x0
  362fd7:	48 8b d9                                        	mov    rbx,rcx
  362fda:	74 49                                           	je     0x363025
  362fdc:	e8 2f 4e f7 ff                                  	call   0x2d7e10
  362fe1:	48 c1 e8 03                                     	shr    rax,0x3
  362fe5:	48 3b 43 10                                     	cmp    rax,QWORD PTR [rbx+0x10]
  362fe9:	76 14                                           	jbe    0x362fff
  362feb:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
  362fef:	48 8b cb                                        	mov    rcx,rbx
  362ff2:	4c 8b c2                                        	mov    r8,rdx
  362ff5:	48 8b 12                                        	mov    rdx,QWORD PTR [rdx]
  362ff8:	e8 d3 fd ff ff                                  	call   0x362dd0
  362ffd:	eb 26                                           	jmp    0x363025
  362fff:	48 8d 4b 08                                     	lea    rcx,[rbx+0x8]
  363003:	e8 28 7c fb ff                                  	call   0x31ac30
  363008:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  36300d:	48 8b cb                                        	mov    rcx,rbx
  363010:	e8 57 49 f7 ff                                  	call   0x2d796c
  363015:	48 8b 53 20                                     	mov    rdx,QWORD PTR [rbx+0x20]
  363019:	4c 8b c0                                        	mov    r8,rax
  36301c:	48 8b 4b 18                                     	mov    rcx,QWORD PTR [rbx+0x18]
  363020:	e8 7f fa f6 ff                                  	call   0x2d2aa4
  363025:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  36302a:	48 83 c4 20                                     	add    rsp,0x20
  36302e:	5f                                              	pop    rdi
  36302f:	c3                                              	ret
  363030:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  363035:	57                                              	push   rdi
  363036:	48 83 ec 20                                     	sub    rsp,0x20
  36303a:	48 8b 39                                        	mov    rdi,QWORD PTR [rcx]
  36303d:	48 8b d9                                        	mov    rbx,rcx
