
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368a84 <.data+0x368a84>:
  368a84:	40 53                                           	rex push rbx
  368a86:	48 83 ec 20                                     	sub    rsp,0x20
  368a8a:	48 8b d9                                        	mov    rbx,rcx
  368a8d:	e8 76 24 f6 ff                                  	call   0x2caf08
  368a92:	84 c0                                           	test   al,al
  368a94:	75 08                                           	jne    0x368a9e
  368a96:	33 c0                                           	xor    eax,eax
  368a98:	48 83 c4 20                                     	add    rsp,0x20
  368a9c:	5b                                              	pop    rbx
  368a9d:	c3                                              	ret
  368a9e:	8b 0d bc 60 09 00                               	mov    ecx,DWORD PTR [rip+0x960bc]        # 0x3feb60
  368aa4:	f6 c1 01                                        	test   cl,0x1
  368aa7:	75 20                                           	jne    0x368ac9
  368aa9:	4c 8b 05 50 e4 06 00                            	mov    r8,QWORD PTR [rip+0x6e450]        # 0x3d6f00
  368ab0:	83 c9 01                                        	or     ecx,0x1
  368ab3:	49 81 c0 00 3e f8 03                            	add    r8,0x3f83e00
  368aba:	89 0d a0 60 09 00                               	mov    DWORD PTR [rip+0x960a0],ecx        # 0x3feb60
  368ac0:	4c 89 05 91 60 09 00                            	mov    QWORD PTR [rip+0x96091],r8        # 0x3feb58
  368ac7:	eb 07                                           	jmp    0x368ad0
  368ac9:	4c 8b 05 88 60 09 00                            	mov    r8,QWORD PTR [rip+0x96088]        # 0x3feb58
  368ad0:	f6 c1 02                                        	test   cl,0x2
  368ad3:	75 1f                                           	jne    0x368af4
  368ad5:	83 c9 02                                        	or     ecx,0x2
  368ad8:	48 8d 15 91 60 09 00                            	lea    rdx,[rip+0x96091]        # 0x3feb70
  368adf:	89 0d 7b 60 09 00                               	mov    DWORD PTR [rip+0x9607b],ecx        # 0x3feb60
  368ae5:	45 33 c9                                        	xor    r9d,r9d
  368ae8:	48 8b 0d 71 d3 06 00                            	mov    rcx,QWORD PTR [rip+0x6d371]        # 0x3d5e60
  368aef:	e8 30 32 f6 ff                                  	call   0x2cbd24
  368af4:	48 8b 0d 65 d3 06 00                            	mov    rcx,QWORD PTR [rip+0x6d365]        # 0x3d5e60
  368afb:	48 8d 15 6e 60 09 00                            	lea    rdx,[rip+0x9606e]        # 0x3feb70
  368b02:	4c 8b c3                                        	mov    r8,rbx
  368b05:	48 83 c4 20                                     	add    rsp,0x20
  368b09:	5b                                              	pop    rbx
  368b0a:	e9 ed 2e f6 ff                                  	jmp    0x2cb9fc
