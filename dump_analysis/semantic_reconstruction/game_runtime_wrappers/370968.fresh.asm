
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/370968.bin:     file format binary


Disassembly of section .data:

0000000000370968 <.data>:
  370968:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  37096d:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  370972:	56                   	push   rsi
  370973:	57                   	push   rdi
  370974:	41 56                	push   r14
  370976:	48 83 ec 60          	sub    rsp,0x60
  37097a:	4c 8b f2             	mov    r14,rdx
  37097d:	48 8b e9             	mov    rbp,rcx
  370980:	e8 83 a5 f5 ff       	call   0x2caf08
  370985:	84 c0                	test   al,al
  370987:	0f 84 02 01 00 00    	je     0x370a8f
  37098d:	8b 05 4d f9 08 00    	mov    eax,DWORD PTR [rip+0x8f94d]        # 0x4002e0
  370993:	a8 01                	test   al,0x1
  370995:	0f 85 b1 00 00 00    	jne    0x370a4c
  37099b:	83 c8 01             	or     eax,0x1
  37099e:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3709a5:	00 
  3709a6:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3709ad:	00 
  3709ae:	89 05 2c f9 08 00    	mov    DWORD PTR [rip+0x8f92c],eax        # 0x4002e0
  3709b4:	e8 77 bd f5 ff       	call   0x2cc730
  3709b9:	48 8b c8             	mov    rcx,rax
  3709bc:	e8 e3 d2 f5 ff       	call   0x2cdca4
  3709c1:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3709c6:	48 8b f0             	mov    rsi,rax
  3709c9:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3709d0:	00 
  3709d1:	e8 fa f9 ff ff       	call   0x3703d0
  3709d6:	48 8b c8             	mov    rcx,rax
  3709d9:	e8 ae 91 f7 ff       	call   0x2e9b8c
  3709de:	48 8d 54 24 39       	lea    rdx,[rsp+0x39]
  3709e3:	48 8b f8             	mov    rdi,rax
  3709e6:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3709ed:	00 
  3709ee:	e8 15 f9 ff ff       	call   0x370308
  3709f3:	48 8b c8             	mov    rcx,rax
  3709f6:	e8 39 d4 f5 ff       	call   0x2cde34
  3709fb:	48 8d 54 24 45       	lea    rdx,[rsp+0x45]
  370a00:	48 8b d8             	mov    rbx,rax
  370a03:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  370a0a:	00 
  370a0b:	e8 48 f8 ff ff       	call   0x370258
  370a10:	48 8b c8             	mov    rcx,rax
  370a13:	e8 1c d4 f5 ff       	call   0x2cde34
  370a18:	48 8b c8             	mov    rcx,rax
  370a1b:	48 8b d3             	mov    rdx,rbx
  370a1e:	e8 01 38 fc ff       	call   0x334224
  370a23:	41 83 c8 ff          	or     r8d,0xffffffff
  370a27:	48 8b c8             	mov    rcx,rax
  370a2a:	4c 8b ce             	mov    r9,rsi
  370a2d:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  370a32:	48 8b d7             	mov    rdx,rdi
  370a35:	e8 72 3f fc ff       	call   0x3349ac
  370a3a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  370a3d:	8b 05 9d f8 08 00    	mov    eax,DWORD PTR [rip+0x8f89d]        # 0x4002e0
  370a43:	4c 89 05 8e f8 08 00 	mov    QWORD PTR [rip+0x8f88e],r8        # 0x4002d8
  370a4a:	eb 07                	jmp    0x370a53
  370a4c:	4c 8b 05 85 f8 08 00 	mov    r8,QWORD PTR [rip+0x8f885]        # 0x4002d8
  370a53:	a8 02                	test   al,0x2
  370a55:	75 1f                	jne    0x370a76
  370a57:	48 8b 0d 02 54 06 00 	mov    rcx,QWORD PTR [rip+0x65402]        # 0x3d5e60
  370a5e:	48 8d 15 8b f8 08 00 	lea    rdx,[rip+0x8f88b]        # 0x4002f0
  370a65:	83 c8 02             	or     eax,0x2
  370a68:	45 33 c9             	xor    r9d,r9d
  370a6b:	89 05 6f f8 08 00    	mov    DWORD PTR [rip+0x8f86f],eax        # 0x4002e0
  370a71:	e8 ae b2 f5 ff       	call   0x2cbd24
  370a76:	48 8b 0d e3 53 06 00 	mov    rcx,QWORD PTR [rip+0x653e3]        # 0x3d5e60
  370a7d:	48 8d 15 6c f8 08 00 	lea    rdx,[rip+0x8f86c]        # 0x4002f0
  370a84:	4d 8b ce             	mov    r9,r14
  370a87:	4c 8b c5             	mov    r8,rbp
  370a8a:	e8 05 16 f6 ff       	call   0x2d2094
  370a8f:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  370a94:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  370a98:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  370a9c:	49 8b e3             	mov    rsp,r11
  370a9f:	41 5e                	pop    r14
  370aa1:	5f                   	pop    rdi
  370aa2:	5e                   	pop    rsi
  370aa3:	c3                   	ret
