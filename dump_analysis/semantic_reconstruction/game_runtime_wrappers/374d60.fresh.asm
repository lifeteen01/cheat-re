
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/374d60.bin:     file format binary


Disassembly of section .data:

0000000000374d60 <.data>:
  374d60:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  374d65:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  374d6a:	55                   	push   rbp
  374d6b:	57                   	push   rdi
  374d6c:	41 54                	push   r12
  374d6e:	41 56                	push   r14
  374d70:	41 57                	push   r15
  374d72:	48 8b ec             	mov    rbp,rsp
  374d75:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  374d7c:	4d 8b e0             	mov    r12,r8
  374d7f:	4c 8b f2             	mov    r14,rdx
  374d82:	4c 8b f9             	mov    r15,rcx
  374d85:	e8 7e 61 f5 ff       	call   0x2caf08
  374d8a:	84 c0                	test   al,al
  374d8c:	75 0d                	jne    0x374d9b
  374d8e:	48 8b ca             	mov    rcx,rdx
  374d91:	e8 26 2e 05 00       	call   0x3c7bbc
  374d96:	e9 0b 01 00 00       	jmp    0x374ea6
  374d9b:	8b 05 4f d2 08 00    	mov    eax,DWORD PTR [rip+0x8d24f]        # 0x401ff0
  374da1:	a8 01                	test   al,0x1
  374da3:	0f 85 9a 00 00 00    	jne    0x374e43
  374da9:	83 c8 01             	or     eax,0x1
  374dac:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  374db0:	48 8d 4d 48          	lea    rcx,[rbp+0x48]
  374db4:	89 05 36 d2 08 00    	mov    DWORD PTR [rip+0x8d236],eax        # 0x401ff0
  374dba:	e8 71 79 f5 ff       	call   0x2cc730
  374dbf:	48 8b c8             	mov    rcx,rax
  374dc2:	e8 dd 8e f5 ff       	call   0x2cdca4
  374dc7:	48 8d 55 dc          	lea    rdx,[rbp-0x24]
  374dcb:	48 8b f0             	mov    rsi,rax
  374dce:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374dd2:	e8 1d f9 ff ff       	call   0x3746f4
  374dd7:	48 8b c8             	mov    rcx,rax
  374dda:	e8 31 0a 00 00       	call   0x375810
  374ddf:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  374de3:	48 8b f8             	mov    rdi,rax
  374de6:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374dea:	e8 dd f7 ff ff       	call   0x3745cc
  374def:	48 8b c8             	mov    rcx,rax
  374df2:	e8 69 0a 00 00       	call   0x375860
  374df7:	48 8d 55 b1          	lea    rdx,[rbp-0x4f]
  374dfb:	48 8b d8             	mov    rbx,rax
  374dfe:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  374e02:	e8 ad f6 ff ff       	call   0x3744b4
  374e07:	48 8b c8             	mov    rcx,rax
  374e0a:	e8 b1 09 00 00       	call   0x3757c0
  374e0f:	48 8b c8             	mov    rcx,rax
  374e12:	48 8b d3             	mov    rdx,rbx
  374e15:	e8 0a f4 fb ff       	call   0x334224
  374e1a:	41 83 c8 ff          	or     r8d,0xffffffff
  374e1e:	48 8b c8             	mov    rcx,rax
  374e21:	4c 8b ce             	mov    r9,rsi
  374e24:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  374e29:	48 8b d7             	mov    rdx,rdi
  374e2c:	e8 7b fb fb ff       	call   0x3349ac
  374e31:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  374e34:	8b 05 b6 d1 08 00    	mov    eax,DWORD PTR [rip+0x8d1b6]        # 0x401ff0
  374e3a:	4c 89 05 a7 d1 08 00 	mov    QWORD PTR [rip+0x8d1a7],r8        # 0x401fe8
  374e41:	eb 07                	jmp    0x374e4a
  374e43:	4c 8b 05 9e d1 08 00 	mov    r8,QWORD PTR [rip+0x8d19e]        # 0x401fe8
  374e4a:	a8 02                	test   al,0x2
  374e4c:	75 1f                	jne    0x374e6d
  374e4e:	48 8b 0d 0b 10 06 00 	mov    rcx,QWORD PTR [rip+0x6100b]        # 0x3d5e60
  374e55:	48 8d 15 a4 d1 08 00 	lea    rdx,[rip+0x8d1a4]        # 0x402000
  374e5c:	83 c8 02             	or     eax,0x2
  374e5f:	45 33 c9             	xor    r9d,r9d
  374e62:	89 05 88 d1 08 00    	mov    DWORD PTR [rip+0x8d188],eax        # 0x401ff0
  374e68:	e8 b7 6e f5 ff       	call   0x2cbd24
  374e6d:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  374e71:	e8 46 2d 05 00       	call   0x3c7bbc
  374e76:	48 8b 0d e3 0f 06 00 	mov    rcx,QWORD PTR [rip+0x60fe3]        # 0x3d5e60
  374e7d:	4c 8d 45 c0          	lea    r8,[rbp-0x40]
  374e81:	4d 8b cf             	mov    r9,r15
  374e84:	4c 89 64 24 20       	mov    QWORD PTR [rsp+0x20],r12
  374e89:	48 8d 15 70 d1 08 00 	lea    rdx,[rip+0x8d170]        # 0x402000
  374e90:	e8 bb 6b f5 ff       	call   0x2cba50
  374e95:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  374e9a:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  374e9d:	f2 41 0f 11 06       	movsd  QWORD PTR [r14],xmm0
  374ea2:	41 89 46 08          	mov    DWORD PTR [r14+0x8],eax
  374ea6:	4c 8d 9c 24 80 00 00 	lea    r11,[rsp+0x80]
  374ead:	00 
  374eae:	49 8b c6             	mov    rax,r14
  374eb1:	49 8b 5b 30          	mov    rbx,QWORD PTR [r11+0x30]
  374eb5:	49 8b 73 38          	mov    rsi,QWORD PTR [r11+0x38]
  374eb9:	49 8b e3             	mov    rsp,r11
  374ebc:	41 5f                	pop    r15
  374ebe:	41 5e                	pop    r14
  374ec0:	41 5c                	pop    r12
  374ec2:	5f                   	pop    rdi
  374ec3:	5d                   	pop    rbp
  374ec4:	c3                   	ret
