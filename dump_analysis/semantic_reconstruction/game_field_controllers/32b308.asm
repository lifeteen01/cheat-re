
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b308 <.data+0x32b308>:
  32b308:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  32b30d:	57                                              	push   rdi
  32b30e:	48 83 ec 20                                     	sub    rsp,0x20
  32b312:	8b f9                                           	mov    edi,ecx
  32b314:	e8 9b ff ff ff                                  	call   0x32b2b4
  32b319:	48 8b c8                                        	mov    rcx,rax
  32b31c:	48 8b d8                                        	mov    rbx,rax
  32b31f:	e8 e4 fb f9 ff                                  	call   0x2caf08
  32b324:	84 c0                                           	test   al,al
  32b326:	75 04                                           	jne    0x32b32c
  32b328:	33 c0                                           	xor    eax,eax
  32b32a:	eb 6f                                           	jmp    0x32b39b
  32b32c:	8b 0d e6 c4 0c 00                               	mov    ecx,DWORD PTR [rip+0xcc4e6]        # 0x3f7818
  32b332:	f6 c1 01                                        	test   cl,0x1
  32b335:	75 20                                           	jne    0x32b357
  32b337:	4c 8b 05 c2 bb 0a 00                            	mov    r8,QWORD PTR [rip+0xabbc2]        # 0x3d6f00
  32b33e:	83 c9 01                                        	or     ecx,0x1
  32b341:	49 81 c0 20 df 00 03                            	add    r8,0x300df20
  32b348:	89 0d ca c4 0c 00                               	mov    DWORD PTR [rip+0xcc4ca],ecx        # 0x3f7818
  32b34e:	4c 89 05 bb c4 0c 00                            	mov    QWORD PTR [rip+0xcc4bb],r8        # 0x3f7810
  32b355:	eb 07                                           	jmp    0x32b35e
  32b357:	4c 8b 05 b2 c4 0c 00                            	mov    r8,QWORD PTR [rip+0xcc4b2]        # 0x3f7810
  32b35e:	f6 c1 02                                        	test   cl,0x2
  32b361:	75 1f                                           	jne    0x32b382
  32b363:	83 c9 02                                        	or     ecx,0x2
  32b366:	48 8d 15 b3 c4 0c 00                            	lea    rdx,[rip+0xcc4b3]        # 0x3f7820
  32b36d:	89 0d a5 c4 0c 00                               	mov    DWORD PTR [rip+0xcc4a5],ecx        # 0x3f7818
  32b373:	45 33 c9                                        	xor    r9d,r9d
  32b376:	48 8b 0d e3 aa 0a 00                            	mov    rcx,QWORD PTR [rip+0xaaae3]        # 0x3d5e60
  32b37d:	e8 a2 09 fa ff                                  	call   0x2cbd24
  32b382:	48 8b 0d d7 aa 0a 00                            	mov    rcx,QWORD PTR [rip+0xaaad7]        # 0x3d5e60
  32b389:	48 8d 15 90 c4 0c 00                            	lea    rdx,[rip+0xcc490]        # 0x3f7820
  32b390:	44 8b cf                                        	mov    r9d,edi
  32b393:	4c 8b c3                                        	mov    r8,rbx
  32b396:	e8 2d fe ff ff                                  	call   0x32b1c8
  32b39b:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  32b3a0:	48 83 c4 20                                     	add    rsp,0x20
  32b3a4:	5f                                              	pop    rdi
  32b3a5:	c3                                              	ret
