
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000390720 <.data+0x390720>:
  390720:	40 53                                           	rex push rbx
  390722:	48 83 ec 30                                     	sub    rsp,0x30
  390726:	f3 0f 10 05 b2 cf ef ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffefcfb2]        # 0x28d6e0
  39072e:	8b c2                                           	mov    eax,edx
  390730:	c1 e8 18                                        	shr    eax,0x18
  390733:	0f 57 e4                                        	xorps  xmm4,xmm4
  390736:	0f 57 db                                        	xorps  xmm3,xmm3
  390739:	0f 57 d2                                        	xorps  xmm2,xmm2
  39073c:	0f 57 c9                                        	xorps  xmm1,xmm1
  39073f:	48 8b d9                                        	mov    rbx,rcx
  390742:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  390747:	8b c2                                           	mov    eax,edx
  390749:	c1 e8 10                                        	shr    eax,0x10
  39074c:	0f b6 c0                                        	movzx  eax,al
  39074f:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  390754:	8b c2                                           	mov    eax,edx
  390756:	c1 e8 08                                        	shr    eax,0x8
  390759:	0f b6 c0                                        	movzx  eax,al
  39075c:	f3 0f 59 e0                                     	mulss  xmm4,xmm0
  390760:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  390765:	0f b6 c2                                        	movzx  eax,dl
  390768:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  39076d:	f3 0f 59 d8                                     	mulss  xmm3,xmm0
  390771:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  390775:	f3 0f 59 d0                                     	mulss  xmm2,xmm0
  390779:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  39077f:	e8 cc bb f3 ff                                  	call   0x2cc350
  390784:	48 8b c3                                        	mov    rax,rbx
  390787:	48 83 c4 30                                     	add    rsp,0x30
  39078b:	5b                                              	pop    rbx
  39078c:	c3                                              	ret
