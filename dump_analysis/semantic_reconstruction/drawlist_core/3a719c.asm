
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a719c <.data+0x3a719c>:
  3a719c:	40 53                                           	rex push rbx
  3a719e:	55                                              	push   rbp
  3a719f:	56                                              	push   rsi
  3a71a0:	57                                              	push   rdi
  3a71a1:	48 83 ec 28                                     	sub    rsp,0x28
  3a71a5:	44 8b 49 34                                     	mov    r9d,DWORD PTR [rcx+0x34]
  3a71a9:	41 8b f0                                        	mov    esi,r8d
  3a71ac:	45 03 c8                                        	add    r9d,r8d
  3a71af:	8b ea                                           	mov    ebp,edx
  3a71b1:	48 8b f9                                        	mov    rdi,rcx
  3a71b4:	41 81 f9 00 00 01 00                            	cmp    r9d,0x10000
  3a71bb:	72 14                                           	jb     0x3a71d1
  3a71bd:	f6 41 30 08                                     	test   BYTE PTR [rcx+0x30],0x8
  3a71c1:	74 0e                                           	je     0x3a71d1
  3a71c3:	8b 41 20                                        	mov    eax,DWORD PTR [rcx+0x20]
  3a71c6:	89 81 a0 00 00 00                               	mov    DWORD PTR [rcx+0xa0],eax
  3a71cc:	e8 ef 1c 00 00                                  	call   0x3a8ec0
  3a71d1:	48 63 07                                        	movsxd rax,DWORD PTR [rdi]
  3a71d4:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a71d8:	48 8b 47 08                                     	mov    rax,QWORD PTR [rdi+0x8]
  3a71dc:	01 6c 01 e8                                     	add    DWORD PTR [rcx+rax*1-0x18],ebp
  3a71e0:	48 8d 4f 20                                     	lea    rcx,[rdi+0x20]
  3a71e4:	48 63 19                                        	movsxd rbx,DWORD PTR [rcx]
  3a71e7:	8d 14 33                                        	lea    edx,[rbx+rsi*1]
  3a71ea:	e8 d5 3b fd ff                                  	call   0x37adc4
  3a71ef:	48 8b 47 28                                     	mov    rax,QWORD PTR [rdi+0x28]
  3a71f3:	48 8d 0c 9b                                     	lea    rcx,[rbx+rbx*4]
  3a71f7:	48 8d 0c 88                                     	lea    rcx,[rax+rcx*4]
  3a71fb:	48 89 4f 48                                     	mov    QWORD PTR [rdi+0x48],rcx
  3a71ff:	48 8d 4f 10                                     	lea    rcx,[rdi+0x10]
  3a7203:	48 63 19                                        	movsxd rbx,DWORD PTR [rcx]
  3a7206:	8d 14 2b                                        	lea    edx,[rbx+rbp*1]
  3a7209:	e8 f6 3a fd ff                                  	call   0x37ad04
  3a720e:	48 8b 47 18                                     	mov    rax,QWORD PTR [rdi+0x18]
  3a7212:	48 8d 0c 58                                     	lea    rcx,[rax+rbx*2]
  3a7216:	48 89 4f 50                                     	mov    QWORD PTR [rdi+0x50],rcx
  3a721a:	48 83 c4 28                                     	add    rsp,0x28
  3a721e:	5f                                              	pop    rdi
  3a721f:	5e                                              	pop    rsi
  3a7220:	5d                                              	pop    rbp
  3a7221:	5b                                              	pop    rbx
  3a7222:	c3                                              	ret
