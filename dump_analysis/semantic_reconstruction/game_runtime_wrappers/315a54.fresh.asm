
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/315a54.bin:     file format binary


Disassembly of section .data:

0000000000315a54 <.data>:
  315a54:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  315a59:	55                   	push   rbp
  315a5a:	56                   	push   rsi
  315a5b:	57                   	push   rdi
  315a5c:	48 83 ec 60          	sub    rsp,0x60
  315a60:	48 8b e9             	mov    rbp,rcx
  315a63:	e8 a0 54 fb ff       	call   0x2caf08
  315a68:	84 c0                	test   al,al
  315a6a:	75 07                	jne    0x315a73
  315a6c:	33 c0                	xor    eax,eax
  315a6e:	e9 ff 00 00 00       	jmp    0x315b72
  315a73:	8b 05 67 0c 0d 00    	mov    eax,DWORD PTR [rip+0xd0c67]        # 0x3e66e0
  315a79:	a8 01                	test   al,0x1
  315a7b:	0f 85 b1 00 00 00    	jne    0x315b32
  315a81:	83 c8 01             	or     eax,0x1
  315a84:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  315a8b:	00 
  315a8c:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  315a93:	00 
  315a94:	89 05 46 0c 0d 00    	mov    DWORD PTR [rip+0xd0c46],eax        # 0x3e66e0
  315a9a:	e8 91 6c fb ff       	call   0x2cc730
  315a9f:	48 8b c8             	mov    rcx,rax
  315aa2:	e8 fd 81 fb ff       	call   0x2cdca4
  315aa7:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  315aac:	48 8b f0             	mov    rsi,rax
  315aaf:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  315ab6:	00 
  315ab7:	e8 b0 e7 fd ff       	call   0x2f426c
  315abc:	48 8b c8             	mov    rcx,rax
  315abf:	e8 58 2b fc ff       	call   0x2d861c
  315ac4:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  315ac9:	48 8b f8             	mov    rdi,rax
  315acc:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  315ad3:	00 
  315ad4:	e8 0f dc fd ff       	call   0x2f36e8
  315ad9:	48 8b c8             	mov    rcx,rax
  315adc:	e8 2b 83 fb ff       	call   0x2cde0c
  315ae1:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315ae6:	48 8b d8             	mov    rbx,rax
  315ae9:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  315af0:	00 
  315af1:	e8 3e c7 fd ff       	call   0x2f2234
  315af6:	48 8b c8             	mov    rcx,rax
  315af9:	e8 1e 82 fb ff       	call   0x2cdd1c
  315afe:	48 8b c8             	mov    rcx,rax
  315b01:	48 8b d3             	mov    rdx,rbx
  315b04:	e8 1b e7 01 00       	call   0x334224
  315b09:	41 83 c8 ff          	or     r8d,0xffffffff
  315b0d:	48 8b c8             	mov    rcx,rax
  315b10:	4c 8b ce             	mov    r9,rsi
  315b13:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  315b18:	48 8b d7             	mov    rdx,rdi
  315b1b:	e8 8c ee 01 00       	call   0x3349ac
  315b20:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  315b23:	8b 05 b7 0b 0d 00    	mov    eax,DWORD PTR [rip+0xd0bb7]        # 0x3e66e0
  315b29:	4c 89 05 a8 0b 0d 00 	mov    QWORD PTR [rip+0xd0ba8],r8        # 0x3e66d8
  315b30:	eb 07                	jmp    0x315b39
  315b32:	4c 8b 05 9f 0b 0d 00 	mov    r8,QWORD PTR [rip+0xd0b9f]        # 0x3e66d8
  315b39:	a8 02                	test   al,0x2
  315b3b:	75 1f                	jne    0x315b5c
  315b3d:	48 8b 0d 1c 03 0c 00 	mov    rcx,QWORD PTR [rip+0xc031c]        # 0x3d5e60
  315b44:	48 8d 15 a5 0b 0d 00 	lea    rdx,[rip+0xd0ba5]        # 0x3e66f0
  315b4b:	83 c8 02             	or     eax,0x2
  315b4e:	45 33 c9             	xor    r9d,r9d
  315b51:	89 05 89 0b 0d 00    	mov    DWORD PTR [rip+0xd0b89],eax        # 0x3e66e0
  315b57:	e8 c8 61 fb ff       	call   0x2cbd24
  315b5c:	48 8b 0d fd 02 0c 00 	mov    rcx,QWORD PTR [rip+0xc02fd]        # 0x3d5e60
  315b63:	48 8d 15 86 0b 0d 00 	lea    rdx,[rip+0xd0b86]        # 0x3e66f0
  315b6a:	4c 8b c5             	mov    r8,rbp
  315b6d:	e8 8a 5e fb ff       	call   0x2cb9fc
  315b72:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  315b79:	00 
  315b7a:	48 83 c4 60          	add    rsp,0x60
  315b7e:	5f                   	pop    rdi
  315b7f:	5e                   	pop    rsi
  315b80:	5d                   	pop    rbp
  315b81:	c3                   	ret
