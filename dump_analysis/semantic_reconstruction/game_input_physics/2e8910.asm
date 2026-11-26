
dump_analysis/semantic_reconstruction/game_input_physics/2e8910.bin:     file format binary


Disassembly of section .data:

00000000002e8910 <.data>:
  2e8910:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  2e8915:	89 4c 24 08                                     	mov    DWORD PTR [rsp+0x8],ecx
  2e8919:	57                                              	push   rdi
  2e891a:	48 83 ec 20                                     	sub    rsp,0x20
  2e891e:	8a da                                           	mov    bl,dl
  2e8920:	e8 1f de ff ff                                  	call   0x2e6744
  2e8925:	84 c0                                           	test   al,al
  2e8927:	74 0b                                           	je     0x2e8934
  2e8929:	84 db                                           	test   bl,bl
  2e892b:	74 07                                           	je     0x2e8934
  2e892d:	32 c0                                           	xor    al,al
  2e892f:	e9 a2 00 00 00                                  	jmp    0x2e89d6
  2e8934:	8b 05 b6 c3 0f 00                               	mov    eax,DWORD PTR [rip+0xfc3b6]        # 0x3e4cf0
  2e893a:	bb 01 00 00 00                                  	mov    ebx,0x1
  2e893f:	84 c3                                           	test   bl,al
  2e8941:	75 20                                           	jne    0x2e8963
  2e8943:	0b c3                                           	or     eax,ebx
  2e8945:	48 8d 0d 64 c3 0f 00                            	lea    rcx,[rip+0xfc364]        # 0x3e4cb0
  2e894c:	89 05 9e c3 0f 00                               	mov    DWORD PTR [rip+0xfc39e],eax        # 0x3e4cf0
  2e8952:	e8 79 c4 ff ff                                  	call   0x2e4dd0
  2e8957:	48 8d 0d 5e 62 0e 00                            	lea    rcx,[rip+0xe625e]        # 0x3cebbc
  2e895e:	e8 c9 49 fe ff                                  	call   0x2cd32c
  2e8963:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [rsp+0x30]
  2e8967:	33 d2                                           	xor    edx,edx
  2e8969:	e8 de d4 ff ff                                  	call   0x2e5e4c
  2e896e:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  2e8973:	40 8a f8                                        	mov    dil,al
  2e8976:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e897b:	48 8d 0d 2e c3 0f 00                            	lea    rcx,[rip+0xfc32e]        # 0x3e4cb0
  2e8982:	e8 f9 fe fe ff                                  	call   0x2d8880
  2e8987:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  2e898c:	48 8d 0d 1d c3 0f 00                            	lea    rcx,[rip+0xfc31d]        # 0x3e4cb0
  2e8993:	e8 20 fd fe ff                                  	call   0x2d86b8
  2e8998:	48 8b d0                                        	mov    rdx,rax
  2e899b:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e89a0:	e8 8f 3b fe ff                                  	call   0x2cc534
  2e89a5:	84 c0                                           	test   al,al
  2e89a7:	75 10                                           	jne    0x2e89b9
  2e89a9:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e89ae:	e8 ed c3 fe ff                                  	call   0x2d4da0
  2e89b3:	80 78 04 00                                     	cmp    BYTE PTR [rax+0x4],0x0
  2e89b7:	75 05                                           	jne    0x2e89be
  2e89b9:	40 84 ff                                        	test   dil,dil
  2e89bc:	75 02                                           	jne    0x2e89c0
  2e89be:	32 db                                           	xor    bl,bl
  2e89c0:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e89c5:	48 8d 0d e4 c2 0f 00                            	lea    rcx,[rip+0xfc2e4]        # 0x3e4cb0
  2e89cc:	e8 27 c7 ff ff                                  	call   0x2e50f8
  2e89d1:	40 88 38                                        	mov    BYTE PTR [rax],dil
  2e89d4:	8a c3                                           	mov    al,bl
  2e89d6:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  2e89db:	48 83 c4 20                                     	add    rsp,0x20
  2e89df:	5f                                              	pop    rdi
  2e89e0:	c3                                              	ret
