
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038c6f0 <.data+0x38c6f0>:
  38c6f0:	8b 05 5a d9 f1 ff                               	mov    eax,DWORD PTR [rip+0xfffffffffff1d95a]        # 0x2aa050
  38c6f6:	f2 0f 10 05 4a d9 f1 ff                         	movsd  xmm0,QWORD PTR [rip+0xfffffffffff1d94a]        # 0x2aa048
  38c6fe:	f2 0f 11 02                                     	movsd  QWORD PTR [rdx],xmm0
  38c702:	89 42 08                                        	mov    DWORD PTR [rdx+0x8],eax
  38c705:	8a 05 49 d9 f1 ff                               	mov    al,BYTE PTR [rip+0xfffffffffff1d949]        # 0x2aa054
  38c70b:	88 42 0c                                        	mov    BYTE PTR [rdx+0xc],al
  38c70e:	48 8b c2                                        	mov    rax,rdx
  38c711:	c3                                              	ret
