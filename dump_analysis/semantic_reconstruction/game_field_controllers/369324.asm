
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369324 <.data+0x369324>:
  369324:	40 53                                           	rex push rbx
  369326:	48 83 ec 20                                     	sub    rsp,0x20
  36932a:	48 8b d9                                        	mov    rbx,rcx
  36932d:	e8 d6 1b f6 ff                                  	call   0x2caf08
  369332:	84 c0                                           	test   al,al
  369334:	75 08                                           	jne    0x36933e
  369336:	33 c0                                           	xor    eax,eax
  369338:	48 83 c4 20                                     	add    rsp,0x20
  36933c:	5b                                              	pop    rbx
  36933d:	c3                                              	ret
  36933e:	8b 0d 3c 56 09 00                               	mov    ecx,DWORD PTR [rip+0x9563c]        # 0x3fe980
  369344:	f6 c1 01                                        	test   cl,0x1
  369347:	75 20                                           	jne    0x369369
  369349:	4c 8b 05 b0 db 06 00                            	mov    r8,QWORD PTR [rip+0x6dbb0]        # 0x3d6f00
  369350:	83 c9 01                                        	or     ecx,0x1
  369353:	49 81 c0 30 08 ee 03                            	add    r8,0x3ee0830
  36935a:	89 0d 20 56 09 00                               	mov    DWORD PTR [rip+0x95620],ecx        # 0x3fe980
  369360:	4c 89 05 11 56 09 00                            	mov    QWORD PTR [rip+0x95611],r8        # 0x3fe978
  369367:	eb 07                                           	jmp    0x369370
  369369:	4c 8b 05 08 56 09 00                            	mov    r8,QWORD PTR [rip+0x95608]        # 0x3fe978
  369370:	f6 c1 02                                        	test   cl,0x2
  369373:	75 1f                                           	jne    0x369394
  369375:	83 c9 02                                        	or     ecx,0x2
  369378:	48 8d 15 11 56 09 00                            	lea    rdx,[rip+0x95611]        # 0x3fe990
  36937f:	89 0d fb 55 09 00                               	mov    DWORD PTR [rip+0x955fb],ecx        # 0x3fe980
  369385:	45 33 c9                                        	xor    r9d,r9d
  369388:	48 8b 0d d1 ca 06 00                            	mov    rcx,QWORD PTR [rip+0x6cad1]        # 0x3d5e60
  36938f:	e8 90 29 f6 ff                                  	call   0x2cbd24
  369394:	48 8b 0d c5 ca 06 00                            	mov    rcx,QWORD PTR [rip+0x6cac5]        # 0x3d5e60
  36939b:	48 8d 15 ee 55 09 00                            	lea    rdx,[rip+0x955ee]        # 0x3fe990
  3693a2:	4c 8b c3                                        	mov    r8,rbx
  3693a5:	48 83 c4 20                                     	add    rsp,0x20
  3693a9:	5b                                              	pop    rbx
  3693aa:	e9 4d 26 f6 ff                                  	jmp    0x2cb9fc
