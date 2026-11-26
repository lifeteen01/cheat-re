
dump_analysis/semantic_reconstruction/game_input_physics/2e2320.bin:     file format binary


Disassembly of section .data:

00000000002e2320 <.data>:
  2e2320:	48 83 ec 58                                     	sub    rsp,0x58
  2e2324:	f2 0f 10 02                                     	movsd  xmm0,QWORD PTR [rdx]
  2e2328:	8b 42 08                                        	mov    eax,DWORD PTR [rdx+0x8]
  2e232b:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2e2330:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2e2336:	f2 0f 10 01                                     	movsd  xmm0,QWORD PTR [rcx]
  2e233a:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  2e2340:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x80]
  2e2349:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  2e234f:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2e2353:	8b 41 08                                        	mov    eax,DWORD PTR [rcx+0x8]
  2e2356:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2e235b:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm3
  2e2361:	0f 57 db                                        	xorps  xmm3,xmm3
  2e2364:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  2e2368:	e8 a3 eb ff ff                                  	call   0x2e0f10
  2e236d:	48 83 c4 58                                     	add    rsp,0x58
  2e2371:	c3                                              	ret
