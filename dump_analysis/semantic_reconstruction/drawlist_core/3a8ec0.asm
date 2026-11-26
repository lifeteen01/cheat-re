
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8ec0 <.data+0x3a8ec0>:
  3a8ec0:	48 63 01                                        	movsxd rax,DWORD PTR [rcx]
  3a8ec3:	4c 8b 41 08                                     	mov    r8,QWORD PTR [rcx+0x8]
  3a8ec7:	48 6b d0 38                                     	imul   rdx,rax,0x38
  3a8ecb:	c7 41 34 00 00 00 00                            	mov    DWORD PTR [rcx+0x34],0x0
  3a8ed2:	42 83 7c 02 e8 00                               	cmp    DWORD PTR [rdx+r8*1-0x18],0x0
  3a8ed8:	0f 85 3a 6e ff ff                               	jne    0x39fd18
  3a8ede:	8b 81 a0 00 00 00                               	mov    eax,DWORD PTR [rcx+0xa0]
  3a8ee4:	42 89 44 02 e0                                  	mov    DWORD PTR [rdx+r8*1-0x20],eax
  3a8ee9:	c3                                              	ret
