
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039e324 <.data+0x39e324>:
  39e324:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  39e326:	ff c8                                           	dec    eax
  39e328:	48 98                                           	cdqe
  39e32a:	48 6b c0 38                                     	imul   rax,rax,0x38
  39e32e:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39e332:	c3                                              	ret
