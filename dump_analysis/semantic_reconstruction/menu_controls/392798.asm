
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392798 <.data+0x392798>:
  392798:	40 53                                           	rex push rbx
  39279a:	48 83 ec 20                                     	sub    rsp,0x20
  39279e:	48 8b d9                                        	mov    rbx,rcx
  3927a1:	f7 c2 00 f8 00 00                               	test   edx,0xf800
  3927a7:	74 07                                           	je     0x3927b0
  3927a9:	e8 62 e0 ff ff                                  	call   0x390810
  3927ae:	8b d0                                           	mov    edx,eax
  3927b0:	8d 82 00 fe ff ff                               	lea    eax,[rdx-0x200]
  3927b6:	48 63 d0                                        	movsxd rdx,eax
  3927b9:	48 8d 82 f6 07 00 00                            	lea    rax,[rdx+0x7f6]
  3927c0:	48 8d 04 42                                     	lea    rax,[rdx+rax*2]
  3927c4:	48 8d 04 83                                     	lea    rax,[rbx+rax*4]
  3927c8:	48 83 c4 20                                     	add    rsp,0x20
  3927cc:	5b                                              	pop    rbx
  3927cd:	c3                                              	ret
