
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/39f3d0.audit.bin:     file format binary


Disassembly of section .data:

000000000039f3d0 <.data>:
  39f3d0:	40 53                                           	rex push rbx
  39f3d2:	48 83 ec 20                                     	sub    rsp,0x20
  39f3d6:	48 8b d9                                        	mov    rbx,rcx
  39f3d9:	e8 c2 bf f3 ff                                  	call   0x2db3a0
  39f3de:	48 8d 4b 18                                     	lea    rcx,[rbx+0x18]
  39f3e2:	e8 b9 bf f3 ff                                  	call   0x2db3a0
  39f3e7:	48 8d 4b 28                                     	lea    rcx,[rbx+0x28]
  39f3eb:	e8 b0 bf f3 ff                                  	call   0x2db3a0
  39f3f0:	33 c9                                           	xor    ecx,ecx
  39f3f2:	c7 43 52 ff ff ff ff                            	mov    DWORD PTR [rbx+0x52],0xffffffff
  39f3f9:	33 c0                                           	xor    eax,eax
  39f3fb:	48 89 4b 10                                     	mov    QWORD PTR [rbx+0x10],rcx
  39f3ff:	48 89 4b 58                                     	mov    QWORD PTR [rbx+0x58],rcx
  39f403:	66 89 4b 56                                     	mov    WORD PTR [rbx+0x56],cx
  39f407:	48 89 4b 38                                     	mov    QWORD PTR [rbx+0x38],rcx
  39f40b:	48 89 4b 40                                     	mov    QWORD PTR [rbx+0x40],rcx
  39f40f:	48 89 4b 48                                     	mov    QWORD PTR [rbx+0x48],rcx
  39f413:	66 89 4b 50                                     	mov    WORD PTR [rbx+0x50],cx
  39f417:	88 4b 60                                        	mov    BYTE PTR [rbx+0x60],cl
  39f41a:	48 c7 43 64 00 00 80 3f                         	mov    QWORD PTR [rbx+0x64],0x3f800000
  39f422:	48 89 4b 6c                                     	mov    QWORD PTR [rbx+0x6c],rcx
  39f426:	66 89 43 74                                     	mov    WORD PTR [rbx+0x74],ax
  39f42a:	48 8b c3                                        	mov    rax,rbx
  39f42d:	48 83 c4 20                                     	add    rsp,0x20
  39f431:	5b                                              	pop    rbx
  39f432:	c3                                              	ret
