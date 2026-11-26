; [C] exact range 0x2ef724..0x2ef752 baseline operator[]

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ef724 <.data+0x2ef724>:
  2ef724:	40 53                	rex push rbx
  2ef726:	48 83 ec 30          	sub    rsp,0x30
  2ef72a:	48 8b d9             	mov    rbx,rcx
  2ef72d:	48 8b ca             	mov    rcx,rdx
  2ef730:	e8 6f bc fd ff       	call   0x2cb3a4
  2ef735:	4c 8b c0             	mov    r8,rax
  2ef738:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2ef73d:	48 8b cb             	mov    rcx,rbx
  2ef740:	e8 db d4 ff ff       	call   0x2ecc20
  2ef745:	48 8b 00             	mov    rax,QWORD PTR [rax]
  2ef748:	48 83 c0 14          	add    rax,0x14
  2ef74c:	48 83 c4 30          	add    rsp,0x30
  2ef750:	5b                   	pop    rbx
  2ef751:	c3                   	ret
; [C] exact range 0x2df608..0x2df636 identity operator[]

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df608 <.data+0x2df608>:
  2df608:	40 53                	rex push rbx
  2df60a:	48 83 ec 30          	sub    rsp,0x30
  2df60e:	48 8b d9             	mov    rbx,rcx
  2df611:	48 8b ca             	mov    rcx,rdx
  2df614:	e8 8b bd fe ff       	call   0x2cb3a4
  2df619:	4c 8b c0             	mov    r8,rax
  2df61c:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2df621:	48 8b cb             	mov    rcx,rbx
  2df624:	e8 4b ef ff ff       	call   0x2de574
  2df629:	48 8b 00             	mov    rax,QWORD PTR [rax]
  2df62c:	48 83 c0 30          	add    rax,0x30
  2df630:	48 83 c4 30          	add    rsp,0x30
  2df634:	5b                   	pop    rbx
  2df635:	c3                   	ret
; [C] exact range 0x369e70..0x369f6b identity construction; all returns

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369e70 <.data+0x369e70>:
  369e70:	40 55                	rex push rbp
  369e72:	53                   	push   rbx
  369e73:	56                   	push   rsi
  369e74:	57                   	push   rdi
  369e75:	48 8b ec             	mov    rbp,rsp
  369e78:	48 83 ec 78          	sub    rsp,0x78
  369e7c:	48 8b f2             	mov    rsi,rdx
  369e7f:	48 8b d1             	mov    rdx,rcx
  369e82:	e8 81 10 f6 ff       	call   0x2caf08
  369e87:	84 c0                	test   al,al
  369e89:	0f 84 c1 00 00 00    	je     0x369f50
  369e8f:	45 84 c0             	test   r8b,r8b
  369e92:	0f 85 b8 00 00 00    	jne    0x369f50
  369e98:	48 8b 92 40 06 00 00 	mov    rdx,QWORD PTR [rdx+0x640]
  369e9f:	48 8b ca             	mov    rcx,rdx
  369ea2:	e8 61 10 f6 ff       	call   0x2caf08
  369ea7:	84 c0                	test   al,al
  369ea9:	0f 84 a1 00 00 00    	je     0x369f50
  369eaf:	48 83 c2 14          	add    rdx,0x14
  369eb3:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  369eb7:	e8 0c a7 f6 ff       	call   0x2d45c8
  369ebc:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  369ec0:	e8 cf e7 f6 ff       	call   0x2d8694
  369ec5:	84 c0                	test   al,al
  369ec7:	74 1a                	je     0x369ee3
  369ec9:	48 8d 15 58 34 f2 ff 	lea    rdx,[rip+0xfffffffffff23458]        # 0x28d328
  369ed0:	48 8b ce             	mov    rcx,rsi
  369ed3:	e8 f4 23 f6 ff       	call   0x2cc2cc
  369ed8:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  369edc:	e8 6f ab f6 ff       	call   0x2d4a50
  369ee1:	eb 7c                	jmp    0x369f5f
  369ee3:	48 8d 55 a8          	lea    rdx,[rbp-0x58]
  369ee7:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  369eeb:	e8 38 e8 f6 ff       	call   0x2d8728
  369ef0:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  369ef4:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  369ef8:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  369efb:	e8 40 de f6 ff       	call   0x2d7d40
  369f00:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  369f04:	48 8b f8             	mov    rdi,rax
  369f07:	e8 98 14 f6 ff       	call   0x2cb3a4
  369f0c:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
  369f0f:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  369f13:	4c 8b c8             	mov    r9,rax
  369f16:	4c 8b c3             	mov    r8,rbx
  369f19:	e8 26 4f f6 ff       	call   0x2cee44
  369f1e:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  369f22:	e8 6d e7 f6 ff       	call   0x2d8694
  369f27:	48 8b ce             	mov    rcx,rsi
  369f2a:	84 c0                	test   al,al
  369f2c:	74 17                	je     0x369f45
  369f2e:	48 8d 15 f3 33 f2 ff 	lea    rdx,[rip+0xfffffffffff233f3]        # 0x28d328
  369f35:	e8 92 23 f6 ff       	call   0x2cc2cc
  369f3a:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  369f3e:	e8 b1 25 f6 ff       	call   0x2cc4f4
  369f43:	eb 93                	jmp    0x369ed8
  369f45:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  369f49:	e8 36 23 f6 ff       	call   0x2cc284
  369f4e:	eb ea                	jmp    0x369f3a
  369f50:	48 8d 15 d1 33 f2 ff 	lea    rdx,[rip+0xfffffffffff233d1]        # 0x28d328
  369f57:	48 8b ce             	mov    rcx,rsi
  369f5a:	e8 6d 23 f6 ff       	call   0x2cc2cc
  369f5f:	48 8b c6             	mov    rax,rsi
  369f62:	48 83 c4 78          	add    rsp,0x78
  369f66:	5f                   	pop    rdi
  369f67:	5e                   	pop    rsi
  369f68:	5b                   	pop    rbx
  369f69:	5d                   	pop    rbp
  369f6a:	c3                   	ret
; [C] exact range 0x2ecc20..0x2ecd56 baseline map insertion

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ecc20 <.data+0x2ecc20>:
  2ecc20:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  2ecc25:	55                   	push   rbp
  2ecc26:	56                   	push   rsi
  2ecc27:	57                   	push   rdi
  2ecc28:	41 56                	push   r14
  2ecc2a:	41 57                	push   r15
  2ecc2c:	48 8b ec             	mov    rbp,rsp
  2ecc2f:	48 83 ec 60          	sub    rsp,0x60
  2ecc33:	4c 8b f2             	mov    r14,rdx
  2ecc36:	49 8b d8             	mov    rbx,r8
  2ecc39:	49 8b d0             	mov    rdx,r8
  2ecc3c:	48 8b f1             	mov    rsi,rcx
  2ecc3f:	e8 a0 24 fe ff       	call   0x2cf0e4
  2ecc44:	4c 8b c8             	mov    r9,rax
  2ecc47:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  2ecc4b:	4c 8b c3             	mov    r8,rbx
  2ecc4e:	48 8b ce             	mov    rcx,rsi
  2ecc51:	4c 8b f8             	mov    r15,rax
  2ecc54:	e8 7b 3b fe ff       	call   0x2d07d4
  2ecc59:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  2ecc5e:	74 19                	je     0x2ecc79
  2ecc60:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  2ecc64:	c6 45 30 00          	mov    BYTE PTR [rbp+0x30],0x0
  2ecc68:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  2ecc6c:	49 8b ce             	mov    rcx,r14
  2ecc6f:	e8 94 21 fe ff       	call   0x2cee08
  2ecc74:	e9 c6 00 00 00       	jmp    0x2ecd3f
  2ecc79:	48 8b ce             	mov    rcx,rsi
  2ecc7c:	e8 a3 cb 02 00       	call   0x319824
  2ecc81:	48 8b cb             	mov    rcx,rbx
  2ecc84:	e8 1b e7 fd ff       	call   0x2cb3a4
  2ecc89:	48 8b d0             	mov    rdx,rax
  2ecc8c:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2ecc90:	e8 fb 1f ff ff       	call   0x2dec90
  2ecc95:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2ecc99:	48 8b f8             	mov    rdi,rax
  2ecc9c:	e8 03 e7 fd ff       	call   0x2cb3a4
  2ecca1:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  2ecca5:	48 8b d8             	mov    rbx,rax
  2ecca8:	e8 77 06 fe ff       	call   0x2cd324
  2eccad:	48 8b d0             	mov    rdx,rax
  2eccb0:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  2eccb5:	4c 8b cf             	mov    r9,rdi
  2eccb8:	4c 8d 05 3d 0c fa ff 	lea    r8,[rip+0xfffffffffffa0c3d]        # 0x28d8fc
  2eccbf:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2eccc3:	e8 e8 d4 ff ff       	call   0x2ea1b0
  2eccc8:	48 8b ce             	mov    rcx,rsi
  2ecccb:	e8 74 a0 fe ff       	call   0x2d6d44
  2eccd0:	84 c0                	test   al,al
  2eccd2:	74 2f                	je     0x2ecd03
  2eccd4:	48 8b ce             	mov    rcx,rsi
  2eccd7:	e8 74 d3 02 00       	call   0x31a050
  2eccdc:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  2ecce0:	48 83 c1 10          	add    rcx,0x10
  2ecce4:	e8 bb e6 fd ff       	call   0x2cb3a4
  2ecce9:	4c 8b c0             	mov    r8,rax
  2eccec:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  2eccf0:	4d 8b cf             	mov    r9,r15
  2eccf3:	48 8b ce             	mov    rcx,rsi
  2eccf6:	e8 d9 3a fe ff       	call   0x2d07d4
  2eccfb:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  2eccfe:	f3 0f 7f 45 d0       	movdqu XMMWORD PTR [rbp-0x30],xmm0
  2ecd03:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2ecd07:	e8 2c a9 fe ff       	call   0x2d7638
  2ecd0c:	4c 8b 45 d0          	mov    r8,QWORD PTR [rbp-0x30]
  2ecd10:	4c 8b c8             	mov    r9,rax
  2ecd13:	49 8b d7             	mov    rdx,r15
  2ecd16:	48 8b ce             	mov    rcx,rsi
  2ecd19:	e8 0a a6 fe ff       	call   0x2d7328
  2ecd1e:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  2ecd22:	48 89 45 40          	mov    QWORD PTR [rbp+0x40],rax
  2ecd26:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  2ecd2a:	c6 45 30 01          	mov    BYTE PTR [rbp+0x30],0x1
  2ecd2e:	49 8b ce             	mov    rcx,r14
  2ecd31:	e8 d2 20 fe ff       	call   0x2cee08
  2ecd36:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2ecd3a:	e8 5d 26 00 00       	call   0x2ef39c
  2ecd3f:	48 8b 9c 24 98 00 00 	mov    rbx,QWORD PTR [rsp+0x98]
  2ecd46:	00 
  2ecd47:	49 8b c6             	mov    rax,r14
  2ecd4a:	48 83 c4 60          	add    rsp,0x60
  2ecd4e:	41 5f                	pop    r15
  2ecd50:	41 5e                	pop    r14
  2ecd52:	5f                   	pop    rdi
  2ecd53:	5e                   	pop    rsi
  2ecd54:	5d                   	pop    rbp
  2ecd55:	c3                   	ret
; [C] exact range 0x2de574..0x2de6aa identity map insertion

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de574 <.data+0x2de574>:
  2de574:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  2de579:	55                   	push   rbp
  2de57a:	56                   	push   rsi
  2de57b:	57                   	push   rdi
  2de57c:	41 56                	push   r14
  2de57e:	41 57                	push   r15
  2de580:	48 8b ec             	mov    rbp,rsp
  2de583:	48 83 ec 60          	sub    rsp,0x60
  2de587:	4c 8b f2             	mov    r14,rdx
  2de58a:	49 8b d8             	mov    rbx,r8
  2de58d:	49 8b d0             	mov    rdx,r8
  2de590:	48 8b f1             	mov    rsi,rcx
  2de593:	e8 fc f8 ff ff       	call   0x2dde94
  2de598:	4c 8b c8             	mov    r9,rax
  2de59b:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  2de59f:	4c 8b c3             	mov    r8,rbx
  2de5a2:	48 8b ce             	mov    rcx,rsi
  2de5a5:	4c 8b f8             	mov    r15,rax
  2de5a8:	e8 a7 fb ff ff       	call   0x2de154
  2de5ad:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  2de5b2:	74 19                	je     0x2de5cd
  2de5b4:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  2de5b8:	c6 45 30 00          	mov    BYTE PTR [rbp+0x30],0x0
  2de5bc:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  2de5c0:	49 8b ce             	mov    rcx,r14
  2de5c3:	e8 40 08 ff ff       	call   0x2cee08
  2de5c8:	e9 c6 00 00 00       	jmp    0x2de693
  2de5cd:	48 8b ce             	mov    rcx,rsi
  2de5d0:	e8 77 44 00 00       	call   0x2e2a4c
  2de5d5:	48 8b cb             	mov    rcx,rbx
  2de5d8:	e8 c7 cd fe ff       	call   0x2cb3a4
  2de5dd:	48 8b d0             	mov    rdx,rax
  2de5e0:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2de5e4:	e8 a7 06 00 00       	call   0x2dec90
  2de5e9:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2de5ed:	48 8b f8             	mov    rdi,rax
  2de5f0:	e8 af cd fe ff       	call   0x2cb3a4
  2de5f5:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  2de5f9:	48 8b d8             	mov    rbx,rax
  2de5fc:	e8 23 ed fe ff       	call   0x2cd324
  2de601:	48 8b d0             	mov    rdx,rax
  2de604:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  2de609:	4c 8b cf             	mov    r9,rdi
  2de60c:	4c 8d 05 e9 f2 fa ff 	lea    r8,[rip+0xfffffffffffaf2e9]        # 0x28d8fc
  2de613:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2de617:	e8 48 f7 ff ff       	call   0x2ddd64
  2de61c:	48 8b ce             	mov    rcx,rsi
  2de61f:	e8 20 87 ff ff       	call   0x2d6d44
  2de624:	84 c0                	test   al,al
  2de626:	74 2f                	je     0x2de657
  2de628:	48 8b ce             	mov    rcx,rsi
  2de62b:	e8 88 47 00 00       	call   0x2e2db8
  2de630:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  2de634:	48 83 c1 10          	add    rcx,0x10
  2de638:	e8 67 cd fe ff       	call   0x2cb3a4
  2de63d:	4c 8b c0             	mov    r8,rax
  2de640:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  2de644:	4d 8b cf             	mov    r9,r15
  2de647:	48 8b ce             	mov    rcx,rsi
  2de64a:	e8 05 fb ff ff       	call   0x2de154
  2de64f:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  2de652:	f3 0f 7f 45 d0       	movdqu XMMWORD PTR [rbp-0x30],xmm0
  2de657:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2de65b:	e8 d8 8f ff ff       	call   0x2d7638
  2de660:	4c 8b 45 d0          	mov    r8,QWORD PTR [rbp-0x30]
  2de664:	4c 8b c8             	mov    r9,rax
  2de667:	49 8b d7             	mov    rdx,r15
  2de66a:	48 8b ce             	mov    rcx,rsi
  2de66d:	e8 b6 8c ff ff       	call   0x2d7328
  2de672:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  2de676:	48 89 45 40          	mov    QWORD PTR [rbp+0x40],rax
  2de67a:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  2de67e:	c6 45 30 01          	mov    BYTE PTR [rbp+0x30],0x1
  2de682:	49 8b ce             	mov    rcx,r14
  2de685:	e8 7e 07 ff ff       	call   0x2cee08
  2de68a:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2de68e:	e8 71 0d 00 00       	call   0x2df404
  2de693:	48 8b 9c 24 98 00 00 	mov    rbx,QWORD PTR [rsp+0x98]
  2de69a:	00 
  2de69b:	49 8b c6             	mov    rax,r14
  2de69e:	48 83 c4 60          	add    rsp,0x60
  2de6a2:	41 5f                	pop    r15
  2de6a4:	41 5e                	pop    r14
  2de6a6:	5f                   	pop    rdi
  2de6a7:	5e                   	pop    rsi
  2de6a8:	5d                   	pop    rbp
  2de6a9:	c3                   	ret
; [C] exact range 0x2d07d4..0x2d0861 baseline find including alternate miss tail

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d07d4 <.data+0x2d07d4>:
  2d07d4:	40 53                	rex push rbx
  2d07d6:	55                   	push   rbp
  2d07d7:	56                   	push   rsi
  2d07d8:	57                   	push   rdi
  2d07d9:	41 56                	push   r14
  2d07db:	48 83 ec 20          	sub    rsp,0x20
  2d07df:	48 8b 41 30          	mov    rax,QWORD PTR [rcx+0x30]
  2d07e3:	48 8b f1             	mov    rsi,rcx
  2d07e6:	48 8b 69 18          	mov    rbp,QWORD PTR [rcx+0x18]
  2d07ea:	49 23 c1             	and    rax,r9
  2d07ed:	48 8b 49 08          	mov    rcx,QWORD PTR [rcx+0x8]
  2d07f1:	48 03 c0             	add    rax,rax
  2d07f4:	4d 8b f0             	mov    r14,r8
  2d07f7:	48 8b da             	mov    rbx,rdx
  2d07fa:	48 8b 7c c5 08       	mov    rdi,QWORD PTR [rbp+rax*8+0x8]
  2d07ff:	48 3b f9             	cmp    rdi,rcx
  2d0802:	75 0d                	jne    0x2d0811
  2d0804:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  2d0807:	48 c7 42 08 00 00 00 	mov    QWORD PTR [rdx+0x8],0x0
  2d080e:	00 
  2d080f:	eb 35                	jmp    0x2d0846
  2d0811:	48 8b 6c c5 00       	mov    rbp,QWORD PTR [rbp+rax*8+0x0]
  2d0816:	eb 09                	jmp    0x2d0821
  2d0818:	48 3b fd             	cmp    rdi,rbp
  2d081b:	74 37                	je     0x2d0854
  2d081d:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
  2d0821:	48 8d 4f 10          	lea    rcx,[rdi+0x10]
  2d0825:	e8 7a ab ff ff       	call   0x2cb3a4
  2d082a:	4c 8b c0             	mov    r8,rax
  2d082d:	49 8b d6             	mov    rdx,r14
  2d0830:	48 8b ce             	mov    rcx,rsi
  2d0833:	e8 b4 e8 ff ff       	call   0x2cf0ec
  2d0838:	84 c0                	test   al,al
  2d083a:	75 dc                	jne    0x2d0818
  2d083c:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  2d083f:	48 89 03             	mov    QWORD PTR [rbx],rax
  2d0842:	48 89 7b 08          	mov    QWORD PTR [rbx+0x8],rdi
  2d0846:	48 8b c3             	mov    rax,rbx
  2d0849:	48 83 c4 20          	add    rsp,0x20
  2d084d:	41 5e                	pop    r14
  2d084f:	5f                   	pop    rdi
  2d0850:	5e                   	pop    rsi
  2d0851:	5d                   	pop    rbp
  2d0852:	5b                   	pop    rbx
  2d0853:	c3                   	ret
  2d0854:	48 89 3b             	mov    QWORD PTR [rbx],rdi
  2d0857:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
  2d085e:	00 
  2d085f:	eb e5                	jmp    0x2d0846
; [C] exact range 0x2de154..0x2de1e1 identity find including alternate miss tail

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de154 <.data+0x2de154>:
  2de154:	40 53                	rex push rbx
  2de156:	55                   	push   rbp
  2de157:	56                   	push   rsi
  2de158:	57                   	push   rdi
  2de159:	41 56                	push   r14
  2de15b:	48 83 ec 20          	sub    rsp,0x20
  2de15f:	48 8b 41 30          	mov    rax,QWORD PTR [rcx+0x30]
  2de163:	48 8b f1             	mov    rsi,rcx
  2de166:	48 8b 69 18          	mov    rbp,QWORD PTR [rcx+0x18]
  2de16a:	49 23 c1             	and    rax,r9
  2de16d:	48 8b 49 08          	mov    rcx,QWORD PTR [rcx+0x8]
  2de171:	48 03 c0             	add    rax,rax
  2de174:	4d 8b f0             	mov    r14,r8
  2de177:	48 8b da             	mov    rbx,rdx
  2de17a:	48 8b 7c c5 08       	mov    rdi,QWORD PTR [rbp+rax*8+0x8]
  2de17f:	48 3b f9             	cmp    rdi,rcx
  2de182:	75 0d                	jne    0x2de191
  2de184:	48 89 0a             	mov    QWORD PTR [rdx],rcx
  2de187:	48 c7 42 08 00 00 00 	mov    QWORD PTR [rdx+0x8],0x0
  2de18e:	00 
  2de18f:	eb 35                	jmp    0x2de1c6
  2de191:	48 8b 6c c5 00       	mov    rbp,QWORD PTR [rbp+rax*8+0x0]
  2de196:	eb 09                	jmp    0x2de1a1
  2de198:	48 3b fd             	cmp    rdi,rbp
  2de19b:	74 37                	je     0x2de1d4
  2de19d:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
  2de1a1:	48 8d 4f 10          	lea    rcx,[rdi+0x10]
  2de1a5:	e8 fa d1 fe ff       	call   0x2cb3a4
  2de1aa:	4c 8b c0             	mov    r8,rax
  2de1ad:	49 8b d6             	mov    rdx,r14
  2de1b0:	48 8b ce             	mov    rcx,rsi
  2de1b3:	e8 e4 fc ff ff       	call   0x2dde9c
  2de1b8:	84 c0                	test   al,al
  2de1ba:	75 dc                	jne    0x2de198
  2de1bc:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  2de1bf:	48 89 03             	mov    QWORD PTR [rbx],rax
  2de1c2:	48 89 7b 08          	mov    QWORD PTR [rbx+0x8],rdi
  2de1c6:	48 8b c3             	mov    rax,rbx
  2de1c9:	48 83 c4 20          	add    rsp,0x20
  2de1cd:	41 5e                	pop    r14
  2de1cf:	5f                   	pop    rdi
  2de1d0:	5e                   	pop    rsi
  2de1d1:	5d                   	pop    rbp
  2de1d2:	5b                   	pop    rbx
  2de1d3:	c3                   	ret
  2de1d4:	48 89 3b             	mov    QWORD PTR [rbx],rdi
  2de1d7:	48 c7 43 08 00 00 00 	mov    QWORD PTR [rbx+0x8],0x0
  2de1de:	00 
  2de1df:	eb e5                	jmp    0x2de1c6
; [C] exact range 0x2cf0e4..0x2cf0ec integer hash forwarding

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cf0e4 <.data+0x2cf0e4>:
  2cf0e4:	48 8b ca             	mov    rcx,rdx
  2cf0e7:	e9 50 64 00 00       	jmp    0x2d553c
; [C] exact range 0x2cf0ec..0x2cf11c integer inequality

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cf0ec <.data+0x2cf0ec>:
  2cf0ec:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2cf0f1:	57                   	push   rdi
  2cf0f2:	48 83 ec 20          	sub    rsp,0x20
  2cf0f6:	49 8b d8             	mov    rbx,r8
  2cf0f9:	48 8b fa             	mov    rdi,rdx
  2cf0fc:	e8 a3 c2 ff ff       	call   0x2cb3a4
  2cf101:	48 8b c8             	mov    rcx,rax
  2cf104:	4c 8b c3             	mov    r8,rbx
  2cf107:	48 8b d7             	mov    rdx,rdi
  2cf10a:	e8 35 64 00 00       	call   0x2d5544
  2cf10f:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2cf114:	34 01                	xor    al,0x1
  2cf116:	48 83 c4 20          	add    rsp,0x20
  2cf11a:	5f                   	pop    rdi
  2cf11b:	c3                   	ret
; [C] exact range 0x2d553c..0x2d5541 hash forwarding only

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d553c <.data+0x2d553c>:
  2d553c:	e9 5f 1a 00 00       	jmp    0x2d6fa0
; [C] exact range 0x2d5544..0x2d554d integer equality

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d5544 <.data+0x2d5544>:
  2d5544:	41 8b 00             	mov    eax,DWORD PTR [r8]
  2d5547:	39 02                	cmp    DWORD PTR [rdx],eax
  2d5549:	0f 94 c0             	sete   al
  2d554c:	c3                   	ret
; [C] exact range 0x2d6fa0..0x2d6fa5 hash forwarding only

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d6fa0 <.data+0x2d6fa0>:
  2d6fa0:	e9 3f 9b ff ff       	jmp    0x2d0ae4
; [C] exact range 0x2d0ae4..0x2d0af6 integer FNV basis

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d0ae4 <.data+0x2d0ae4>:
  2d0ae4:	48 8b d1             	mov    rdx,rcx
  2d0ae7:	48 b9 25 23 22 84 e4 	movabs rcx,0xcbf29ce484222325
  2d0aee:	9c f2 cb 
  2d0af1:	e9 a6 fd ff ff       	jmp    0x2d089c
; [C] exact range 0x2d089c..0x2d08a7 four-byte hash span

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d089c <.data+0x2d089c>:
  2d089c:	41 b8 04 00 00 00    	mov    r8d,0x4
  2d08a2:	e9 d1 67 00 00       	jmp    0x2d7078
; [C] exact range 0x2d7078..0x2d70a2 FNV64 full loop and zero-length return

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d7078 <.data+0x2d7078>:
  2d7078:	45 33 c9             	xor    r9d,r9d
  2d707b:	4d 85 c0             	test   r8,r8
  2d707e:	74 1e                	je     0x2d709e
  2d7080:	41 0f b6 04 11       	movzx  eax,BYTE PTR [r9+rdx*1]
  2d7085:	49 ba b3 01 00 00 00 	movabs r10,0x100000001b3
  2d708c:	01 00 00 
  2d708f:	48 33 c8             	xor    rcx,rax
  2d7092:	49 ff c1             	inc    r9
  2d7095:	49 0f af ca          	imul   rcx,r10
  2d7099:	4d 3b c8             	cmp    r9,r8
  2d709c:	72 e2                	jb     0x2d7080
  2d709e:	48 8b c1             	mov    rax,rcx
  2d70a1:	c3                   	ret
; [C] exact range 0x2dde94..0x2dde9c string hash forwarding

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dde94 <.data+0x2dde94>:
  2dde94:	48 8b ca             	mov    rcx,rdx
  2dde97:	e9 fc 1e 00 00       	jmp    0x2dfd98
; [C] exact range 0x2dde9c..0x2ddecc string inequality

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dde9c <.data+0x2dde9c>:
  2dde9c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2ddea1:	57                   	push   rdi
  2ddea2:	48 83 ec 20          	sub    rsp,0x20
  2ddea6:	49 8b d8             	mov    rbx,r8
  2ddea9:	48 8b fa             	mov    rdi,rdx
  2ddeac:	e8 f3 d4 fe ff       	call   0x2cb3a4
  2ddeb1:	48 8b c8             	mov    rcx,rax
  2ddeb4:	4c 8b c3             	mov    r8,rbx
  2ddeb7:	48 8b d7             	mov    rdx,rdi
  2ddeba:	e8 e1 1e 00 00       	call   0x2dfda0
  2ddebf:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2ddec4:	34 01                	xor    al,0x1
  2ddec6:	48 83 c4 20          	add    rsp,0x20
  2ddeca:	5f                   	pop    rdi
  2ddecb:	c3                   	ret
; [C] exact range 0x2dfd98..0x2dfd9d string hash forwarding only

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dfd98 <.data+0x2dfd98>:
  2dfd98:	e9 db 2d 00 00       	jmp    0x2e2b78
; [C] exact range 0x2dfda0..0x2dfdab string equality forwarding only

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dfda0 <.data+0x2dfda0>:
  2dfda0:	48 8b ca             	mov    rcx,rdx
  2dfda3:	49 8b d0             	mov    rdx,r8
  2dfda6:	e9 85 f1 fe ff       	jmp    0x2cef30
; [C] exact range 0x2cef30..0x2cef35 string equality forwarding only

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cef30 <.data+0x2cef30>:
  2cef30:	e9 9f 80 00 00       	jmp    0x2d6fd4
; [C] exact range 0x2d6fd4..0x2d701e string equality arguments

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d6fd4 <.data+0x2d6fd4>:
  2d6fd4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d6fd9:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d6fde:	57                   	push   rdi
  2d6fdf:	48 83 ec 20          	sub    rsp,0x20
  2d6fe3:	48 8b f1             	mov    rsi,rcx
  2d6fe6:	48 8b fa             	mov    rdi,rdx
  2d6fe9:	48 8b ca             	mov    rcx,rdx
  2d6fec:	e8 f3 64 ff ff       	call   0x2cd4e4
  2d6ff1:	48 8b ce             	mov    rcx,rsi
  2d6ff4:	48 8b d8             	mov    rbx,rax
  2d6ff7:	e8 e8 64 ff ff       	call   0x2cd4e4
  2d6ffc:	4c 8b 4f 10          	mov    r9,QWORD PTR [rdi+0x10]
  2d7000:	48 8b c8             	mov    rcx,rax
  2d7003:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
  2d7007:	4c 8b c3             	mov    r8,rbx
  2d700a:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2d700f:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2d7014:	48 83 c4 20          	add    rsp,0x20
  2d7018:	5f                   	pop    rdi
  2d7019:	e9 6a a9 ff ff       	jmp    0x2d1988
; [C] exact range 0x2d1988..0x2d19b6 length-aware equality

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d1988 <.data+0x2d1988>:
  2d1988:	48 83 ec 28          	sub    rsp,0x28
  2d198c:	49 8b c0             	mov    rax,r8
  2d198f:	49 3b d1             	cmp    rdx,r9
  2d1992:	74 04                	je     0x2d1998
  2d1994:	32 c0                	xor    al,al
  2d1996:	eb 19                	jmp    0x2d19b1
  2d1998:	48 85 d2             	test   rdx,rdx
  2d199b:	75 04                	jne    0x2d19a1
  2d199d:	b0 01                	mov    al,0x1
  2d199f:	eb 10                	jmp    0x2d19b1
  2d19a1:	4c 8b c2             	mov    r8,rdx
  2d19a4:	48 8b d0             	mov    rdx,rax
  2d19a7:	e8 08 bf ff ff       	call   0x2cd8b4
  2d19ac:	85 c0                	test   eax,eax
  2d19ae:	0f 94 c0             	sete   al
  2d19b1:	48 83 c4 28          	add    rsp,0x28
  2d19b5:	c3                   	ret
; [C] exact range 0x2e2b78..0x2e2baa string hash

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2b78 <.data+0x2e2b78>:
  2e2b78:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2e2b7d:	57                   	push   rdi
  2e2b7e:	48 83 ec 20          	sub    rsp,0x20
  2e2b82:	48 8b f9             	mov    rdi,rcx
  2e2b85:	e8 4e 5f ff ff       	call   0x2d8ad8
  2e2b8a:	48 8b cf             	mov    rcx,rdi
  2e2b8d:	48 8b d8             	mov    rbx,rax
  2e2b90:	e8 57 ac fe ff       	call   0x2cd7ec
  2e2b95:	48 8b c8             	mov    rcx,rax
  2e2b98:	48 8b d3             	mov    rdx,rbx
  2e2b9b:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2e2ba0:	48 83 c4 20          	add    rsp,0x20
  2e2ba4:	5f                   	pop    rdi
  2e2ba5:	e9 3e b7 ff ff       	jmp    0x2de2e8
; [C] exact range 0x2de2e8..0x2de2fd string FNV basis

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de2e8 <.data+0x2de2e8>:
  2de2e8:	4c 8b c2             	mov    r8,rdx
  2de2eb:	48 8b d1             	mov    rdx,rcx
  2de2ee:	48 b9 25 23 22 84 e4 	movabs rcx,0xcbf29ce484222325
  2de2f5:	9c f2 cb 
  2de2f8:	e9 7b 8d ff ff       	jmp    0x2d7078
; [C] exact range 0x319824..0x31984f baseline maximum-size check/trap

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000319824 <.data+0x319824>:
  319824:	40 53                	rex push rbx
  319826:	48 83 ec 20          	sub    rsp,0x20
  31982a:	48 8b d9             	mov    rbx,rcx
  31982d:	48 83 c1 08          	add    rcx,0x8
  319831:	e8 ee 71 00 00       	call   0x320a24
  319836:	48 39 43 10          	cmp    QWORD PTR [rbx+0x10],rax
  31983a:	74 06                	je     0x319842
  31983c:	48 83 c4 20          	add    rsp,0x20
  319840:	5b                   	pop    rbx
  319841:	c3                   	ret
  319842:	48 8d 0d 5f 3c f7 ff 	lea    rcx,[rip+0xfffffffffff73c5f]        # 0x28d4a8
  319849:	e8 02 38 fb ff       	call   0x2cd050
  31984e:	cc                   	int3
; [C] exact range 0x2e2a4c..0x2e2a77 identity maximum-size check/trap

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2a4c <.data+0x2e2a4c>:
  2e2a4c:	40 53                	rex push rbx
  2e2a4e:	48 83 ec 20          	sub    rsp,0x20
  2e2a52:	48 8b d9             	mov    rbx,rcx
  2e2a55:	48 83 c1 08          	add    rcx,0x8
  2e2a59:	e8 4a 11 00 00       	call   0x2e3ba8
  2e2a5e:	48 39 43 10          	cmp    QWORD PTR [rbx+0x10],rax
  2e2a62:	74 06                	je     0x2e2a6a
  2e2a64:	48 83 c4 20          	add    rsp,0x20
  2e2a68:	5b                   	pop    rbx
  2e2a69:	c3                   	ret
  2e2a6a:	48 8d 0d 37 aa fa ff 	lea    rcx,[rip+0xfffffffffffaaa37]        # 0x28d4a8
  2e2a71:	e8 da a5 fe ff       	call   0x2cd050
  2e2a76:	cc                   	int3
; [C] exact range 0x2ea1b0..0x2ea228 baseline temporary node

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ea1b0 <.data+0x2ea1b0>:
  2ea1b0:	40 53                	rex push rbx
  2ea1b2:	55                   	push   rbp
  2ea1b3:	56                   	push   rsi
  2ea1b4:	57                   	push   rdi
  2ea1b5:	41 56                	push   r14
  2ea1b7:	48 83 ec 30          	sub    rsp,0x30
  2ea1bb:	49 8b d9             	mov    rbx,r9
  2ea1be:	49 8b e8             	mov    rbp,r8
  2ea1c1:	4c 8b f1             	mov    r14,rcx
  2ea1c4:	e8 f7 1f fe ff       	call   0x2cc1c0
  2ea1c9:	49 8b ce             	mov    rcx,r14
  2ea1cc:	e8 ab f1 02 00       	call   0x31937c
  2ea1d1:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  2ea1d8:	00 
  2ea1d9:	e8 c6 11 fe ff       	call   0x2cb3a4
  2ea1de:	48 8b cb             	mov    rcx,rbx
  2ea1e1:	48 8b f0             	mov    rsi,rax
  2ea1e4:	e8 bb 11 fe ff       	call   0x2cb3a4
  2ea1e9:	48 8b cd             	mov    rcx,rbp
  2ea1ec:	48 8b f8             	mov    rdi,rax
  2ea1ef:	e8 b0 11 fe ff       	call   0x2cb3a4
  2ea1f4:	49 8b 4e 08          	mov    rcx,QWORD PTR [r14+0x8]
  2ea1f8:	48 8b d8             	mov    rbx,rax
  2ea1fb:	48 83 c1 10          	add    rcx,0x10
  2ea1ff:	e8 a0 11 fe ff       	call   0x2cb3a4
  2ea204:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
  2ea207:	48 8b d0             	mov    rdx,rax
  2ea20a:	4c 8b cf             	mov    r9,rdi
  2ea20d:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  2ea212:	4c 8b c3             	mov    r8,rbx
  2ea215:	e8 36 31 00 00       	call   0x2ed350
  2ea21a:	49 8b c6             	mov    rax,r14
  2ea21d:	48 83 c4 30          	add    rsp,0x30
  2ea221:	41 5e                	pop    r14
  2ea223:	5f                   	pop    rdi
  2ea224:	5e                   	pop    rsi
  2ea225:	5d                   	pop    rbp
  2ea226:	5b                   	pop    rbx
  2ea227:	c3                   	ret
; [C] exact range 0x2ddd64..0x2ddddc identity temporary node

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ddd64 <.data+0x2ddd64>:
  2ddd64:	40 53                	rex push rbx
  2ddd66:	55                   	push   rbp
  2ddd67:	56                   	push   rsi
  2ddd68:	57                   	push   rdi
  2ddd69:	41 56                	push   r14
  2ddd6b:	48 83 ec 30          	sub    rsp,0x30
  2ddd6f:	49 8b d9             	mov    rbx,r9
  2ddd72:	49 8b e8             	mov    rbp,r8
  2ddd75:	4c 8b f1             	mov    r14,rcx
  2ddd78:	e8 43 e4 fe ff       	call   0x2cc1c0
  2ddd7d:	49 8b ce             	mov    rcx,r14
  2ddd80:	e8 1b 4b 00 00       	call   0x2e28a0
  2ddd85:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  2ddd8c:	00 
  2ddd8d:	e8 12 d6 fe ff       	call   0x2cb3a4
  2ddd92:	48 8b cb             	mov    rcx,rbx
  2ddd95:	48 8b f0             	mov    rsi,rax
  2ddd98:	e8 07 d6 fe ff       	call   0x2cb3a4
  2ddd9d:	48 8b cd             	mov    rcx,rbp
  2ddda0:	48 8b f8             	mov    rdi,rax
  2ddda3:	e8 fc d5 fe ff       	call   0x2cb3a4
  2ddda8:	49 8b 4e 08          	mov    rcx,QWORD PTR [r14+0x8]
  2dddac:	48 8b d8             	mov    rbx,rax
  2dddaf:	48 83 c1 10          	add    rcx,0x10
  2dddb3:	e8 ec d5 fe ff       	call   0x2cb3a4
  2dddb8:	49 8b 0e             	mov    rcx,QWORD PTR [r14]
  2dddbb:	48 8b d0             	mov    rdx,rax
  2dddbe:	4c 8b cf             	mov    r9,rdi
  2dddc1:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  2dddc6:	4c 8b c3             	mov    r8,rbx
  2dddc9:	e8 d6 0c 00 00       	call   0x2deaa4
  2dddce:	49 8b c6             	mov    rax,r14
  2dddd1:	48 83 c4 30          	add    rsp,0x30
  2dddd5:	41 5e                	pop    r14
  2dddd7:	5f                   	pop    rdi
  2dddd8:	5e                   	pop    rsi
  2dddd9:	5d                   	pop    rbp
  2dddda:	5b                   	pop    rbx
  2ddddb:	c3                   	ret
; [C] exact range 0x31937c..0x3193a4 baseline allocation

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031937c <.data+0x31937c>:
  31937c:	40 53                	rex push rbx
  31937e:	48 83 ec 20          	sub    rsp,0x20
  319382:	48 8b d9             	mov    rbx,rcx
  319385:	48 c7 41 08 00 00 00 	mov    QWORD PTR [rcx+0x8],0x0
  31938c:	00 
  31938d:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  319390:	ba 01 00 00 00       	mov    edx,0x1
  319395:	e8 ea 14 00 00       	call   0x31a884
  31939a:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  31939e:	48 83 c4 20          	add    rsp,0x20
  3193a2:	5b                   	pop    rbx
  3193a3:	c3                   	ret
; [C] exact range 0x2e28a0..0x2e28c8 identity allocation

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e28a0 <.data+0x2e28a0>:
  2e28a0:	40 53                	rex push rbx
  2e28a2:	48 83 ec 20          	sub    rsp,0x20
  2e28a6:	48 8b d9             	mov    rbx,rcx
  2e28a9:	48 c7 41 08 00 00 00 	mov    QWORD PTR [rcx+0x8],0x0
  2e28b0:	00 
  2e28b1:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  2e28b4:	ba 01 00 00 00       	mov    edx,0x1
  2e28b9:	e8 d6 09 00 00       	call   0x2e3294
  2e28be:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  2e28c2:	48 83 c4 20          	add    rsp,0x20
  2e28c6:	5b                   	pop    rbx
  2e28c7:	c3                   	ret
; [C] exact range 0x31a884..0x31a89c baseline allocation route

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031a884 <.data+0x31a884>:
  31a884:	48 83 ec 28          	sub    rsp,0x28
  31a888:	48 8b ca             	mov    rcx,rdx
  31a88b:	e8 5c 17 fd ff       	call   0x2ebfec
  31a890:	48 8b c8             	mov    rcx,rax
  31a893:	48 83 c4 28          	add    rsp,0x28
  31a897:	e9 b4 07 fb ff       	jmp    0x2cb050
; [C] exact range 0x2e3294..0x2e32ac identity allocation route

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3294 <.data+0x2e3294>:
  2e3294:	48 83 ec 28          	sub    rsp,0x28
  2e3298:	48 8b ca             	mov    rcx,rdx
  2e329b:	e8 f8 af ff ff       	call   0x2de298
  2e32a0:	48 8b c8             	mov    rcx,rax
  2e32a3:	48 83 c4 28          	add    rsp,0x28
  2e32a7:	e9 a4 7d fe ff       	jmp    0x2cb050
; [C] exact range 0x2ebfec..0x2ec012 48-byte node size and overflow

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ebfec <.data+0x2ebfec>:
  2ebfec:	48 83 ec 28          	sub    rsp,0x28
  2ebff0:	48 b8 55 55 55 55 55 	movabs rax,0x555555555555555
  2ebff7:	55 55 05 
  2ebffa:	48 3b c8             	cmp    rcx,rax
  2ebffd:	77 0d                	ja     0x2ec00c
  2ebfff:	48 8d 04 49          	lea    rax,[rcx+rcx*2]
  2ec003:	48 c1 e0 04          	shl    rax,0x4
  2ec007:	48 83 c4 28          	add    rsp,0x28
  2ec00b:	c3                   	ret
  2ec00c:	e8 5f 16 fe ff       	call   0x2cd670
  2ec011:	cc                   	int3
; [C] exact range 0x2de298..0x2de2be 96-byte node size and overflow

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002de298 <.data+0x2de298>:
  2de298:	48 83 ec 28          	sub    rsp,0x28
  2de29c:	48 b8 aa aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaa
  2de2a3:	aa aa 02 
  2de2a6:	48 3b c8             	cmp    rcx,rax
  2de2a9:	77 0d                	ja     0x2de2b8
  2de2ab:	48 8d 04 49          	lea    rax,[rcx+rcx*2]
  2de2af:	48 c1 e0 05          	shl    rax,0x5
  2de2b3:	48 83 c4 28          	add    rsp,0x28
  2de2b7:	c3                   	ret
  2de2b8:	e8 b3 f3 fe ff       	call   0x2cd670
  2de2bd:	cc                   	int3
; [C] exact range 0x2ed350..0x2ed39b baseline pair forwarding

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ed350 <.data+0x2ed350>:
  2ed350:	40 53                	rex push rbx
  2ed352:	55                   	push   rbp
  2ed353:	56                   	push   rsi
  2ed354:	57                   	push   rdi
  2ed355:	48 83 ec 28          	sub    rsp,0x28
  2ed359:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
  2ed35e:	49 8b d9             	mov    rbx,r9
  2ed361:	49 8b f0             	mov    rsi,r8
  2ed364:	48 8b ea             	mov    rbp,rdx
  2ed367:	e8 38 e0 fd ff       	call   0x2cb3a4
  2ed36c:	48 8b cb             	mov    rcx,rbx
  2ed36f:	48 8b f8             	mov    rdi,rax
  2ed372:	e8 2d e0 fd ff       	call   0x2cb3a4
  2ed377:	48 8b ce             	mov    rcx,rsi
  2ed37a:	48 8b d8             	mov    rbx,rax
  2ed37d:	e8 22 e0 fd ff       	call   0x2cb3a4
  2ed382:	48 8b d0             	mov    rdx,rax
  2ed385:	4c 8b cf             	mov    r9,rdi
  2ed388:	4c 8b c3             	mov    r8,rbx
  2ed38b:	48 8b cd             	mov    rcx,rbp
  2ed38e:	48 83 c4 28          	add    rsp,0x28
  2ed392:	5f                   	pop    rdi
  2ed393:	5e                   	pop    rsi
  2ed394:	5d                   	pop    rbp
  2ed395:	5b                   	pop    rbx
  2ed396:	e9 55 02 00 00       	jmp    0x2ed5f0
; [C] exact range 0x2deaa4..0x2deaef identity pair forwarding

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002deaa4 <.data+0x2deaa4>:
  2deaa4:	40 53                	rex push rbx
  2deaa6:	55                   	push   rbp
  2deaa7:	56                   	push   rsi
  2deaa8:	57                   	push   rdi
  2deaa9:	48 83 ec 28          	sub    rsp,0x28
  2deaad:	48 8b 4c 24 70       	mov    rcx,QWORD PTR [rsp+0x70]
  2deab2:	49 8b d9             	mov    rbx,r9
  2deab5:	49 8b f0             	mov    rsi,r8
  2deab8:	48 8b ea             	mov    rbp,rdx
  2deabb:	e8 e4 c8 fe ff       	call   0x2cb3a4
  2deac0:	48 8b cb             	mov    rcx,rbx
  2deac3:	48 8b f8             	mov    rdi,rax
  2deac6:	e8 d9 c8 fe ff       	call   0x2cb3a4
  2deacb:	48 8b ce             	mov    rcx,rsi
  2deace:	48 8b d8             	mov    rbx,rax
  2dead1:	e8 ce c8 fe ff       	call   0x2cb3a4
  2dead6:	48 8b d0             	mov    rdx,rax
  2dead9:	4c 8b cf             	mov    r9,rdi
  2deadc:	4c 8b c3             	mov    r8,rbx
  2deadf:	48 8b cd             	mov    rcx,rbp
  2deae2:	48 83 c4 28          	add    rsp,0x28
  2deae6:	5f                   	pop    rdi
  2deae7:	5e                   	pop    rsi
  2deae8:	5d                   	pop    rbp
  2deae9:	5b                   	pop    rbx
  2deaea:	e9 51 00 00 00       	jmp    0x2deb40
; [C] exact range 0x2ed5f0..0x2ed663 baseline pair construction

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ed5f0 <.data+0x2ed5f0>:
  2ed5f0:	40 53                	rex push rbx
  2ed5f2:	55                   	push   rbp
  2ed5f3:	56                   	push   rsi
  2ed5f4:	57                   	push   rdi
  2ed5f5:	48 83 ec 38          	sub    rsp,0x38
  2ed5f9:	48 8b e9             	mov    rbp,rcx
  2ed5fc:	49 8b f9             	mov    rdi,r9
  2ed5ff:	49 8b c8             	mov    rcx,r8
  2ed602:	48 8b da             	mov    rbx,rdx
  2ed605:	e8 9a dd fd ff       	call   0x2cb3a4
  2ed60a:	48 8b d0             	mov    rdx,rax
  2ed60d:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2ed612:	e8 1d 1c ff ff       	call   0x2df234
  2ed617:	48 8b cb             	mov    rcx,rbx
  2ed61a:	48 8b f0             	mov    rsi,rax
  2ed61d:	e8 82 dd fd ff       	call   0x2cb3a4
  2ed622:	48 8b cf             	mov    rcx,rdi
  2ed625:	48 8b d8             	mov    rbx,rax
  2ed628:	e8 77 dd fd ff       	call   0x2cb3a4
  2ed62d:	48 8b d0             	mov    rdx,rax
  2ed630:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2ed635:	e8 6a dd fd ff       	call   0x2cb3a4
  2ed63a:	48 8b d5             	mov    rdx,rbp
  2ed63d:	b9 1c 00 00 00       	mov    ecx,0x1c
  2ed642:	48 8b f8             	mov    rdi,rax
  2ed645:	e8 e6 ee fd ff       	call   0x2cc530
  2ed64a:	8a 13                	mov    dl,BYTE PTR [rbx]
  2ed64c:	48 8b c8             	mov    rcx,rax
  2ed64f:	4c 8b cf             	mov    r9,rdi
  2ed652:	4c 8b c6             	mov    r8,rsi
  2ed655:	e8 e6 c9 ff ff       	call   0x2ea040
  2ed65a:	48 83 c4 38          	add    rsp,0x38
  2ed65e:	5f                   	pop    rdi
  2ed65f:	5e                   	pop    rsi
  2ed660:	5d                   	pop    rbp
  2ed661:	5b                   	pop    rbx
  2ed662:	c3                   	ret
; [C] exact range 0x2deb40..0x2debb3 identity pair construction

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002deb40 <.data+0x2deb40>:
  2deb40:	40 53                	rex push rbx
  2deb42:	55                   	push   rbp
  2deb43:	56                   	push   rsi
  2deb44:	57                   	push   rdi
  2deb45:	48 83 ec 38          	sub    rsp,0x38
  2deb49:	48 8b e9             	mov    rbp,rcx
  2deb4c:	49 8b f9             	mov    rdi,r9
  2deb4f:	49 8b c8             	mov    rcx,r8
  2deb52:	48 8b da             	mov    rbx,rdx
  2deb55:	e8 4a c8 fe ff       	call   0x2cb3a4
  2deb5a:	48 8b d0             	mov    rdx,rax
  2deb5d:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2deb62:	e8 cd 06 00 00       	call   0x2df234
  2deb67:	48 8b cb             	mov    rcx,rbx
  2deb6a:	48 8b f0             	mov    rsi,rax
  2deb6d:	e8 32 c8 fe ff       	call   0x2cb3a4
  2deb72:	48 8b cf             	mov    rcx,rdi
  2deb75:	48 8b d8             	mov    rbx,rax
  2deb78:	e8 27 c8 fe ff       	call   0x2cb3a4
  2deb7d:	48 8b d0             	mov    rdx,rax
  2deb80:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2deb85:	e8 1a c8 fe ff       	call   0x2cb3a4
  2deb8a:	48 8b d5             	mov    rdx,rbp
  2deb8d:	b9 50 00 00 00       	mov    ecx,0x50
  2deb92:	48 8b f8             	mov    rdi,rax
  2deb95:	e8 96 d9 fe ff       	call   0x2cc530
  2deb9a:	8a 13                	mov    dl,BYTE PTR [rbx]
  2deb9c:	48 8b c8             	mov    rcx,rax
  2deb9f:	4c 8b cf             	mov    r9,rdi
  2deba2:	4c 8b c6             	mov    r8,rsi
  2deba5:	e8 8e f1 ff ff       	call   0x2ddd38
  2debaa:	48 83 c4 38          	add    rsp,0x38
  2debae:	5f                   	pop    rdi
  2debaf:	5e                   	pop    rsi
  2debb0:	5d                   	pop    rbp
  2debb1:	5b                   	pop    rbx
  2debb2:	c3                   	ret
; [C] exact range 0x2ea040..0x2ea069 baseline pair constructor

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ea040 <.data+0x2ea040>:
  2ea040:	40 53                	rex push rbx
  2ea042:	48 83 ec 30          	sub    rsp,0x30
  2ea046:	4d 8b d1             	mov    r10,r9
  2ea049:	49 8b d0             	mov    rdx,r8
  2ea04c:	32 c0                	xor    al,al
  2ea04e:	4d 8b c2             	mov    r8,r10
  2ea051:	45 32 c9             	xor    r9b,r9b
  2ea054:	88 44 24 20          	mov    BYTE PTR [rsp+0x20],al
  2ea058:	48 8b d9             	mov    rbx,rcx
  2ea05b:	e8 70 04 00 00       	call   0x2ea4d0
  2ea060:	48 8b c3             	mov    rax,rbx
  2ea063:	48 83 c4 30          	add    rsp,0x30
  2ea067:	5b                   	pop    rbx
  2ea068:	c3                   	ret
; [C] exact range 0x2ea4d0..0x2ea50b baseline key/value stores

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ea4d0 <.data+0x2ea4d0>:
  2ea4d0:	40 53                	rex push rbx
  2ea4d2:	48 83 ec 20          	sub    rsp,0x20
  2ea4d6:	48 8b d9             	mov    rbx,rcx
  2ea4d9:	48 8b ca             	mov    rcx,rdx
  2ea4dc:	e8 c3 0e fe ff       	call   0x2cb3a4
  2ea4e1:	48 8b c8             	mov    rcx,rax
  2ea4e4:	e8 ef 40 fe ff       	call   0x2ce5d8
  2ea4e9:	48 8d 4b 04          	lea    rcx,[rbx+0x4]
  2ea4ed:	0f 57 c0             	xorps  xmm0,xmm0
  2ea4f0:	8b 10                	mov    edx,DWORD PTR [rax]
  2ea4f2:	33 c0                	xor    eax,eax
  2ea4f4:	89 13                	mov    DWORD PTR [rbx],edx
  2ea4f6:	0f 11 01             	movups XMMWORD PTR [rcx],xmm0
  2ea4f9:	48 89 41 10          	mov    QWORD PTR [rcx+0x10],rax
  2ea4fd:	e8 76 49 00 00       	call   0x2eee78
  2ea502:	48 8b c3             	mov    rax,rbx
  2ea505:	48 83 c4 20          	add    rsp,0x20
  2ea509:	5b                   	pop    rbx
  2ea50a:	c3                   	ret
; [C] exact range 0x2eee78..0x2eee98 baseline no-op member constructors

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002eee78 <.data+0x2eee78>:
  2eee78:	40 53                	rex push rbx
  2eee7a:	48 83 ec 20          	sub    rsp,0x20
  2eee7e:	48 8b d9             	mov    rbx,rcx
  2eee81:	e8 1e c5 fd ff       	call   0x2cb3a4
  2eee86:	48 8d 4b 08          	lea    rcx,[rbx+0x8]
  2eee8a:	e8 15 c5 fd ff       	call   0x2cb3a4
  2eee8f:	48 8b c3             	mov    rax,rbx
  2eee92:	48 83 c4 20          	add    rsp,0x20
  2eee96:	5b                   	pop    rbx
  2eee97:	c3                   	ret
; [C] exact range 0x2ddd38..0x2ddd61 identity pair constructor

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ddd38 <.data+0x2ddd38>:
  2ddd38:	40 53                	rex push rbx
  2ddd3a:	48 83 ec 30          	sub    rsp,0x30
  2ddd3e:	4d 8b d1             	mov    r10,r9
  2ddd41:	49 8b d0             	mov    rdx,r8
  2ddd44:	32 c0                	xor    al,al
  2ddd46:	4d 8b c2             	mov    r8,r10
  2ddd49:	45 32 c9             	xor    r9b,r9b
  2ddd4c:	88 44 24 20          	mov    BYTE PTR [rsp+0x20],al
  2ddd50:	48 8b d9             	mov    rbx,rcx
  2ddd53:	e8 f8 00 00 00       	call   0x2dde50
  2ddd58:	48 8b c3             	mov    rax,rbx
  2ddd5b:	48 83 c4 30          	add    rsp,0x30
  2ddd5f:	5b                   	pop    rbx
  2ddd60:	c3                   	ret
; [C] exact range 0x2dde50..0x2dde86 identity key/value constructor

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dde50 <.data+0x2dde50>:
  2dde50:	40 53                	rex push rbx
  2dde52:	48 83 ec 20          	sub    rsp,0x20
  2dde56:	48 8b d9             	mov    rbx,rcx
  2dde59:	48 8b ca             	mov    rcx,rdx
  2dde5c:	e8 43 d5 fe ff       	call   0x2cb3a4
  2dde61:	48 8b c8             	mov    rcx,rax
  2dde64:	e8 6f 07 ff ff       	call   0x2ce5d8
  2dde69:	48 8b d0             	mov    rdx,rax
  2dde6c:	48 8b cb             	mov    rcx,rbx
  2dde6f:	e8 10 e4 fe ff       	call   0x2cc284
  2dde74:	48 8d 4b 20          	lea    rcx,[rbx+0x20]
  2dde78:	e8 0b 15 00 00       	call   0x2df388
  2dde7d:	48 8b c3             	mov    rax,rbx
  2dde80:	48 83 c4 20          	add    rsp,0x20
  2dde84:	5b                   	pop    rbx
  2dde85:	c3                   	ret
; [C] exact range 0x2df388..0x2df3ab identity payload constructor

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df388 <.data+0x2df388>:
  2df388:	40 53                	rex push rbx
  2df38a:	48 83 ec 20          	sub    rsp,0x20
  2df38e:	48 8b d9             	mov    rbx,rcx
  2df391:	e8 ca 51 ff ff       	call   0x2d4560
  2df396:	33 c0                	xor    eax,eax
  2df398:	66 89 43 20          	mov    WORD PTR [rbx+0x20],ax
  2df39c:	89 43 24             	mov    DWORD PTR [rbx+0x24],eax
  2df39f:	88 43 28             	mov    BYTE PTR [rbx+0x28],al
  2df3a2:	48 8b c3             	mov    rax,rbx
  2df3a5:	48 83 c4 20          	add    rsp,0x20
  2df3a9:	5b                   	pop    rbx
  2df3aa:	c3                   	ret
; [C] exact range 0x2d4560..0x2d4583 empty byte string constructor

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d4560 <.data+0x2d4560>:
  2d4560:	40 53                	rex push rbx
  2d4562:	48 83 ec 20          	sub    rsp,0x20
  2d4566:	8a 54 24 30          	mov    dl,BYTE PTR [rsp+0x30]
  2d456a:	48 8b d9             	mov    rbx,rcx
  2d456d:	e8 4e 66 ff ff       	call   0x2cabc0
  2d4572:	48 8b cb             	mov    rcx,rbx
  2d4575:	e8 1e 29 00 00       	call   0x2d6e98
  2d457a:	48 8b c3             	mov    rax,rbx
  2d457d:	48 83 c4 20          	add    rsp,0x20
  2d4581:	5b                   	pop    rbx
  2d4582:	c3                   	ret
; [C] exact range 0x2d6e98..0x2d6ece empty byte string initialization

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d6e98 <.data+0x2d6e98>:
  2d6e98:	40 53                	rex push rbx
  2d6e9a:	48 83 ec 20          	sub    rsp,0x20
  2d6e9e:	48 8b d9             	mov    rbx,rcx
  2d6ea1:	48 c7 41 10 00 00 00 	mov    QWORD PTR [rcx+0x10],0x0
  2d6ea8:	00 
  2d6ea9:	48 c7 41 18 0f 00 00 	mov    QWORD PTR [rcx+0x18],0xf
  2d6eb0:	00 
  2d6eb1:	e8 3e 60 ff ff       	call   0x2ccef4
  2d6eb6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2d6ebb:	c6 44 24 30 00       	mov    BYTE PTR [rsp+0x30],0x0
  2d6ec0:	48 8b cb             	mov    rcx,rbx
  2d6ec3:	e8 1c 69 ff ff       	call   0x2cd7e4
  2d6ec8:	48 83 c4 20          	add    rsp,0x20
  2d6ecc:	5b                   	pop    rbx
  2d6ecd:	c3                   	ret
; [C] exact range 0x2d7328..0x2d73cb native node links and bucket first/last

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d7328 <.data+0x2d7328>:
  2d7328:	4c 8b dc             	mov    r11,rsp
  2d732b:	49 89 5b 10          	mov    QWORD PTR [r11+0x10],rbx
  2d732f:	49 89 73 20          	mov    QWORD PTR [r11+0x20],rsi
  2d7333:	4d 89 43 18          	mov    QWORD PTR [r11+0x18],r8
  2d7337:	57                   	push   rdi
  2d7338:	48 83 ec 20          	sub    rsp,0x20
  2d733c:	49 8b 40 08          	mov    rax,QWORD PTR [r8+0x8]
  2d7340:	48 8b da             	mov    rbx,rdx
  2d7343:	48 ff 41 10          	inc    QWORD PTR [rcx+0x10]
  2d7347:	49 8d 53 18          	lea    rdx,[r11+0x18]
  2d734b:	48 8b f9             	mov    rdi,rcx
  2d734e:	49 89 43 08          	mov    QWORD PTR [r11+0x8],rax
  2d7352:	49 8b c9             	mov    rcx,r9
  2d7355:	49 8b f1             	mov    rsi,r9
  2d7358:	e8 97 3f ff ff       	call   0x2cb2f4
  2d735d:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  2d7361:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2d7366:	e8 89 3f ff ff       	call   0x2cb2f4
  2d736b:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  2d7370:	48 89 30             	mov    QWORD PTR [rax],rsi
  2d7373:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  2d7378:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
  2d737c:	48 8b 4f 30          	mov    rcx,QWORD PTR [rdi+0x30]
  2d7380:	48 8b 57 18          	mov    rdx,QWORD PTR [rdi+0x18]
  2d7384:	48 23 cb             	and    rcx,rbx
  2d7387:	48 03 c9             	add    rcx,rcx
  2d738a:	48 8b 04 ca          	mov    rax,QWORD PTR [rdx+rcx*8]
  2d738e:	48 3b 47 08          	cmp    rax,QWORD PTR [rdi+0x8]
  2d7392:	75 06                	jne    0x2d739a
  2d7394:	48 89 34 ca          	mov    QWORD PTR [rdx+rcx*8],rsi
  2d7398:	eb 19                	jmp    0x2d73b3
  2d739a:	48 3b 44 24 40       	cmp    rax,QWORD PTR [rsp+0x40]
  2d739f:	75 06                	jne    0x2d73a7
  2d73a1:	48 89 34 ca          	mov    QWORD PTR [rdx+rcx*8],rsi
  2d73a5:	eb 11                	jmp    0x2d73b8
  2d73a7:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  2d73ac:	48 39 44 ca 08       	cmp    QWORD PTR [rdx+rcx*8+0x8],rax
  2d73b1:	75 05                	jne    0x2d73b8
  2d73b3:	48 89 74 ca 08       	mov    QWORD PTR [rdx+rcx*8+0x8],rsi
  2d73b8:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  2d73bd:	48 8b c6             	mov    rax,rsi
  2d73c0:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  2d73c5:	48 83 c4 20          	add    rsp,0x20
  2d73c9:	5f                   	pop    rdi
  2d73ca:	c3                   	ret
; [C] exact range 0x2d6d44..0x2d6dce load threshold and uint64 float conversion

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d6d44 <.data+0x2d6d44>:
  2d6d44:	40 53                	rex push rbx
  2d6d46:	48 83 ec 40          	sub    rsp,0x40
  2d6d4a:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  2d6d4f:	48 8b d9             	mov    rbx,rcx
  2d6d52:	0f 29 7c 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm7
  2d6d57:	e8 84 1d 00 00       	call   0x2d8ae0
  2d6d5c:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
  2d6d60:	0f 28 f8             	movaps xmm7,xmm0
  2d6d63:	48 83 c2 01          	add    rdx,0x1
  2d6d67:	0f 57 f6             	xorps  xmm6,xmm6
  2d6d6a:	78 07                	js     0x2d6d73
  2d6d6c:	f3 48 0f 2a f2       	cvtsi2ss xmm6,rdx
  2d6d71:	eb 15                	jmp    0x2d6d88
  2d6d73:	48 8b c2             	mov    rax,rdx
  2d6d76:	83 e2 01             	and    edx,0x1
  2d6d79:	48 d1 e8             	shr    rax,1
  2d6d7c:	48 0b c2             	or     rax,rdx
  2d6d7f:	f3 48 0f 2a f0       	cvtsi2ss xmm6,rax
  2d6d84:	f3 0f 58 f6          	addss  xmm6,xmm6
  2d6d88:	48 8b cb             	mov    rcx,rbx
  2d6d8b:	e8 80 10 00 00       	call   0x2d7e10
  2d6d90:	48 8b c8             	mov    rcx,rax
  2d6d93:	0f 57 c0             	xorps  xmm0,xmm0
  2d6d96:	48 85 c0             	test   rax,rax
  2d6d99:	78 07                	js     0x2d6da2
  2d6d9b:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  2d6da0:	eb 12                	jmp    0x2d6db4
  2d6da2:	48 d1 e8             	shr    rax,1
  2d6da5:	83 e1 01             	and    ecx,0x1
  2d6da8:	48 0b c1             	or     rax,rcx
  2d6dab:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  2d6db0:	f3 0f 58 c0          	addss  xmm0,xmm0
  2d6db4:	f3 0f 5e f0          	divss  xmm6,xmm0
  2d6db8:	0f 2f f7             	comiss xmm6,xmm7
  2d6dbb:	0f 28 74 24 30       	movaps xmm6,XMMWORD PTR [rsp+0x30]
  2d6dc0:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
  2d6dc5:	0f 97 c0             	seta   al
  2d6dc8:	48 83 c4 40          	add    rsp,0x40
  2d6dcc:	5b                   	pop    rbx
  2d6dcd:	c3                   	ret
; [C] exact range 0x319a00..0x319a73 baseline growth count

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000319a00 <.data+0x319a00>:
  319a00:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  319a05:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  319a0a:	57                   	push   rdi
  319a0b:	48 83 ec 20          	sub    rsp,0x20
  319a0f:	48 8b da             	mov    rbx,rdx
  319a12:	48 8b f9             	mov    rdi,rcx
  319a15:	e8 f6 e3 fb ff       	call   0x2d7e10
  319a1a:	48 8b d3             	mov    rdx,rbx
  319a1d:	48 8b cf             	mov    rcx,rdi
  319a20:	48 8b f0             	mov    rsi,rax
  319a23:	e8 3c db fb ff       	call   0x2d7564
  319a28:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  319a2d:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  319a32:	48 8d 0d df 72 f7 ff 	lea    rcx,[rip+0xfffffffffff772df]        # 0x290d18
  319a39:	e8 06 27 fb ff       	call   0x2cc144
  319a3e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  319a41:	48 3b f0             	cmp    rsi,rax
  319a44:	72 05                	jb     0x319a4b
  319a46:	48 8b c6             	mov    rax,rsi
  319a49:	eb 18                	jmp    0x319a63
  319a4b:	48 81 fe 00 02 00 00 	cmp    rsi,0x200
  319a52:	73 0f                	jae    0x319a63
  319a54:	48 8d 0c f5 00 00 00 	lea    rcx,[rsi*8+0x0]
  319a5b:	00 
  319a5c:	48 3b c8             	cmp    rcx,rax
  319a5f:	48 0f 43 c1          	cmovae rax,rcx
  319a63:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  319a68:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  319a6d:	48 83 c4 20          	add    rsp,0x20
  319a71:	5f                   	pop    rdi
  319a72:	c3                   	ret
; [C] exact range 0x2e2b04..0x2e2b77 identity growth count

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2b04 <.data+0x2e2b04>:
  2e2b04:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2e2b09:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2e2b0e:	57                   	push   rdi
  2e2b0f:	48 83 ec 20          	sub    rsp,0x20
  2e2b13:	48 8b da             	mov    rbx,rdx
  2e2b16:	48 8b f9             	mov    rdi,rcx
  2e2b19:	e8 f2 52 ff ff       	call   0x2d7e10
  2e2b1e:	48 8b d3             	mov    rdx,rbx
  2e2b21:	48 8b cf             	mov    rcx,rdi
  2e2b24:	48 8b f0             	mov    rsi,rax
  2e2b27:	e8 38 4a ff ff       	call   0x2d7564
  2e2b2c:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2e2b31:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  2e2b36:	48 8d 0d c3 ad fa ff 	lea    rcx,[rip+0xfffffffffffaadc3]        # 0x28d900
  2e2b3d:	e8 02 96 fe ff       	call   0x2cc144
  2e2b42:	48 8b 00             	mov    rax,QWORD PTR [rax]
  2e2b45:	48 3b f0             	cmp    rsi,rax
  2e2b48:	72 05                	jb     0x2e2b4f
  2e2b4a:	48 8b c6             	mov    rax,rsi
  2e2b4d:	eb 18                	jmp    0x2e2b67
  2e2b4f:	48 81 fe 00 02 00 00 	cmp    rsi,0x200
  2e2b56:	73 0f                	jae    0x2e2b67
  2e2b58:	48 8d 0c f5 00 00 00 	lea    rcx,[rsi*8+0x0]
  2e2b5f:	00 
  2e2b60:	48 3b c8             	cmp    rcx,rax
  2e2b63:	48 0f 43 c1          	cmovae rax,rcx
  2e2b67:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2e2b6c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2e2b71:	48 83 c4 20          	add    rsp,0x20
  2e2b75:	5f                   	pop    rdi
  2e2b76:	c3                   	ret
; [C] exact range 0x319be8..0x319df2 baseline complete rehash including alternate splice tail

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000319be8 <.data+0x319be8>:
  319be8:	40 55                	rex push rbp
  319bea:	53                   	push   rbx
  319beb:	56                   	push   rsi
  319bec:	57                   	push   rdi
  319bed:	41 54                	push   r12
  319bef:	41 55                	push   r13
  319bf1:	41 56                	push   r14
  319bf3:	41 57                	push   r15
  319bf5:	48 8b ec             	mov    rbp,rsp
  319bf8:	48 83 ec 28          	sub    rsp,0x28
  319bfc:	4c 8d 69 18          	lea    r13,[rcx+0x18]
  319c00:	4c 8b f9             	mov    r15,rcx
  319c03:	49 8b cd             	mov    rcx,r13
  319c06:	48 8b da             	mov    rbx,rdx
  319c09:	e8 2e ef fb ff       	call   0x2d8b3c
  319c0e:	48 d1 e8             	shr    rax,1
  319c11:	48 8b c8             	mov    rcx,rax
  319c14:	e8 53 d4 fb ff       	call   0x2d706c
  319c19:	8b c8                	mov    ecx,eax
  319c1b:	bf 01 00 00 00       	mov    edi,0x1
  319c20:	8b c7                	mov    eax,edi
  319c22:	48 d3 e0             	shl    rax,cl
  319c25:	48 3b d8             	cmp    rbx,rax
  319c28:	0f 87 b7 01 00 00    	ja     0x319de5
  319c2e:	48 8b cb             	mov    rcx,rbx
  319c31:	e8 f2 ce fb ff       	call   0x2d6b28
  319c36:	8b c8                	mov    ecx,eax
  319c38:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  319c3c:	48 d3 e7             	shl    rdi,cl
  319c3f:	8b d8                	mov    ebx,eax
  319c41:	49 8b cf             	mov    rcx,r15
  319c44:	e8 23 dd fb ff       	call   0x2d796c
  319c49:	4c 8b 45 58          	mov    r8,QWORD PTR [rbp+0x58]
  319c4d:	8b cb                	mov    ecx,ebx
  319c4f:	ba 02 00 00 00       	mov    edx,0x2
  319c54:	48 d3 e2             	shl    rdx,cl
  319c57:	49 8b cd             	mov    rcx,r13
  319c5a:	e8 41 cc fb ff       	call   0x2d68a0
  319c5f:	48 8d 47 ff          	lea    rax,[rdi-0x1]
  319c63:	49 89 7f 38          	mov    QWORD PTR [r15+0x38],rdi
  319c67:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  319c6b:	49 89 47 30          	mov    QWORD PTR [r15+0x30],rax
  319c6f:	49 8b cf             	mov    rcx,r15
  319c72:	e8 b5 dc fb ff       	call   0x2d792c
  319c77:	48 8b 5d 50          	mov    rbx,QWORD PTR [rbp+0x50]
  319c7b:	48 89 5d 60          	mov    QWORD PTR [rbp+0x60],rbx
  319c7f:	e9 10 01 00 00       	jmp    0x319d94
  319c84:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  319c88:	e8 73 b1 fb ff       	call   0x2d4e00
  319c8d:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  319c91:	e8 2a b1 fb ff       	call   0x2d4dc0
  319c96:	48 8b c8             	mov    rcx,rax
  319c99:	e8 06 17 fb ff       	call   0x2cb3a4
  319c9e:	48 8b d0             	mov    rdx,rax
  319ca1:	49 8b cf             	mov    rcx,r15
  319ca4:	4c 8b e0             	mov    r12,rax
  319ca7:	e8 4c e1 fb ff       	call   0x2d7df8
  319cac:	4d 8b 75 00          	mov    r14,QWORD PTR [r13+0x0]
  319cb0:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  319cb4:	48 c1 e0 04          	shl    rax,0x4
  319cb8:	4c 03 f0             	add    r14,rax
  319cbb:	49 8b ce             	mov    rcx,r14
  319cbe:	e8 71 28 fb ff       	call   0x2cc534
  319cc3:	48 8b 7d 60          	mov    rdi,QWORD PTR [rbp+0x60]
  319cc7:	84 c0                	test   al,al
  319cc9:	74 0c                	je     0x319cd7
  319ccb:	49 89 1e             	mov    QWORD PTR [r14],rbx
  319cce:	49 89 5e 08          	mov    QWORD PTR [r14+0x8],rbx
  319cd2:	e9 b6 00 00 00       	jmp    0x319d8d
  319cd7:	49 8b 76 08          	mov    rsi,QWORD PTR [r14+0x8]
  319cdb:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319cdf:	48 89 75 48          	mov    QWORD PTR [rbp+0x48],rsi
  319ce3:	e8 d0 b0 fb ff       	call   0x2d4db8
  319ce8:	48 8b c8             	mov    rcx,rax
  319ceb:	e8 b4 16 fb ff       	call   0x2cb3a4
  319cf0:	4c 8b c0             	mov    r8,rax
  319cf3:	49 8b d4             	mov    rdx,r12
  319cf6:	49 8b cf             	mov    rcx,r15
  319cf9:	e8 ee 53 fb ff       	call   0x2cf0ec
  319cfe:	84 c0                	test   al,al
  319d00:	75 2b                	jne    0x319d2d
  319d02:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319d06:	e8 e5 b0 fb ff       	call   0x2d4df0
  319d0b:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  319d0f:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319d13:	e8 1c 28 fb ff       	call   0x2cc534
  319d18:	84 c0                	test   al,al
  319d1a:	75 b2                	jne    0x319cce
  319d1c:	48 8b 4d 48          	mov    rcx,QWORD PTR [rbp+0x48]
  319d20:	4c 8b c7             	mov    r8,rdi
  319d23:	48 8b d3             	mov    rdx,rbx
  319d26:	e8 cd dd fb ff       	call   0x2d7af8
  319d2b:	eb a1                	jmp    0x319cce
  319d2d:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  319d31:	49 8b ce             	mov    rcx,r14
  319d34:	e8 fb 27 fb ff       	call   0x2cc534
  319d39:	84 c0                	test   al,al
  319d3b:	75 3f                	jne    0x319d7c
  319d3d:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319d41:	e8 f2 b0 fb ff       	call   0x2d4e38
  319d46:	48 8b c8             	mov    rcx,rax
  319d49:	e8 6a b0 fb ff       	call   0x2d4db8
  319d4e:	48 8b c8             	mov    rcx,rax
  319d51:	e8 4e 16 fb ff       	call   0x2cb3a4
  319d56:	4c 8b c0             	mov    r8,rax
  319d59:	49 8b d4             	mov    rdx,r12
  319d5c:	49 8b cf             	mov    rcx,r15
  319d5f:	e8 88 53 fb ff       	call   0x2cf0ec
  319d64:	84 c0                	test   al,al
  319d66:	74 63                	je     0x319dcb
  319d68:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  319d6c:	49 8b ce             	mov    rcx,r14
  319d6f:	e8 c0 27 fb ff       	call   0x2cc534
  319d74:	84 c0                	test   al,al
  319d76:	74 c5                	je     0x319d3d
  319d78:	48 8b 75 48          	mov    rsi,QWORD PTR [rbp+0x48]
  319d7c:	4c 8b c7             	mov    r8,rdi
  319d7f:	48 8b d3             	mov    rdx,rbx
  319d82:	48 8b ce             	mov    rcx,rsi
  319d85:	e8 6e dd fb ff       	call   0x2d7af8
  319d8a:	49 89 1e             	mov    QWORD PTR [r14],rbx
  319d8d:	48 8b df             	mov    rbx,rdi
  319d90:	48 89 5d 50          	mov    QWORD PTR [rbp+0x50],rbx
  319d94:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  319d98:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  319d9c:	e8 93 27 fb ff       	call   0x2cc534
  319da1:	84 c0                	test   al,al
  319da3:	0f 84 db fe ff ff    	je     0x319c84
  319da9:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319dad:	48 c7 45 48 00 00 00 	mov    QWORD PTR [rbp+0x48],0x0
  319db4:	00 
  319db5:	e8 52 55 fd ff       	call   0x2ef30c
  319dba:	48 83 c4 28          	add    rsp,0x28
  319dbe:	41 5f                	pop    r15
  319dc0:	41 5e                	pop    r14
  319dc2:	41 5d                	pop    r13
  319dc4:	41 5c                	pop    r12
  319dc6:	5f                   	pop    rdi
  319dc7:	5e                   	pop    rsi
  319dc8:	5b                   	pop    rbx
  319dc9:	5d                   	pop    rbp
  319dca:	c3                   	ret
  319dcb:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  319dcf:	e8 1c b0 fb ff       	call   0x2d4df0
  319dd4:	48 8b 4d 48          	mov    rcx,QWORD PTR [rbp+0x48]
  319dd8:	4c 8b c7             	mov    r8,rdi
  319ddb:	48 8b d3             	mov    rdx,rbx
  319dde:	e8 15 dd fb ff       	call   0x2d7af8
  319de3:	eb a8                	jmp    0x319d8d
  319de5:	48 8d 0d f4 36 f7 ff 	lea    rcx,[rip+0xfffffffffff736f4]        # 0x28d4e0
  319dec:	e8 5f 32 fb ff       	call   0x2cd050
  319df1:	cc                   	int3
; [C] exact range 0x2e2bac..0x2e2db6 identity complete rehash including alternate splice tail

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2bac <.data+0x2e2bac>:
  2e2bac:	40 55                	rex push rbp
  2e2bae:	53                   	push   rbx
  2e2baf:	56                   	push   rsi
  2e2bb0:	57                   	push   rdi
  2e2bb1:	41 54                	push   r12
  2e2bb3:	41 55                	push   r13
  2e2bb5:	41 56                	push   r14
  2e2bb7:	41 57                	push   r15
  2e2bb9:	48 8b ec             	mov    rbp,rsp
  2e2bbc:	48 83 ec 28          	sub    rsp,0x28
  2e2bc0:	4c 8d 69 18          	lea    r13,[rcx+0x18]
  2e2bc4:	4c 8b f9             	mov    r15,rcx
  2e2bc7:	49 8b cd             	mov    rcx,r13
  2e2bca:	48 8b da             	mov    rbx,rdx
  2e2bcd:	e8 6a 5f ff ff       	call   0x2d8b3c
  2e2bd2:	48 d1 e8             	shr    rax,1
  2e2bd5:	48 8b c8             	mov    rcx,rax
  2e2bd8:	e8 8f 44 ff ff       	call   0x2d706c
  2e2bdd:	8b c8                	mov    ecx,eax
  2e2bdf:	bf 01 00 00 00       	mov    edi,0x1
  2e2be4:	8b c7                	mov    eax,edi
  2e2be6:	48 d3 e0             	shl    rax,cl
  2e2be9:	48 3b d8             	cmp    rbx,rax
  2e2bec:	0f 87 b7 01 00 00    	ja     0x2e2da9
  2e2bf2:	48 8b cb             	mov    rcx,rbx
  2e2bf5:	e8 2e 3f ff ff       	call   0x2d6b28
  2e2bfa:	8b c8                	mov    ecx,eax
  2e2bfc:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  2e2c00:	48 d3 e7             	shl    rdi,cl
  2e2c03:	8b d8                	mov    ebx,eax
  2e2c05:	49 8b cf             	mov    rcx,r15
  2e2c08:	e8 5f 4d ff ff       	call   0x2d796c
  2e2c0d:	4c 8b 45 58          	mov    r8,QWORD PTR [rbp+0x58]
  2e2c11:	8b cb                	mov    ecx,ebx
  2e2c13:	ba 02 00 00 00       	mov    edx,0x2
  2e2c18:	48 d3 e2             	shl    rdx,cl
  2e2c1b:	49 8b cd             	mov    rcx,r13
  2e2c1e:	e8 7d 3c ff ff       	call   0x2d68a0
  2e2c23:	48 8d 47 ff          	lea    rax,[rdi-0x1]
  2e2c27:	49 89 7f 38          	mov    QWORD PTR [r15+0x38],rdi
  2e2c2b:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  2e2c2f:	49 89 47 30          	mov    QWORD PTR [r15+0x30],rax
  2e2c33:	49 8b cf             	mov    rcx,r15
  2e2c36:	e8 f1 4c ff ff       	call   0x2d792c
  2e2c3b:	48 8b 5d 50          	mov    rbx,QWORD PTR [rbp+0x50]
  2e2c3f:	48 89 5d 60          	mov    QWORD PTR [rbp+0x60],rbx
  2e2c43:	e9 10 01 00 00       	jmp    0x2e2d58
  2e2c48:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  2e2c4c:	e8 af 21 ff ff       	call   0x2d4e00
  2e2c51:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  2e2c55:	e8 66 21 ff ff       	call   0x2d4dc0
  2e2c5a:	48 8b c8             	mov    rcx,rax
  2e2c5d:	e8 42 87 fe ff       	call   0x2cb3a4
  2e2c62:	48 8b d0             	mov    rdx,rax
  2e2c65:	49 8b cf             	mov    rcx,r15
  2e2c68:	4c 8b e0             	mov    r12,rax
  2e2c6b:	e8 6c 06 00 00       	call   0x2e32dc
  2e2c70:	4d 8b 75 00          	mov    r14,QWORD PTR [r13+0x0]
  2e2c74:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  2e2c78:	48 c1 e0 04          	shl    rax,0x4
  2e2c7c:	4c 03 f0             	add    r14,rax
  2e2c7f:	49 8b ce             	mov    rcx,r14
  2e2c82:	e8 ad 98 fe ff       	call   0x2cc534
  2e2c87:	48 8b 7d 60          	mov    rdi,QWORD PTR [rbp+0x60]
  2e2c8b:	84 c0                	test   al,al
  2e2c8d:	74 0c                	je     0x2e2c9b
  2e2c8f:	49 89 1e             	mov    QWORD PTR [r14],rbx
  2e2c92:	49 89 5e 08          	mov    QWORD PTR [r14+0x8],rbx
  2e2c96:	e9 b6 00 00 00       	jmp    0x2e2d51
  2e2c9b:	49 8b 76 08          	mov    rsi,QWORD PTR [r14+0x8]
  2e2c9f:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2ca3:	48 89 75 48          	mov    QWORD PTR [rbp+0x48],rsi
  2e2ca7:	e8 0c 21 ff ff       	call   0x2d4db8
  2e2cac:	48 8b c8             	mov    rcx,rax
  2e2caf:	e8 f0 86 fe ff       	call   0x2cb3a4
  2e2cb4:	4c 8b c0             	mov    r8,rax
  2e2cb7:	49 8b d4             	mov    rdx,r12
  2e2cba:	49 8b cf             	mov    rcx,r15
  2e2cbd:	e8 da b1 ff ff       	call   0x2dde9c
  2e2cc2:	84 c0                	test   al,al
  2e2cc4:	75 2b                	jne    0x2e2cf1
  2e2cc6:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2cca:	e8 21 21 ff ff       	call   0x2d4df0
  2e2ccf:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  2e2cd3:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2cd7:	e8 58 98 fe ff       	call   0x2cc534
  2e2cdc:	84 c0                	test   al,al
  2e2cde:	75 b2                	jne    0x2e2c92
  2e2ce0:	48 8b 4d 48          	mov    rcx,QWORD PTR [rbp+0x48]
  2e2ce4:	4c 8b c7             	mov    r8,rdi
  2e2ce7:	48 8b d3             	mov    rdx,rbx
  2e2cea:	e8 09 4e ff ff       	call   0x2d7af8
  2e2cef:	eb a1                	jmp    0x2e2c92
  2e2cf1:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  2e2cf5:	49 8b ce             	mov    rcx,r14
  2e2cf8:	e8 37 98 fe ff       	call   0x2cc534
  2e2cfd:	84 c0                	test   al,al
  2e2cff:	75 3f                	jne    0x2e2d40
  2e2d01:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2d05:	e8 2e 21 ff ff       	call   0x2d4e38
  2e2d0a:	48 8b c8             	mov    rcx,rax
  2e2d0d:	e8 a6 20 ff ff       	call   0x2d4db8
  2e2d12:	48 8b c8             	mov    rcx,rax
  2e2d15:	e8 8a 86 fe ff       	call   0x2cb3a4
  2e2d1a:	4c 8b c0             	mov    r8,rax
  2e2d1d:	49 8b d4             	mov    rdx,r12
  2e2d20:	49 8b cf             	mov    rcx,r15
  2e2d23:	e8 74 b1 ff ff       	call   0x2dde9c
  2e2d28:	84 c0                	test   al,al
  2e2d2a:	74 63                	je     0x2e2d8f
  2e2d2c:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  2e2d30:	49 8b ce             	mov    rcx,r14
  2e2d33:	e8 fc 97 fe ff       	call   0x2cc534
  2e2d38:	84 c0                	test   al,al
  2e2d3a:	74 c5                	je     0x2e2d01
  2e2d3c:	48 8b 75 48          	mov    rsi,QWORD PTR [rbp+0x48]
  2e2d40:	4c 8b c7             	mov    r8,rdi
  2e2d43:	48 8b d3             	mov    rdx,rbx
  2e2d46:	48 8b ce             	mov    rcx,rsi
  2e2d49:	e8 aa 4d ff ff       	call   0x2d7af8
  2e2d4e:	49 89 1e             	mov    QWORD PTR [r14],rbx
  2e2d51:	48 8b df             	mov    rbx,rdi
  2e2d54:	48 89 5d 50          	mov    QWORD PTR [rbp+0x50],rbx
  2e2d58:	48 8d 55 58          	lea    rdx,[rbp+0x58]
  2e2d5c:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  2e2d60:	e8 cf 97 fe ff       	call   0x2cc534
  2e2d65:	84 c0                	test   al,al
  2e2d67:	0f 84 db fe ff ff    	je     0x2e2c48
  2e2d6d:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2d71:	48 c7 45 48 00 00 00 	mov    QWORD PTR [rbp+0x48],0x0
  2e2d78:	00 
  2e2d79:	e8 4e c6 ff ff       	call   0x2df3cc
  2e2d7e:	48 83 c4 28          	add    rsp,0x28
  2e2d82:	41 5f                	pop    r15
  2e2d84:	41 5e                	pop    r14
  2e2d86:	41 5d                	pop    r13
  2e2d88:	41 5c                	pop    r12
  2e2d8a:	5f                   	pop    rdi
  2e2d8b:	5e                   	pop    rsi
  2e2d8c:	5b                   	pop    rbx
  2e2d8d:	5d                   	pop    rbp
  2e2d8e:	c3                   	ret
  2e2d8f:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  2e2d93:	e8 58 20 ff ff       	call   0x2d4df0
  2e2d98:	48 8b 4d 48          	mov    rcx,QWORD PTR [rbp+0x48]
  2e2d9c:	4c 8b c7             	mov    r8,rdi
  2e2d9f:	48 8b d3             	mov    rdx,rbx
  2e2da2:	e8 51 4d ff ff       	call   0x2d7af8
  2e2da7:	eb a8                	jmp    0x2e2d51
  2e2da9:	48 8d 0d 30 a7 fa ff 	lea    rcx,[rip+0xfffffffffffaa730]        # 0x28d4e0
  2e2db0:	e8 9b a2 fe ff       	call   0x2cd050
  2e2db5:	cc                   	int3
; [C] exact range 0x2d7af8..0x2d7b1d list range splice

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d7af8 <.data+0x2d7af8>:
  2d7af8:	4c 8b 52 08          	mov    r10,QWORD PTR [rdx+0x8]
  2d7afc:	4d 89 02             	mov    QWORD PTR [r10],r8
  2d7aff:	4d 8b 48 08          	mov    r9,QWORD PTR [r8+0x8]
  2d7b03:	49 89 09             	mov    QWORD PTR [r9],rcx
  2d7b06:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
  2d7b0a:	48 89 10             	mov    QWORD PTR [rax],rdx
  2d7b0d:	4c 89 49 08          	mov    QWORD PTR [rcx+0x8],r9
  2d7b11:	4d 89 50 08          	mov    QWORD PTR [r8+0x8],r10
  2d7b15:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
  2d7b19:	49 8b c0             	mov    rax,r8
  2d7b1c:	c3                   	ret
; [C] exact range 0x2d45c8..0x2d460d wide C-string copy

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d45c8 <.data+0x2d45c8>:
  2d45c8:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  2d45cd:	57                   	push   rdi
  2d45ce:	48 83 ec 20          	sub    rsp,0x20
  2d45d2:	48 8b da             	mov    rbx,rdx
  2d45d5:	48 8b f9             	mov    rdi,rcx
  2d45d8:	8a 54 24 30          	mov    dl,BYTE PTR [rsp+0x30]
  2d45dc:	e8 df 65 ff ff       	call   0x2cabc0
  2d45e1:	48 8b cb             	mov    rcx,rbx
  2d45e4:	e8 e7 44 00 00       	call   0x2d8ad0
  2d45e9:	48 8b c8             	mov    rcx,rax
  2d45ec:	e8 b3 6d ff ff       	call   0x2cb3a4
  2d45f1:	4c 8b c0             	mov    r8,rax
  2d45f4:	48 8b d3             	mov    rdx,rbx
  2d45f7:	48 8b cf             	mov    rcx,rdi
  2d45fa:	e8 05 ad ff ff       	call   0x2cf304
  2d45ff:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  2d4604:	48 8b c7             	mov    rax,rdi
  2d4607:	48 83 c4 20          	add    rsp,0x20
  2d460b:	5f                   	pop    rdi
  2d460c:	c3                   	ret
; [C] exact range 0x3cab84..0x3cab97 UTF16 zero scan

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003cab84 <.data+0x3cab84>:
  3cab84:	33 d2                	xor    edx,edx
  3cab86:	8b c2                	mov    eax,edx
  3cab88:	66 39 11             	cmp    WORD PTR [rcx],dx
  3cab8b:	74 09                	je     0x3cab96
  3cab8d:	48 ff c0             	inc    rax
  3cab90:	66 39 14 41          	cmp    WORD PTR [rcx+rax*2],dx
  3cab94:	75 f7                	jne    0x3cab8d
  3cab96:	c3                   	ret
; [C] exact range 0x2d8728..0x2d877b wide end iterator

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d8728 <.data+0x2d8728>:
  2d8728:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d872d:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d8732:	57                   	push   rdi
  2d8733:	48 83 ec 20          	sub    rsp,0x20
  2d8737:	48 8b f2             	mov    rsi,rdx
  2d873a:	48 8b f9             	mov    rdi,rcx
  2d873d:	e8 9a ee ff ff       	call   0x2d75dc
  2d8742:	48 8b c8             	mov    rcx,rax
  2d8745:	e8 5a 2c ff ff       	call   0x2cb3a4
  2d874a:	4c 8b 47 10          	mov    r8,QWORD PTR [rdi+0x10]
  2d874e:	48 8b cf             	mov    rcx,rdi
  2d8751:	4a 8d 1c 40          	lea    rbx,[rax+r8*2]
  2d8755:	e8 4a 2c ff ff       	call   0x2cb3a4
  2d875a:	4c 8b c0             	mov    r8,rax
  2d875d:	48 8b d3             	mov    rdx,rbx
  2d8760:	48 8b ce             	mov    rcx,rsi
  2d8763:	e8 78 b8 ff ff       	call   0x2d3fe0
  2d8768:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2d876d:	48 8b c6             	mov    rax,rsi
  2d8770:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2d8775:	48 83 c4 20          	add    rsp,0x20
  2d8779:	5f                   	pop    rdi
  2d877a:	c3                   	ret
; [C] exact range 0x2d7d40..0x2d7d8e wide begin iterator

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002d7d40 <.data+0x2d7d40>:
  2d7d40:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d7d45:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d7d4a:	57                   	push   rdi
  2d7d4b:	48 83 ec 20          	sub    rsp,0x20
  2d7d4f:	48 8b f2             	mov    rsi,rdx
  2d7d52:	48 8b f9             	mov    rdi,rcx
  2d7d55:	e8 82 f8 ff ff       	call   0x2d75dc
  2d7d5a:	48 8b c8             	mov    rcx,rax
  2d7d5d:	e8 42 36 ff ff       	call   0x2cb3a4
  2d7d62:	48 8b cf             	mov    rcx,rdi
  2d7d65:	48 8b d8             	mov    rbx,rax
  2d7d68:	e8 37 36 ff ff       	call   0x2cb3a4
  2d7d6d:	4c 8b c0             	mov    r8,rax
  2d7d70:	48 8b d3             	mov    rdx,rbx
  2d7d73:	48 8b ce             	mov    rcx,rsi
  2d7d76:	e8 65 c2 ff ff       	call   0x2d3fe0
  2d7d7b:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2d7d80:	48 8b c6             	mov    rax,rsi
  2d7d83:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  2d7d88:	48 83 c4 20          	add    rsp,0x20
  2d7d8c:	5f                   	pop    rdi
  2d7d8d:	c3                   	ret
; [C] exact range 0x2cee44..0x2ceedd wide iterator range to byte string

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cee44 <.data+0x2cee44>:
  2cee44:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  2cee49:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2cee4e:	53                   	push   rbx
  2cee4f:	56                   	push   rsi
  2cee50:	57                   	push   rdi
  2cee51:	48 83 ec 30          	sub    rsp,0x30
  2cee55:	8a 54 24 50          	mov    dl,BYTE PTR [rsp+0x50]
  2cee59:	4d 8b c1             	mov    r8,r9
  2cee5c:	48 8b f1             	mov    rsi,rcx
  2cee5f:	e8 5c bd ff ff       	call   0x2cabc0
  2cee64:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  2cee69:	e8 d6 1b 00 00       	call   0x2d0a44
  2cee6e:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2cee73:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  2cee78:	48 8b d8             	mov    rbx,rax
  2cee7b:	e8 c4 1b 00 00       	call   0x2d0a44
  2cee80:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  2cee85:	48 3b d8             	cmp    rbx,rax
  2cee88:	75 0a                	jne    0x2cee94
  2cee8a:	48 8b ce             	mov    rcx,rsi
  2cee8d:	e8 06 80 00 00       	call   0x2d6e98
  2cee92:	eb 3e                	jmp    0x2ceed2
  2cee94:	48 8b d0             	mov    rdx,rax
  2cee97:	48 8b cb             	mov    rcx,rbx
  2cee9a:	e8 7d 38 00 00       	call   0x2d271c
  2cee9f:	48 8b c8             	mov    rcx,rax
  2ceea2:	e8 fd c4 ff ff       	call   0x2cb3a4
  2ceea7:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2ceeac:	48 8b f8             	mov    rdi,rax
  2ceeaf:	e8 f0 c4 ff ff       	call   0x2cb3a4
  2ceeb4:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2ceeb9:	48 8b d8             	mov    rbx,rax
  2ceebc:	e8 e3 c4 ff ff       	call   0x2cb3a4
  2ceec1:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
  2ceec4:	4c 8b cf             	mov    r9,rdi
  2ceec7:	48 8b ce             	mov    rcx,rsi
  2ceeca:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  2ceecd:	e8 ca 06 00 00       	call   0x2cf59c
  2ceed2:	48 8b c6             	mov    rax,rsi
  2ceed5:	48 83 c4 30          	add    rsp,0x30
  2ceed9:	5f                   	pop    rdi
  2ceeda:	5e                   	pop    rsi
  2ceedb:	5b                   	pop    rbx
  2ceedc:	c3                   	ret
; [C] exact range 0x2cf59c..0x2cf65e byte string allocation and conversion

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cf59c <.data+0x2cf59c>:
  2cf59c:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
  2cf5a1:	53                   	push   rbx
  2cf5a2:	56                   	push   rsi
  2cf5a3:	57                   	push   rdi
  2cf5a4:	48 83 ec 20          	sub    rsp,0x20
  2cf5a8:	49 8b f1             	mov    rsi,r9
  2cf5ab:	48 c7 41 10 00 00 00 	mov    QWORD PTR [rcx+0x10],0x0
  2cf5b2:	00 
  2cf5b3:	48 8b f9             	mov    rdi,rcx
  2cf5b6:	48 c7 41 18 0f 00 00 	mov    QWORD PTR [rcx+0x18],0xf
  2cf5bd:	00 
  2cf5be:	e8 65 f0 ff ff       	call   0x2ce628
  2cf5c3:	48 3b f0             	cmp    rsi,rax
  2cf5c6:	0f 87 8c 00 00 00    	ja     0x2cf658
  2cf5cc:	48 83 fe 0f          	cmp    rsi,0xf
  2cf5d0:	76 40                	jbe    0x2cf612
  2cf5d2:	48 8b d6             	mov    rdx,rsi
  2cf5d5:	48 8b cf             	mov    rcx,rdi
  2cf5d8:	e8 b7 d9 ff ff       	call   0x2ccf94
  2cf5dd:	48 8b cf             	mov    rcx,rdi
  2cf5e0:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  2cf5e5:	e8 3a dd ff ff       	call   0x2cd324
  2cf5ea:	48 8b c8             	mov    rcx,rax
  2cf5ed:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2cf5f2:	e8 a5 ba ff ff       	call   0x2cb09c
  2cf5f7:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  2cf5fc:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  2cf601:	48 8b cf             	mov    rcx,rdi
  2cf604:	e8 eb bc ff ff       	call   0x2cb2f4
  2cf609:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  2cf60e:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
  2cf612:	48 8b cf             	mov    rcx,rdi
  2cf615:	e8 ca de ff ff       	call   0x2cd4e4
  2cf61a:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2cf61f:	48 8b d8             	mov    rbx,rax
  2cf622:	e8 7d bd ff ff       	call   0x2cb3a4
  2cf627:	4c 8b c3             	mov    r8,rbx
  2cf62a:	48 8b d6             	mov    rdx,rsi
  2cf62d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  2cf630:	e8 af 01 00 00       	call   0x2cf7e4
  2cf635:	48 89 77 10          	mov    QWORD PTR [rdi+0x10],rsi
  2cf639:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2cf63e:	c6 04 33 00          	mov    BYTE PTR [rbx+rsi*1],0x0
  2cf642:	48 c7 44 24 40 00 00 	mov    QWORD PTR [rsp+0x40],0x0
  2cf649:	00 00 
  2cf64b:	e8 b0 53 00 00       	call   0x2d4a00
  2cf650:	48 83 c4 20          	add    rsp,0x20
  2cf654:	5f                   	pop    rdi
  2cf655:	5e                   	pop    rsi
  2cf656:	5b                   	pop    rbx
  2cf657:	c3                   	ret
  2cf658:	e8 cf e0 ff ff       	call   0x2cd72c
  2cf65d:	cc                   	int3
; [C] exact range 0x2cf7e4..0x2cf7ff UTF16 low-byte conversion full tail

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cf7e4 <.data+0x2cf7e4>:
  2cf7e4:	48 85 d2             	test   rdx,rdx
  2cf7e7:	74 12                	je     0x2cf7fb
  2cf7e9:	8a 01                	mov    al,BYTE PTR [rcx]
  2cf7eb:	48 8d 49 02          	lea    rcx,[rcx+0x2]
  2cf7ef:	41 88 00             	mov    BYTE PTR [r8],al
  2cf7f2:	49 ff c0             	inc    r8
  2cf7f5:	48 83 ea 01          	sub    rdx,0x1
  2cf7f9:	75 ee                	jne    0x2cf7e9
  2cf7fb:	49 8b c0             	mov    rax,r8
  2cf7fe:	c3                   	ret
; [C] exact range 0x32c2d9..0x32c3c4 shot curve lazy metadata/context fold; exclusive end

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032c2d9 <.data+0x32c2d9>:
  32c2d9:	8b 05 b9 bc 0c 00    	mov    eax,DWORD PTR [rip+0xcbcb9]        # 0x3f7f98
  32c2df:	a8 01                	test   al,0x1
  32c2e1:	0f 85 b3 00 00 00    	jne    0x32c39a
  32c2e7:	83 c8 01             	or     eax,0x1
  32c2ea:	48 8d 95 08 02 00 00 	lea    rdx,[rbp+0x208]
  32c2f1:	48 8d 8d 08 02 00 00 	lea    rcx,[rbp+0x208]
  32c2f8:	89 05 9a bc 0c 00    	mov    DWORD PTR [rip+0xcbc9a],eax        # 0x3f7f98
  32c2fe:	e8 2d 04 fa ff       	call   0x2cc730
  32c303:	48 8b c8             	mov    rcx,rax
  32c306:	e8 99 19 fa ff       	call   0x2cdca4
  32c30b:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  32c30f:	48 8b f0             	mov    rsi,rax
  32c312:	48 8d 8d 10 02 00 00 	lea    rcx,[rbp+0x210]
  32c319:	e8 f2 f6 ff ff       	call   0x32ba10
  32c31e:	48 8b c8             	mov    rcx,rax
  32c321:	e8 66 d8 fb ff       	call   0x2e9b8c
  32c326:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  32c32a:	48 8b f8             	mov    rdi,rax
  32c32d:	48 8d 8d 10 02 00 00 	lea    rcx,[rbp+0x210]
  32c334:	e8 1f f6 ff ff       	call   0x32b958
  32c339:	48 8b c8             	mov    rcx,rax
  32c33c:	e8 f3 1a fa ff       	call   0x2cde34
  32c341:	48 8d 55 60          	lea    rdx,[rbp+0x60]
  32c345:	48 8b d8             	mov    rbx,rax
  32c348:	48 8d 8d 10 02 00 00 	lea    rcx,[rbp+0x210]
  32c34f:	e8 9c f5 ff ff       	call   0x32b8f0
  32c354:	48 8b c8             	mov    rcx,rax
  32c357:	e8 10 c3 fa ff       	call   0x2d866c
  32c35c:	48 8b c8             	mov    rcx,rax
  32c35f:	48 8b d3             	mov    rdx,rbx
  32c362:	e8 bd 7e 00 00       	call   0x334224
  32c367:	41 83 c8 ff          	or     r8d,0xffffffff
  32c36b:	48 8b c8             	mov    rcx,rax
  32c36e:	4c 8b ce             	mov    r9,rsi
  32c371:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  32c376:	48 8b d7             	mov    rdx,rdi
  32c379:	e8 2e 86 00 00       	call   0x3349ac
  32c37e:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
  32c383:	48 8b 7c 24 58       	mov    rdi,QWORD PTR [rsp+0x58]
  32c388:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32c38b:	8b 05 07 bc 0c 00    	mov    eax,DWORD PTR [rip+0xcbc07]        # 0x3f7f98
  32c391:	4c 89 05 f8 bb 0c 00 	mov    QWORD PTR [rip+0xcbbf8],r8        # 0x3f7f90
  32c398:	eb 07                	jmp    0x32c3a1
  32c39a:	4c 8b 05 ef bb 0c 00 	mov    r8,QWORD PTR [rip+0xcbbef]        # 0x3f7f90
  32c3a1:	a8 02                	test   al,0x2
  32c3a3:	75 1f                	jne    0x32c3c4
  32c3a5:	48 8b 0d b4 9a 0a 00 	mov    rcx,QWORD PTR [rip+0xa9ab4]        # 0x3d5e60
  32c3ac:	48 8d 15 ed bb 0c 00 	lea    rdx,[rip+0xcbbed]        # 0x3f7fa0
  32c3b3:	83 c8 02             	or     eax,0x2
  32c3b6:	45 33 c9             	xor    r9d,r9d
  32c3b9:	89 05 d9 bb 0c 00    	mov    DWORD PTR [rip+0xcbbd9],eax        # 0x3f7f98
  32c3bf:	e8 60 f9 f9 ff       	call   0x2cbd24
; [C] exact range 0x32b728..0x32b7a0 curve typed wrapper including final tail jump

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b728 <.data+0x32b728>:
  32b728:	40 53                	rex push rbx
  32b72a:	48 83 ec 40          	sub    rsp,0x40
  32b72e:	48 8b da             	mov    rbx,rdx
  32b731:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  32b736:	49 8b d0             	mov    rdx,r8
  32b739:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  32b73e:	0f 28 f3             	movaps xmm6,xmm3
  32b741:	e8 22 0b fa ff       	call   0x2cc268
  32b746:	0f 28 ce             	movaps xmm1,xmm6
  32b749:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  32b74e:	e8 a5 24 fb ff       	call   0x2ddbf8
  32b753:	0f b7 44 24 5a       	movzx  eax,WORD PTR [rsp+0x5a]
  32b758:	48 8b cb             	mov    rcx,rbx
  32b75b:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  32b760:	66 89 83 d2 00 00 00 	mov    WORD PTR [rbx+0xd2],ax
  32b767:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  32b76c:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  32b770:	f3 0f 7f 83 88 00 00 	movdqu XMMWORD PTR [rbx+0x88],xmm0
  32b777:	00 
  32b778:	66 c7 83 d0 00 00 00 	mov    WORD PTR [rbx+0xd0],0x100
  32b77f:	00 01 
  32b781:	48 c7 83 80 00 00 00 	mov    QWORD PTR [rbx+0x80],0x2
  32b788:	02 00 00 00 
  32b78c:	e8 43 24 0a 00       	call   0x3cdbd4
  32b791:	0f 28 74 24 30       	movaps xmm6,XMMWORD PTR [rsp+0x30]
  32b796:	48 83 c4 40          	add    rsp,0x40
  32b79a:	5b                   	pop    rbx
  32b79b:	e9 10 24 0a 00       	jmp    0x3cdbb0
; [C] exact range 0x2e1432..0x2e14a1 melee class/allocation fold including both failure branches

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e1432 <.data+0x2e1432>:
  2e1432:	48 8d 95 50 01 00 00 	lea    rdx,[rbp+0x150]
  2e1439:	48 8d 8d 50 01 00 00 	lea    rcx,[rbp+0x150]
  2e1440:	e8 eb b2 fe ff       	call   0x2cc730
  2e1445:	48 8b c8             	mov    rcx,rax
  2e1448:	e8 57 c8 fe ff       	call   0x2cdca4
  2e144d:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  2e1451:	48 8b d8             	mov    rbx,rax
  2e1454:	48 8d 8d 58 01 00 00 	lea    rcx,[rbp+0x158]
  2e145b:	e8 14 e6 ff ff       	call   0x2dfa74
  2e1460:	48 8b c8             	mov    rcx,rax
  2e1463:	e8 9c 22 00 00       	call   0x2e3704
  2e1468:	48 8b c8             	mov    rcx,rax
  2e146b:	48 8b d3             	mov    rdx,rbx
  2e146e:	e8 b1 2d 05 00       	call   0x334224
  2e1473:	48 8b c8             	mov    rcx,rax
  2e1476:	48 8b d0             	mov    rdx,rax
  2e1479:	e8 8a 9a fe ff       	call   0x2caf08
  2e147e:	84 c0                	test   al,al
  2e1480:	0f 84 9b 09 00 00    	je     0x2e1e21
  2e1486:	48 8b ca             	mov    rcx,rdx
  2e1489:	e8 56 28 00 00       	call   0x2e3ce4
  2e148e:	48 8b c8             	mov    rcx,rax
  2e1491:	48 8b f8             	mov    rdi,rax
  2e1494:	e8 6f 9a fe ff       	call   0x2caf08
  2e1499:	84 c0                	test   al,al
  2e149b:	0f 84 80 09 00 00    	je     0x2e1e21
; [C] exact range 0x2e3ce4..0x2e3d5c cached object allocator wrapper and final tail jump

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3ce4 <.data+0x2e3ce4>:
  2e3ce4:	40 53                	rex push rbx
  2e3ce6:	48 83 ec 20          	sub    rsp,0x20
  2e3cea:	8b 05 78 34 0f 00    	mov    eax,DWORD PTR [rip+0xf3478]        # 0x3d7168
  2e3cf0:	48 8b d9             	mov    rbx,rcx
  2e3cf3:	a8 01                	test   al,0x1
  2e3cf5:	75 20                	jne    0x2e3d17
  2e3cf7:	83 c8 01             	or     eax,0x1
  2e3cfa:	89 05 68 34 0f 00    	mov    DWORD PTR [rip+0xf3468],eax        # 0x3d7168
  2e3d00:	e8 47 b1 ff ff       	call   0x2dee4c
  2e3d05:	4c 8b c0             	mov    r8,rax
  2e3d08:	48 89 05 51 34 0f 00 	mov    QWORD PTR [rip+0xf3451],rax        # 0x3d7160
  2e3d0f:	8b 05 53 34 0f 00    	mov    eax,DWORD PTR [rip+0xf3453]        # 0x3d7168
  2e3d15:	eb 07                	jmp    0x2e3d1e
  2e3d17:	4c 8b 05 42 34 0f 00 	mov    r8,QWORD PTR [rip+0xf3442]        # 0x3d7160
  2e3d1e:	a8 02                	test   al,0x2
  2e3d20:	75 1f                	jne    0x2e3d41
  2e3d22:	48 8b 0d 37 21 0f 00 	mov    rcx,QWORD PTR [rip+0xf2137]        # 0x3d5e60
  2e3d29:	48 8d 15 40 34 0f 00 	lea    rdx,[rip+0xf3440]        # 0x3d7170
  2e3d30:	83 c8 02             	or     eax,0x2
  2e3d33:	45 33 c9             	xor    r9d,r9d
  2e3d36:	89 05 2c 34 0f 00    	mov    DWORD PTR [rip+0xf342c],eax        # 0x3d7168
  2e3d3c:	e8 e3 7f fe ff       	call   0x2cbd24
  2e3d41:	48 8b 0d 18 21 0f 00 	mov    rcx,QWORD PTR [rip+0xf2118]        # 0x3d5e60
  2e3d48:	48 8d 15 21 34 0f 00 	lea    rdx,[rip+0xf3421]        # 0x3d7170
  2e3d4f:	4c 8b c3             	mov    r8,rbx
  2e3d52:	48 83 c4 20          	add    rsp,0x20
  2e3d56:	5b                   	pop    rbx
  2e3d57:	e9 a0 7c fe ff       	jmp    0x2cb9fc
; [C] exact range 0x2cb9fc..0x2cba4f one-argument object wrapper

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cb9fc <.data+0x2cb9fc>:
  2cb9fc:	40 53                	rex push rbx
  2cb9fe:	48 83 ec 20          	sub    rsp,0x20
  2cba02:	48 8b da             	mov    rbx,rdx
  2cba05:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  2cba0a:	49 8b d0             	mov    rdx,r8
  2cba0d:	e8 56 08 00 00       	call   0x2cc268
  2cba12:	33 c0                	xor    eax,eax
  2cba14:	48 c7 83 80 00 00 00 	mov    QWORD PTR [rbx+0x80],0x1
  2cba1b:	01 00 00 00 
  2cba1f:	88 44 24 38          	mov    BYTE PTR [rsp+0x38],al
  2cba23:	48 8b cb             	mov    rcx,rbx
  2cba26:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  2cba2b:	48 89 83 88 00 00 00 	mov    QWORD PTR [rbx+0x88],rax
  2cba32:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  2cba36:	89 83 d0 00 00 00    	mov    DWORD PTR [rbx+0xd0],eax
  2cba3c:	48 8d 44 24 28       	lea    rax,[rsp+0x28]
  2cba41:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  2cba45:	48 83 c4 20          	add    rsp,0x20
  2cba49:	5b                   	pop    rbx
  2cba4a:	e9 85 21 10 00       	jmp    0x3cdbd4
; [C] exact range 0x2cc730..0x2cc737 encrypted empty literal

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc730 <.data+0x2cc730>:
  2cc730:	c6 02 37             	mov    BYTE PTR [rdx],0x37
  2cc733:	48 8b c2             	mov    rax,rdx
  2cc736:	c3                   	ret
; [C] exact range 0x2cd9dc..0x2cd9e3 empty literal XOR decoder

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cd9dc <.data+0x2cd9dc>:
  2cd9dc:	8a 02                	mov    al,BYTE PTR [rdx]
  2cd9de:	34 37                	xor    al,0x37
  2cd9e0:	88 01                	mov    BYTE PTR [rcx],al
  2cd9e2:	c3                   	ret
; [C] exact range 0x2cc268..0x2cc26f qword argument copy

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc268 <.data+0x2cc268>:
  2cc268:	48 89 11             	mov    QWORD PTR [rcx],rdx
  2cc26b:	48 8b c1             	mov    rax,rcx
  2cc26e:	c3                   	ret
; [C] exact range 0x2ddbf8..0x2ddc00 float argument copy

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ddbf8 <.data+0x2ddbf8>:
  2ddbf8:	f3 0f 11 09          	movss  DWORD PTR [rcx],xmm1
  2ddbfc:	48 8b c1             	mov    rax,rcx
  2ddbff:	c3                   	ret
; [C] exact range 0x3cdbb0..0x3cdbb1 return thunk

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003cdbb0 <.data+0x3cdbb0>:
  3cdbb0:	c3                   	ret
