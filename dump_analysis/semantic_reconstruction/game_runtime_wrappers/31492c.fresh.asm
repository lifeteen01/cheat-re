
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/31492c.bin:     file format binary


Disassembly of section .data:

000000000031492c <.data>:
  31492c:	4c 8b dc             	mov    r11,rsp
  31492f:	53                   	push   rbx
  314930:	55                   	push   rbp
  314931:	56                   	push   rsi
  314932:	57                   	push   rdi
  314933:	41 56                	push   r14
  314935:	41 57                	push   r15
  314937:	48 83 ec 68          	sub    rsp,0x68
  31493b:	8b 05 af 1c 0d 00    	mov    eax,DWORD PTR [rip+0xd1caf]        # 0x3e65f0
  314941:	4d 8b f0             	mov    r14,r8
  314944:	0f 29 74 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm6
  314949:	0f 28 f3             	movaps xmm6,xmm3
  31494c:	4c 8b fa             	mov    r15,rdx
  31494f:	48 8b e9             	mov    rbp,rcx
  314952:	a8 01                	test   al,0x1
  314954:	0f 85 a0 00 00 00    	jne    0x3149fa
  31495a:	83 c8 01             	or     eax,0x1
  31495d:	49 8d 53 08          	lea    rdx,[r11+0x8]
  314961:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  314965:	89 05 85 1c 0d 00    	mov    DWORD PTR [rip+0xd1c85],eax        # 0x3e65f0
  31496b:	e8 c0 7d fb ff       	call   0x2cc730
  314970:	48 8b c8             	mov    rcx,rax
  314973:	e8 2c 93 fb ff       	call   0x2cdca4
  314978:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  31497d:	48 8b f0             	mov    rsi,rax
  314980:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  314985:	e8 7a f8 fd ff       	call   0x2f4204
  31498a:	48 8b c8             	mov    rcx,rax
  31498d:	e8 5a ec fc ff       	call   0x2e35ec
  314992:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  314997:	48 8b f8             	mov    rdi,rax
  31499a:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  31499f:	e8 b8 ec fd ff       	call   0x2f365c
  3149a4:	48 8b c8             	mov    rcx,rax
  3149a7:	e8 60 94 fb ff       	call   0x2cde0c
  3149ac:	48 8d 54 24 36       	lea    rdx,[rsp+0x36]
  3149b1:	48 8b d8             	mov    rbx,rax
  3149b4:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3149b9:	e8 92 ae fc ff       	call   0x2df850
  3149be:	48 8b c8             	mov    rcx,rax
  3149c1:	e8 72 87 fc ff       	call   0x2dd138
  3149c6:	48 8b c8             	mov    rcx,rax
  3149c9:	48 8b d3             	mov    rdx,rbx
  3149cc:	e8 53 f8 01 00       	call   0x334224
  3149d1:	41 83 c8 ff          	or     r8d,0xffffffff
  3149d5:	48 8b c8             	mov    rcx,rax
  3149d8:	4c 8b ce             	mov    r9,rsi
  3149db:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3149e0:	48 8b d7             	mov    rdx,rdi
  3149e3:	e8 c4 ff 01 00       	call   0x3349ac
  3149e8:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3149eb:	8b 05 ff 1b 0d 00    	mov    eax,DWORD PTR [rip+0xd1bff]        # 0x3e65f0
  3149f1:	4c 89 05 f0 1b 0d 00 	mov    QWORD PTR [rip+0xd1bf0],r8        # 0x3e65e8
  3149f8:	eb 07                	jmp    0x314a01
  3149fa:	4c 8b 05 e7 1b 0d 00 	mov    r8,QWORD PTR [rip+0xd1be7]        # 0x3e65e8
  314a01:	a8 02                	test   al,0x2
  314a03:	75 1f                	jne    0x314a24
  314a05:	48 8b 0d 54 14 0c 00 	mov    rcx,QWORD PTR [rip+0xc1454]        # 0x3d5e60
  314a0c:	48 8d 15 ed 1b 0d 00 	lea    rdx,[rip+0xd1bed]        # 0x3e6600
  314a13:	83 c8 02             	or     eax,0x2
  314a16:	45 33 c9             	xor    r9d,r9d
  314a19:	89 05 d1 1b 0d 00    	mov    DWORD PTR [rip+0xd1bd1],eax        # 0x3e65f0
  314a1f:	e8 00 73 fb ff       	call   0x2cbd24
  314a24:	48 8b cd             	mov    rcx,rbp
  314a27:	e8 90 31 0b 00       	call   0x3c7bbc
  314a2c:	48 8b 0d 2d 14 0c 00 	mov    rcx,QWORD PTR [rip+0xc142d]        # 0x3d5e60
  314a33:	48 8d 15 c6 1b 0d 00 	lea    rdx,[rip+0xd1bc6]        # 0x3e6600
  314a3a:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  314a40:	4d 8b cf             	mov    r9,r15
  314a43:	4c 8b c5             	mov    r8,rbp
  314a46:	4c 89 74 24 20       	mov    QWORD PTR [rsp+0x20],r14
  314a4b:	e8 c8 87 fd ff       	call   0x2ed218
  314a50:	0f 28 74 24 50       	movaps xmm6,XMMWORD PTR [rsp+0x50]
  314a55:	48 8b c5             	mov    rax,rbp
  314a58:	48 83 c4 68          	add    rsp,0x68
  314a5c:	41 5f                	pop    r15
  314a5e:	41 5e                	pop    r14
  314a60:	5f                   	pop    rdi
  314a61:	5e                   	pop    rsi
  314a62:	5d                   	pop    rbp
  314a63:	5b                   	pop    rbx
  314a64:	c3                   	ret
