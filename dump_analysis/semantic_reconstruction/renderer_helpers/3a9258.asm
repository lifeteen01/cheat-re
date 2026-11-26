
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9258 <.data+0x3a9258>:
  3a9258:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a925d:	57                                              	push   rdi
  3a925e:	48 83 ec 60                                     	sub    rsp,0x60
  3a9262:	83 b9 ac 00 00 00 01                            	cmp    DWORD PTR [rcx+0xac],0x1
  3a9269:	48 8d b9 a8 00 00 00                            	lea    rdi,[rcx+0xa8]
  3a9270:	48 8b d9                                        	mov    rbx,rcx
  3a9273:	7e 0b                                           	jle    0x3a9280
  3a9275:	48 8b d1                                        	mov    rdx,rcx
  3a9278:	48 8b cf                                        	mov    rcx,rdi
  3a927b:	e8 44 d3 ff ff                                  	call   0x3a65c4
  3a9280:	33 d2                                           	xor    edx,edx
  3a9282:	48 8b cb                                        	mov    rcx,rbx
  3a9285:	e8 fa 1b fd ff                                  	call   0x37ae84
  3a928a:	48 8d 4b 10                                     	lea    rcx,[rbx+0x10]
  3a928e:	33 d2                                           	xor    edx,edx
  3a9290:	e8 6f 1a fd ff                                  	call   0x37ad04
  3a9295:	48 8d 4b 20                                     	lea    rcx,[rbx+0x20]
  3a9299:	33 d2                                           	xor    edx,edx
  3a929b:	e8 24 1b fd ff                                  	call   0x37adc4
  3a92a0:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a92a4:	0f 57 c0                                        	xorps  xmm0,xmm0
  3a92a7:	33 d2                                           	xor    edx,edx
  3a92a9:	8b 48 2c                                        	mov    ecx,DWORD PTR [rax+0x2c]
  3a92ac:	33 c0                                           	xor    eax,eax
  3a92ae:	89 4b 30                                        	mov    DWORD PTR [rbx+0x30],ecx
  3a92b1:	48 8d 4b 58                                     	lea    rcx,[rbx+0x58]
  3a92b5:	0f 11 83 88 00 00 00                            	movups XMMWORD PTR [rbx+0x88],xmm0
  3a92bc:	0f 11 83 98 00 00 00                            	movups XMMWORD PTR [rbx+0x98],xmm0
  3a92c3:	89 43 34                                        	mov    DWORD PTR [rbx+0x34],eax
  3a92c6:	48 89 43 48                                     	mov    QWORD PTR [rbx+0x48],rax
  3a92ca:	48 89 43 50                                     	mov    QWORD PTR [rbx+0x50],rax
  3a92ce:	e8 81 1b fd ff                                  	call   0x37ae54
  3a92d3:	48 8d 4b 68                                     	lea    rcx,[rbx+0x68]
  3a92d7:	33 d2                                           	xor    edx,edx
  3a92d9:	e8 56 1a fd ff                                  	call   0x37ad34
  3a92de:	48 8d 4b 78                                     	lea    rcx,[rbx+0x78]
  3a92e2:	33 d2                                           	xor    edx,edx
  3a92e4:	e8 4b 1a fd ff                                  	call   0x37ad34
  3a92e9:	48 8b cf                                        	mov    rcx,rdi
  3a92ec:	e8 3f a9 ff ff                                  	call   0x3a3c30
  3a92f1:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3a92f6:	e8 99 5f ff ff                                  	call   0x39f294
  3a92fb:	48 8b d0                                        	mov    rdx,rax
  3a92fe:	48 8b cb                                        	mov    rcx,rbx
  3a9301:	e8 26 5c ff ff                                  	call   0x39ef2c
  3a9306:	c7 83 c0 00 00 00 00 00 80 3f                   	mov    DWORD PTR [rbx+0xc0],0x3f800000
  3a9310:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  3a9315:	48 83 c4 60                                     	add    rsp,0x60
  3a9319:	5f                                              	pop    rdi
  3a931a:	c3                                              	ret
