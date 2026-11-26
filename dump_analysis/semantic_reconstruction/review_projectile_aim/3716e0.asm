
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003716e0 <.data+0x3716e0>:
  3716e0:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3716e5:	57                                              	push   rdi
  3716e6:	48 83 ec 20                                     	sub    rsp,0x20
  3716ea:	48 8b d9                                        	mov    rbx,rcx
  3716ed:	e8 16 98 f5 ff                                  	call   0x2caf08
  3716f2:	84 c0                                           	test   al,al
  3716f4:	74 5e                                           	je     0x371754
  3716f6:	48 8b cb                                        	mov    rcx,rbx
  3716f9:	e8 4e fe ff ff                                  	call   0x37154c
  3716fe:	48 8b c8                                        	mov    rcx,rax
  371701:	48 8b f8                                        	mov    rdi,rax
  371704:	e8 ff 97 f5 ff                                  	call   0x2caf08
  371709:	84 c0                                           	test   al,al
  37170b:	74 47                                           	je     0x371754
  37170d:	48 8b cf                                        	mov    rcx,rdi
  371710:	e8 07 0f 00 00                                  	call   0x37261c
  371715:	3d 8f 44 92 08                                  	cmp    eax,0x892448f
  37171a:	74 23                                           	je     0x37173f
  37171c:	3d 4c 42 c4 5c                                  	cmp    eax,0x5cc4424c
  371721:	74 1c                                           	je     0x37173f
  371723:	3d 0a b7 b8 6d                                  	cmp    eax,0x6db8b70a
  371728:	74 15                                           	je     0x37173f
  37172a:	3d ca b4 27 c8                                  	cmp    eax,0xc827b4ca
  37172f:	74 0e                                           	je     0x37173f
  371731:	3d 6b 53 45 53                                  	cmp    eax,0x5345536b
  371736:	74 07                                           	je     0x37173f
  371738:	3d 23 e4 55 4b                                  	cmp    eax,0x4b55e423
  37173d:	75 15                                           	jne    0x371754
  37173f:	48 8b cf                                        	mov    rcx,rdi
  371742:	e8 25 0c 00 00                                  	call   0x37236c
  371747:	33 c9                                           	xor    ecx,ecx
  371749:	85 c0                                           	test   eax,eax
  37174b:	48 0f 45 d9                                     	cmovne rbx,rcx
  37174f:	48 8b c3                                        	mov    rax,rbx
  371752:	eb 02                                           	jmp    0x371756
  371754:	33 c0                                           	xor    eax,eax
  371756:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  37175b:	48 83 c4 20                                     	add    rsp,0x20
  37175f:	5f                                              	pop    rdi
  371760:	c3                                              	ret
