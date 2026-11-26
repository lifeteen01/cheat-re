
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000391c50 <.data+0x391c50>:
  391c50:	49 83 c8 ff                                     	or     r8,0xffffffffffffffff
  391c54:	48 85 d2                                        	test   rdx,rdx
  391c57:	4c 0f 45 c2                                     	cmovne r8,rdx
  391c5b:	eb 12                                           	jmp    0x391c6f
  391c5d:	8a 01                                           	mov    al,BYTE PTR [rcx]
  391c5f:	84 c0                                           	test   al,al
  391c61:	74 11                                           	je     0x391c74
  391c63:	3c 23                                           	cmp    al,0x23
  391c65:	75 05                                           	jne    0x391c6c
  391c67:	38 41 01                                        	cmp    BYTE PTR [rcx+0x1],al
  391c6a:	74 08                                           	je     0x391c74
  391c6c:	48 ff c1                                        	inc    rcx
  391c6f:	49 3b c8                                        	cmp    rcx,r8
  391c72:	72 e9                                           	jb     0x391c5d
  391c74:	48 8b c1                                        	mov    rax,rcx
  391c77:	c3                                              	ret
