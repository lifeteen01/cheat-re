
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039896c <.data+0x39896c>:
  39896c:	40 53                                           	rex push rbx
  39896e:	55                                              	push   rbp
  39896f:	56                                              	push   rsi
  398970:	57                                              	push   rdi
  398971:	41 56                                           	push   r14
  398973:	48 83 ec 20                                     	sub    rsp,0x20
  398977:	48 8b 05 aa d1 06 00                            	mov    rax,QWORD PTR [rip+0x6d1aa]        # 0x405b28
  39897e:	8b d9                                           	mov    ebx,ecx
  398980:	48 8d b0 60 48 00 00                            	lea    rsi,[rax+0x4860]
  398987:	39 0e                                           	cmp    DWORD PTR [rsi],ecx
  398989:	0f 4c 1e                                        	cmovl  ebx,DWORD PTR [rsi]
  39898c:	85 db                                           	test   ebx,ebx
  39898e:	7e 5c                                           	jle    0x3989ec
  398990:	4c 8d b0 d0 37 00 00                            	lea    r14,[rax+0x37d0]
  398997:	48 8b ce                                        	mov    rcx,rsi
  39899a:	e8 bd 59 00 00                                  	call   0x39e35c
  39899f:	48 8b f8                                        	mov    rdi,rax
  3989a2:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  3989a4:	e8 0b a3 ff ff                                  	call   0x392cb4
  3989a9:	49 8b d6                                        	mov    rdx,r14
  3989ac:	48 8b c8                                        	mov    rcx,rax
  3989af:	48 8b e8                                        	mov    rbp,rax
  3989b2:	e8 0d a4 ff ff                                  	call   0x392dc4
  3989b7:	83 7d 00 08                                     	cmp    DWORD PTR [rbp+0x0],0x8
  3989bb:	48 8b d0                                        	mov    rdx,rax
  3989be:	75 1e                                           	jne    0x3989de
  3989c0:	83 7d 04 01                                     	cmp    DWORD PTR [rbp+0x4],0x1
  3989c4:	75 07                                           	jne    0x3989cd
  3989c6:	8b 4f 04                                        	mov    ecx,DWORD PTR [rdi+0x4]
  3989c9:	89 08                                           	mov    DWORD PTR [rax],ecx
  3989cb:	eb 11                                           	jmp    0x3989de
  3989cd:	83 7d 04 02                                     	cmp    DWORD PTR [rbp+0x4],0x2
  3989d1:	75 0b                                           	jne    0x3989de
  3989d3:	8b 47 04                                        	mov    eax,DWORD PTR [rdi+0x4]
  3989d6:	89 02                                           	mov    DWORD PTR [rdx],eax
  3989d8:	8b 47 08                                        	mov    eax,DWORD PTR [rdi+0x8]
  3989db:	89 42 04                                        	mov    DWORD PTR [rdx+0x4],eax
  3989de:	48 8b ce                                        	mov    rcx,rsi
  3989e1:	e8 ba 64 00 00                                  	call   0x39eea0
  3989e6:	ff cb                                           	dec    ebx
  3989e8:	85 db                                           	test   ebx,ebx
  3989ea:	7f ab                                           	jg     0x398997
  3989ec:	48 83 c4 20                                     	add    rsp,0x20
  3989f0:	41 5e                                           	pop    r14
  3989f2:	5f                                              	pop    rdi
  3989f3:	5e                                              	pop    rsi
  3989f4:	5d                                              	pop    rbp
  3989f5:	5b                                              	pop    rbx
  3989f6:	c3                                              	ret
