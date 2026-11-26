
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000392d54 <.data+0x392d54>:
  392d54:	4c 8b 0d cd 2d 07 00                            	mov    r9,QWORD PTR [rip+0x72dcd]        # 0x405b28
  392d5b:	83 e1 0e                                        	and    ecx,0xe
  392d5e:	83 f9 02                                        	cmp    ecx,0x2
  392d61:	74 4e                                           	je     0x392db1
  392d63:	83 f9 04                                        	cmp    ecx,0x4
  392d66:	74 27                                           	je     0x392d8f
  392d68:	83 f9 08                                        	cmp    ecx,0x8
  392d6b:	75 44                                           	jne    0x392db1
  392d6d:	f3 41 0f 10 41 3c                               	movss  xmm0,DWORD PTR [r9+0x3c]
  392d73:	f3 0f 59 05 11 59 f1 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff15911]        # 0x2a868c
  392d7b:	f3 0f 11 02                                     	movss  DWORD PTR [rdx],xmm0
  392d7f:	f3 41 0f 10 49 40                               	movss  xmm1,DWORD PTR [r9+0x40]
  392d85:	f3 0f 59 0d 3b b4 ef ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffefb43b]        # 0x28e1c8
  392d8d:	eb 2e                                           	jmp    0x392dbd
  392d8f:	f3 41 0f 10 41 3c                               	movss  xmm0,DWORD PTR [r9+0x3c]
  392d95:	f3 0f 59 05 ef 58 f1 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff158ef]        # 0x2a868c
  392d9d:	f3 0f 11 02                                     	movss  DWORD PTR [rdx],xmm0
  392da1:	f3 41 0f 10 49 40                               	movss  xmm1,DWORD PTR [r9+0x40]
  392da7:	f3 0f 59 0d 25 03 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff00325]        # 0x2930d4
  392daf:	eb 0c                                           	jmp    0x392dbd
  392db1:	41 8b 41 3c                                     	mov    eax,DWORD PTR [r9+0x3c]
  392db5:	89 02                                           	mov    DWORD PTR [rdx],eax
  392db7:	f3 41 0f 10 49 40                               	movss  xmm1,DWORD PTR [r9+0x40]
  392dbd:	f3 41 0f 11 08                                  	movss  DWORD PTR [r8],xmm1
  392dc2:	c3                                              	ret
