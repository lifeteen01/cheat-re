
dump_analysis/semantic_reconstruction/movement_main_helpers/329754.bin:     file format binary


Disassembly of section .data:

0000000000329754 <.data>:
  329754:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  329759:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  32975e:	57                                              	push   rdi
  32975f:	48 83 ec 20                                     	sub    rsp,0x20
  329763:	41 8a f0                                        	mov    sil,r8b
  329766:	40 8a fa                                        	mov    dil,dl
  329769:	48 8b d9                                        	mov    rbx,rcx
  32976c:	e8 d3 cf fb ff                                  	call   0x2e6744
  329771:	84 c0                                           	test   al,al
  329773:	74 09                                           	je     0x32977e
  329775:	40 84 f6                                        	test   sil,sil
  329778:	74 04                                           	je     0x32977e
  32977a:	32 c0                                           	xor    al,al
  32977c:	eb 60                                           	jmp    0x3297de
  32977e:	8b 0b                                           	mov    ecx,DWORD PTR [rbx]
  329780:	33 d2                                           	xor    edx,edx
  329782:	e8 c5 c6 fb ff                                  	call   0x2e5e4c
  329787:	8b 53 04                                        	mov    edx,DWORD PTR [rbx+0x4]
  32978a:	b9 01 00 00 00                                  	mov    ecx,0x1
  32978f:	83 fa 02                                        	cmp    edx,0x2
  329792:	75 05                                           	jne    0x329799
  329794:	40 84 ff                                        	test   dil,dil
  329797:	75 22                                           	jne    0x3297bb
  329799:	84 c0                                           	test   al,al
  32979b:	74 23                                           	je     0x3297c0
  32979d:	40 84 ff                                        	test   dil,dil
  3297a0:	74 1e                                           	je     0x3297c0
  3297a2:	3b d1                                           	cmp    edx,ecx
  3297a4:	75 15                                           	jne    0x3297bb
  3297a6:	80 7b 08 00                                     	cmp    BYTE PTR [rbx+0x8],0x0
  3297aa:	75 28                                           	jne    0x3297d4
  3297ac:	80 7b 09 00                                     	cmp    BYTE PTR [rbx+0x9],0x0
  3297b0:	88 4b 08                                        	mov    BYTE PTR [rbx+0x8],cl
  3297b3:	0f 94 c0                                        	sete   al
  3297b6:	88 43 09                                        	mov    BYTE PTR [rbx+0x9],al
  3297b9:	eb 21                                           	jmp    0x3297dc
  3297bb:	88 4b 09                                        	mov    BYTE PTR [rbx+0x9],cl
  3297be:	eb 1c                                           	jmp    0x3297dc
  3297c0:	85 d2                                           	test   edx,edx
  3297c2:	75 03                                           	jne    0x3297c7
  3297c4:	88 53 09                                        	mov    BYTE PTR [rbx+0x9],dl
  3297c7:	40 84 ff                                        	test   dil,dil
  3297ca:	75 04                                           	jne    0x3297d0
  3297cc:	40 88 7b 09                                     	mov    BYTE PTR [rbx+0x9],dil
  3297d0:	c6 43 08 00                                     	mov    BYTE PTR [rbx+0x8],0x0
  3297d4:	80 7b 09 00                                     	cmp    BYTE PTR [rbx+0x9],0x0
  3297d8:	75 02                                           	jne    0x3297dc
  3297da:	32 c9                                           	xor    cl,cl
  3297dc:	8a c1                                           	mov    al,cl
  3297de:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3297e3:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3297e8:	48 83 c4 20                                     	add    rsp,0x20
  3297ec:	5f                                              	pop    rdi
  3297ed:	c3                                              	ret
