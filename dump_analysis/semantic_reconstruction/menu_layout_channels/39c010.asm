
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039c010 <.data+0x39c010>:
  39c010:	40 53                                           	rex push rbx
  39c012:	48 83 ec 30                                     	sub    rsp,0x30
  39c016:	f3 0f 10 41 0c                                  	movss  xmm0,DWORD PTR [rcx+0xc]
  39c01b:	48 8b da                                        	mov    rbx,rdx
  39c01e:	f3 0f 10 59 08                                  	movss  xmm3,DWORD PTR [rcx+0x8]
  39c023:	f3 0f 10 51 04                                  	movss  xmm2,DWORD PTR [rcx+0x4]
  39c028:	f3 0f 10 09                                     	movss  xmm1,DWORD PTR [rcx]
  39c02c:	48 8b ca                                        	mov    rcx,rdx
  39c02f:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  39c035:	e8 16 03 f3 ff                                  	call   0x2cc350
  39c03a:	48 8b c3                                        	mov    rax,rbx
  39c03d:	48 83 c4 30                                     	add    rsp,0x30
  39c041:	5b                                              	pop    rbx
  39c042:	c3                                              	ret
