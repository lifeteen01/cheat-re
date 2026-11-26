
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bfda4 <.data+0x3bfda4>:
  3bfda4:	41 8d 40 fc                                     	lea    eax,[r8-0x4]
  3bfda8:	83 f8 01                                        	cmp    eax,0x1
  3bfdab:	76 78                                           	jbe    0x3bfe25
  3bfdad:	41 8d 40 fa                                     	lea    eax,[r8-0x6]
  3bfdb1:	83 f8 01                                        	cmp    eax,0x1
  3bfdb4:	76 5f                                           	jbe    0x3bfe15
  3bfdb6:	41 83 f8 08                                     	cmp    r8d,0x8
  3bfdba:	75 1a                                           	jne    0x3bfdd6
  3bfdbc:	f3 41 0f 10 19                                  	movss  xmm3,DWORD PTR [r9]
  3bfdc1:	0f 5a db                                        	cvtps2pd xmm3,xmm3
  3bfdc4:	4c 8b 44 24 28                                  	mov    r8,QWORD PTR [rsp+0x28]
  3bfdc9:	66 49 0f 7e d9                                  	movq   r9,xmm3
  3bfdce:	48 63 d2                                        	movsxd rdx,edx
  3bfdd1:	e9 3a 33 fd ff                                  	jmp    0x393110
  3bfdd6:	41 83 f8 09                                     	cmp    r8d,0x9
  3bfdda:	75 07                                           	jne    0x3bfde3
  3bfddc:	f2 41 0f 10 19                                  	movsd  xmm3,QWORD PTR [r9]
  3bfde1:	eb e1                                           	jmp    0x3bfdc4
  3bfde3:	45 85 c0                                        	test   r8d,r8d
  3bfde6:	75 06                                           	jne    0x3bfdee
  3bfde8:	45 0f be 09                                     	movsx  r9d,BYTE PTR [r9]
  3bfdec:	eb 3a                                           	jmp    0x3bfe28
  3bfdee:	41 83 f8 01                                     	cmp    r8d,0x1
  3bfdf2:	75 06                                           	jne    0x3bfdfa
  3bfdf4:	45 0f b6 09                                     	movzx  r9d,BYTE PTR [r9]
  3bfdf8:	eb 2e                                           	jmp    0x3bfe28
  3bfdfa:	41 83 f8 02                                     	cmp    r8d,0x2
  3bfdfe:	75 06                                           	jne    0x3bfe06
  3bfe00:	45 0f bf 09                                     	movsx  r9d,WORD PTR [r9]
  3bfe04:	eb 22                                           	jmp    0x3bfe28
  3bfe06:	41 83 f8 03                                     	cmp    r8d,0x3
  3bfe0a:	75 06                                           	jne    0x3bfe12
  3bfe0c:	45 0f b7 09                                     	movzx  r9d,WORD PTR [r9]
  3bfe10:	eb 16                                           	jmp    0x3bfe28
  3bfe12:	33 c0                                           	xor    eax,eax
  3bfe14:	c3                                              	ret
  3bfe15:	4d 8b 09                                        	mov    r9,QWORD PTR [r9]
  3bfe18:	4c 8b 44 24 28                                  	mov    r8,QWORD PTR [rsp+0x28]
  3bfe1d:	48 63 d2                                        	movsxd rdx,edx
  3bfe20:	e9 eb 32 fd ff                                  	jmp    0x393110
  3bfe25:	45 8b 09                                        	mov    r9d,DWORD PTR [r9]
  3bfe28:	4c 8b 44 24 28                                  	mov    r8,QWORD PTR [rsp+0x28]
  3bfe2d:	48 63 d2                                        	movsxd rdx,edx
  3bfe30:	e9 db 32 fd ff                                  	jmp    0x393110
