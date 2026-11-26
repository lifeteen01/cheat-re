
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dff68 <.data+0x2dff68>:
  2dff68:	4c 8b dc                                        	mov    r11,rsp
  2dff6b:	53                                              	push   rbx
  2dff6c:	56                                              	push   rsi
  2dff6d:	57                                              	push   rdi
  2dff6e:	48 83 ec 60                                     	sub    rsp,0x60
  2dff72:	8b 05 f8 7a 0f 00                               	mov    eax,DWORD PTR [rip+0xf7af8]        # 0x3d7a70
  2dff78:	0f 29 74 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm6
  2dff7d:	0f 28 f0                                        	movaps xmm6,xmm0
  2dff80:	a8 01                                           	test   al,0x1
  2dff82:	0f 85 ac 00 00 00                               	jne    0x2e0034
  2dff88:	83 c8 01                                        	or     eax,0x1
  2dff8b:	49 8d 53 10                                     	lea    rdx,[r11+0x10]
  2dff8f:	49 8d 4b 10                                     	lea    rcx,[r11+0x10]
  2dff93:	89 05 d7 7a 0f 00                               	mov    DWORD PTR [rip+0xf7ad7],eax        # 0x3d7a70
  2dff99:	e8 92 c7 fe ff                                  	call   0x2cc730
  2dff9e:	48 8b c8                                        	mov    rcx,rax
  2dffa1:	e8 fe dc fe ff                                  	call   0x2cdca4
  2dffa6:	48 8d 94 24 98 00 00 00                         	lea    rdx,[rsp+0x98]
  2dffae:	48 8b f0                                        	mov    rsi,rax
  2dffb1:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2dffb9:	e8 12 fb ff ff                                  	call   0x2dfad0
  2dffbe:	48 8b c8                                        	mov    rcx,rax
  2dffc1:	e8 22 d1 ff ff                                  	call   0x2dd0e8
  2dffc6:	48 8d 54 24 36                                  	lea    rdx,[rsp+0x36]
  2dffcb:	48 8b f8                                        	mov    rdi,rax
  2dffce:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2dffd6:	e8 81 f9 ff ff                                  	call   0x2df95c
  2dffdb:	48 8b c8                                        	mov    rcx,rax
  2dffde:	e8 29 de fe ff                                  	call   0x2cde0c
  2dffe3:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2dffe8:	48 8b d8                                        	mov    rbx,rax
  2dffeb:	48 8d 8c 24 90 00 00 00                         	lea    rcx,[rsp+0x90]
  2dfff3:	e8 40 f8 ff ff                                  	call   0x2df838
  2dfff8:	48 8b c8                                        	mov    rcx,rax
  2dfffb:	e8 b4 84 ff ff                                  	call   0x2d84b4
  2e0000:	48 8b c8                                        	mov    rcx,rax
  2e0003:	48 8b d3                                        	mov    rdx,rbx
  2e0006:	e8 19 42 05 00                                  	call   0x334224
  2e000b:	41 83 c8 ff                                     	or     r8d,0xffffffff
  2e000f:	48 8b c8                                        	mov    rcx,rax
  2e0012:	4c 8b ce                                        	mov    r9,rsi
  2e0015:	44 89 44 24 20                                  	mov    DWORD PTR [rsp+0x20],r8d
  2e001a:	48 8b d7                                        	mov    rdx,rdi
  2e001d:	e8 8a 49 05 00                                  	call   0x3349ac
  2e0022:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2e0025:	8b 05 45 7a 0f 00                               	mov    eax,DWORD PTR [rip+0xf7a45]        # 0x3d7a70
  2e002b:	4c 89 05 36 7a 0f 00                            	mov    QWORD PTR [rip+0xf7a36],r8        # 0x3d7a68
  2e0032:	eb 07                                           	jmp    0x2e003b
  2e0034:	4c 8b 05 2d 7a 0f 00                            	mov    r8,QWORD PTR [rip+0xf7a2d]        # 0x3d7a68
  2e003b:	a8 02                                           	test   al,0x2
  2e003d:	75 1f                                           	jne    0x2e005e
  2e003f:	48 8b 0d 1a 5e 0f 00                            	mov    rcx,QWORD PTR [rip+0xf5e1a]        # 0x3d5e60
  2e0046:	48 8d 15 33 7a 0f 00                            	lea    rdx,[rip+0xf7a33]        # 0x3d7a80
  2e004d:	83 c8 02                                        	or     eax,0x2
  2e0050:	45 33 c9                                        	xor    r9d,r9d
  2e0053:	89 05 17 7a 0f 00                               	mov    DWORD PTR [rip+0xf7a17],eax        # 0x3d7a70
  2e0059:	e8 c6 bc fe ff                                  	call   0x2cbd24
  2e005e:	48 8b 0d fb 5d 0f 00                            	mov    rcx,QWORD PTR [rip+0xf5dfb]        # 0x3d5e60
  2e0065:	48 8d 15 14 7a 0f 00                            	lea    rdx,[rip+0xf7a14]        # 0x3d7a80
  2e006c:	0f 28 d6                                        	movaps xmm2,xmm6
  2e006f:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  2e0074:	48 83 c4 60                                     	add    rsp,0x60
  2e0078:	5f                                              	pop    rdi
  2e0079:	5e                                              	pop    rsi
  2e007a:	5b                                              	pop    rbx
  2e007b:	e9 fc e8 ff ff                                  	jmp    0x2de97c
