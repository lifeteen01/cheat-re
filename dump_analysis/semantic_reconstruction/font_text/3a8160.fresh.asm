
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8160 <.data+0x3a8160>:
  3a8160:	40 53                                           	rex push rbx
  3a8162:	48 83 ec 20                                     	sub    rsp,0x20
  3a8166:	41 0f b6 d8                                     	movzx  ebx,r8b
  3a816a:	e8 b1 c3 ff ff                                  	call   0x3a4520
  3a816f:	48 85 c0                                        	test   rax,rax
  3a8172:	74 09                                           	je     0x3a817d
  3a8174:	83 20 fd                                        	and    DWORD PTR [rax],0xfffffffd
  3a8177:	8b cb                                           	mov    ecx,ebx
  3a8179:	03 c9                                           	add    ecx,ecx
  3a817b:	09 08                                           	or     DWORD PTR [rax],ecx
  3a817d:	48 83 c4 20                                     	add    rsp,0x20
  3a8181:	5b                                              	pop    rbx
  3a8182:	c3                                              	ret
