
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a65c4 <.data+0x3a65c4>:
  3a65c4:	48 89 5c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbx
  3a65c9:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  3a65ce:	55                                              	push   rbp
  3a65cf:	56                                              	push   rsi
  3a65d0:	57                                              	push   rdi
  3a65d1:	41 54                                           	push   r12
  3a65d3:	41 55                                           	push   r13
  3a65d5:	41 56                                           	push   r14
  3a65d7:	41 57                                           	push   r15
  3a65d9:	48 83 ec 20                                     	sub    rsp,0x20
  3a65dd:	83 79 04 01                                     	cmp    DWORD PTR [rcx+0x4],0x1
  3a65e1:	48 8b fa                                        	mov    rdi,rdx
  3a65e4:	48 8b e9                                        	mov    rbp,rcx
  3a65e7:	0f 8e 4a 02 00 00                               	jle    0x3a6837
  3a65ed:	45 33 c0                                        	xor    r8d,r8d
  3a65f0:	e8 9f 1a 00 00                                  	call   0x3a8094
  3a65f5:	48 8b cf                                        	mov    rcx,rdi
  3a65f8:	e8 23 2c 00 00                                  	call   0x3a9220
  3a65fd:	45 33 ed                                        	xor    r13d,r13d
  3a6600:	45 33 e4                                        	xor    r12d,r12d
  3a6603:	44 89 6c 24 60                                  	mov    DWORD PTR [rsp+0x60],r13d
  3a6608:	44 39 65 04                                     	cmp    DWORD PTR [rbp+0x4],r12d
  3a660c:	7e 1f                                           	jle    0x3a662d
  3a660e:	44 39 27                                        	cmp    DWORD PTR [rdi],r12d
  3a6611:	7e 1a                                           	jle    0x3a662d
  3a6613:	48 8b cf                                        	mov    rcx,rdi
  3a6616:	e8 09 7d ff ff                                  	call   0x39e324
  3a661b:	48 8b d8                                        	mov    rbx,rax
  3a661e:	48 85 c0                                        	test   rax,rax
  3a6621:	74 0c                                           	je     0x3a662f
  3a6623:	44 8b 70 20                                     	mov    r14d,DWORD PTR [rax+0x20]
  3a6627:	44 03 70 1c                                     	add    r14d,DWORD PTR [rax+0x1c]
  3a662b:	eb 05                                           	jmp    0x3a6632
  3a662d:	33 db                                           	xor    ebx,ebx
  3a662f:	45 33 f6                                        	xor    r14d,r14d
  3a6632:	41 bf 01 00 00 00                               	mov    r15d,0x1
  3a6638:	44 39 7d 04                                     	cmp    DWORD PTR [rbp+0x4],r15d
  3a663c:	0f 8e e2 00 00 00                               	jle    0x3a6724
  3a6642:	41 8b d7                                        	mov    edx,r15d
  3a6645:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a6649:	e8 4e 55 fe ff                                  	call   0x38bb9c
  3a664e:	48 8b f0                                        	mov    rsi,rax
  3a6651:	83 38 00                                        	cmp    DWORD PTR [rax],0x0
  3a6654:	7e 7b                                           	jle    0x3a66d1
  3a6656:	48 8b c8                                        	mov    rcx,rax
  3a6659:	e8 c6 7c ff ff                                  	call   0x39e324
  3a665e:	83 78 20 00                                     	cmp    DWORD PTR [rax+0x20],0x0
  3a6662:	75 17                                           	jne    0x3a667b
  3a6664:	48 8b ce                                        	mov    rcx,rsi
  3a6667:	e8 b8 7c ff ff                                  	call   0x39e324
  3a666c:	48 83 78 28 00                                  	cmp    QWORD PTR [rax+0x28],0x0
  3a6671:	75 08                                           	jne    0x3a667b
  3a6673:	48 8b ce                                        	mov    rcx,rsi
  3a6676:	e8 25 88 ff ff                                  	call   0x39eea0
  3a667b:	83 3e 00                                        	cmp    DWORD PTR [rsi],0x0
  3a667e:	7e 61                                           	jle    0x3a66e1
  3a6680:	48 85 db                                        	test   rbx,rbx
  3a6683:	74 4c                                           	je     0x3a66d1
  3a6685:	33 d2                                           	xor    edx,edx
  3a6687:	48 8b ce                                        	mov    rcx,rsi
  3a668a:	e8 01 55 fe ff                                  	call   0x38bb90
  3a668f:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a6695:	48 8b d0                                        	mov    rdx,rax
  3a6698:	48 8b cb                                        	mov    rcx,rbx
  3a669b:	4c 8b e8                                        	mov    r13,rax
  3a669e:	e8 71 26 02 00                                  	call   0x3c8d14
  3a66a3:	85 c0                                           	test   eax,eax
  3a66a5:	75 25                                           	jne    0x3a66cc
  3a66a7:	48 83 7b 28 00                                  	cmp    QWORD PTR [rbx+0x28],0x0
  3a66ac:	75 1e                                           	jne    0x3a66cc
  3a66ae:	49 83 7d 28 00                                  	cmp    QWORD PTR [r13+0x28],0x0
  3a66b3:	75 17                                           	jne    0x3a66cc
  3a66b5:	41 8b 45 20                                     	mov    eax,DWORD PTR [r13+0x20]
  3a66b9:	48 8b ce                                        	mov    rcx,rsi
  3a66bc:	01 43 20                                        	add    DWORD PTR [rbx+0x20],eax
  3a66bf:	45 03 75 20                                     	add    r14d,DWORD PTR [r13+0x20]
  3a66c3:	48 8b 56 08                                     	mov    rdx,QWORD PTR [rsi+0x8]
  3a66c7:	e8 00 2d 00 00                                  	call   0x3a93cc
  3a66cc:	44 8b 6c 24 60                                  	mov    r13d,DWORD PTR [rsp+0x60]
  3a66d1:	83 3e 00                                        	cmp    DWORD PTR [rsi],0x0
  3a66d4:	7e 0b                                           	jle    0x3a66e1
  3a66d6:	48 8b ce                                        	mov    rcx,rsi
  3a66d9:	e8 46 7c ff ff                                  	call   0x39e324
  3a66de:	48 8b d8                                        	mov    rbx,rax
  3a66e1:	44 03 6e 10                                     	add    r13d,DWORD PTR [rsi+0x10]
  3a66e5:	33 d2                                           	xor    edx,edx
  3a66e7:	44 03 26                                        	add    r12d,DWORD PTR [rsi]
  3a66ea:	44 89 6c 24 60                                  	mov    DWORD PTR [rsp+0x60],r13d
  3a66ef:	39 16                                           	cmp    DWORD PTR [rsi],edx
  3a66f1:	7e 1f                                           	jle    0x3a6712
  3a66f3:	48 63 c2                                        	movsxd rax,edx
  3a66f6:	ff c2                                           	inc    edx
  3a66f8:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a66fc:	48 8b 46 08                                     	mov    rax,QWORD PTR [rsi+0x8]
  3a6700:	44 89 74 08 1c                                  	mov    DWORD PTR [rax+rcx*1+0x1c],r14d
  3a6705:	48 8b 46 08                                     	mov    rax,QWORD PTR [rsi+0x8]
  3a6709:	44 03 74 01 20                                  	add    r14d,DWORD PTR [rcx+rax*1+0x20]
  3a670e:	3b 16                                           	cmp    edx,DWORD PTR [rsi]
  3a6710:	7c e1                                           	jl     0x3a66f3
  3a6712:	41 ff c7                                        	inc    r15d
  3a6715:	44 3b 7d 04                                     	cmp    r15d,DWORD PTR [rbp+0x4]
  3a6719:	0f 8c 23 ff ff ff                               	jl     0x3a6642
  3a671f:	48 8b 7c 24 68                                  	mov    rdi,QWORD PTR [rsp+0x68]
  3a6724:	8b 17                                           	mov    edx,DWORD PTR [rdi]
  3a6726:	48 8b cf                                        	mov    rcx,rdi
  3a6729:	41 03 d4                                        	add    edx,r12d
  3a672c:	e8 53 47 fd ff                                  	call   0x37ae84
  3a6731:	48 8d 5f 10                                     	lea    rbx,[rdi+0x10]
  3a6735:	8b 13                                           	mov    edx,DWORD PTR [rbx]
  3a6737:	48 8b cb                                        	mov    rcx,rbx
  3a673a:	41 03 d5                                        	add    edx,r13d
  3a673d:	e8 c2 45 fd ff                                  	call   0x37ad04
  3a6742:	48 63 0f                                        	movsxd rcx,DWORD PTR [rdi]
  3a6745:	41 be 01 00 00 00                               	mov    r14d,0x1
  3a674b:	49 63 c4                                        	movsxd rax,r12d
  3a674e:	48 2b c8                                        	sub    rcx,rax
  3a6751:	49 63 c5                                        	movsxd rax,r13d
  3a6754:	4c 6b e1 38                                     	imul   r12,rcx,0x38
  3a6758:	48 63 0b                                        	movsxd rcx,DWORD PTR [rbx]
  3a675b:	4c 03 67 08                                     	add    r12,QWORD PTR [rdi+0x8]
  3a675f:	48 2b c8                                        	sub    rcx,rax
  3a6762:	48 8b 47 18                                     	mov    rax,QWORD PTR [rdi+0x18]
  3a6766:	4c 8d 3c 48                                     	lea    r15,[rax+rcx*2]
  3a676a:	44 39 75 04                                     	cmp    DWORD PTR [rbp+0x4],r14d
  3a676e:	7e 56                                           	jle    0x3a67c6
  3a6770:	41 8b d6                                        	mov    edx,r14d
  3a6773:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a6777:	e8 20 54 fe ff                                  	call   0x38bb9c
  3a677c:	48 8b f0                                        	mov    rsi,rax
  3a677f:	83 38 00                                        	cmp    DWORD PTR [rax],0x0
  3a6782:	74 19                                           	je     0x3a679d
  3a6784:	48 63 08                                        	movsxd rcx,DWORD PTR [rax]
  3a6787:	48 8b 50 08                                     	mov    rdx,QWORD PTR [rax+0x8]
  3a678b:	48 6b d9 38                                     	imul   rbx,rcx,0x38
  3a678f:	49 8b cc                                        	mov    rcx,r12
  3a6792:	4c 8b c3                                        	mov    r8,rbx
  3a6795:	e8 b2 25 02 00                                  	call   0x3c8d4c
  3a679a:	4c 03 e3                                        	add    r12,rbx
  3a679d:	83 7e 10 00                                     	cmp    DWORD PTR [rsi+0x10],0x0
  3a67a1:	74 1a                                           	je     0x3a67bd
  3a67a3:	48 63 46 10                                     	movsxd rax,DWORD PTR [rsi+0x10]
  3a67a7:	49 8b cf                                        	mov    rcx,r15
  3a67aa:	48 8b 56 18                                     	mov    rdx,QWORD PTR [rsi+0x18]
  3a67ae:	48 8d 1c 00                                     	lea    rbx,[rax+rax*1]
  3a67b2:	4c 8b c3                                        	mov    r8,rbx
  3a67b5:	e8 92 25 02 00                                  	call   0x3c8d4c
  3a67ba:	4c 03 fb                                        	add    r15,rbx
  3a67bd:	41 ff c6                                        	inc    r14d
  3a67c0:	44 3b 75 04                                     	cmp    r14d,DWORD PTR [rbp+0x4]
  3a67c4:	7c aa                                           	jl     0x3a6770
  3a67c6:	33 db                                           	xor    ebx,ebx
  3a67c8:	4c 89 7f 50                                     	mov    QWORD PTR [rdi+0x50],r15
  3a67cc:	39 1f                                           	cmp    DWORD PTR [rdi],ebx
  3a67ce:	74 0e                                           	je     0x3a67de
  3a67d0:	48 8b cf                                        	mov    rcx,rdi
  3a67d3:	e8 4c 7b ff ff                                  	call   0x39e324
  3a67d8:	48 39 58 28                                     	cmp    QWORD PTR [rax+0x28],rbx
  3a67dc:	74 08                                           	je     0x3a67e6
  3a67de:	48 8b cf                                        	mov    rcx,rdi
  3a67e1:	e8 32 95 ff ff                                  	call   0x39fd18
  3a67e6:	48 63 07                                        	movsxd rax,DWORD PTR [rdi]
  3a67e9:	48 8d 97 88 00 00 00                            	lea    rdx,[rdi+0x88]
  3a67f0:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a67f4:	48 8b 47 08                                     	mov    rax,QWORD PTR [rdi+0x8]
  3a67f8:	4c 8d 0c 01                                     	lea    r9,[rcx+rax*1]
  3a67fc:	39 5c 01 e8                                     	cmp    DWORD PTR [rcx+rax*1-0x18],ebx
  3a6800:	75 13                                           	jne    0x3a6815
  3a6802:	0f 10 02                                        	movups xmm0,XMMWORD PTR [rdx]
  3a6805:	41 0f 11 41 c8                                  	movups XMMWORD PTR [r9-0x38],xmm0
  3a680a:	0f 10 4a 0c                                     	movups xmm1,XMMWORD PTR [rdx+0xc]
  3a680e:	41 0f 11 49 d4                                  	movups XMMWORD PTR [r9-0x2c],xmm1
  3a6813:	eb 1b                                           	jmp    0x3a6830
  3a6815:	41 b8 1c 00 00 00                               	mov    r8d,0x1c
  3a681b:	49 8d 49 c8                                     	lea    rcx,[r9-0x38]
  3a681f:	e8 f0 24 02 00                                  	call   0x3c8d14
  3a6824:	85 c0                                           	test   eax,eax
  3a6826:	74 08                                           	je     0x3a6830
  3a6828:	48 8b cf                                        	mov    rcx,rdi
  3a682b:	e8 e8 94 ff ff                                  	call   0x39fd18
  3a6830:	c7 45 04 01 00 00 00                            	mov    DWORD PTR [rbp+0x4],0x1
  3a6837:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  3a683c:	48 83 c4 20                                     	add    rsp,0x20
  3a6840:	41 5f                                           	pop    r15
  3a6842:	41 5e                                           	pop    r14
  3a6844:	41 5d                                           	pop    r13
  3a6846:	41 5c                                           	pop    r12
  3a6848:	5f                                              	pop    rdi
  3a6849:	5e                                              	pop    rsi
  3a684a:	5d                                              	pop    rbp
  3a684b:	c3                                              	ret
