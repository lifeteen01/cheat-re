
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aefdc <.data+0x3aefdc>:
  3aefdc:	48 83 ec 28                                     	sub    rsp,0x28
  3aefe0:	4c 8b 41 08                                     	mov    r8,QWORD PTR [rcx+0x8]
  3aefe4:	4c 63 49 24                                     	movsxd r9,DWORD PTR [rcx+0x24]
  3aefe8:	49 8d 48 06                                     	lea    rcx,[r8+0x6]
  3aefec:	49 03 c9                                        	add    rcx,r9
  3aefef:	e8 a0 ed ff ff                                  	call   0x3add94
  3aeff4:	49 8d 48 04                                     	lea    rcx,[r8+0x4]
  3aeff8:	0f bf d0                                        	movsx  edx,ax
  3aeffb:	49 03 c9                                        	add    rcx,r9
  3aeffe:	e8 91 ed ff ff                                  	call   0x3add94
  3af003:	0f bf c8                                        	movsx  ecx,ax
  3af006:	2b ca                                           	sub    ecx,edx
  3af008:	66 0f 6e c1                                     	movd   xmm0,ecx
  3af00c:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3af00f:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3af013:	0f 28 c1                                        	movaps xmm0,xmm1
  3af016:	48 83 c4 28                                     	add    rsp,0x28
  3af01a:	c3                                              	ret
