
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003788ec <.data+0x3788ec>:
  3788ec:	e9 87 0c 00 00                                  	jmp    0x379578
  3788f1:	cc                                              	int3
  3788f2:	cc                                              	int3
  3788f3:	cc                                              	int3
  3788f4:	40 53                                           	rex push rbx
  3788f6:	48 83 ec 20                                     	sub    rsp,0x20
  3788fa:	f3 0f 10 51 0c                                  	movss  xmm2,DWORD PTR [rcx+0xc]
  3788ff:	48 8b da                                        	mov    rbx,rdx
  378902:	f3 0f 10 49 08                                  	movss  xmm1,DWORD PTR [rcx+0x8]
  378907:	f3 0f 58 51 04                                  	addss  xmm2,DWORD PTR [rcx+0x4]
  37890c:	f3 0f 58 09                                     	addss  xmm1,DWORD PTR [rcx]
  378910:	f3 0f 10 05 38 49 f1 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff14938]        # 0x28d250
  378918:	48 8b ca                                        	mov    rcx,rdx
  37891b:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  37891f:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  378923:	e8 18 3a f5 ff                                  	call   0x2cc340
  378928:	48 8b c3                                        	mov    rax,rbx
  37892b:	48                                        	add    rsp,0x20
