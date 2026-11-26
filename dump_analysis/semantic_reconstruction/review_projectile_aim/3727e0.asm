
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003727e0 <.data+0x3727e0>:
  3727e0:	40 53                                           	rex push rbx
  3727e2:	55                                              	push   rbp
  3727e3:	56                                              	push   rsi
  3727e4:	57                                              	push   rdi
  3727e5:	48 83 ec 78                                     	sub    rsp,0x78
  3727e9:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  3727ee:	48 8b d9                                        	mov    rbx,rcx
  3727f1:	e8 12 87 f5 ff                                  	call   0x2caf08
  3727f6:	84 c0                                           	test   al,al
  3727f8:	0f 84 3f 01 00 00                               	je     0x37293d
  3727fe:	83 fa ff                                        	cmp    edx,0xffffffff
  372801:	74 15                                           	je     0x372818
  372803:	66 0f 6e f2                                     	movd   xmm6,edx
  372807:	66 41 0f 6e c0                                  	movd   xmm0,r8d
  37280c:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  37280f:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  372812:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  372816:	eb 13                                           	jmp    0x37282b
  372818:	f3 0f 10 0d 34 aa f1 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff1aa34]        # 0x28d254
  372820:	0f 57 c0                                        	xorps  xmm0,xmm0
  372823:	e8 34 15 f7 ff                                  	call   0x2e3d5c
  372828:	0f 28 f0                                        	movaps xmm6,xmm0
  37282b:	48 8b 6b 50                                     	mov    rbp,QWORD PTR [rbx+0x50]
  37282f:	48 8b cd                                        	mov    rcx,rbp
  372832:	e8 d1 86 f5 ff                                  	call   0x2caf08
  372837:	84 c0                                           	test   al,al
  372839:	0f 84 fe 00 00 00                               	je     0x37293d
  37283f:	8b 05 db e5 08 00                               	mov    eax,DWORD PTR [rip+0x8e5db]        # 0x400e20
  372845:	a8 01                                           	test   al,0x1
  372847:	0f 85 ab 00 00 00                               	jne    0x3728f8
  37284d:	83 c8 01                                        	or     eax,0x1
  372850:	48 8d 94 24 b8 00 00 00                         	lea    rdx,[rsp+0xb8]
  372858:	48 8d 8c 24 b8 00 00 00                         	lea    rcx,[rsp+0xb8]
  372860:	89 05 ba e5 08 00                               	mov    DWORD PTR [rip+0x8e5ba],eax        # 0x400e20
  372866:	e8 c5 9e f5 ff                                  	call   0x2cc730
  37286b:	48 8b c8                                        	mov    rcx,rax
  37286e:	e8 31 b4 f5 ff                                  	call   0x2cdca4
  372873:	48 8d 54 24 31                                  	lea    rdx,[rsp+0x31]
  372878:	48 8b f0                                        	mov    rsi,rax
  37287b:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  372880:	e8 97 fe ff ff                                  	call   0x37271c
  372885:	48 8b c8                                        	mov    rcx,rax
  372888:	e8 ff 72 f7 ff                                  	call   0x2e9b8c
  37288d:	48 8d 54 24 3a                                  	lea    rdx,[rsp+0x3a]
  372892:	48 8b f8                                        	mov    rdi,rax
  372895:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  37289a:	e8 45 fe ff ff                                  	call   0x3726e4
  37289f:	48 8b c8                                        	mov    rcx,rax
  3728a2:	e8 8d b5 f5 ff                                  	call   0x2cde34
  3728a7:	48 8d 54 24 46                                  	lea    rdx,[rsp+0x46]
  3728ac:	48 8b d8                                        	mov    rbx,rax
  3728af:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3728b4:	e8 8b fd ff ff                                  	call   0x372644
  3728b9:	48 8b c8                                        	mov    rcx,rax
  3728bc:	e8 ab 5d f6 ff                                  	call   0x2d866c
  3728c1:	48 8b c8                                        	mov    rcx,rax
  3728c4:	48 8b d3                                        	mov    rdx,rbx
  3728c7:	e8 58 19 fc ff                                  	call   0x334224
  3728cc:	48 8b c8                                        	mov    rcx,rax
  3728cf:	c7 44 24 20 ff ff ff ff                         	mov    DWORD PTR [rsp+0x20],0xffffffff
  3728d7:	4c 8b ce                                        	mov    r9,rsi
  3728da:	41 83 c8 ff                                     	or     r8d,0xffffffff
  3728de:	48 8b d7                                        	mov    rdx,rdi
  3728e1:	e8 c6 20 fc ff                                  	call   0x3349ac
  3728e6:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  3728e9:	8b 05 31 e5 08 00                               	mov    eax,DWORD PTR [rip+0x8e531]        # 0x400e20
  3728ef:	4c 89 05 22 e5 08 00                            	mov    QWORD PTR [rip+0x8e522],r8        # 0x400e18
  3728f6:	eb 07                                           	jmp    0x3728ff
  3728f8:	4c 8b 05 19 e5 08 00                            	mov    r8,QWORD PTR [rip+0x8e519]        # 0x400e18
  3728ff:	a8 02                                           	test   al,0x2
  372901:	75 1f                                           	jne    0x372922
  372903:	48 8b 0d 56 35 06 00                            	mov    rcx,QWORD PTR [rip+0x63556]        # 0x3d5e60
  37290a:	48 8d 15 1f e5 08 00                            	lea    rdx,[rip+0x8e51f]        # 0x400e30
  372911:	83 c8 02                                        	or     eax,0x2
  372914:	45 33 c9                                        	xor    r9d,r9d
  372917:	89 05 03 e5 08 00                               	mov    DWORD PTR [rip+0x8e503],eax        # 0x400e20
  37291d:	e8 02 94 f5 ff                                  	call   0x2cbd24
  372922:	48 8b 0d 37 35 06 00                            	mov    rcx,QWORD PTR [rip+0x63537]        # 0x3d5e60
  372929:	48 8d 15 00 e5 08 00                            	lea    rdx,[rip+0x8e500]        # 0x400e30
  372930:	0f 28 de                                        	movaps xmm3,xmm6
  372933:	4c 8b c5                                        	mov    r8,rbp
  372936:	e8 ed 8d fb ff                                  	call   0x32b728
  37293b:	eb 08                                           	jmp    0x372945
  37293d:	f3 0f 10 05 0f a9 f1 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff1a90f]        # 0x28d254
  372945:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  37294a:	48 83 c4 78                                     	add    rsp,0x78
  37294e:	5f                                              	pop    rdi
  37294f:	5e                                              	pop    rsi
  372950:	5d                                              	pop    rbp
  372951:	5b                                              	pop    rbx
  372952:	c3                                              	ret
