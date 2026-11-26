
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8da8 <.data+0x3c8da8>:
  3c8da8:	0f 57 d2             	xorps  xmm2,xmm2
  3c8dab:	f3 0f 5a d0          	cvtss2sd xmm2,xmm0
  3c8daf:	f2 0f 11 54 24 18    	movsd  QWORD PTR [rsp+0x18],xmm2
  3c8db5:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  3c8dba:	48 c1 e8 20          	shr    rax,0x20
  3c8dbe:	2d 7f 12 ef 3f       	sub    eax,0x3fef127f
  3c8dc3:	c7 44 24 18 00 00 00 00 	mov    DWORD PTR [rsp+0x18],0x0
  3c8dcb:	66 0f 6e c0          	movd   xmm0,eax
  3c8dcf:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3c8dd2:	f3 0f 59 c1          	mulss  xmm0,xmm1
  3c8dd6:	f3 0f 58 05 ea 4d ee ff 	addss  xmm0,DWORD PTR [rip+0xffffffffffee4dea]        # 0x2adbc8
  3c8dde:	f3 0f 2c c0          	cvttss2si eax,xmm0
  3c8de2:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  3c8de6:	f2 0f 10 44 24 18    	movsd  xmm0,QWORD PTR [rsp+0x18]
  3c8dec:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  3c8df0:	c3                   	ret
  3c8df1:	cc                   	int3
  3c8df2:	cc                   	int3
  3c8df3:	cc                   	int3
  3c8df4:	48 83 ec 38          	sub    rsp,0x38
  3c8df8:	48 c7 44       	mov    QWORD PTR [rsp+0x20],0x0
