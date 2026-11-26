
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000383070 <.data+0x383070>:
  383070:	40 53                                           	rex push rbx
  383072:	48 83 ec 20                                     	sub    rsp,0x20
  383076:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  38307b:	48 8b d9                                        	mov    rbx,rcx
  38307e:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  383082:	f3 41 0f 5d 50 04                               	minss  xmm2,DWORD PTR [r8+0x4]
  383088:	f3 41 0f 5d 08                                  	minss  xmm1,DWORD PTR [r8]
  38308d:	e8 ae 92 f4 ff                                  	call   0x2cc340
  383092:	48 8b c3                                        	mov    rax,rbx
  383095:	48 83 c4 20                                     	add    rsp,0x20
  383099:	5b                                              	pop    rbx
  38309a:	c3                                              	ret
