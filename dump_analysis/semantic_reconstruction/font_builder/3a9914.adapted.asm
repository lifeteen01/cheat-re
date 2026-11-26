
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9914 <.data+0x3a9914>:
  3a9914:	69 01 10 01 00 00                               	imul   eax,DWORD PTR [rcx],0x110
  3a991a:	c3                                              	ret
  3a991b:	cc                                              	int3
  3a991c:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3a991e:	8d 04 40                                        	lea    eax,[rax+rax*2]
  3a9921:	c1 e0 03                                        	shl    eax,0x3
  3a9924:	c3                                              	ret
  3a9925:	cc                                              	int3
  3a9926:	cc                                              	int3
  3a9927:	cc                                              	int3
  3a9928:	6b 01 1c                                        	imul   eax,DWORD PTR [rcx],0x1c
  3a992b:	c3                                              	ret
  3a992c:	4c 8b dc                                        	mov    r11,rsp
  3a992f:	45 89 4b 20                                     	mov    DWORD PTR [r11+0x20],r9d
  3a9933:	49 89 4b 08                                     	mov    QWORD PTR [r11+0x8],rcx
  3a9937:	53                                              	push   rbx
  3a9938:	55                                              	push   rbp
  3a9939:	56                                              	push   rsi
  3a993a:	57                                              	push   rdi
  3a993b:	41 54                                           	push   r12
  3a993d:	41 55                                           	push   r13
  3a993f:	41 56                                           	push   r14
  3a9941:	41 57                                           	push   r15
  3a9943:	48 83 ec 48                                     	sub    rsp,0x48
  3a9947:	44 8b 52 08                                     	mov    r10d,DWORD PTR [rdx+0x8]
  3a994b:	45 8d 68 ff                                     	lea    r13d,[r8-0x1]
  3a994f:	45 03 ea                                        	add    r13d,r10d
  3a9952:	4c 8b                                         	mov    r12,rdx
