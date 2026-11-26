
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9fdc <.data+0x3a9fdc>:
  3a9fdc:	48 83 ec 28                                     	sub    rsp,0x28
  3a9fe0:	44 8b ca                                        	mov    r9d,edx
  3a9fe3:	4c 8b c1                                        	mov    r8,rcx
  3a9fe6:	e8 ed 21 00 00                                  	call   0x3ac1d8
  3a9feb:	85 c0                                           	test   eax,eax
  3a9fed:	74 07                                           	je     0x3a9ff6
  3a9fef:	41 f7 d9                                        	neg    r9d
  3a9ff2:	1b c0                                           	sbb    eax,eax
  3a9ff4:	eb 63                                           	jmp    0x3aa059
  3a9ff6:	80 39 74                                        	cmp    BYTE PTR [rcx],0x74
  3a9ff9:	75 5b                                           	jne    0x3aa056
  3a9ffb:	80 79 01 74                                     	cmp    BYTE PTR [rcx+0x1],0x74
  3a9fff:	75 55                                           	jne    0x3aa056
  3aa001:	80 79 02 63                                     	cmp    BYTE PTR [rcx+0x2],0x63
  3aa005:	75 4f                                           	jne    0x3aa056
  3aa007:	80 79 03 66                                     	cmp    BYTE PTR [rcx+0x3],0x66
  3aa00b:	75 49                                           	jne    0x3aa056
  3aa00d:	48 83 c1 04                                     	add    rcx,0x4
  3aa011:	e8 5e 3d 00 00                                  	call   0x3add74
  3aa016:	3d 00 00 01 00                                  	cmp    eax,0x10000
  3aa01b:	74 10                                           	je     0x3aa02d
  3aa01d:	49 8d 48 04                                     	lea    rcx,[r8+0x4]
  3aa021:	e8 4e 3d 00 00                                  	call   0x3add74
  3aa026:	3d 00 00 02 00                                  	cmp    eax,0x20000
  3aa02b:	75 29                                           	jne    0x3aa056
  3aa02d:	49 8d 48 08                                     	lea    rcx,[r8+0x8]
  3aa031:	e8 3e 3d 00 00                                  	call   0x3add74
  3aa036:	44 3b c8                                        	cmp    r9d,eax
  3aa039:	7d 1b                                           	jge    0x3aa056
  3aa03b:	42 8d 04 8d 00 00 00 00                         	lea    eax,[r9*4+0x0]
  3aa043:	48 63 c8                                        	movsxd rcx,eax
  3aa046:	48 83 c1 0c                                     	add    rcx,0xc
  3aa04a:	49 03 c8                                        	add    rcx,r8
  3aa04d:	48 83 c4 28                                     	add    rsp,0x28
  3aa051:	e9 1e 3d 00 00                                  	jmp    0x3add74
  3aa056:	83 c8 ff                                        	or     eax,0xffffffff
  3aa059:	48 83 c4 28                                     	add    rsp,0x28
  3aa05d:	c3                                              	ret
