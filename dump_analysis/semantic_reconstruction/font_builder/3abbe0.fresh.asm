
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003abbe0 <.data+0x3abbe0>:
  3abbe0:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3abbe5:	57                                              	push   rdi
  3abbe6:	48 83 ec 20                                     	sub    rsp,0x20
  3abbea:	4c 8b d1                                        	mov    r10,rcx
  3abbed:	4d 8b d8                                        	mov    r11,r8
  3abbf0:	8b ca                                           	mov    ecx,edx
  3abbf2:	48 83 c1 04                                     	add    rcx,0x4
  3abbf6:	49 03 ca                                        	add    rcx,r10
  3abbf9:	e8 96 21 00 00                                  	call   0x3add94
  3abbfe:	45 33 c9                                        	xor    r9d,r9d
  3abc01:	66 44 3b c8                                     	cmp    r9w,ax
  3abc05:	73 56                                           	jae    0x3abc5d
  3abc07:	41 0f be 3b                                     	movsx  edi,BYTE PTR [r11]
  3abc0b:	8d 5a 0c                                        	lea    ebx,[rdx+0xc]
  3abc0e:	44 0f b7 c8                                     	movzx  r9d,ax
  3abc12:	45 33 c0                                        	xor    r8d,r8d
  3abc15:	41 8b c0                                        	mov    eax,r8d
  3abc18:	c1 e0 04                                        	shl    eax,0x4
  3abc1b:	03 c3                                           	add    eax,ebx
  3abc1d:	8b d0                                           	mov    edx,eax
  3abc1f:	42 0f b6 04 10                                  	movzx  eax,BYTE PTR [rax+r10*1]
  3abc24:	3b c7                                           	cmp    eax,edi
  3abc26:	75 2d                                           	jne    0x3abc55
  3abc28:	42 0f b6 4c 12 01                               	movzx  ecx,BYTE PTR [rdx+r10*1+0x1]
  3abc2e:	41 0f be 43 01                                  	movsx  eax,BYTE PTR [r11+0x1]
  3abc33:	3b c8                                           	cmp    ecx,eax
  3abc35:	75 1e                                           	jne    0x3abc55
  3abc37:	42 0f b6 4c 12 02                               	movzx  ecx,BYTE PTR [rdx+r10*1+0x2]
  3abc3d:	41 0f be 43 02                                  	movsx  eax,BYTE PTR [r11+0x2]
  3abc42:	3b c8                                           	cmp    ecx,eax
  3abc44:	75 0f                                           	jne    0x3abc55
  3abc46:	42 0f b6 4c 12 03                               	movzx  ecx,BYTE PTR [rdx+r10*1+0x3]
  3abc4c:	41 0f be 43 03                                  	movsx  eax,BYTE PTR [r11+0x3]
  3abc51:	3b c8                                           	cmp    ecx,eax
  3abc53:	74 15                                           	je     0x3abc6a
  3abc55:	41 ff c0                                        	inc    r8d
  3abc58:	45 3b c1                                        	cmp    r8d,r9d
  3abc5b:	7c b8                                           	jl     0x3abc15
  3abc5d:	33 c0                                           	xor    eax,eax
  3abc5f:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3abc64:	48 83 c4 20                                     	add    rsp,0x20
  3abc68:	5f                                              	pop    rdi
  3abc69:	c3                                              	ret
  3abc6a:	49 8d 4a 08                                     	lea    rcx,[r10+0x8]
  3abc6e:	48 03 ca                                        	add    rcx,rdx
  3abc71:	e8 fe 20 00 00                                  	call   0x3add74
  3abc76:	eb e7                                           	jmp    0x3abc5f
