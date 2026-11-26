
dump_analysis/semantic_reconstruction/game_input_physics/2e949c.bin:     file format binary


Disassembly of section .data:

00000000002e949c <.data>:
  2e949c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e94a1:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  2e94a6:	57                                              	push   rdi
  2e94a7:	48 83 ec 20                                     	sub    rsp,0x20
  2e94ab:	48 8b da                                        	mov    rbx,rdx
  2e94ae:	48 8b f9                                        	mov    rdi,rcx
  2e94b1:	e8 5a e9 fe ff                                  	call   0x2d7e10
  2e94b6:	48 8b d3                                        	mov    rdx,rbx
  2e94b9:	48 8b cf                                        	mov    rcx,rdi
  2e94bc:	48 8b f0                                        	mov    rsi,rax
  2e94bf:	e8 a0 e0 fe ff                                  	call   0x2d7564
  2e94c4:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2e94c9:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  2e94ce:	48 8d 0d 63 49 fa ff                            	lea    rcx,[rip+0xfffffffffffa4963]        # 0x28de38
  2e94d5:	e8 6a 2c fe ff                                  	call   0x2cc144
  2e94da:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  2e94dd:	48 3b f0                                        	cmp    rsi,rax
  2e94e0:	72 05                                           	jb     0x2e94e7
  2e94e2:	48 8b c6                                        	mov    rax,rsi
  2e94e5:	eb 18                                           	jmp    0x2e94ff
  2e94e7:	48 81 fe 00 02 00 00                            	cmp    rsi,0x200
  2e94ee:	73 0f                                           	jae    0x2e94ff
  2e94f0:	48 8d 0c f5 00 00 00 00                         	lea    rcx,[rsi*8+0x0]
  2e94f8:	48 3b c8                                        	cmp    rcx,rax
  2e94fb:	48 0f 43 c1                                     	cmovae rax,rcx
  2e94ff:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e9504:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  2e9509:	48 83 c4 20                                     	add    rsp,0x20
  2e950d:	5f                                              	pop    rdi
  2e950e:	c3                                              	ret
