
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cb9fc <.data+0x2cb9fc>:
  2cb9fc:	40 53                                           	rex push rbx
  2cb9fe:	48 83 ec 20                                     	sub    rsp,0x20
  2cba02:	48 8b da                                        	mov    rbx,rdx
  2cba05:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  2cba0a:	49 8b d0                                        	mov    rdx,r8
  2cba0d:	e8 56 08 00 00                                  	call   0x2cc268
  2cba12:	33 c0                                           	xor    eax,eax
  2cba14:	48 c7 83 80 00 00 00 01 00 00 00                	mov    QWORD PTR [rbx+0x80],0x1
  2cba1f:	88 44 24 38                                     	mov    BYTE PTR [rsp+0x38],al
  2cba23:	48 8b cb                                        	mov    rcx,rbx
  2cba26:	48 8b 44 24 48                                  	mov    rax,QWORD PTR [rsp+0x48]
  2cba2b:	48 89 83 88 00 00 00                            	mov    QWORD PTR [rbx+0x88],rax
  2cba32:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2cba36:	89 83 d0 00 00 00                               	mov    DWORD PTR [rbx+0xd0],eax
  2cba3c:	48 8d 44 24 28                                  	lea    rax,[rsp+0x28]
  2cba41:	48 89 43 78                                     	mov    QWORD PTR [rbx+0x78],rax
  2cba45:	48 83 c4 20                                     	add    rsp,0x20
  2cba49:	5b                                              	pop    rbx
  2cba4a:	e9 85 21 10 00                                  	jmp    0x3cdbd4
