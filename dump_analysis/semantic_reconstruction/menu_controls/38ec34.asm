
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038ec34 <.data+0x38ec34>:
  38ec34:	40 53                                           	rex push rbx
  38ec36:	48 83 ec 20                                     	sub    rsp,0x20
  38ec3a:	48 8b 1d e7 6e 07 00                            	mov    rbx,QWORD PTR [rip+0x76ee7]        # 0x405b28
  38ec41:	48 8d 93 88 47 00 00                            	lea    rdx,[rbx+0x4788]
  38ec48:	8b 02                                           	mov    eax,DWORD PTR [rdx]
  38ec4a:	a8 04                                           	test   al,0x4
  38ec4c:	75 24                                           	jne    0x38ec72
  38ec4e:	84 c9                                           	test   cl,cl
  38ec50:	74 25                                           	je     0x38ec77
  38ec52:	f3 0f 10 83 d0 37 00 00                         	movss  xmm0,DWORD PTR [rbx+0x37d0]
  38ec5a:	f3 0f 11 83 ac 5b 00 00                         	movss  DWORD PTR [rbx+0x5bac],xmm0
  38ec62:	f3 0f 59 83 d4 37 00 00                         	mulss  xmm0,DWORD PTR [rbx+0x37d4]
  38ec6a:	f3 0f 11 83 d0 37 00 00                         	movss  DWORD PTR [rbx+0x37d0],xmm0
  38ec72:	83 c8 04                                        	or     eax,0x4
  38ec75:	89 02                                           	mov    DWORD PTR [rdx],eax
  38ec77:	48 8d 8b 90 48 00 00                            	lea    rcx,[rbx+0x4890]
  38ec7e:	e8 65 02 01 00                                  	call   0x39eee8
  38ec83:	66 ff 83 b0 5b 00 00                            	inc    WORD PTR [rbx+0x5bb0]
  38ec8a:	48 83 c4 20                                     	add    rsp,0x20
  38ec8e:	5b                                              	pop    rbx
  38ec8f:	c3                                              	ret
