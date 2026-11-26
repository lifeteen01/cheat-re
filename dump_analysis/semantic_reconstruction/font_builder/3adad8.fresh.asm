
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003adad8 <.data+0x3adad8>:
  3adad8:	33 c0                                           	xor    eax,eax
  3adada:	3b 51 1c                                        	cmp    edx,DWORD PTR [rcx+0x1c]
  3adadd:	7f 05                                           	jg     0x3adae4
  3adadf:	39 41 04                                        	cmp    DWORD PTR [rcx+0x4],eax
  3adae2:	75 03                                           	jne    0x3adae7
  3adae4:	89 51 1c                                        	mov    DWORD PTR [rcx+0x1c],edx
  3adae7:	44 3b 41 24                                     	cmp    r8d,DWORD PTR [rcx+0x24]
  3adaeb:	7f 05                                           	jg     0x3adaf2
  3adaed:	39 41 04                                        	cmp    DWORD PTR [rcx+0x4],eax
  3adaf0:	75 04                                           	jne    0x3adaf6
  3adaf2:	44 89 41 24                                     	mov    DWORD PTR [rcx+0x24],r8d
  3adaf6:	3b 51 18                                        	cmp    edx,DWORD PTR [rcx+0x18]
  3adaf9:	7c 05                                           	jl     0x3adb00
  3adafb:	39 41 04                                        	cmp    DWORD PTR [rcx+0x4],eax
  3adafe:	75 03                                           	jne    0x3adb03
  3adb00:	89 51 18                                        	mov    DWORD PTR [rcx+0x18],edx
  3adb03:	44 3b 41 20                                     	cmp    r8d,DWORD PTR [rcx+0x20]
  3adb07:	7c 05                                           	jl     0x3adb0e
  3adb09:	39 41 04                                        	cmp    DWORD PTR [rcx+0x4],eax
  3adb0c:	75 04                                           	jne    0x3adb12
  3adb0e:	44 89 41 20                                     	mov    DWORD PTR [rcx+0x20],r8d
  3adb12:	c7 41 04 01 00 00 00                            	mov    DWORD PTR [rcx+0x4],0x1
  3adb19:	c3                                              	ret
  3adb1a:	cc                                              	int3
  3adb1b:	cc                                              	int3
