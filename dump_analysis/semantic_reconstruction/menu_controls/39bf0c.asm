
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039bf0c <.data+0x39bf0c>:
  39bf0c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39bf11:	57                                              	push   rdi
  39bf12:	48 83 ec 20                                     	sub    rsp,0x20
  39bf16:	8b da                                           	mov    ebx,edx
  39bf18:	8b f9                                           	mov    edi,ecx
  39bf1a:	e8 dd 86 ff ff                                  	call   0x3945fc
  39bf1f:	84 c0                                           	test   al,al
  39bf21:	74 4d                                           	je     0x39bf70
  39bf23:	48 8b 0d fe 9b 06 00                            	mov    rcx,QWORD PTR [rip+0x69bfe]        # 0x405b28
  39bf2a:	80 b9 7c 47 00 00 00                            	cmp    BYTE PTR [rcx+0x477c],0x0
  39bf31:	74 17                                           	je     0x39bf4a
  39bf33:	3b 99 68 3f 00 00                               	cmp    ebx,DWORD PTR [rcx+0x3f68]
  39bf39:	74 0f                                           	je     0x39bf4a
  39bf3b:	85 db                                           	test   ebx,ebx
  39bf3d:	74 0b                                           	je     0x39bf4a
  39bf3f:	8d 87 00 fe ff ff                               	lea    eax,[rdi-0x200]
  39bf45:	83 f8 68                                        	cmp    eax,0x68
  39bf48:	76 22                                           	jbe    0x39bf6c
  39bf4a:	8b d7                                           	mov    edx,edi
  39bf4c:	e8 47 68 ff ff                                  	call   0x392798
  39bf51:	85 db                                           	test   ebx,ebx
  39bf53:	75 08                                           	jne    0x39bf5d
  39bf55:	38 58 08                                        	cmp    BYTE PTR [rax+0x8],bl
  39bf58:	0f 94 c0                                        	sete   al
  39bf5b:	eb 15                                           	jmp    0x39bf72
  39bf5d:	39 18                                           	cmp    DWORD PTR [rax],ebx
  39bf5f:	74 0f                                           	je     0x39bf70
  39bf61:	80 78 08 00                                     	cmp    BYTE PTR [rax+0x8],0x0
  39bf65:	75 05                                           	jne    0x39bf6c
  39bf67:	83 38 ff                                        	cmp    DWORD PTR [rax],0xffffffff
  39bf6a:	eb ec                                           	jmp    0x39bf58
  39bf6c:	32 c0                                           	xor    al,al
  39bf6e:	eb 02                                           	jmp    0x39bf72
  39bf70:	b0 01                                           	mov    al,0x1
  39bf72:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39bf77:	48 83 c4 20                                     	add    rsp,0x20
  39bf7b:	5f                                              	pop    rdi
  39bf7c:	c3                                              	ret
