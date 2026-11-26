
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395130 <.data+0x395130>:
  395130:	48 8b 05 f1 09 07 00                            	mov    rax,QWORD PTR [rip+0x709f1]        # 0x405b28
  395137:	8b 90 68 3f 00 00                               	mov    edx,DWORD PTR [rax+0x3f68]
  39513d:	3b d1                                           	cmp    edx,ecx
  39513f:	74 04                                           	je     0x395145
  395141:	85 d2                                           	test   edx,edx
  395143:	75 09                                           	jne    0x39514e
  395145:	66 c7 80 78 3f 00 00 01 01                      	mov    WORD PTR [rax+0x3f78],0x101
  39514e:	83 88 ac 47 00 00 04                            	or     DWORD PTR [rax+0x47ac],0x4
  395155:	c3                                              	ret
