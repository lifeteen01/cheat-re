
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368b10 <.data+0x368b10>:
  368b10:	40 53                                           	rex push rbx
  368b12:	48 83 ec 20                                     	sub    rsp,0x20
  368b16:	48 8b d9                                        	mov    rbx,rcx
  368b19:	e8 ea 23 f6 ff                                  	call   0x2caf08
  368b1e:	84 c0                                           	test   al,al
  368b20:	75 08                                           	jne    0x368b2a
  368b22:	33 c0                                           	xor    eax,eax
  368b24:	48 83 c4 20                                     	add    rsp,0x20
  368b28:	5b                                              	pop    rbx
  368b29:	c3                                              	ret
  368b2a:	8b 0d 70 5c 09 00                               	mov    ecx,DWORD PTR [rip+0x95c70]        # 0x3fe7a0
  368b30:	f6 c1 01                                        	test   cl,0x1
  368b33:	75 20                                           	jne    0x368b55
  368b35:	4c 8b 05 c4 e3 06 00                            	mov    r8,QWORD PTR [rip+0x6e3c4]        # 0x3d6f00
  368b3c:	83 c9 01                                        	or     ecx,0x1
  368b3f:	49 81 c0 d0 2d f1 03                            	add    r8,0x3f12dd0
  368b46:	89 0d 54 5c 09 00                               	mov    DWORD PTR [rip+0x95c54],ecx        # 0x3fe7a0
  368b4c:	4c 89 05 45 5c 09 00                            	mov    QWORD PTR [rip+0x95c45],r8        # 0x3fe798
  368b53:	eb 07                                           	jmp    0x368b5c
  368b55:	4c 8b 05 3c 5c 09 00                            	mov    r8,QWORD PTR [rip+0x95c3c]        # 0x3fe798
  368b5c:	f6 c1 02                                        	test   cl,0x2
  368b5f:	75 1f                                           	jne    0x368b80
  368b61:	83 c9 02                                        	or     ecx,0x2
  368b64:	48 8d 15 45 5c 09 00                            	lea    rdx,[rip+0x95c45]        # 0x3fe7b0
  368b6b:	89 0d 2f 5c 09 00                               	mov    DWORD PTR [rip+0x95c2f],ecx        # 0x3fe7a0
  368b71:	45 33 c9                                        	xor    r9d,r9d
  368b74:	48 8b 0d e5 d2 06 00                            	mov    rcx,QWORD PTR [rip+0x6d2e5]        # 0x3d5e60
  368b7b:	e8 a4 31 f6 ff                                  	call   0x2cbd24
  368b80:	48 8b 0d d9 d2 06 00                            	mov    rcx,QWORD PTR [rip+0x6d2d9]        # 0x3d5e60
  368b87:	48 8d 15 22 5c 09 00                            	lea    rdx,[rip+0x95c22]        # 0x3fe7b0
  368b8e:	4c 8b c3                                        	mov    r8,rbx
  368b91:	48 83 c4 20                                     	add    rsp,0x20
  368b95:	5b                                              	pop    rbx
  368b96:	e9 61 2e f6 ff                                  	jmp    0x2cb9fc
