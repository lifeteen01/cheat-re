
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab09c <.data+0x3ab09c>:
  3ab09c:	40 53                	rex push rbx
  3ab09e:	55                   	push   rbp
  3ab09f:	56                   	push   rsi
  3ab0a0:	57                   	push   rdi
  3ab0a1:	41 56                	push   r14
  3ab0a3:	48 83 ec 20          	sub    rsp,0x20
  3ab0a7:	48 8b ea             	mov    rbp,rdx
  3ab0aa:	4c 8b f1             	mov    r14,rcx
  3ab0ad:	48 8b cd             	mov    rcx,rbp
  3ab0b0:	33 d2                	xor    edx,edx
  3ab0b2:	41 8b d8             	mov    ebx,r8d
  3ab0b5:	e8 2a ff ff ff       	call   0x3aafe4
  3ab0ba:	ba 02 00 00 00       	mov    edx,0x2
  3ab0bf:	e8 78 fe ff ff       	call   0x3aaf3c
  3ab0c4:	48 8b cd             	mov    rcx,rbp
  3ab0c7:	8b f0                	mov    esi,eax
  3ab0c9:	e8 4e fe ff ff       	call   0x3aaf1c
  3ab0ce:	0f b6 f8             	movzx  edi,al
  3ab0d1:	48 8b cd             	mov    rcx,rbp
  3ab0d4:	8b d7                	mov    edx,edi
  3ab0d6:	0f af d3             	imul   edx,ebx
  3ab0d9:	e8 16 ff ff ff       	call   0x3aaff4
  3ab0de:	8b d7                	mov    edx,edi
  3ab0e0:	e8 57 fe ff ff       	call   0x3aaf3c
  3ab0e5:	8b d7                	mov    edx,edi
  3ab0e7:	48 8b cd             	mov    rcx,rbp
  3ab0ea:	8b d8                	mov    ebx,eax
  3ab0ec:	e8 4b fe ff ff       	call   0x3aaf3c
  3ab0f1:	8d 4e 01             	lea    ecx,[rsi+0x1]
  3ab0f4:	2b c3                	sub    eax,ebx
  3ab0f6:	0f af cf             	imul   ecx,edi
  3ab0f9:	44 8d 43 02          	lea    r8d,[rbx+0x2]
  3ab0fd:	44 8b c8             	mov    r9d,eax
  3ab100:	48 8b d5             	mov    rdx,rbp
  3ab103:	44 03 c1             	add    r8d,ecx
  3ab106:	49 8b ce             	mov    rcx,r14
  3ab109:	e8 7e fe ff ff       	call   0x3aaf8c
  3ab10e:	49 8b c6             	mov    rax,r14
  3ab111:	48 83 c4 20          	add    rsp,0x20
  3ab115:	41 5e                	pop    r14
  3ab117:	5f                   	pop    rdi
  3ab118:	5e                   	pop    rsi
  3ab119:	5d                   	pop    rbp
  3ab11a:	5b                   	pop    rbx
  3ab11b:	c3                   	ret
