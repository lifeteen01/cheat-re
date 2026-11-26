
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003add54 <.data+0x3add54>:
  3add54:	0f b7 44 24 28                                  	movzx  eax,WORD PTR [rsp+0x28]
  3add59:	66 89 41 04                                     	mov    WORD PTR [rcx+0x4],ax
  3add5d:	0f b7 44 24 30                                  	movzx  eax,WORD PTR [rsp+0x30]
  3add62:	66 89 41 06                                     	mov    WORD PTR [rcx+0x6],ax
  3add66:	88 51 0c                                        	mov    BYTE PTR [rcx+0xc],dl
  3add69:	66 44 89 01                                     	mov    WORD PTR [rcx],r8w
  3add6d:	66 44 89 49 02                                  	mov    WORD PTR [rcx+0x2],r9w
  3add72:	c3                                              	ret
  3add73:	cc                                              	int3
