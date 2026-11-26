
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/2e0bf0.bin:     file format binary


Disassembly of section .data:

00000000002e0bf0 <.data>:
  2e0bf0:	40 53                	rex push rbx
  2e0bf2:	56                   	push   rsi
  2e0bf3:	57                   	push   rdi
  2e0bf4:	48 83 ec 50          	sub    rsp,0x50
  2e0bf8:	8b 05 fa 66 0f 00    	mov    eax,DWORD PTR [rip+0xf66fa]        # 0x3d72f8
  2e0bfe:	a8 01                	test   al,0x1
  2e0c00:	0f 85 a5 00 00 00    	jne    0x2e0cab
  2e0c06:	83 c8 01             	or     eax,0x1
  2e0c09:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e0c0e:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e0c13:	89 05 df 66 0f 00    	mov    DWORD PTR [rip+0xf66df],eax        # 0x3d72f8
  2e0c19:	e8 12 bb fe ff       	call   0x2cc730
  2e0c1e:	48 8b c8             	mov    rcx,rax
  2e0c21:	e8 7e d0 fe ff       	call   0x2cdca4
  2e0c26:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  2e0c2b:	48 8b f0             	mov    rsi,rax
  2e0c2e:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0c33:	e8 40 ef ff ff       	call   0x2dfb78
  2e0c38:	48 8b c8             	mov    rcx,rax
  2e0c3b:	e8 7c d1 fe ff       	call   0x2cddbc
  2e0c40:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e0c45:	48 8b f8             	mov    rdi,rax
  2e0c48:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0c4d:	e8 ce ed ff ff       	call   0x2dfa20
  2e0c52:	48 8b c8             	mov    rcx,rax
  2e0c55:	e8 b2 d1 fe ff       	call   0x2cde0c
  2e0c5a:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e0c61:	00 
  2e0c62:	48 8b d8             	mov    rbx,rax
  2e0c65:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0c6a:	e8 99 ec ff ff       	call   0x2df908
  2e0c6f:	48 8b c8             	mov    rcx,rax
  2e0c72:	e8 75 29 00 00       	call   0x2e35ec
  2e0c77:	48 8b c8             	mov    rcx,rax
  2e0c7a:	48 8b d3             	mov    rdx,rbx
  2e0c7d:	e8 a2 35 05 00       	call   0x334224
  2e0c82:	41 83 c8 ff          	or     r8d,0xffffffff
  2e0c86:	48 8b c8             	mov    rcx,rax
  2e0c89:	4c 8b ce             	mov    r9,rsi
  2e0c8c:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e0c91:	48 8b d7             	mov    rdx,rdi
  2e0c94:	e8 13 3d 05 00       	call   0x3349ac
  2e0c99:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e0c9c:	8b 05 56 66 0f 00    	mov    eax,DWORD PTR [rip+0xf6656]        # 0x3d72f8
  2e0ca2:	4c 89 05 47 66 0f 00 	mov    QWORD PTR [rip+0xf6647],r8        # 0x3d72f0
  2e0ca9:	eb 07                	jmp    0x2e0cb2
  2e0cab:	4c 8b 05 3e 66 0f 00 	mov    r8,QWORD PTR [rip+0xf663e]        # 0x3d72f0
  2e0cb2:	a8 02                	test   al,0x2
  2e0cb4:	75 1f                	jne    0x2e0cd5
  2e0cb6:	48 8b 0d a3 51 0f 00 	mov    rcx,QWORD PTR [rip+0xf51a3]        # 0x3d5e60
  2e0cbd:	48 8d 15 3c 66 0f 00 	lea    rdx,[rip+0xf663c]        # 0x3d7300
  2e0cc4:	83 c8 02             	or     eax,0x2
  2e0cc7:	45 33 c9             	xor    r9d,r9d
  2e0cca:	89 05 28 66 0f 00    	mov    DWORD PTR [rip+0xf6628],eax        # 0x3d72f8
  2e0cd0:	e8 4f b0 fe ff       	call   0x2cbd24
  2e0cd5:	48 8b 0d 84 51 0f 00 	mov    rcx,QWORD PTR [rip+0xf5184]        # 0x3d5e60
  2e0cdc:	48 8d 15 1d 66 0f 00 	lea    rdx,[rip+0xf661d]        # 0x3d7300
  2e0ce3:	48 83 c4 50          	add    rsp,0x50
  2e0ce7:	5f                   	pop    rdi
  2e0ce8:	5e                   	pop    rsi
  2e0ce9:	5b                   	pop    rbx
  2e0cea:	e9 61 dc ff ff       	jmp    0x2de950
