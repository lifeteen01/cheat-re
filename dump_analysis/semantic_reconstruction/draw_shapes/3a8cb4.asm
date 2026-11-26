
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8cb4 <.data+0x3a8cb4>:
  3a8cb4:	48 83 ec 28                                     	sub    rsp,0x28
  3a8cb8:	48 8b 51 38                                     	mov    rdx,QWORD PTR [rcx+0x38]
  3a8cbc:	0f 28 c1                                        	movaps xmm0,xmm1
  3a8cbf:	f3 0f 58 05 1d 42 f0 ff                         	addss  xmm0,DWORD PTR [rip+0xfffffffffff0421d]        # 0x2acee4
  3a8cc7:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3a8ccb:	83 f8 40                                        	cmp    eax,0x40
  3a8cce:	7d 0f                                           	jge    0x3a8cdf
  3a8cd0:	48 98                                           	cdqe
  3a8cd2:	0f b6 84 02 c4 01 00 00                         	movzx  eax,BYTE PTR [rdx+rax*1+0x1c4]
  3a8cda:	48 83 c4 28                                     	add    rsp,0x28
  3a8cde:	c3                                              	ret
  3a8cdf:	f3 0f 10 42 18                                  	movss  xmm0,DWORD PTR [rdx+0x18]
  3a8ce4:	e8 e3 d5 fc ff                                  	call   0x3762cc
  3a8ce9:	0f 28 d0                                        	movaps xmm2,xmm0
  3a8cec:	f3 0f 10 05 60 45 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee4560]        # 0x28d254
  3a8cf4:	f3 0f 5e d1                                     	divss  xmm2,xmm1
  3a8cf8:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3a8cfc:	e8 2b f8 01 00                                  	call   0x3c852c
  3a8d01:	f3 0f 10 0d 53 a4 ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeea453]        # 0x29315c
  3a8d09:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a8d0d:	0f 28 c1                                        	movaps xmm0,xmm1
  3a8d10:	e8 03 fc 01 00                                  	call   0x3c8918
  3a8d15:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3a8d19:	41 b8 00 02 00 00                               	mov    r8d,0x200
  3a8d1f:	ff c0                                           	inc    eax
  3a8d21:	99                                              	cdq
  3a8d22:	2b c2                                           	sub    eax,edx
  3a8d24:	ba 04 00 00 00                                  	mov    edx,0x4
  3a8d29:	d1 f8                                           	sar    eax,1
  3a8d2b:	8d 0c 00                                        	lea    ecx,[rax+rax*1]
  3a8d2e:	48 83 c4 28                                     	add    rsp,0x28
  3a8d32:	e9 75 d5 fc ff                                  	jmp    0x3762ac
