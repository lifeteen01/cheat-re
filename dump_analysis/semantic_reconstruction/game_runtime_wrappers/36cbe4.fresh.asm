
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/36cbe4.bin:     file format binary


Disassembly of section .data:

000000000036cbe4 <.data>:
  36cbe4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  36cbe9:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  36cbee:	56                   	push   rsi
  36cbef:	57                   	push   rdi
  36cbf0:	41 56                	push   r14
  36cbf2:	48 83 ec 60          	sub    rsp,0x60
  36cbf6:	44 8b f2             	mov    r14d,edx
  36cbf9:	48 8b e9             	mov    rbp,rcx
  36cbfc:	e8 07 e3 f5 ff       	call   0x2caf08
  36cc01:	84 c0                	test   al,al
  36cc03:	0f 84 02 01 00 00    	je     0x36cd0b
  36cc09:	8b 05 41 2f 09 00    	mov    eax,DWORD PTR [rip+0x92f41]        # 0x3ffb50
  36cc0f:	a8 01                	test   al,0x1
  36cc11:	0f 85 b1 00 00 00    	jne    0x36ccc8
  36cc17:	83 c8 01             	or     eax,0x1
  36cc1a:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  36cc21:	00 
  36cc22:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  36cc29:	00 
  36cc2a:	89 05 20 2f 09 00    	mov    DWORD PTR [rip+0x92f20],eax        # 0x3ffb50
  36cc30:	e8 fb fa f5 ff       	call   0x2cc730
  36cc35:	48 8b c8             	mov    rcx,rax
  36cc38:	e8 67 10 f6 ff       	call   0x2cdca4
  36cc3d:	48 8d 54 24 43       	lea    rdx,[rsp+0x43]
  36cc42:	48 8b f0             	mov    rsi,rax
  36cc45:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36cc4c:	00 
  36cc4d:	e8 d6 f9 ff ff       	call   0x36c628
  36cc52:	48 8b c8             	mov    rcx,rax
  36cc55:	e8 06 05 f7 ff       	call   0x2dd160
  36cc5a:	48 8d 54 24 37       	lea    rdx,[rsp+0x37]
  36cc5f:	48 8b f8             	mov    rdi,rax
  36cc62:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36cc69:	00 
  36cc6a:	e8 31 f9 ff ff       	call   0x36c5a0
  36cc6f:	48 8b c8             	mov    rcx,rax
  36cc72:	e8 bd 11 f6 ff       	call   0x2cde34
  36cc77:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  36cc7c:	48 8b d8             	mov    rbx,rax
  36cc7f:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  36cc86:	00 
  36cc87:	e8 84 f8 ff ff       	call   0x36c510
  36cc8c:	48 8b c8             	mov    rcx,rax
  36cc8f:	e8 60 10 f6 ff       	call   0x2cdcf4
  36cc94:	48 8b c8             	mov    rcx,rax
  36cc97:	48 8b d3             	mov    rdx,rbx
  36cc9a:	e8 85 75 fc ff       	call   0x334224
  36cc9f:	41 83 c8 ff          	or     r8d,0xffffffff
  36cca3:	48 8b c8             	mov    rcx,rax
  36cca6:	4c 8b ce             	mov    r9,rsi
  36cca9:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  36ccae:	48 8b d7             	mov    rdx,rdi
  36ccb1:	e8 f6 7c fc ff       	call   0x3349ac
  36ccb6:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  36ccb9:	8b 05 91 2e 09 00    	mov    eax,DWORD PTR [rip+0x92e91]        # 0x3ffb50
  36ccbf:	4c 89 05 82 2e 09 00 	mov    QWORD PTR [rip+0x92e82],r8        # 0x3ffb48
  36ccc6:	eb 07                	jmp    0x36cccf
  36ccc8:	4c 8b 05 79 2e 09 00 	mov    r8,QWORD PTR [rip+0x92e79]        # 0x3ffb48
  36cccf:	a8 02                	test   al,0x2
  36ccd1:	75 1f                	jne    0x36ccf2
  36ccd3:	48 8b 0d 86 91 06 00 	mov    rcx,QWORD PTR [rip+0x69186]        # 0x3d5e60
  36ccda:	48 8d 15 7f 2e 09 00 	lea    rdx,[rip+0x92e7f]        # 0x3ffb60
  36cce1:	83 c8 02             	or     eax,0x2
  36cce4:	45 33 c9             	xor    r9d,r9d
  36cce7:	89 05 63 2e 09 00    	mov    DWORD PTR [rip+0x92e63],eax        # 0x3ffb50
  36cced:	e8 32 f0 f5 ff       	call   0x2cbd24
  36ccf2:	48 8b 0d 67 91 06 00 	mov    rcx,QWORD PTR [rip+0x69167]        # 0x3d5e60
  36ccf9:	48 8d 15 60 2e 09 00 	lea    rdx,[rip+0x92e60]        # 0x3ffb60
  36cd00:	45 8b ce             	mov    r9d,r14d
  36cd03:	4c 8b c5             	mov    r8,rbp
  36cd06:	e8 bd e4 fb ff       	call   0x32b1c8
  36cd0b:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  36cd10:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  36cd14:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  36cd18:	49 8b e3             	mov    rsp,r11
  36cd1b:	41 5e                	pop    r14
  36cd1d:	5f                   	pop    rdi
  36cd1e:	5e                   	pop    rsi
  36cd1f:	c3                   	ret
