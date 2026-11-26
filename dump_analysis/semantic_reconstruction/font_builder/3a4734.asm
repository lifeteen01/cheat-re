
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4734 <.data+0x3a4734>:
  3a4734:	b8 08 00 00 00                                  	mov    eax,0x8
  3a4739:	c3                                              	ret
  3a473a:	cc                                              	int3
  3a473b:	cc                                              	int3
  3a473c:	48 83 c1 68                                     	add    rcx,0x68
  3a4740:	e9 57 74 fe ff                                  	jmp    0x38bb9c
  3a4745:	cc                                              	int3
  3a4746:	cc                                              	int3
  3a4747:	cc                                              	int3
  3a4748:	48 8d 05 b9 5b f0 ff                            	lea    rax,[rip+0xfffffffffff05bb9]        # 0x2aa308
  3a474f:	c3                                              	ret
  3a4750:	48 83 ec 28                                     	sub    rsp,0x28
  3a4754:	66 83 3d e4 19 06 00 00                         	cmp    WORD PTR [rip+0x619e4],0x0        # 0x406140
  3a475c:	75 4a                                           	jne    0x3a47a8
  3a475e:	0f b7 05 c3 b2 ed ff                            	movzx  eax,WORD PTR [rip+0xffffffffffedb2c3]        # 0x27fa28
  3a4765:	4c 8d 0d ec 19 06 00                            	lea    r9,[rip+0x619ec]        # 0x406158
  3a476c:	0f 10 05 b7 b2 ed ff                            	movups xmm0,XMMWORD PTR [rip+0xffffffffffedb2b7]        # 0x27fa2a
  3a4773:	48 8d 15 b6 5b f0 ff                            	lea    rdx,[rip+0xfffffffffff05bb6]        # 0x2aa330
  3a477a:	41 b8                                   	mov    r8d,0x9c4
