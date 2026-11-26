
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aaf8c <.data+0x3aaf8c>:
  3aaf8c:	40 53                	rex push rbx
  3aaf8e:	48 83 ec 30          	sub    rsp,0x30
  3aaf92:	4d 63 d8             	movsxd r11,r8d
  3aaf95:	48 8b da             	mov    rbx,rdx
  3aaf98:	4c 8b d1             	mov    r10,rcx
  3aaf9b:	45 33 c0             	xor    r8d,r8d
  3aaf9e:	33 d2                	xor    edx,edx
  3aafa0:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3aafa5:	e8 6e 13 00 00       	call   0x3ac318
  3aafaa:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  3aafad:	f3 41 0f 7f 02       	movdqu XMMWORD PTR [r10],xmm0
  3aafb2:	45 85 db             	test   r11d,r11d
  3aafb5:	78 22                	js     0x3aafd9
  3aafb7:	45 85 c9             	test   r9d,r9d
  3aafba:	78 1d                	js     0x3aafd9
  3aafbc:	8b 43 0c             	mov    eax,DWORD PTR [rbx+0xc]
  3aafbf:	44 3b d8             	cmp    r11d,eax
  3aafc2:	7f 15                	jg     0x3aafd9
  3aafc4:	41 2b c3             	sub    eax,r11d
  3aafc7:	44 3b c8             	cmp    r9d,eax
  3aafca:	7f 0d                	jg     0x3aafd9
  3aafcc:	49 8b c3             	mov    rax,r11
  3aafcf:	45 89 4a 0c          	mov    DWORD PTR [r10+0xc],r9d
  3aafd3:	48 03 03             	add    rax,QWORD PTR [rbx]
  3aafd6:	49 89 02             	mov    QWORD PTR [r10],rax
  3aafd9:	49 8b c2             	mov    rax,r10
  3aafdc:	48 83 c4 30          	add    rsp,0x30
  3aafe0:	5b                   	pop    rbx
  3aafe1:	c3                   	ret
