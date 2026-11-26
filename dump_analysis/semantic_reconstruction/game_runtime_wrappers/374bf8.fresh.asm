
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/374bf8.bin:     file format binary


Disassembly of section .data:

0000000000374bf8 <.data>:
  374bf8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  374bfd:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  374c02:	55                   	push   rbp
  374c03:	57                   	push   rdi
  374c04:	41 54                	push   r12
  374c06:	41 56                	push   r14
  374c08:	41 57                	push   r15
  374c0a:	48 8b ec             	mov    rbp,rsp
  374c0d:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  374c14:	4d 8b e0             	mov    r12,r8
  374c17:	4c 8b f2             	mov    r14,rdx
  374c1a:	4c 8b f9             	mov    r15,rcx
  374c1d:	e8 e6 62 f5 ff       	call   0x2caf08
  374c22:	84 c0                	test   al,al
  374c24:	75 0d                	jne    0x374c33
  374c26:	48 8b ca             	mov    rcx,rdx
  374c29:	e8 8e 2f 05 00       	call   0x3c7bbc
  374c2e:	e9 0b 01 00 00       	jmp    0x374d3e
  374c33:	8b 05 a7 d4 08 00    	mov    eax,DWORD PTR [rip+0x8d4a7]        # 0x4020e0
  374c39:	a8 01                	test   al,0x1
  374c3b:	0f 85 9a 00 00 00    	jne    0x374cdb
  374c41:	83 c8 01             	or     eax,0x1
  374c44:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  374c48:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  374c4c:	89 05 8e d4 08 00    	mov    DWORD PTR [rip+0x8d48e],eax        # 0x4020e0
  374c52:	e8 d9 7a f5 ff       	call   0x2cc730
  374c57:	48 8b c8             	mov    rcx,rax
  374c5a:	e8 45 90 f5 ff       	call   0x2cdca4
  374c5f:	48 8d 55 dc          	lea    rdx,[rbp-0x24]
  374c63:	48 8b f0             	mov    rsi,rax
  374c66:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374c6a:	e8 69 fa ff ff       	call   0x3746d8
  374c6f:	48 8b c8             	mov    rcx,rax
  374c72:	e8 c1 0b 00 00       	call   0x375838
  374c77:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  374c7b:	48 8b f8             	mov    rdi,rax
  374c7e:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374c82:	e8 29 f9 ff ff       	call   0x3745b0
  374c87:	48 8b c8             	mov    rcx,rax
  374c8a:	e8 d1 0b 00 00       	call   0x375860
  374c8f:	48 8d 55 b1          	lea    rdx,[rbp-0x4f]
  374c93:	48 8b d8             	mov    rbx,rax
  374c96:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374c9a:	e8 f9 f7 ff ff       	call   0x374498
  374c9f:	48 8b c8             	mov    rcx,rax
  374ca2:	e8 19 0b 00 00       	call   0x3757c0
  374ca7:	48 8b c8             	mov    rcx,rax
  374caa:	48 8b d3             	mov    rdx,rbx
  374cad:	e8 72 f5 fb ff       	call   0x334224
  374cb2:	41 83 c8 ff          	or     r8d,0xffffffff
  374cb6:	48 8b c8             	mov    rcx,rax
  374cb9:	4c 8b ce             	mov    r9,rsi
  374cbc:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  374cc1:	48 8b d7             	mov    rdx,rdi
  374cc4:	e8 e3 fc fb ff       	call   0x3349ac
  374cc9:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  374ccc:	8b 05 0e d4 08 00    	mov    eax,DWORD PTR [rip+0x8d40e]        # 0x4020e0
  374cd2:	4c 89 05 ff d3 08 00 	mov    QWORD PTR [rip+0x8d3ff],r8        # 0x4020d8
  374cd9:	eb 07                	jmp    0x374ce2
  374cdb:	4c 8b 05 f6 d3 08 00 	mov    r8,QWORD PTR [rip+0x8d3f6]        # 0x4020d8
  374ce2:	a8 02                	test   al,0x2
  374ce4:	75 1f                	jne    0x374d05
  374ce6:	48 8b 0d 73 11 06 00 	mov    rcx,QWORD PTR [rip+0x61173]        # 0x3d5e60
  374ced:	48 8d 15 fc d3 08 00 	lea    rdx,[rip+0x8d3fc]        # 0x4020f0
  374cf4:	83 c8 02             	or     eax,0x2
  374cf7:	45 33 c9             	xor    r9d,r9d
  374cfa:	89 05 e0 d3 08 00    	mov    DWORD PTR [rip+0x8d3e0],eax        # 0x4020e0
  374d00:	e8 1f 70 f5 ff       	call   0x2cbd24
  374d05:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  374d09:	e8 ae 2e 05 00       	call   0x3c7bbc
  374d0e:	48 8b 0d 4b 11 06 00 	mov    rcx,QWORD PTR [rip+0x6114b]        # 0x3d5e60
  374d15:	4c 8d 45 c0          	lea    r8,[rbp-0x40]
  374d19:	4d 8b cf             	mov    r9,r15
  374d1c:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  374d21:	48 8d 15 c8 d3 08 00 	lea    rdx,[rip+0x8d3c8]        # 0x4020f0
  374d28:	e8 23 6d f5 ff       	call   0x2cba50
  374d2d:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  374d32:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  374d35:	f2 41 0f 11 06       	movsd  QWORD PTR [r14],xmm0
  374d3a:	41 89 46 08          	mov    DWORD PTR [r14+0x8],eax
  374d3e:	4c 8d 9c 24 80 00 00 	lea    r11,[rsp+0x80]
  374d45:	00 
  374d46:	49 8b c6             	mov    rax,r14
  374d49:	49 8b 5b 30          	mov    rbx,QWORD PTR [r11+0x30]
  374d4d:	49 8b 73 38          	mov    rsi,QWORD PTR [r11+0x38]
  374d51:	49 8b e3             	mov    rsp,r11
  374d54:	41 5f                	pop    r15
  374d56:	41 5e                	pop    r14
  374d58:	41 5c                	pop    r12
  374d5a:	5f                   	pop    rdi
  374d5b:	5d                   	pop    rbp
  374d5c:	c3                   	ret
