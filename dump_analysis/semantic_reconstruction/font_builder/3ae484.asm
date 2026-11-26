
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ae484 <.data+0x3ae484>:
  3ae484:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3ae489:	57                                              	push   rdi
  3ae48a:	48 83 ec 30                                     	sub    rsp,0x30
  3ae48e:	83 79 4c 00                                     	cmp    DWORD PTR [rcx+0x4c],0x0
  3ae492:	49 8b f9                                        	mov    rdi,r9
  3ae495:	49 8b d8                                        	mov    rbx,r8
  3ae498:	4c 8b d9                                        	mov    r11,rcx
  3ae49b:	74 1e                                           	je     0x3ae4bb
  3ae49d:	48 8b 44 24 68                                  	mov    rax,QWORD PTR [rsp+0x68]
  3ae4a2:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3ae4a7:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
  3ae4ac:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3ae4b1:	e8 c2 c0 ff ff                                  	call   0x3aa578
  3ae4b6:	e9 85 00 00 00                                  	jmp    0x3ae540
  3ae4bb:	e8 30 c0 ff ff                                  	call   0x3aa4f0
  3ae4c0:	48 63 d0                                        	movsxd rdx,eax
  3ae4c3:	85 c0                                           	test   eax,eax
  3ae4c5:	79 04                                           	jns    0x3ae4cb
  3ae4c7:	33 c0                                           	xor    eax,eax
  3ae4c9:	eb 7a                                           	jmp    0x3ae545
  3ae4cb:	48 85 db                                        	test   rbx,rbx
  3ae4ce:	74 15                                           	je     0x3ae4e5
  3ae4d0:	49 8b 4b 08                                     	mov    rcx,QWORD PTR [r11+0x8]
  3ae4d4:	48 83 c1 02                                     	add    rcx,0x2
  3ae4d8:	48 03 ca                                        	add    rcx,rdx
  3ae4db:	e8 b4 f8 ff ff                                  	call   0x3add94
  3ae4e0:	0f bf c8                                        	movsx  ecx,ax
  3ae4e3:	89 0b                                           	mov    DWORD PTR [rbx],ecx
  3ae4e5:	4c 8b c2                                        	mov    r8,rdx
  3ae4e8:	48 85 ff                                        	test   rdi,rdi
  3ae4eb:	74 15                                           	je     0x3ae502
  3ae4ed:	49 8b 4b 08                                     	mov    rcx,QWORD PTR [r11+0x8]
  3ae4f1:	48 83 c1 04                                     	add    rcx,0x4
  3ae4f5:	48 03 ca                                        	add    rcx,rdx
  3ae4f8:	e8 97 f8 ff ff                                  	call   0x3add94
  3ae4fd:	0f bf c8                                        	movsx  ecx,ax
  3ae500:	89 0f                                           	mov    DWORD PTR [rdi],ecx
  3ae502:	48 8b 54 24 60                                  	mov    rdx,QWORD PTR [rsp+0x60]
  3ae507:	48 85 d2                                        	test   rdx,rdx
  3ae50a:	74 15                                           	je     0x3ae521
  3ae50c:	49 8b 4b 08                                     	mov    rcx,QWORD PTR [r11+0x8]
  3ae510:	48 83 c1 06                                     	add    rcx,0x6
  3ae514:	49 03 c8                                        	add    rcx,r8
  3ae517:	e8 78 f8 ff ff                                  	call   0x3add94
  3ae51c:	0f bf c8                                        	movsx  ecx,ax
  3ae51f:	89 0a                                           	mov    DWORD PTR [rdx],ecx
  3ae521:	48 8b 54 24 68                                  	mov    rdx,QWORD PTR [rsp+0x68]
  3ae526:	48 85 d2                                        	test   rdx,rdx
  3ae529:	74 15                                           	je     0x3ae540
  3ae52b:	49 8b 4b 08                                     	mov    rcx,QWORD PTR [r11+0x8]
  3ae52f:	48 83 c1 08                                     	add    rcx,0x8
  3ae533:	49 03 c8                                        	add    rcx,r8
  3ae536:	e8 59 f8 ff ff                                  	call   0x3add94
  3ae53b:	0f bf c8                                        	movsx  ecx,ax
  3ae53e:	89 0a                                           	mov    DWORD PTR [rdx],ecx
  3ae540:	b8 01 00 00 00                                  	mov    eax,0x1
  3ae545:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  3ae54a:	48 83 c4 30                                     	add    rsp,0x30
  3ae54e:	5f                                              	pop    rdi
  3ae54f:	c3                                              	ret
