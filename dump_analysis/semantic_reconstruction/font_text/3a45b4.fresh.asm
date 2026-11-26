
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a45b4 <.data+0x3a45b4>:
  3a45b4:	40 55                                           	rex push rbp
  3a45b6:	53                                              	push   rbx
  3a45b7:	56                                              	push   rsi
  3a45b8:	57                                              	push   rdi
  3a45b9:	48 83 ec 28                                     	sub    rsp,0x28
  3a45bd:	48 8d 6c 24 20                                  	lea    rbp,[rsp+0x20]
  3a45c2:	8b c2                                           	mov    eax,edx
  3a45c4:	8b fa                                           	mov    edi,edx
  3a45c6:	0f af c2                                        	imul   eax,edx
  3a45c9:	48 8b f1                                        	mov    rsi,rcx
  3a45cc:	4c 63 c0                                        	movsxd r8,eax
  3a45cf:	49 c1 e0 02                                     	shl    r8,0x2
  3a45d3:	49 8d 40 0f                                     	lea    rax,[r8+0xf]
  3a45d7:	49 3b c0                                        	cmp    rax,r8
  3a45da:	77 0a                                           	ja     0x3a45e6
  3a45dc:	48 b8 f0 ff ff ff ff ff ff 0f                   	movabs rax,0xffffffffffffff0
  3a45e6:	48 83 e0 f0                                     	and    rax,0xfffffffffffffff0
  3a45ea:	e8 61 8a f2 ff                                  	call   0x2cd050
  3a45ef:	48 2b e0                                        	sub    rsp,rax
  3a45f2:	41 b1 01                                        	mov    r9b,0x1
  3a45f5:	44 8b c7                                        	mov    r8d,edi
  3a45f8:	48 8d 5c 24 20                                  	lea    rbx,[rsp+0x20]
  3a45fd:	48 8b d3                                        	mov    rdx,rbx
  3a4600:	e8 17 00 00 00                                  	call   0x3a461c
  3a4605:	45 33 c9                                        	xor    r9d,r9d
  3a4608:	48 8b d6                                        	mov    rdx,rsi
  3a460b:	48 8b cb                                        	mov    rcx,rbx
  3a460e:	e8 09 00 00 00                                  	call   0x3a461c
  3a4613:	48 8d 65 08                                     	lea    rsp,[rbp+0x8]
  3a4617:	5f                                              	pop    rdi
  3a4618:	5e                                              	pop    rsi
  3a4619:	5b                                              	pop    rbx
  3a461a:	5d                                              	pop    rbp
  3a461b:	c3                                              	ret
