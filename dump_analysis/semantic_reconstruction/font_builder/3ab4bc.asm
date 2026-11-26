
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab4bc <.data+0x3ab4bc>:
  3ab4bc:	48 83 ec 48          	sub    rsp,0x48
  3ab4c0:	f3 0f 58 49 10       	addss  xmm1,DWORD PTR [rcx+0x10]
  3ab4c5:	f3 0f 58 51 14       	addss  xmm2,DWORD PTR [rcx+0x14]
  3ab4ca:	33 c0                	xor    eax,eax
  3ab4cc:	b2 02                	mov    dl,0x2
  3ab4ce:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  3ab4d2:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  3ab4d6:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  3ab4da:	f3 44 0f 2c ca       	cvttss2si r9d,xmm2
  3ab4df:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  3ab4e3:	f3 44 0f 2c c1       	cvttss2si r8d,xmm1
  3ab4e8:	f3 0f 11 49 10       	movss  DWORD PTR [rcx+0x10],xmm1
  3ab4ed:	f3 0f 11 51 14       	movss  DWORD PTR [rcx+0x14],xmm2
  3ab4f2:	e8 61 00 00 00       	call   0x3ab558
  3ab4f7:	48 83 c4 48          	add    rsp,0x48
  3ab4fb:	c3                   	ret
