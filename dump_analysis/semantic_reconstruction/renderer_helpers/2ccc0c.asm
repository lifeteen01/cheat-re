
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ccc0c <.data+0x2ccc0c>:
  2ccc0c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2ccc11:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  2ccc16:	57                                              	push   rdi
  2ccc17:	48 83 ec 40                                     	sub    rsp,0x40
  2ccc1b:	48 8b f1                                        	mov    rsi,rcx
  2ccc1e:	e8 e5 e2 ff ff                                  	call   0x2caf08
  2ccc23:	84 c0                                           	test   al,al
  2ccc25:	0f 84 d6 00 00 00                               	je     0x2ccd01
  2ccc2b:	8b 05 67 95 10 00                               	mov    eax,DWORD PTR [rip+0x109567]        # 0x3d6198
  2ccc31:	a8 01                                           	test   al,0x1
  2ccc33:	0f 85 83 00 00 00                               	jne    0x2cccbc
  2ccc39:	83 c8 01                                        	or     eax,0x1
  2ccc3c:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  2ccc41:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  2ccc46:	89 05 4c 95 10 00                               	mov    DWORD PTR [rip+0x10954c],eax        # 0x3d6198
  2ccc4c:	e8 e7 fa ff ff                                  	call   0x2cc738
  2ccc51:	48 8b c8                                        	mov    rcx,rax
  2ccc54:	e8 db 11 00 00                                  	call   0x2cde34
  2ccc59:	48 8d 54 24 2c                                  	lea    rdx,[rsp+0x2c]
  2ccc5e:	48 8b f8                                        	mov    rdi,rax
  2ccc61:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  2ccc66:	e8 79 fa ff ff                                  	call   0x2cc6e4
  2ccc6b:	48 8b c8                                        	mov    rcx,rax
  2ccc6e:	e8 c1 11 00 00                                  	call   0x2cde34
  2ccc73:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2ccc78:	48 8b d8                                        	mov    rbx,rax
  2ccc7b:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  2ccc80:	e8 c7 f9 ff ff                                  	call   0x2cc64c
  2ccc85:	48 8b c8                                        	mov    rcx,rax
  2ccc88:	e8 67 10 00 00                                  	call   0x2cdcf4
  2ccc8d:	48 8b c8                                        	mov    rcx,rax
  2ccc90:	48 8b d3                                        	mov    rdx,rbx
  2ccc93:	e8 8c 75 06 00                                  	call   0x334224
  2ccc98:	45 33 c9                                        	xor    r9d,r9d
  2ccc9b:	48 8b c8                                        	mov    rcx,rax
  2ccc9e:	48 8b d7                                        	mov    rdx,rdi
  2ccca1:	45 8d 41 01                                     	lea    r8d,[r9+0x1]
  2ccca5:	e8 e6 7d 06 00                                  	call   0x334a90
  2cccaa:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2cccad:	8b 05 e5 94 10 00                               	mov    eax,DWORD PTR [rip+0x1094e5]        # 0x3d6198
  2cccb3:	4c 89 05 d6 94 10 00                            	mov    QWORD PTR [rip+0x1094d6],r8        # 0x3d6190
  2cccba:	eb 07                                           	jmp    0x2cccc3
  2cccbc:	4c 8b 05 cd 94 10 00                            	mov    r8,QWORD PTR [rip+0x1094cd]        # 0x3d6190
  2cccc3:	a8 02                                           	test   al,0x2
  2cccc5:	75 1f                                           	jne    0x2ccce6
  2cccc7:	48 8b 0d 92 91 10 00                            	mov    rcx,QWORD PTR [rip+0x109192]        # 0x3d5e60
  2cccce:	48 8d 15 cb 94 10 00                            	lea    rdx,[rip+0x1094cb]        # 0x3d61a0
  2cccd5:	83 c8 02                                        	or     eax,0x2
  2cccd8:	45 33 c9                                        	xor    r9d,r9d
  2cccdb:	89 05 b7 94 10 00                               	mov    DWORD PTR [rip+0x1094b7],eax        # 0x3d6198
  2ccce1:	e8 3e f0 ff ff                                  	call   0x2cbd24
  2ccce6:	48 8b 0d 73 91 10 00                            	mov    rcx,QWORD PTR [rip+0x109173]        # 0x3d5e60
  2ccced:	48 8d 15 ac 94 10 00                            	lea    rdx,[rip+0x1094ac]        # 0x3d61a0
  2cccf4:	4c 8b c6                                        	mov    r8,rsi
  2cccf7:	e8 00 ed ff ff                                  	call   0x2cb9fc
  2cccfc:	84 c0                                           	test   al,al
  2cccfe:	0f 95 c0                                        	setne  al
  2ccd01:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  2ccd06:	48 8b 74 24 68                                  	mov    rsi,QWORD PTR [rsp+0x68]
  2ccd0b:	48 83 c4 40                                     	add    rsp,0x40
  2ccd0f:	5f                                              	pop    rdi
  2ccd10:	c3                                              	ret
