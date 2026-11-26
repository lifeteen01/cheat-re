
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3770 <.data+0x3a3770>:
  3a3770:	e9 03 00 00 00       	jmp    0x3a3778
  3a3775:	cc                   	int3
  3a3776:	cc                   	int3
  3a3777:	cc                   	int3
  3a3778:	40 53                	rex push rbx
  3a377a:	48 83 ec 40          	sub    rsp,0x40
  3a377e:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  3a3783:	66 0f 6e 31          	movd   xmm6,DWORD PTR [rcx]
  3a3787:	0f 29 7c 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm7
  3a378c:	e8 a3 0f 00        	call   0x3a4734
