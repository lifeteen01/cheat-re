
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4994 <.data+0x3a4994>:
  3a4994:	40 53                                           	rex push rbx
  3a4996:	56                                              	push   rsi
  3a4997:	57                                              	push   rdi
  3a4998:	41 56                                           	push   r14
  3a499a:	48 83 ec 28                                     	sub    rsp,0x28
  3a499e:	48 83 79 30 00                                  	cmp    QWORD PTR [rcx+0x30],0x0
  3a49a3:	49 8b f9                                        	mov    rdi,r9
  3a49a6:	49 8b f0                                        	mov    rsi,r8
  3a49a9:	4c 8b f2                                        	mov    r14,rdx
  3a49ac:	48 8b d9                                        	mov    rbx,rcx
  3a49af:	75 05                                           	jne    0x3a49b6
  3a49b1:	e8 de e9 ff ff                                  	call   0x3a3394
  3a49b6:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
  3a49ba:	49 89 06                                        	mov    QWORD PTR [r14],rax
  3a49bd:	48 85 f6                                        	test   rsi,rsi
  3a49c0:	74 05                                           	je     0x3a49c7
  3a49c2:	8b 43 40                                        	mov    eax,DWORD PTR [rbx+0x40]
  3a49c5:	89 06                                           	mov    DWORD PTR [rsi],eax
  3a49c7:	48 85 ff                                        	test   rdi,rdi
  3a49ca:	74 05                                           	je     0x3a49d1
  3a49cc:	8b 43 44                                        	mov    eax,DWORD PTR [rbx+0x44]
  3a49cf:	89 07                                           	mov    DWORD PTR [rdi],eax
  3a49d1:	48 8b 44 24 70                                  	mov    rax,QWORD PTR [rsp+0x70]
  3a49d6:	48 85 c0                                        	test   rax,rax
  3a49d9:	74 06                                           	je     0x3a49e1
  3a49db:	c7 00 01 00 00 00                               	mov    DWORD PTR [rax],0x1
  3a49e1:	48 83 c4 28                                     	add    rsp,0x28
  3a49e5:	41 5e                                           	pop    r14
  3a49e7:	5f                                              	pop    rdi
  3a49e8:	5e                                              	pop    rsi
  3a49e9:	5b                                              	pop    rbx
  3a49ea:	c3                                              	ret
