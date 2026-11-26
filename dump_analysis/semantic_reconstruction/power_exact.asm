
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3c50 <.data+0x2e3c50>:
  2e3c50:	8b ca                	mov    ecx,edx
  2e3c52:	8b c2                	mov    eax,edx
  2e3c54:	f7 d8                	neg    eax
  2e3c56:	c1 e9 1f             	shr    ecx,0x1f
  2e3c59:	84 c9                	test   cl,cl
  2e3c5b:	0f 28 d0             	movaps xmm2,xmm0
  2e3c5e:	f3 0f 10 05 ee 95 fa ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffffa95ee]        # 0x28d254
  2e3c66:	0f 44 c2             	cmove  eax,edx
  2e3c69:	0f 28 c8             	movaps xmm1,xmm0
  2e3c6c:	85 c0                	test   eax,eax
  2e3c6e:	7e 09                	jle    0x2e3c79
  2e3c70:	f3 0f 59 ca          	mulss  xmm1,xmm2
  2e3c74:	83 e8 01             	sub    eax,0x1
  2e3c77:	75 f7                	jne    0x2e3c70
  2e3c79:	84 c9                	test   cl,cl
  2e3c7b:	74 05                	je     0x2e3c82
  2e3c7d:	f3 0f 5e c1          	divss  xmm0,xmm1
  2e3c81:	c3                   	ret
  2e3c82:	0f 28 c1             	movaps xmm0,xmm1
  2e3c85:	c3                   	ret
  2e3c86:	cc                   	int3
  2e3c87:	cc                   	int3
