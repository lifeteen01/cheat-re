
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372954 <.data+0x372954>:
  372954:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  372959:	55                                              	push   rbp
  37295a:	56                                              	push   rsi
  37295b:	57                                              	push   rdi
  37295c:	48 83 ec 60                                     	sub    rsp,0x60
  372960:	48 8b d1                                        	mov    rdx,rcx
  372963:	e8 a0 85 f5 ff                                  	call   0x2caf08
  372968:	84 c0                                           	test   al,al
  37296a:	0f 84 32 01 00 00                               	je     0x372aa2
  372970:	80 7a 48 00                                     	cmp    BYTE PTR [rdx+0x48],0x0
  372974:	0f 84 28 01 00 00                               	je     0x372aa2
  37297a:	48 8b 6a 50                                     	mov    rbp,QWORD PTR [rdx+0x50]
  37297e:	48 8b cd                                        	mov    rcx,rbp
  372981:	e8 82 85 f5 ff                                  	call   0x2caf08
  372986:	84 c0                                           	test   al,al
  372988:	0f 84 14 01 00 00                               	je     0x372aa2
  37298e:	8b 05 7c e5 08 00                               	mov    eax,DWORD PTR [rip+0x8e57c]        # 0x400f10
  372994:	a8 01                                           	test   al,0x1
  372996:	0f 85 b1 00 00 00                               	jne    0x372a4d
  37299c:	83 c8 01                                        	or     eax,0x1
  37299f:	48 8d 94 24 88 00 00 00                         	lea    rdx,[rsp+0x88]
  3729a7:	48 8d 8c 24 88 00 00 00                         	lea    rcx,[rsp+0x88]
  3729af:	89 05 5b e5 08 00                               	mov    DWORD PTR [rip+0x8e55b],eax        # 0x400f10
  3729b5:	e8 76 9d f5 ff                                  	call   0x2cc730
  3729ba:	48 8b c8                                        	mov    rcx,rax
  3729bd:	e8 e2 b2 f5 ff                                  	call   0x2cdca4
  3729c2:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  3729c7:	48 8b f0                                        	mov    rsi,rax
  3729ca:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  3729d2:	e8 61 fd ff ff                                  	call   0x372738
  3729d7:	48 8b c8                                        	mov    rcx,rax
  3729da:	e8 ad 71 f7 ff                                  	call   0x2e9b8c
  3729df:	48 8d 54 24 39                                  	lea    rdx,[rsp+0x39]
  3729e4:	48 8b f8                                        	mov    rdi,rax
  3729e7:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  3729ef:	e8 0c fd ff ff                                  	call   0x372700
  3729f4:	48 8b c8                                        	mov    rcx,rax
  3729f7:	e8 38 b4 f5 ff                                  	call   0x2cde34
  3729fc:	48 8d 54 24 45                                  	lea    rdx,[rsp+0x45]
  372a01:	48 8b d8                                        	mov    rbx,rax
  372a04:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  372a0c:	e8 a3 fc ff ff                                  	call   0x3726b4
  372a11:	48 8b c8                                        	mov    rcx,rax
  372a14:	e8 53 5c f6 ff                                  	call   0x2d866c
  372a19:	48 8b c8                                        	mov    rcx,rax
  372a1c:	48 8b d3                                        	mov    rdx,rbx
  372a1f:	e8 00 18 fc ff                                  	call   0x334224
  372a24:	41 83 c8 ff                                     	or     r8d,0xffffffff
  372a28:	48 8b c8                                        	mov    rcx,rax
  372a2b:	4c 8b ce                                        	mov    r9,rsi
  372a2e:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  372a33:	48 8b d7                                        	mov    rdx,rdi
  372a36:	e8 71 1f fc ff                                  	call   0x3349ac
  372a3b:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  372a3e:	8b 05 cc e4 08 00                               	mov    eax,DWORD PTR [rip+0x8e4cc]        # 0x400f10
  372a44:	4c 89 05 bd e4 08 00                            	mov    QWORD PTR [rip+0x8e4bd],r8        # 0x400f08
  372a4b:	eb 07                                           	jmp    0x372a54
  372a4d:	4c 8b 05 b4 e4 08 00                            	mov    r8,QWORD PTR [rip+0x8e4b4]        # 0x400f08
  372a54:	a8 02                                           	test   al,0x2
  372a56:	75 1f                                           	jne    0x372a77
  372a58:	48 8b 0d 01 34 06 00                            	mov    rcx,QWORD PTR [rip+0x63401]        # 0x3d5e60
  372a5f:	48 8d 15 ba e4 08 00                            	lea    rdx,[rip+0x8e4ba]        # 0x400f20
  372a66:	83 c8 02                                        	or     eax,0x2
  372a69:	45 33 c9                                        	xor    r9d,r9d
  372a6c:	89 05 9e e4 08 00                               	mov    DWORD PTR [rip+0x8e49e],eax        # 0x400f10
  372a72:	e8 ad 92 f5 ff                                  	call   0x2cbd24
  372a77:	f3 0f 10 0d d5 a7 f1 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff1a7d5]        # 0x28d254
  372a7f:	0f 57 c0                                        	xorps  xmm0,xmm0
  372a82:	e8 d5 12 f7 ff                                  	call   0x2e3d5c
  372a87:	48 8b 0d d2 33 06 00                            	mov    rcx,QWORD PTR [rip+0x633d2]        # 0x3d5e60
  372a8e:	48 8d 15 8b e4 08 00                            	lea    rdx,[rip+0x8e48b]        # 0x400f20
  372a95:	0f 28 d8                                        	movaps xmm3,xmm0
  372a98:	4c 8b c5                                        	mov    r8,rbp
  372a9b:	e8 88 8c fb ff                                  	call   0x32b728
  372aa0:	eb 08                                           	jmp    0x372aaa
  372aa2:	f3 0f 10 05 aa a7 f1 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff1a7aa]        # 0x28d254
  372aaa:	48 8b 9c 24 80 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x80]
  372ab2:	48 83 c4 60                                     	add    rsp,0x60
  372ab6:	5f                                              	pop    rdi
  372ab7:	5e                                              	pop    rsi
  372ab8:	5d                                              	pop    rbp
  372ab9:	c3                                              	ret
