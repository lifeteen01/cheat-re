
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035aa88 <.data+0x35aa88>:
  35aa88:	f3 41 0f 10 10                                  	movss  xmm2,DWORD PTR [r8]
  35aa8d:	f3 41 0f 10 58 04                               	movss  xmm3,DWORD PTR [r8+0x4]
  35aa93:	0f 28 c2                                        	movaps xmm0,xmm2
  35aa96:	f3 0f 10 21                                     	movss  xmm4,DWORD PTR [rcx]
  35aa9a:	0f 28 eb                                        	movaps xmm5,xmm3
  35aa9d:	f3 0f 5c 22                                     	subss  xmm4,DWORD PTR [rdx]
  35aaa1:	f3 0f 10 49 04                                  	movss  xmm1,DWORD PTR [rcx+0x4]
  35aaa6:	f3 0f 5c 4a 04                                  	subss  xmm1,DWORD PTR [rdx+0x4]
  35aaab:	f3 0f 59 ec                                     	mulss  xmm5,xmm4
  35aaaf:	f3 0f 59 d9                                     	mulss  xmm3,xmm1
  35aab3:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  35aab7:	f3 0f 59 d4                                     	mulss  xmm2,xmm4
  35aabb:	f3 0f 5c e8                                     	subss  xmm5,xmm0
  35aabf:	f3 0f 58 da                                     	addss  xmm3,xmm2
  35aac3:	f3 0f 58 2a                                     	addss  xmm5,DWORD PTR [rdx]
  35aac7:	f3 0f 58 5a 04                                  	addss  xmm3,DWORD PTR [rdx+0x4]
  35aacc:	0f 14 eb                                        	unpcklps xmm5,xmm3
  35aacf:	66 48 0f 7e e8                                  	movq   rax,xmm5
  35aad4:	c3                                              	ret
