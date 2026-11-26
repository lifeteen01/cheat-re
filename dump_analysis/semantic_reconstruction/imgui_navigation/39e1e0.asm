
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039e1e0 <.data+0x39e1e0>:
  39e1e0:	40 53                                           	rex push rbx
  39e1e2:	48 83 ec 30                                     	sub    rsp,0x30
  39e1e6:	f3 0f 10 82 14 01 00 00                         	movss  xmm0,DWORD PTR [rdx+0x114]
  39e1ee:	48 8b d9                                        	mov    rbx,rcx
  39e1f1:	f3 0f 10 aa 10 01 00 00                         	movss  xmm5,DWORD PTR [rdx+0x110]
  39e1f9:	f3 41 0f 10 60 0c                               	movss  xmm4,DWORD PTR [r8+0xc]
  39e1ff:	f3 41 0f 10 58 08                               	movss  xmm3,DWORD PTR [r8+0x8]
  39e205:	f3 0f 5c e0                                     	subss  xmm4,xmm0
  39e209:	f3 41 0f 10 50 04                               	movss  xmm2,DWORD PTR [r8+0x4]
  39e20f:	f3 0f 5c dd                                     	subss  xmm3,xmm5
  39e213:	f3 41 0f 10 08                                  	movss  xmm1,DWORD PTR [r8]
  39e218:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  39e21c:	f3 0f 5c cd                                     	subss  xmm1,xmm5
  39e220:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  39e226:	e8 c9 d8 fe ff                                  	call   0x38baf4
  39e22b:	48 8b c3                                        	mov    rax,rbx
  39e22e:	48 83 c4 30                                     	add    rsp,0x30
  39e232:	5b                                              	pop    rbx
  39e233:	c3                                              	ret
