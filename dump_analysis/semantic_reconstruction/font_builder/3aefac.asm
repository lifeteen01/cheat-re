
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003aefac <.data+0x3aefac>:
  3aefac:	48 83 ec 28          	sub    rsp,0x28
  3aefb0:	48 63 51 1c          	movsxd rdx,DWORD PTR [rcx+0x1c]
  3aefb4:	48 8b 49 08          	mov    rcx,QWORD PTR [rcx+0x8]
  3aefb8:	48 83 c1 12          	add    rcx,0x12
  3aefbc:	48 03 ca             	add    rcx,rdx
  3aefbf:	e8 d0 ed ff ff       	call   0x3add94
  3aefc4:	0f b7 d0             	movzx  edx,ax
  3aefc7:	66 0f 6e c2          	movd   xmm0,edx
  3aefcb:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3aefce:	f3 0f 5e c8          	divss  xmm1,xmm0
  3aefd2:	0f 28 c1             	movaps xmm0,xmm1
  3aefd5:	48 83 c4 28          	add    rsp,0x28
  3aefd9:	c3                   	ret
  3aefda:	cc                   	int3
  3aefdb:	cc                   	int3
  3aefdc:	48 83 ec 28          	sub    rsp,0x28
  3aefe0:	4c 8b 41 08          	mov    r8,QWORD PTR [rcx+0x8]
  3aefe4:	4c 63 49 24          	movsxd r9,DWORD PTR [rcx+0x24]
  3aefe8:	49 8d 48 06          	lea    rcx,[r8+0x6]
  3aefec:	49 03 c9             	add    rcx,r9
  3aefef:	e8 a0 ed ff ff       	call   0x3add94
  3aeff4:	49 8d 48 04          	lea    rcx,[r8+0x4]
  3aeff8:	0f bf d0             	movsx  edx,ax
