
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003acb10 <.data+0x3acb10>:
  3acb10:	41 83 e9 01          	sub    r9d,0x1
  3acb14:	0f 84 37 01 00 00    	je     0x3acc51
  3acb1a:	41 83 e9 01          	sub    r9d,0x1
  3acb1e:	0f 84 d1 00 00 00    	je     0x3acbf5
  3acb24:	41 83 f9 01          	cmp    r9d,0x1
  3acb28:	0f 85 28 07 00 00    	jne    0x3ad256
  3acb2e:	83 fe 0b             	cmp    esi,0xb
  3acb31:	0f 8c 1f 07 00 00    	jl     0x3ad256
  3acb37:	f3 0f 10 7d 98       	movss  xmm7,DWORD PTR [rbp-0x68]
  3acb3c:	45 0f 28 c6          	movaps xmm8,xmm14
  3acb40:	f3 45 0f 58 c3       	addss  xmm8,xmm11
  3acb45:	45 0f 28 cd          	movaps xmm9,xmm13
  3acb49:	f3 45 0f 58 cc       	addss  xmm9,xmm12
  3acb4e:	f3 45 0f 58 c7       	addss  xmm8,xmm15
  3acb53:	f3 44 0f 58 4d 84    	addss  xmm9,DWORD PTR [rbp-0x7c]
  3acb59:	f3 44 0f 58 45 88    	addss  xmm8,DWORD PTR [rbp-0x78]
  3acb5f:	f3 44 0f 58 4d 8c    	addss  xmm9,DWORD PTR [rbp-0x74]
  3acb65:	f3 44 0f 58 45 90    	addss  xmm8,DWORD PTR [rbp-0x70]
  3acb6b:	f3 44 0f 58 4d 94    	addss  xmm9,DWORD PTR [rbp-0x6c]
  3acb71:	41 0f 28 c0          	movaps xmm0,xmm8
  3acb75:	e8 76 73 f3 ff       	call   0x2e3ef0
  3acb7a:	0f 28 f0             	movaps xmm6,xmm0
  3acb7d:	41 0f 28 c1          	movaps xmm0,xmm9
  3acb81:	e8 6a 73 f3 ff       	call   0x2e3ef0
  3acb86:	0f 2f f0             	comiss xmm6,xmm0
  3acb89:	76 17                	jbe    0x3acba2
  3acb8b:	44 0f 28 c7          	movaps xmm8,xmm7
  3acb8f:	41 0f 28 f9          	movaps xmm7,xmm9
  3acb93:	f3 44 0f 10 0d 04 67 	movss  xmm9,DWORD PTR [rip+0xffffffffffee6704]        # 0x2932a0
  3acb9a:	ee ff 
  3acb9c:	41 0f 57 f9          	xorps  xmm7,xmm9
  3acba0:	eb 0d                	jmp    0x3acbaf
  3acba2:	f3 44 0f 10 0d f5 66 	movss  xmm9,DWORD PTR [rip+0xffffffffffee66f5]        # 0x2932a0
  3acba9:	ee ff 
  3acbab:	45 0f 57 c1          	xorps  xmm8,xmm9
  3acbaf:	f3 0f 10 45 84       	movss  xmm0,DWORD PTR [rbp-0x7c]
  3acbb4:	41 0f 28 de          	movaps xmm3,xmm14
  3acbb8:	f3 0f 11 44 24 30    	movss  DWORD PTR [rsp+0x30],xmm0
  3acbbe:	41 0f 28 d5          	movaps xmm2,xmm13
  3acbc2:	f3 44 0f 11 7c 24 28 	movss  DWORD PTR [rsp+0x28],xmm15
  3acbc9:	41 0f 28 cb          	movaps xmm1,xmm11
  3acbcd:	49 8b cc             	mov    rcx,r12
  3acbd0:	f3 44 0f 11 64 24 20 	movss  DWORD PTR [rsp+0x20],xmm12
  3acbd7:	e8 4c e8 ff ff       	call   0x3ab428
  3acbdc:	f3 0f 10 4d 88       	movss  xmm1,DWORD PTR [rbp-0x78]
  3acbe1:	f3 0f 10 55 8c       	movss  xmm2,DWORD PTR [rbp-0x74]
  3acbe6:	f3 0f 10 5d 90       	movss  xmm3,DWORD PTR [rbp-0x70]
  3acbeb:	f3 0f 10 75 94       	movss  xmm6,DWORD PTR [rbp-0x6c]
  3acbf0:	e9 00 01 00 00       	jmp    0x3accf5
  3acbf5:	83 fe 09             	cmp    esi,0x9
  3acbf8:	0f 8c 58 06 00 00    	jl     0x3ad256
  3acbfe:	f3 0f 10 75 8c       	movss  xmm6,DWORD PTR [rbp-0x74]
  3acc03:	41 0f 28 fd          	movaps xmm7,xmm13
  3acc07:	f3 44 0f 11 54 24 30 	movss  DWORD PTR [rsp+0x30],xmm10
  3acc0e:	0f 28              	movaps xmm2,xmm7
