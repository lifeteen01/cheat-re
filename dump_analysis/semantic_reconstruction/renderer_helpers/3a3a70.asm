
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a3a70 <.data+0x3a3a70>:
  3a3a70:	48 83 ec 28                                     	sub    rsp,0x28
  3a3a74:	4c 8b c1                                        	mov    r8,rcx
  3a3a77:	48 3b ca                                        	cmp    rcx,rdx
  3a3a7a:	73 14                                           	jae    0x3a3a90
  3a3a7c:	41 8a 08                                        	mov    cl,BYTE PTR [r8]
  3a3a7f:	e8 f8 4e fd ff                                  	call   0x37897c
  3a3a84:	84 c0                                           	test   al,al
  3a3a86:	74 08                                           	je     0x3a3a90
  3a3a88:	49 ff c0                                        	inc    r8
  3a3a8b:	4c 3b c2                                        	cmp    r8,rdx
  3a3a8e:	72 ec                                           	jb     0x3a3a7c
  3a3a90:	41 80 38 0a                                     	cmp    BYTE PTR [r8],0xa
  3a3a94:	49 8d 40 01                                     	lea    rax,[r8+0x1]
  3a3a98:	49 0f 45 c0                                     	cmovne rax,r8
  3a3a9c:	48 83 c4 28                                     	add    rsp,0x28
  3a3aa0:	c3                                              	ret
