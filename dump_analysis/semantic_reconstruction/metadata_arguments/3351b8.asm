
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003351b8 <.data+0x3351b8>:
  3351b8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3351bd:	57                                              	push   rdi
  3351be:	48 83 ec 20                                     	sub    rsp,0x20
  3351c2:	8b 05 78 48 0c 00                               	mov    eax,DWORD PTR [rip+0xc4878]        # 0x3f9a40
  3351c8:	8b da                                           	mov    ebx,edx
  3351ca:	48 8b f9                                        	mov    rdi,rcx
  3351cd:	a8 01                                           	test   al,0x1
  3351cf:	75 20                                           	jne    0x3351f1
  3351d1:	83 c8 01                                        	or     eax,0x1
  3351d4:	89 05 66 48 0c 00                               	mov    DWORD PTR [rip+0xc4866],eax        # 0x3f9a40
  3351da:	e8 15 e8 ff ff                                  	call   0x3339f4
  3351df:	4c 8b c0                                        	mov    r8,rax
  3351e2:	48 89 05 4f 48 0c 00                            	mov    QWORD PTR [rip+0xc484f],rax        # 0x3f9a38
  3351e9:	8b 05 51 48 0c 00                               	mov    eax,DWORD PTR [rip+0xc4851]        # 0x3f9a40
  3351ef:	eb 07                                           	jmp    0x3351f8
  3351f1:	4c 8b 05 40 48 0c 00                            	mov    r8,QWORD PTR [rip+0xc4840]        # 0x3f9a38
  3351f8:	a8 02                                           	test   al,0x2
  3351fa:	75 1f                                           	jne    0x33521b
  3351fc:	48 8b 0d 5d 0c 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0c5d]        # 0x3d5e60
  335203:	48 8d 15 46 48 0c 00                            	lea    rdx,[rip+0xc4846]        # 0x3f9a50
  33520a:	83 c8 02                                        	or     eax,0x2
  33520d:	45 33 c9                                        	xor    r9d,r9d
  335210:	89 05 2a 48 0c 00                               	mov    DWORD PTR [rip+0xc482a],eax        # 0x3f9a40
  335216:	e8 09 6b f9 ff                                  	call   0x2cbd24
  33521b:	48 8b 0d 3e 0c 0a 00                            	mov    rcx,QWORD PTR [rip+0xa0c3e]        # 0x3d5e60
  335222:	48 8d 15 27 48 0c 00                            	lea    rdx,[rip+0xc4827]        # 0x3f9a50
  335229:	44 8b cb                                        	mov    r9d,ebx
  33522c:	4c 8b c7                                        	mov    r8,rdi
  33522f:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  335234:	48 83 c4 20                                     	add    rsp,0x20
  335238:	5f                                              	pop    rdi
  335239:	e9 8a 5f ff ff                                  	jmp    0x32b1c8
