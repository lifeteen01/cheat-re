
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039ac04 <.data+0x39ac04>:
  39ac04:	48 8b 05 1d af 06 00                            	mov    rax,QWORD PTR [rip+0x6af1d]        # 0x405b28
  39ac0b:	0f 28 d8                                        	movaps xmm3,xmm0
  39ac0e:	48 8b 88 08 3f 00 00                            	mov    rcx,QWORD PTR [rax+0x3f08]
  39ac15:	80 b9 bb 00 00 00 00                            	cmp    BYTE PTR [rcx+0xbb],0x0
  39ac1c:	0f 85 84 00 00 00                               	jne    0x39aca6
  39ac22:	0f 57 d2                                        	xorps  xmm2,xmm2
  39ac25:	0f 2e da                                        	ucomiss xmm3,xmm2
  39ac28:	7a 19                                           	jp     0x39ac43
  39ac2a:	75 17                                           	jne    0x39ac43
  39ac2c:	0f 2f d1                                        	comiss xmm2,xmm1
  39ac2f:	76 08                                           	jbe    0x39ac39
  39ac31:	f3 0f 10 88 1c 38 00 00                         	movss  xmm1,DWORD PTR [rax+0x381c]
  39ac39:	f3 0f 58 89 08 01 00 00                         	addss  xmm1,DWORD PTR [rcx+0x108]
  39ac41:	eb 2c                                           	jmp    0x39ac6f
  39ac43:	f3 0f 10 41 20                                  	movss  xmm0,DWORD PTR [rcx+0x20]
  39ac48:	f3 0f 5f d1                                     	maxss  xmm2,xmm1
  39ac4c:	f3 0f 5c 81 84 00 00 00                         	subss  xmm0,DWORD PTR [rcx+0x84]
  39ac54:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  39ac58:	0f 28 c8                                        	movaps xmm1,xmm0
  39ac5b:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  39ac5f:	f3 0f 58 89 4c 01 00 00                         	addss  xmm1,DWORD PTR [rcx+0x14c]
  39ac67:	f3 0f 58 89 48 01 00 00                         	addss  xmm1,DWORD PTR [rcx+0x148]
  39ac6f:	f3 0f 11 89 00 01 00 00                         	movss  DWORD PTR [rcx+0x100],xmm1
  39ac77:	8b 81 0c 01 00 00                               	mov    eax,DWORD PTR [rcx+0x10c]
  39ac7d:	89 81 04 01 00 00                               	mov    DWORD PTR [rcx+0x104],eax
  39ac83:	f2 0f 10 81 30 01 00 00                         	movsd  xmm0,QWORD PTR [rcx+0x130]
  39ac8b:	8b 81 3c 01 00 00                               	mov    eax,DWORD PTR [rcx+0x13c]
  39ac91:	f2 0f 11 81 28 01 00 00                         	movsd  QWORD PTR [rcx+0x128],xmm0
  39ac99:	89 81 38 01 00 00                               	mov    DWORD PTR [rcx+0x138],eax
  39ac9f:	c6 81 40 01 00 00 01                            	mov    BYTE PTR [rcx+0x140],0x1
  39aca6:	c3                                              	ret
