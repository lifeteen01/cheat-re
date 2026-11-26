
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039b6d8 <.data+0x39b6d8>:
  39b6d8:	48 8b 05 49 a4 06 00                            	mov    rax,QWORD PTR [rip+0x6a449]        # 0x405b28
  39b6df:	48 39 88 e8 48 00 00                            	cmp    QWORD PTR [rax+0x48e8],rcx
  39b6e6:	74 07                                           	je     0x39b6ef
  39b6e8:	48 89 88 e8 48 00 00                            	mov    QWORD PTR [rax+0x48e8],rcx
  39b6ef:	33 c9                                           	xor    ecx,ecx
  39b6f1:	66 89 88 40 49 00 00                            	mov    WORD PTR [rax+0x4940],cx
  39b6f8:	88 88 29 49 00 00                               	mov    BYTE PTR [rax+0x4929],cl
  39b6fe:	e9 69 b0 ff ff                                  	jmp    0x39676c
  39b703:	cc                                              	int3
