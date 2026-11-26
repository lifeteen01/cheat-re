
dump_analysis/semantic_reconstruction/game_input_physics/2e6744.bin:     file format binary


Disassembly of section .data:

00000000002e6744 <.data>:
  2e6744:	40 53                                           	rex push rbx
  2e6746:	56                                              	push   rsi
  2e6747:	57                                              	push   rdi
  2e6748:	48 83 ec 50                                     	sub    rsp,0x50
  2e674c:	8b 05 0e db 0f 00                               	mov    eax,DWORD PTR [rip+0xfdb0e]        # 0x3e4260
  2e6752:	a8 01                                           	test   al,0x1
  2e6754:	0f 85 a5 00 00 00                               	jne    0x2e67ff
  2e675a:	83 c8 01                                        	or     eax,0x1
  2e675d:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2e6762:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2e6767:	89 05 f3 da 0f 00                               	mov    DWORD PTR [rip+0xfdaf3],eax        # 0x3e4260
  2e676d:	e8 be 5f fe ff                                  	call   0x2cc730
  2e6772:	48 8b c8                                        	mov    rcx,rax
  2e6775:	e8 2a 75 fe ff                                  	call   0x2cdca4
  2e677a:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e677f:	48 8b f0                                        	mov    rsi,rax
  2e6782:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e6787:	e8 a4 ef ff ff                                  	call   0x2e5730
  2e678c:	48 8b c8                                        	mov    rcx,rax
  2e678f:	e8 78 76 fe ff                                  	call   0x2cde0c
  2e6794:	48 8d 54 24 3c                                  	lea    rdx,[rsp+0x3c]
  2e6799:	48 8b f8                                        	mov    rdi,rax
  2e679c:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e67a1:	e8 ce ed ff ff                                  	call   0x2e5574
  2e67a6:	48 8b c8                                        	mov    rcx,rax
  2e67a9:	e8 5e 76 fe ff                                  	call   0x2cde0c
  2e67ae:	48 8d 94 24 80 00 00 00                         	lea    rdx,[rsp+0x80]
  2e67b6:	48 8b d8                                        	mov    rbx,rax
  2e67b9:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  2e67be:	e8 35 ec ff ff                                  	call   0x2e53f8
  2e67c3:	48 8b c8                                        	mov    rcx,rax
  2e67c6:	e8 45 69 ff ff                                  	call   0x2dd110
  2e67cb:	48 8b c8                                        	mov    rcx,rax
  2e67ce:	48 8b d3                                        	mov    rdx,rbx
  2e67d1:	e8 4e da 04 00                                  	call   0x334224
  2e67d6:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e67da:	48 8b c8                                        	mov    rcx,rax
  2e67dd:	4c 8b ce                                        	mov    r9,rsi
  2e67e0:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e67e5:	48 8b d7                                        	mov    rdx,rdi
  2e67e8:	e8 bf e1 04 00                                  	call   0x3349ac
  2e67ed:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e67f0:	8b 05 6a da 0f 00                               	mov    eax,DWORD PTR [rip+0xfda6a]        # 0x3e4260
  2e67f6:	4c 89 05 5b da 0f 00                            	mov    QWORD PTR [rip+0xfda5b],r8        # 0x3e4258
  2e67fd:	eb 07                                           	jmp    0x2e6806
  2e67ff:	4c 8b 05 52 da 0f 00                            	mov    r8,QWORD PTR [rip+0xfda52]        # 0x3e4258
  2e6806:	a8 02                                           	test   al,0x2
  2e6808:	75 1f                                           	jne    0x2e6829
  2e680a:	48 8b 0d 4f f6 0e 00                            	mov    rcx,QWORD PTR [rip+0xef64f]        # 0x3d5e60
  2e6811:	48 8d 15 58 da 0f 00                            	lea    rdx,[rip+0xfda58]        # 0x3e4270
  2e6818:	83 c8 02                                        	or     eax,0x2
  2e681b:	45 33 c9                                        	xor    r9d,r9d
  2e681e:	89 05 3c da 0f 00                               	mov    DWORD PTR [rip+0xfda3c],eax        # 0x3e4260
  2e6824:	e8 fb 54 fe ff                                  	call   0x2cbd24
  2e6829:	48 8b 0d 30 f6 0e 00                            	mov    rcx,QWORD PTR [rip+0xef630]        # 0x3d5e60
  2e6830:	48 8d 15 39 da 0f 00                            	lea    rdx,[rip+0xfda39]        # 0x3e4270
  2e6837:	48 83 c4 50                                     	add    rsp,0x50
  2e683b:	5f                                              	pop    rdi
  2e683c:	5e                                              	pop    rsi
  2e683d:	5b                                              	pop    rbx
  2e683e:	e9 a9 e1 ff ff                                  	jmp    0x2e49ec
