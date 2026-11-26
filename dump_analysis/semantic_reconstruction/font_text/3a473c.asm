
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a473c <.data+0x3a473c>:
  3a473c:	48 83 c1 68          	add    rcx,0x68
  3a4740:	e9 57 74 fe ff       	jmp    0x38bb9c
  3a4745:	cc                   	int3
  3a4746:	cc                   	int3
  3a4747:	cc                   	int3
  3a4748:	48 8d 05 b9 5b f0 ff 	lea    rax,[rip+0xfffffffffff05bb9]        # 0x2aa308
  3a474f:	c3                   	ret
  3a4750:	48 83 ec 28          	sub    rsp,0x28
  3a4754:	66 83 3d e4 19 06 00 00 	cmp    WORD PTR [rip+0x619e4],0x0        # 0x406140
