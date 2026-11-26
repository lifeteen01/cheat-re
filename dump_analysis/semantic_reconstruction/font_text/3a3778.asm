
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3778 <.data+0x3a3778>:
  3a3778:	40 53                	rex push rbx
  3a377a:	48 83 ec 40          	sub    rsp,0x40
  3a377e:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  3a3783:	66 0f 6e 31          	movd   xmm6,DWORD PTR [rcx]
  3a3787:	0f 29 7c 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm7
  3a378c:	e8 a3 0f 00 00       	call   0x3a4734
  3a3791:	f3 0f 10 05 af 69 f0 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff069af]        # 0x2aa148
  3a3799:	03 c0                	add    eax,eax
  3a379b:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  3a379e:	66 0f 6e f8          	movd   xmm7,eax
  3a37a2:	0f 5b ff             	cvtdq2ps xmm7,xmm7
  3a37a5:	e8 f2 51 02 00       	call   0x3c899c
  3a37aa:	f3 0f 5e f0          	divss  xmm6,xmm0
  3a37ae:	f3 0f 58 fe          	addss  xmm7,xmm6
  3a37b2:	0f 28 74 24 30       	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3a37b7:	f3 0f 2c c7          	cvttss2si eax,xmm7
  3a37bb:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
  3a37c0:	48 83 c4 40          	add    rsp,0x40
  3a37c4:	5b                   	pop    rbx
  3a37c5:	c3                   	ret
