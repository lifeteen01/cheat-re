
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000322ef8 <.data+0x322ef8>:
  322ef8:	40 53                                           	rex push rbx
  322efa:	48 83 ec 30                                     	sub    rsp,0x30
  322efe:	48 8b d9                                        	mov    rbx,rcx
  322f01:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  322f06:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  322f0b:	e8 c8 fa ff ff                                  	call   0x3229d8
  322f10:	48 8b c8                                        	mov    rcx,rax
  322f13:	e8 48 a2 fb ff                                  	call   0x2dd160
  322f18:	48 8b d0                                        	mov    rdx,rax
  322f1b:	4c 8d 05 6e f5 0c 00                            	lea    r8,[rip+0xcf56e]        # 0x3f2490
  322f22:	48 8b cb                                        	mov    rcx,rbx
  322f25:	e8 06 00 00 00                                  	call   0x322f30
  322f2a:	48 83 c4 30                                     	add    rsp,0x30
  322f2e:	5b                                              	pop    rbx
  322f2f:	c3                                              	ret
