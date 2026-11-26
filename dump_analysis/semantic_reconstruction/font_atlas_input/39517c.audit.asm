
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_atlas_input/39517c.audit.bin:     file format binary


Disassembly of section .data:

000000000039517c <.data>:
  39517c:	48 85 c9                                        	test   rcx,rcx
  39517f:	74 12                                           	je     0x395193
  395181:	48 8b 05 a0 09 07 00                            	mov    rax,QWORD PTR [rip+0x709a0]        # 0x405b28
  395188:	48 85 c0                                        	test   rax,rax
  39518b:	74 06                                           	je     0x395193
  39518d:	ff 88 f4 00 00 00                               	dec    DWORD PTR [rax+0xf4]
  395193:	48 8b 15 ce 09 07 00                            	mov    rdx,QWORD PTR [rip+0x709ce]        # 0x405b68
  39519a:	48 ff 25 7f a8 ee ff                            	rex.W jmp QWORD PTR [rip+0xffffffffffeea87f]        # 0x27fa20
