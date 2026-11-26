
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039e304 <.data+0x39e304>:
  39e304:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  39e306:	ff c8                                           	dec    eax
  39e308:	48 63 d0                                        	movsxd rdx,eax
  39e30b:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39e30f:	48 8d 04 90                                     	lea    rax,[rax+rdx*4]
  39e313:	c3                                              	ret
