
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9220 <.data+0x3a9220>:
  3a9220:	40 53                                           	rex push rbx
  3a9222:	48 83 ec 20                                     	sub    rsp,0x20
  3a9226:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3a9228:	48 8b d9                                        	mov    rbx,rcx
  3a922b:	eb 21                                           	jmp    0x3a924e
  3a922d:	48 6b c8 38                                     	imul   rcx,rax,0x38
  3a9231:	48 8b 43 08                                     	mov    rax,QWORD PTR [rbx+0x8]
  3a9235:	83 7c 08 e8 00                                  	cmp    DWORD PTR [rax+rcx*1-0x18],0x0
  3a923a:	75 16                                           	jne    0x3a9252
  3a923c:	48 83 7c 08 f0 00                               	cmp    QWORD PTR [rax+rcx*1-0x10],0x0
  3a9242:	75 0e                                           	jne    0x3a9252
  3a9244:	48 8b cb                                        	mov    rcx,rbx
  3a9247:	e8 54 5c ff ff                                  	call   0x39eea0
  3a924c:	8b 03                                           	mov    eax,DWORD PTR [rbx]
  3a924e:	85 c0                                           	test   eax,eax
  3a9250:	7f db                                           	jg     0x3a922d
  3a9252:	48 83 c4 20                                     	add    rsp,0x20
  3a9256:	5b                                              	pop    rbx
  3a9257:	c3                                              	ret
