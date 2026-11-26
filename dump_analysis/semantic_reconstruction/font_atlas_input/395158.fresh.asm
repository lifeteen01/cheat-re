
dump_analysis/semantic_reconstruction/font_atlas_input/395158.bin:     file format binary


Disassembly of section .data:

0000000000395158 <.data>:
  395158:	48 8b 05 c9 09 07 00                            	mov    rax,QWORD PTR [rip+0x709c9]        # 0x405b28
  39515f:	48 85 c0                                        	test   rax,rax
  395162:	74 06                                           	je     0x39516a
  395164:	ff 80 f4 00 00 00                               	inc    DWORD PTR [rax+0xf4]
  39516a:	48 8b 05 a7 a8 ee ff                            	mov    rax,QWORD PTR [rip+0xffffffffffeea8a7]        # 0x27fa18
  395171:	48 8b 15 f0 09 07 00                            	mov    rdx,QWORD PTR [rip+0x709f0]        # 0x405b68
  395178:	48 ff e0                                        	rex.W jmp rax
  39517b:	cc                                              	int3
  39517c:	48 85 c9                                        	test   rcx,rcx
  39517f:	74 12                                           	je     0x395193
  395181:	48 8b 05 a0 09 07 00                            	mov    rax,QWORD PTR [rip+0x709a0]        # 0x405b28
  395188:	48 85 c0                                        	test   rax,rax
  39518b:	74 06                                           	je     0x395193
  39518d:	ff 88 f4 00 00 00                               	dec    DWORD PTR [rax+0xf4]
  395193:	48 8b 15 ce 09 07 00                            	mov    rdx,QWORD PTR [rip+0x709ce]        # 0x405b68
  39519a:	48                                              	rex.W
  39519b:	ff                                              	.byte 0xff
