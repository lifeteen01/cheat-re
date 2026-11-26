
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/39fd68.audit.bin:     file format binary


Disassembly of section .data:

000000000039fd68 <.data>:
  39fd68:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  39fd6d:	48 89 74 24 18                                  	mov    QWORD PTR [rsp+0x18],rsi
  39fd72:	57                                              	push   rdi
  39fd73:	48 83 ec 20                                     	sub    rsp,0x20
  39fd77:	80 7a 48 00                                     	cmp    BYTE PTR [rdx+0x48],0x0
  39fd7b:	48 8b f2                                        	mov    rsi,rdx
  39fd7e:	48 8b f9                                        	mov    rdi,rcx
  39fd81:	75 3a                                           	jne    0x39fdbd
  39fd83:	bb 78 00 00 00                                  	mov    ebx,0x78
  39fd88:	8b cb                                           	mov    ecx,ebx
  39fd8a:	e8 c9 53 ff ff                                  	call   0x395158
  39fd8f:	8a 54 24 30                                     	mov    dl,BYTE PTR [rsp+0x30]
  39fd93:	4c 8b c0                                        	mov    r8,rax
  39fd96:	8b cb                                           	mov    ecx,ebx
  39fd98:	e8 cf bd fe ff                                  	call   0x38bb6c
  39fd9d:	48 85 c0                                        	test   rax,rax
  39fda0:	74 08                                           	je     0x39fdaa
  39fda2:	48 8b c8                                        	mov    rcx,rax
  39fda5:	e8 26 f6 ff ff                                  	call   0x39f3d0
  39fdaa:	48 8d 4f 58                                     	lea    rcx,[rdi+0x58]
  39fdae:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  39fdb3:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  39fdb8:	e8 9b a8 fd ff                                  	call   0x37a658
  39fdbd:	48 8b d6                                        	mov    rdx,rsi
  39fdc0:	48 8d 4f 78                                     	lea    rcx,[rdi+0x78]
  39fdc4:	e8 b7 96 00 00                                  	call   0x3a9480
  39fdc9:	48 8d 4f 78                                     	lea    rcx,[rdi+0x78]
  39fdcd:	e8 4a 95 00 00                                  	call   0x3a931c
  39fdd2:	48 8b d8                                        	mov    rbx,rax
  39fdd5:	48 83 b8 80 00 00 00 00                         	cmp    QWORD PTR [rax+0x80],0x0
  39fddd:	75 13                                           	jne    0x39fdf2
  39fddf:	48 8d 4f 58                                     	lea    rcx,[rdi+0x58]
  39fde3:	e8 2c e5 ff ff                                  	call   0x39e314
  39fde8:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  39fdeb:	48 89 8b 80 00 00 00                            	mov    QWORD PTR [rbx+0x80],rcx
  39fdf2:	80 7b 0c 00                                     	cmp    BYTE PTR [rbx+0xc],0x0
  39fdf6:	75 1f                                           	jne    0x39fe17
  39fdf8:	48 63 4b 08                                     	movsxd rcx,DWORD PTR [rbx+0x8]
  39fdfc:	e8 57 53 ff ff                                  	call   0x395158
  39fe01:	4c 63 43 08                                     	movsxd r8,DWORD PTR [rbx+0x8]
  39fe05:	48 8b c8                                        	mov    rcx,rax
  39fe08:	48 89 03                                        	mov    QWORD PTR [rbx],rax
  39fe0b:	c6 43 0c 01                                     	mov    BYTE PTR [rbx+0xc],0x1
  39fe0f:	48 8b 16                                        	mov    rdx,QWORD PTR [rsi]
  39fe12:	e8 35 8f 02 00                                  	call   0x3c8d4c
  39fe17:	48 8b 8b 80 00 00 00                            	mov    rcx,QWORD PTR [rbx+0x80]
  39fe1e:	b8 ff ff 00 00                                  	mov    eax,0xffff
  39fe23:	66 39 41 54                                     	cmp    WORD PTR [rcx+0x54],ax
  39fe27:	75 08                                           	jne    0x39fe31
  39fe29:	0f b7 46 54                                     	movzx  eax,WORD PTR [rsi+0x54]
  39fe2d:	66 89 41 54                                     	mov    WORD PTR [rcx+0x54],ax
  39fe31:	48 8b cf                                        	mov    rcx,rdi
  39fe34:	c6 47 28 00                                     	mov    BYTE PTR [rdi+0x28],0x0
  39fe38:	e8 27 40 00 00                                  	call   0x3a3e64
  39fe3d:	48 8b 83 80 00 00 00                            	mov    rax,QWORD PTR [rbx+0x80]
  39fe44:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  39fe49:	48 8b 74 24 40                                  	mov    rsi,QWORD PTR [rsp+0x40]
  39fe4e:	48 83 c4 20                                     	add    rsp,0x20
  39fe52:	5f                                              	pop    rdi
  39fe53:	c3                                              	ret
