
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003945c0 <.data+0x3945c0>:
  3945c0:	40 53                                           	rex push rbx
  3945c2:	48 83 ec 20                                     	sub    rsp,0x20
  3945c6:	48 8b 05 5b 15 07 00                            	mov    rax,QWORD PTR [rip+0x7155b]        # 0x405b28
  3945cd:	8b da                                           	mov    ebx,edx
  3945cf:	4c 63 c1                                        	movsxd r8,ecx
  3945d2:	41 80 bc 00 66 37 00 00 00                      	cmp    BYTE PTR [r8+rax*1+0x3766],0x0
  3945db:	74 16                                           	je     0x3945f3
  3945dd:	e8 6e 0c 00 00                                  	call   0x395250
  3945e2:	8b c8                                           	mov    ecx,eax
  3945e4:	8b d3                                           	mov    edx,ebx
  3945e6:	e8 21 79 00 00                                  	call   0x39bf0c
  3945eb:	84 c0                                           	test   al,al
  3945ed:	74 04                                           	je     0x3945f3
  3945ef:	b0 01                                           	mov    al,0x1
  3945f1:	eb 02                                           	jmp    0x3945f5
  3945f3:	32 c0                                           	xor    al,al
  3945f5:	48 83 c4 20                                     	add    rsp,0x20
  3945f9:	5b                                              	pop    rbx
  3945fa:	c3                                              	ret
