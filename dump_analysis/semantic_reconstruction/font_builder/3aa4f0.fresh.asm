
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aa4f0 <.data+0x3aa4f0>:
  3aa4f0:	48 83 ec 28                                     	sub    rsp,0x28
  3aa4f4:	3b 51 14                                        	cmp    edx,DWORD PTR [rcx+0x14]
  3aa4f7:	7d 76                                           	jge    0x3aa56f
  3aa4f9:	83 79 3c 02                                     	cmp    DWORD PTR [rcx+0x3c],0x2
  3aa4fd:	7d 70                                           	jge    0x3aa56f
  3aa4ff:	83 79 3c 00                                     	cmp    DWORD PTR [rcx+0x3c],0x0
  3aa503:	44 8b 51 20                                     	mov    r10d,DWORD PTR [rcx+0x20]
  3aa507:	4c 8b 41 08                                     	mov    r8,QWORD PTR [rcx+0x8]
  3aa50b:	4c 63 49 18                                     	movsxd r9,DWORD PTR [rcx+0x18]
  3aa50f:	75 2a                                           	jne    0x3aa53b
  3aa511:	8d 04 12                                        	lea    eax,[rdx+rdx*1]
  3aa514:	48 98                                           	cdqe
  3aa516:	49 03 c1                                        	add    rax,r9
  3aa519:	4c 03 c0                                        	add    r8,rax
  3aa51c:	49 8b c8                                        	mov    rcx,r8
  3aa51f:	e8 70 38 00 00                                  	call   0x3add94
  3aa524:	0f b7 d0                                        	movzx  edx,ax
  3aa527:	49 8d 48 02                                     	lea    rcx,[r8+0x2]
  3aa52b:	44 8d 0c 12                                     	lea    r9d,[rdx+rdx*1]
  3aa52f:	e8 60 38 00 00                                  	call   0x3add94
  3aa534:	0f b7 d0                                        	movzx  edx,ax
  3aa537:	03 d2                                           	add    edx,edx
  3aa539:	eb 25                                           	jmp    0x3aa560
  3aa53b:	8d 04 95 00 00 00 00                            	lea    eax,[rdx*4+0x0]
  3aa542:	48 98                                           	cdqe
  3aa544:	49 03 c1                                        	add    rax,r9
  3aa547:	4c 03 c0                                        	add    r8,rax
  3aa54a:	49 8b c8                                        	mov    rcx,r8
  3aa54d:	e8 22 38 00 00                                  	call   0x3add74
  3aa552:	49 8d 48 04                                     	lea    rcx,[r8+0x4]
  3aa556:	44 8b c8                                        	mov    r9d,eax
  3aa559:	e8 16 38 00 00                                  	call   0x3add74
  3aa55e:	8b d0                                           	mov    edx,eax
  3aa560:	83 c9 ff                                        	or     ecx,0xffffffff
  3aa563:	43 8d 04 0a                                     	lea    eax,[r10+r9*1]
  3aa567:	44 3b ca                                        	cmp    r9d,edx
  3aa56a:	0f 44 c1                                        	cmove  eax,ecx
  3aa56d:	eb 03                                           	jmp    0x3aa572
  3aa56f:	83 c8 ff                                        	or     eax,0xffffffff
  3aa572:	48 83 c4 28                                     	add    rsp,0x28
  3aa576:	c3                                              	ret
  3aa577:	cc                                              	int3
