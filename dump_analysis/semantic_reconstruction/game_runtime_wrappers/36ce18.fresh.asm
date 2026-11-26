
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/36ce18.bin:     file format binary


Disassembly of section .data:

000000000036ce18 <.data>:
  36ce18:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  36ce1d:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  36ce22:	56                   	push   rsi
  36ce23:	57                   	push   rdi
  36ce24:	41 56                	push   r14
  36ce26:	48 83 ec 60          	sub    rsp,0x60
  36ce2a:	44 8a f2             	mov    r14b,dl
  36ce2d:	48 8b e9             	mov    rbp,rcx
  36ce30:	e8 d3 e0 f5 ff       	call   0x2caf08
  36ce35:	84 c0                	test   al,al
  36ce37:	0f 84 02 01 00 00    	je     0x36cf3f
  36ce3d:	8b 05 cd 30 09 00    	mov    eax,DWORD PTR [rip+0x930cd]        # 0x3fff10
  36ce43:	a8 01                	test   al,0x1
  36ce45:	0f 85 b1 00 00 00    	jne    0x36cefc
  36ce4b:	83 c8 01             	or     eax,0x1
  36ce4e:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  36ce55:	00 
  36ce56:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  36ce5d:	00 
  36ce5e:	89 05 ac 30 09 00    	mov    DWORD PTR [rip+0x930ac],eax        # 0x3fff10
  36ce64:	e8 c7 f8 f5 ff       	call   0x2cc730
  36ce69:	48 8b c8             	mov    rcx,rax
  36ce6c:	e8 33 0e f6 ff       	call   0x2cdca4
  36ce71:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  36ce76:	48 8b f0             	mov    rsi,rax
  36ce79:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36ce80:	00 
  36ce81:	e8 76 ff ff ff       	call   0x36cdfc
  36ce86:	48 8b c8             	mov    rcx,rax
  36ce89:	e8 a6 0f f6 ff       	call   0x2cde34
  36ce8e:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  36ce93:	48 8b f8             	mov    rdi,rax
  36ce96:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36ce9d:	00 
  36ce9e:	e8 3d ff ff ff       	call   0x36cde0
  36cea3:	48 8b c8             	mov    rcx,rax
  36cea6:	e8 89 0f f6 ff       	call   0x2cde34
  36ceab:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  36ceb0:	48 8b d8             	mov    rbx,rax
  36ceb3:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36ceba:	00 
  36cebb:	e8 04 ff ff ff       	call   0x36cdc4
  36cec0:	48 8b c8             	mov    rcx,rax
  36cec3:	e8 7c 0e f6 ff       	call   0x2cdd44
  36cec8:	48 8b c8             	mov    rcx,rax
  36cecb:	48 8b d3             	mov    rdx,rbx
  36cece:	e8 51 73 fc ff       	call   0x334224
  36ced3:	41 83 c8 ff          	or     r8d,0xffffffff
  36ced7:	48 8b c8             	mov    rcx,rax
  36ceda:	4c 8b ce             	mov    r9,rsi
  36cedd:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  36cee2:	48 8b d7             	mov    rdx,rdi
  36cee5:	e8 c2 7a fc ff       	call   0x3349ac
  36ceea:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  36ceed:	8b 05 1d 30 09 00    	mov    eax,DWORD PTR [rip+0x9301d]        # 0x3fff10
  36cef3:	4c 89 05 0e 30 09 00 	mov    QWORD PTR [rip+0x9300e],r8        # 0x3fff08
  36cefa:	eb 07                	jmp    0x36cf03
  36cefc:	4c 8b 05 05 30 09 00 	mov    r8,QWORD PTR [rip+0x93005]        # 0x3fff08
  36cf03:	a8 02                	test   al,0x2
  36cf05:	75 1f                	jne    0x36cf26
  36cf07:	48 8b 0d 52 8f 06 00 	mov    rcx,QWORD PTR [rip+0x68f52]        # 0x3d5e60
  36cf0e:	48 8d 15 0b 30 09 00 	lea    rdx,[rip+0x9300b]        # 0x3fff20
  36cf15:	83 c8 02             	or     eax,0x2
  36cf18:	45 33 c9             	xor    r9d,r9d
  36cf1b:	89 05 ef 2f 09 00    	mov    DWORD PTR [rip+0x92fef],eax        # 0x3fff10
  36cf21:	e8 fe ed f5 ff       	call   0x2cbd24
  36cf26:	48 8b 0d 33 8f 06 00 	mov    rcx,QWORD PTR [rip+0x68f33]        # 0x3d5e60
  36cf2d:	48 8d 15 ec 2f 09 00 	lea    rdx,[rip+0x92fec]        # 0x3fff20
  36cf34:	45 8a ce             	mov    r9b,r14b
  36cf37:	4c 8b c5             	mov    r8,rbp
  36cf3a:	e8 b5 45 fb ff       	call   0x3214f4
  36cf3f:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  36cf44:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  36cf48:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  36cf4c:	49 8b e3             	mov    rsp,r11
  36cf4f:	41 5e                	pop    r14
  36cf51:	5f                   	pop    rdi
  36cf52:	5e                   	pop    rsi
  36cf53:	c3                   	ret
