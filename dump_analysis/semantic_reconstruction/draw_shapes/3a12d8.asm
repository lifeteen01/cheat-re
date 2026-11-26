
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a12d8 <.data+0x3a12d8>:
  3a12d8:	40 53                                           	rex push rbx
  3a12da:	55                                              	push   rbp
  3a12db:	56                                              	push   rsi
  3a12dc:	57                                              	push   rdi
  3a12dd:	48 83 ec 38                                     	sub    rsp,0x38
  3a12e1:	41 8b c1                                        	mov    eax,r9d
  3a12e4:	41 8b f9                                        	mov    edi,r9d
  3a12e7:	0b 84 24 80 00 00 00                            	or     eax,DWORD PTR [rsp+0x80]
  3a12ee:	49 8b f0                                        	mov    rsi,r8
  3a12f1:	0b 84 24 88 00 00 00                            	or     eax,DWORD PTR [rsp+0x88]
  3a12f8:	48 8b ea                                        	mov    rbp,rdx
  3a12fb:	0b 84 24 90 00 00 00                            	or     eax,DWORD PTR [rsp+0x90]
  3a1302:	48 8b d9                                        	mov    rbx,rcx
  3a1305:	a9 00 00 00 ff                                  	test   eax,0xff000000
  3a130a:	0f 84 f5 00 00 00                               	je     0x3a1405
  3a1310:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  3a1314:	ba 06 00 00 00                                  	mov    edx,0x6
  3a1319:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a131d:	44 8d 42 fe                                     	lea    r8d,[rdx-0x2]
  3a1321:	f2 0f 11 44 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm0
  3a1327:	e8 70 5e 00 00                                  	call   0x3a719c
  3a132c:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a1330:	48 8b cb                                        	mov    rcx,rbx
  3a1333:	e8 14 77 fd ff                                  	call   0x378a4c
  3a1338:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a133c:	48 8b cb                                        	mov    rcx,rbx
  3a133f:	66 ff c2                                        	inc    dx
  3a1342:	e8 05 77 fd ff                                  	call   0x378a4c
  3a1347:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a134b:	48 8b cb                                        	mov    rcx,rbx
  3a134e:	66 83 c2 02                                     	add    dx,0x2
  3a1352:	e8 f5 76 fd ff                                  	call   0x378a4c
  3a1357:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a135b:	48 8b cb                                        	mov    rcx,rbx
  3a135e:	e8 e9 76 fd ff                                  	call   0x378a4c
  3a1363:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a1367:	48 8b cb                                        	mov    rcx,rbx
  3a136a:	66 83 c2 02                                     	add    dx,0x2
  3a136e:	e8 d9 76 fd ff                                  	call   0x378a4c
  3a1373:	0f b7 53 34                                     	movzx  edx,WORD PTR [rbx+0x34]
  3a1377:	48 8b cb                                        	mov    rcx,rbx
  3a137a:	66 83 c2 03                                     	add    dx,0x3
  3a137e:	e8 c9 76 fd ff                                  	call   0x378a4c
  3a1383:	44 8b cf                                        	mov    r9d,edi
  3a1386:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3a138b:	48 8b d5                                        	mov    rdx,rbp
  3a138e:	48 8b cb                                        	mov    rcx,rbx
  3a1391:	e8 c6 76 fd ff                                  	call   0x378a5c
  3a1396:	f3 0f 10 55 04                                  	movss  xmm2,DWORD PTR [rbp+0x4]
  3a139b:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3a13a0:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3a13a4:	e8 97 af f2 ff                                  	call   0x2cc340
  3a13a9:	44 8b 8c 24 80 00 00 00                         	mov    r9d,DWORD PTR [rsp+0x80]
  3a13b1:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3a13b6:	48 8b d0                                        	mov    rdx,rax
  3a13b9:	48 8b cb                                        	mov    rcx,rbx
  3a13bc:	e8 9b 76 fd ff                                  	call   0x378a5c
  3a13c1:	44 8b 8c 24 88 00 00 00                         	mov    r9d,DWORD PTR [rsp+0x88]
  3a13c9:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3a13ce:	48 8b d6                                        	mov    rdx,rsi
  3a13d1:	48 8b cb                                        	mov    rcx,rbx
  3a13d4:	e8 83 76 fd ff                                  	call   0x378a5c
  3a13d9:	f3 0f 10 56 04                                  	movss  xmm2,DWORD PTR [rsi+0x4]
  3a13de:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3a13e3:	f3 0f 10 4d 00                                  	movss  xmm1,DWORD PTR [rbp+0x0]
  3a13e8:	e8 53 af f2 ff                                  	call   0x2cc340
  3a13ed:	44 8b 8c 24 90 00 00 00                         	mov    r9d,DWORD PTR [rsp+0x90]
  3a13f5:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  3a13fa:	48 8b d0                                        	mov    rdx,rax
  3a13fd:	48 8b cb                                        	mov    rcx,rbx
  3a1400:	e8 57 76 fd ff                                  	call   0x378a5c
  3a1405:	48 83 c4 38                                     	add    rsp,0x38
  3a1409:	5f                                              	pop    rdi
  3a140a:	5e                                              	pop    rsi
  3a140b:	5d                                              	pop    rbp
  3a140c:	5b                                              	pop    rbx
  3a140d:	c3                                              	ret
