
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000362200 <.data+0x362200>:
  362200:	40 53                                           	rex push rbx
  362202:	48 83 ec 30                                     	sub    rsp,0x30
  362206:	f3 41 0f 10 40 0c                               	movss  xmm0,DWORD PTR [r8+0xc]
  36220c:	0f 28 e3                                        	movaps xmm4,xmm3
  36220f:	f3 0f 5c 42 0c                                  	subss  xmm0,DWORD PTR [rdx+0xc]
  362214:	f3 41 0f 10 58 08                               	movss  xmm3,DWORD PTR [r8+0x8]
  36221a:	48 8b d9                                        	mov    rbx,rcx
  36221d:	f3 0f 5c 5a 08                                  	subss  xmm3,DWORD PTR [rdx+0x8]
  362222:	f3 41 0f 10 50 04                               	movss  xmm2,DWORD PTR [r8+0x4]
  362228:	f3 0f 5c 52 04                                  	subss  xmm2,DWORD PTR [rdx+0x4]
  36222d:	f3 41 0f 10 08                                  	movss  xmm1,DWORD PTR [r8]
  362232:	f3 0f 5c 0a                                     	subss  xmm1,DWORD PTR [rdx]
  362236:	f3 0f 59 c4                                     	mulss  xmm0,xmm4
  36223a:	f3 0f 59 dc                                     	mulss  xmm3,xmm4
  36223e:	f3 0f 58 42 0c                                  	addss  xmm0,DWORD PTR [rdx+0xc]
  362243:	f3 0f 59 d4                                     	mulss  xmm2,xmm4
  362247:	f3 0f 58 5a 08                                  	addss  xmm3,DWORD PTR [rdx+0x8]
  36224c:	f3 0f 59 cc                                     	mulss  xmm1,xmm4
  362250:	f3 0f 58 52 04                                  	addss  xmm2,DWORD PTR [rdx+0x4]
  362255:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  36225b:	f3 0f 58 0a                                     	addss  xmm1,DWORD PTR [rdx]
  36225f:	e8 e8 25 f7 ff                                  	call   0x2d484c
  362264:	48 8b c3                                        	mov    rax,rbx
  362267:	48 83 c4 30                                     	add    rsp,0x30
  36226b:	5b                                              	pop    rbx
  36226c:	c3                                              	ret
