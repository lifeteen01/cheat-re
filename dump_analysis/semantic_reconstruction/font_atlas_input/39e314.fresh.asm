
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039e314 <.data+0x39e314>:
  39e314:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  39e316:	ff c8                                           	dec    eax
  39e318:	48 63 d0                                        	movsxd rdx,eax
  39e31b:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39e31f:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39e323:	c3                                              	ret
  39e324:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  39e326:	ff c8                                           	dec    eax
  39e328:	48 98                                           	cdqe
  39e32a:	48 6b                                       	imul   rax,rax,0x38
