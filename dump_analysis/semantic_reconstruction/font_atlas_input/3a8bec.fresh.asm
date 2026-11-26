
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a8bec <.data+0x3a8bec>:
  3a8bec:	45 33 db                                        	xor    r11d,r11d
  3a8bef:	45 85 c0                                        	test   r8d,r8d
  3a8bf2:	7e 24                                           	jle    0x3a8c18
  3a8bf4:	0f b7 c1                                        	movzx  eax,cx
  3a8bf7:	66 42 03 04 5a                                  	add    ax,WORD PTR [rdx+r11*2]
  3a8bfc:	66 41 89 41 02                                  	mov    WORD PTR [r9+0x2],ax
  3a8c01:	66 41 89 01                                     	mov    WORD PTR [r9],ax
  3a8c05:	49 83 c1 04                                     	add    r9,0x4
  3a8c09:	42 0f bf 04 5a                                  	movsx  eax,WORD PTR [rdx+r11*2]
  3a8c0e:	41 ff c3                                        	inc    r11d
  3a8c11:	03 c8                                           	add    ecx,eax
  3a8c13:	45 3b d8                                        	cmp    r11d,r8d
  3a8c16:	7c dc                                           	jl     0x3a8bf4
  3a8c18:	33 c0                                           	xor    eax,eax
  3a8c1a:	66 41 89 01                                     	mov    WORD PTR [r9],ax
  3a8c1e:	c3                                              	ret
  3a8c1f:	cc                                              	int3
