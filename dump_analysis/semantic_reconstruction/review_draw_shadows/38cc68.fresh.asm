
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038cc68 <.data+0x38cc68>:
  38cc68:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [rcx]
  38cc6c:	48 8b c1                                        	mov    rax,rcx
  38cc6f:	f3 0f 5c 02                                     	subss  xmm0,DWORD PTR [rdx]
  38cc73:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [rcx+0x4]
  38cc78:	f3 0f 11 01                                     	movss  DWORD PTR [rcx],xmm0
  38cc7c:	f3 0f 5c 4a 04                                  	subss  xmm1,DWORD PTR [rdx+0x4]
  38cc81:	f3 0f 11 49 04                                  	movss  DWORD PTR [rcx+0x4],xmm1
