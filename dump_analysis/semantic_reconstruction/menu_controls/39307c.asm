
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039307c <.data+0x39307c>:
  39307c:	40 53                                           	rex push rbx
  39307e:	48 83 ec 20                                     	sub    rsp,0x20
  393082:	f3 0f 2c 42 04                                  	cvttss2si eax,DWORD PTR [rdx+0x4]
  393087:	48 8b d9                                        	mov    rbx,rcx
  39308a:	66 0f 6e d0                                     	movd   xmm2,eax
  39308e:	f3 0f 2c 02                                     	cvttss2si eax,DWORD PTR [rdx]
  393092:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  393095:	66 0f 6e c8                                     	movd   xmm1,eax
  393099:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  39309c:	e8 9f 92 f3 ff                                  	call   0x2cc340
  3930a1:	48 8b c3                                        	mov    rax,rbx
  3930a4:	48 83 c4 20                                     	add    rsp,0x20
  3930a8:	5b                                              	pop    rbx
  3930a9:	c3                                              	ret
