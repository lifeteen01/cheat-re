
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9330 <.data+0x3a9330>:
  3a9330:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3a9332:	ff c8                                           	dec    eax
  3a9334:	48 98                                           	cdqe
  3a9336:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  3a933a:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a933e:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  3a9342:	c3                                              	ret
