
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000394428 <.data+0x394428>:
  394428:	40 53                                           	rex push rbx
  39442a:	48 83 ec 20                                     	sub    rsp,0x20
  39442e:	48 8b 05 f3 16 07 00                            	mov    rax,QWORD PTR [rip+0x716f3]        # 0x405b28
  394435:	8b da                                           	mov    ebx,edx
  394437:	4c 63 c1                                        	movsxd r8,ecx
  39443a:	41 80 bc 00 10 0e 00 00 00                      	cmp    BYTE PTR [r8+rax*1+0xe10],0x0
  394443:	74 16                                           	je     0x39445b
  394445:	e8 06 0e 00 00                                  	call   0x395250
  39444a:	8b c8                                           	mov    ecx,eax
  39444c:	8b d3                                           	mov    edx,ebx
  39444e:	e8 b9 7a 00 00                                  	call   0x39bf0c
  394453:	84 c0                                           	test   al,al
  394455:	74 04                                           	je     0x39445b
  394457:	b0 01                                           	mov    al,0x1
  394459:	eb 02                                           	jmp    0x39445d
  39445b:	32 c0                                           	xor    al,al
  39445d:	48 83 c4 20                                     	add    rsp,0x20
  394461:	5b                                              	pop    rbx
  394462:	c3                                              	ret
