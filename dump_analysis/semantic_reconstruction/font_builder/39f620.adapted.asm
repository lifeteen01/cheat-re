
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f620 <.data+0x39f620>:
  39f620:	48 63 c2                                        	movsxd rax,edx
  39f623:	48 69 c0 88 00 00 00                            	imul   rax,rax,0x88
  39f62a:	48 03 41 08                                     	add    rax,QWORD PTR [rcx+0x8]
  39f62e:	c3                                              	ret
  39f62f:	cc                                              	int3
  39f630:	48 63 c2                                        	movsxd rax,edx
  39f633:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  39f637:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f63b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f63f:	c3                                              	ret
  39f640:	48 63 c2                                        	movsxd rax,edx
  39f643:	48 8d 14 40                                     	lea    rdx,[rax+rax*2]
  39f647:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  39f64b:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  39f64f:	c3                                              	ret
  39f650:	8b 05 32 ac f0 ff                               	mov    eax,DWORD PTR [rip+0xfffffffffff0ac32]        # 0x2aa288
  39f656:	89 02                                           	mov    DWORD PTR [rdx],eax
  39f658:	8a 05 2e ac f0 ff                               	mov    al,BYTE PTR [rip+0xfffffffffff0ac2e]        # 0x2aa28c
  39f65e:	88 42                                         	mov    BYTE PTR [rdx+0x4],al
