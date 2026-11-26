
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f640 <.data+0x39f640>:
  39f640:	48 63 c2                                        	movsxd rax,edx
  39f643:	48 8d 14 40                                     	lea    rdx,[rax+rax*2]
  39f647:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f64b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f64f:	c3                                              	ret
  39f650:	8b 05 32 ac f0 ff                               	mov    eax,DWORD PTR [rip+0xfffffffffff0ac32]        # 0x2aa288
  39f656:	89 02                                           	mov    DWORD PTR [rdx],eax
  39f658:	8a 05 2e ac f0 ff                               	mov    al,BYTE PTR [rip+0xfffffffffff0ac2e]        # 0x2aa28c
  39f65e:	88 42 04                                        	mov    BYTE PTR [rdx+0x4],al
  39f661:	48 8b c2                                        	mov    rax,rdx
  39f664:	c3                                              	ret
  39f665:	cc                                              	int3
  39f666:	cc                                              	int3
  39f667:	cc                                              	int3
  39f668:	8b 05 22 ac f0 ff                               	mov    eax,DWORD PTR [rip+0xfffffffffff0ac22]        # 0x2aa290
  39f66e:	89 02                                           	mov    DWORD PTR [rdx],eax
  39f670:	8a 05 1e ac f0 ff                               	mov    al,BYTE PTR [rip+0xfffffffffff0ac1e]        # 0x2aa294
  39f676:	88 42 04                                        	mov    BYTE PTR [rdx+0x4],al
  39f679:	48 8b c2                                        	mov    rax,rdx
  39f67c:	c3                                              	ret
  39f67d:	cc                                              	int3
  39f67e:	cc                                              	int3
  39f67f:	cc                                              	int3
