
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/2d4870.tail.bin:     file format binary


Disassembly of section .data:

00000000002d487b <.data>:
  2d487b:	cc                                              	int3
  2d487c:	40 53                                           	rex push rbx
  2d487e:	48 83 ec 20                                     	sub    rsp,0x20
  2d4882:	f2 0f 10 02                                     	movsd  xmm0,QWORD PTR [rdx]
  2d4886:	48 8b d9                                        	mov    rbx,rcx
  2d4889:	f2                                              	repnz
  2d488a:	0f                                              	.byte 0xf
