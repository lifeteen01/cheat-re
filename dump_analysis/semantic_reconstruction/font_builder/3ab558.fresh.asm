
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab558 <.data+0x3ab558>:
  3ab558:	40 53                                           	rex push rbx
  3ab55a:	48 83 ec 30                                     	sub    rsp,0x30
  3ab55e:	83 39 00                                        	cmp    DWORD PTR [rcx],0x0
  3ab561:	45 8b d8                                        	mov    r11d,r8d
  3ab564:	8a da                                           	mov    bl,dl
  3ab566:	4c 8b d1                                        	mov    r10,rcx
  3ab569:	74 2e                                           	je     0x3ab599
  3ab56b:	45 8b c1                                        	mov    r8d,r9d
  3ab56e:	41 8b d3                                        	mov    edx,r11d
  3ab571:	e8 62 25 00 00                                  	call   0x3adad8
  3ab576:	80 fb 04                                        	cmp    bl,0x4
  3ab579:	75 6b                                           	jne    0x3ab5e6
  3ab57b:	44 8b 44 24 68                                  	mov    r8d,DWORD PTR [rsp+0x68]
  3ab580:	8b 54 24 60                                     	mov    edx,DWORD PTR [rsp+0x60]
  3ab584:	e8 4f 25 00 00                                  	call   0x3adad8
  3ab589:	44 8b 44 24 78                                  	mov    r8d,DWORD PTR [rsp+0x78]
  3ab58e:	8b 54 24 70                                     	mov    edx,DWORD PTR [rsp+0x70]
  3ab592:	e8 41 25 00 00                                  	call   0x3adad8
  3ab597:	eb 4d                                           	jmp    0x3ab5e6
  3ab599:	48 63 41 30                                     	movsxd rax,DWORD PTR [rcx+0x30]
  3ab59d:	48 6b c8 0e                                     	imul   rcx,rax,0xe
  3ab5a1:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  3ab5a5:	49 03 4a 28                                     	add    rcx,QWORD PTR [r10+0x28]
  3ab5a9:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3ab5ad:	8b 44 24 60                                     	mov    eax,DWORD PTR [rsp+0x60]
  3ab5b1:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3ab5b5:	e8 9a 27 00 00                                  	call   0x3add54
  3ab5ba:	49 63 4a 30                                     	movsxd rcx,DWORD PTR [r10+0x30]
  3ab5be:	0f b7 44 24 70                                  	movzx  eax,WORD PTR [rsp+0x70]
  3ab5c3:	48 6b d1 0e                                     	imul   rdx,rcx,0xe
  3ab5c7:	49 8b 4a 28                                     	mov    rcx,QWORD PTR [r10+0x28]
  3ab5cb:	66 89 44 0a 08                                  	mov    WORD PTR [rdx+rcx*1+0x8],ax
  3ab5d0:	49 63 42 30                                     	movsxd rax,DWORD PTR [r10+0x30]
  3ab5d4:	49 8b 4a 28                                     	mov    rcx,QWORD PTR [r10+0x28]
  3ab5d8:	48 6b d0 0e                                     	imul   rdx,rax,0xe
  3ab5dc:	0f b7 44 24 78                                  	movzx  eax,WORD PTR [rsp+0x78]
  3ab5e1:	66 89 44 0a 0a                                  	mov    WORD PTR [rdx+rcx*1+0xa],ax
  3ab5e6:	41 ff 42 30                                     	inc    DWORD PTR [r10+0x30]
  3ab5ea:	48 83 c4 30                                     	add    rsp,0x30
  3ab5ee:	5b                                              	pop    rbx
  3ab5ef:	c3                                              	ret
