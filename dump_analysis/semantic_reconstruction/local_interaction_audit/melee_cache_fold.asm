
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e1ff4 <.data+0x2e1ff4>:
  2e1ff4:	f3 0f 10 4b 44                                  	movss  xmm1,DWORD PTR [rbx+0x44]
  2e1ff9:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  2e1ffd:	e8 3e 75 ff ff                                  	call   0x2d9540
  2e2002:	f3 0f 10 4b 34                                  	movss  xmm1,DWORD PTR [rbx+0x34]
  2e2007:	48 8d 4d 70                                     	lea    rcx,[rbp+0x70]
  2e200b:	48 8b f0                                        	mov    rsi,rax
  2e200e:	e8 2d 75 ff ff                                  	call   0x2d9540
  2e2013:	f3 0f 10 4b 38                                  	movss  xmm1,DWORD PTR [rbx+0x38]
  2e2018:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  2e201c:	48 8b f8                                        	mov    rdi,rax
  2e201f:	e8 1c 75 ff ff                                  	call   0x2d9540
  2e2024:	0f 28 ce                                        	movaps xmm1,xmm6
  2e2027:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2e202b:	48 8b d8                                        	mov    rbx,rax
  2e202e:	e8 0d 75 ff ff                                  	call   0x2d9540
  2e2033:	48 8b d0                                        	mov    rdx,rax
  2e2036:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  2e203a:	4c 8b c3                                        	mov    r8,rbx
  2e203d:	e8 fe ce fe ff                                  	call   0x2cef40
  2e2042:	48 8b d0                                        	mov    rdx,rax
  2e2045:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2e2049:	4c 8b c7                                        	mov    r8,rdi
  2e204c:	e8 ef ce fe ff                                  	call   0x2cef40
  2e2051:	48 8b d0                                        	mov    rdx,rax
  2e2054:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  2e2058:	4c 8b c6                                        	mov    r8,rsi
  2e205b:	e8 e0 ce fe ff                                  	call   0x2cef40
  2e2060:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2e2064:	e8 8b a4 fe ff                                  	call   0x2cc4f4
  2e2069:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  2e206d:	e8 82 a4 fe ff                                  	call   0x2cc4f4
  2e2072:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2e2076:	e8 79 a4 fe ff                                  	call   0x2cc4f4
  2e207b:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  2e207f:	e8 70 a4 fe ff                                  	call   0x2cc4f4
  2e2084:	48 8d 4d 70                                     	lea    rcx,[rbp+0x70]
  2e2088:	e8 67 a4 fe ff                                  	call   0x2cc4f4
  2e208d:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  2e2091:	e8 5e a4 fe ff                                  	call   0x2cc4f4
  2e2096:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  2e209a:	e8 4d b7 fe ff                                  	call   0x2cd7ec
  2e209f:	48 8b c8                                        	mov    rcx,rax
  2e20a2:	e8 ad 42 ff ff                                  	call   0x2d6354
  2e20a7:	48 8b c8                                        	mov    rcx,rax
  2e20aa:	48 8b f8                                        	mov    rdi,rax
  2e20ad:	e8 6e ed ff ff                                  	call   0x2e0e20
  2e20b2:	48 8b d8                                        	mov    rbx,rax
  2e20b5:	48 85 c0                                        	test   rax,rax
  2e20b8:	75 37                                           	jne    0x2e20f1
  2e20ba:	48 8b 85 58 01 00 00                            	mov    rax,QWORD PTR [rbp+0x158]
  2e20c1:	0f 28 ce                                        	movaps xmm1,xmm6
  2e20c4:	48 8b cf                                        	mov    rcx,rdi
  2e20c7:	f3 0f 10 40 44                                  	movss  xmm0,DWORD PTR [rax+0x44]
  2e20cc:	f3 0f 10 58 34                                  	movss  xmm3,DWORD PTR [rax+0x34]
  2e20d1:	f3 0f 10 50 38                                  	movss  xmm2,DWORD PTR [rax+0x38]
  2e20d6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  2e20dc:	e8 83 dd ff ff                                  	call   0x2dfe64
  2e20e1:	48 8b d8                                        	mov    rbx,rax
  2e20e4:	48 85 c0                                        	test   rax,rax
  2e20e7:	74 08                                           	je     0x2e20f1
  2e20e9:	48 8b c8                                        	mov    rcx,rax
  2e20ec:	e8 7f 19 00 00                                  	call   0x2e3a70
