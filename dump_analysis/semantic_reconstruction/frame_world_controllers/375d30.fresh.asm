
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/375d30.bin:     file format binary


Disassembly of section .data:

0000000000375d30 <.data>:
  375d30:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  375d35:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  375d3a:	56                   	push   rsi
  375d3b:	57                   	push   rdi
  375d3c:	41 56                	push   r14
  375d3e:	48 83 ec 60          	sub    rsp,0x60
  375d42:	44 8a f2             	mov    r14b,dl
  375d45:	48 8b e9             	mov    rbp,rcx
  375d48:	e8 bb 51 f5 ff       	call   0x2caf08
  375d4d:	84 c0                	test   al,al
  375d4f:	0f 84 02 01 00 00    	je     0x375e57
  375d55:	8b 05 e5 cc 08 00    	mov    eax,DWORD PTR [rip+0x8cce5]        # 0x402a40
  375d5b:	a8 01                	test   al,0x1
  375d5d:	0f 85 b1 00 00 00    	jne    0x375e14
  375d63:	83 c8 01             	or     eax,0x1
  375d66:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  375d6d:	00 
  375d6e:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  375d75:	00 
  375d76:	89 05 c4 cc 08 00    	mov    DWORD PTR [rip+0x8ccc4],eax        # 0x402a40
  375d7c:	e8 af 69 f5 ff       	call   0x2cc730
  375d81:	48 8b c8             	mov    rcx,rax
  375d84:	e8 1b 7f f5 ff       	call   0x2cdca4
  375d89:	48 8d 54 24 39       	lea    rdx,[rsp+0x39]
  375d8e:	48 8b f0             	mov    rsi,rax
  375d91:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  375d98:	00 
  375d99:	e8 e6 fc ff ff       	call   0x375a84
  375d9e:	48 8b c8             	mov    rcx,rax
  375da1:	e8 ba fa ff ff       	call   0x375860
  375da6:	48 8d 54 24 45       	lea    rdx,[rsp+0x45]
  375dab:	48 8b f8             	mov    rdi,rax
  375dae:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  375db5:	00 
  375db6:	e8 29 fc ff ff       	call   0x3759e4
  375dbb:	48 8b c8             	mov    rcx,rax
  375dbe:	e8 9d fa ff ff       	call   0x375860
  375dc3:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  375dc8:	48 8b d8             	mov    rbx,rax
  375dcb:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  375dd2:	00 
  375dd3:	e8 78 fb ff ff       	call   0x375950
  375dd8:	48 8b c8             	mov    rcx,rax
  375ddb:	e8 b8 f9 ff ff       	call   0x375798
  375de0:	48 8b c8             	mov    rcx,rax
  375de3:	48 8b d3             	mov    rdx,rbx
  375de6:	e8 39 e4 fb ff       	call   0x334224
  375deb:	41 83 c8 ff          	or     r8d,0xffffffff
  375def:	48 8b c8             	mov    rcx,rax
  375df2:	4c 8b ce             	mov    r9,rsi
  375df5:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  375dfa:	48 8b d7             	mov    rdx,rdi
  375dfd:	e8 aa eb fb ff       	call   0x3349ac
  375e02:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  375e05:	8b 05 35 cc 08 00    	mov    eax,DWORD PTR [rip+0x8cc35]        # 0x402a40
  375e0b:	4c 89 05 26 cc 08 00 	mov    QWORD PTR [rip+0x8cc26],r8        # 0x402a38
  375e12:	eb 07                	jmp    0x375e1b
  375e14:	4c 8b 05 1d cc 08 00 	mov    r8,QWORD PTR [rip+0x8cc1d]        # 0x402a38
  375e1b:	a8 02                	test   al,0x2
  375e1d:	75 1f                	jne    0x375e3e
  375e1f:	48 8b 0d 3a 00 06 00 	mov    rcx,QWORD PTR [rip+0x6003a]        # 0x3d5e60
  375e26:	48 8d 15 23 cc 08 00 	lea    rdx,[rip+0x8cc23]        # 0x402a50
  375e2d:	83 c8 02             	or     eax,0x2
  375e30:	45 33 c9             	xor    r9d,r9d
  375e33:	89 05 07 cc 08 00    	mov    DWORD PTR [rip+0x8cc07],eax        # 0x402a40
  375e39:	e8 e6 5e f5 ff       	call   0x2cbd24
  375e3e:	48 8b 0d 1b 00 06 00 	mov    rcx,QWORD PTR [rip+0x6001b]        # 0x3d5e60
  375e45:	48 8d 15 04 cc 08 00 	lea    rdx,[rip+0x8cc04]        # 0x402a50
  375e4c:	45 8a ce             	mov    r9b,r14b
  375e4f:	4c 8b c5             	mov    r8,rbp
  375e52:	e8 9d b6 fa ff       	call   0x3214f4
  375e57:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  375e5c:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  375e60:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  375e64:	49 8b e3             	mov    rsp,r11
  375e67:	41 5e                	pop    r14
  375e69:	5f                   	pop    rdi
  375e6a:	5e                   	pop    rsi
  375e6b:	c3                   	ret
