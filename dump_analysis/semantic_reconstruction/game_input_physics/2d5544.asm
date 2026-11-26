
dump_analysis/semantic_reconstruction/game_input_physics/2d5544.bin:     file format binary


Disassembly of section .data:

00000000002d5544 <.data>:
  2d5544:	41 8b 00                                        	mov    eax,DWORD PTR [r8]
  2d5547:	39 02                                           	cmp    DWORD PTR [rdx],eax
  2d5549:	0f 94 c0                                        	sete   al
  2d554c:	c3                                              	ret
  2d554d:	cc                                              	int3
  2d554e:	cc                                              	int3
  2d554f:	cc                                              	int3
  2d5550:	4c 8d 49 08                                     	lea    r9,[rcx+0x8]
  2d5554:	48 85 d2                                        	test   rdx,rdx
  2d5557:	79 2c                                           	jns    0x2d5585
  2d5559:	4d 8b 11                                        	mov    r10,QWORD PTR [r9]
  2d555c:	48 8b c2                                        	mov    rax,rdx
  2d555f:	48 f7 d8                                        	neg    rax
  2d5562:	4c 3b d0                                        	cmp    r10,rax
  2d5565:	73 1e                                           	jae    0x2d5585
  2d5567:	4d 8d 04 12                                     	lea    r8,[r10+rdx*1]
  2d556b:	48 c7 c0 fc ff ff ff                            	mov    rax,0xfffffffffffffffc
  2d5572:	4d                                              	rex.WRB
  2d5573:	89                                              	.byte 0x89
