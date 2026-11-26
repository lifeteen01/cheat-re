
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4d50 <.data+0x3a4d50>:
  3a4d50:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a4d55:	44 8b 54 24 38                                  	mov    r10d,DWORD PTR [rsp+0x38]
  3a4d5a:	48 8b d9                                        	mov    rbx,rcx
  3a4d5d:	44 8b 5c 24 28                                  	mov    r11d,DWORD PTR [rsp+0x28]
  3a4d62:	45 0f af ca                                     	imul   r9d,r10d
  3a4d66:	49 63 c1                                        	movsxd rax,r9d
  3a4d69:	48 03 c2                                        	add    rax,rdx
  3a4d6c:	4d 63 c8                                        	movsxd r9,r8d
  3a4d6f:	44 8b 44 24 30                                  	mov    r8d,DWORD PTR [rsp+0x30]
  3a4d74:	4c 03 c8                                        	add    r9,rax
  3a4d77:	45 85 c0                                        	test   r8d,r8d
  3a4d7a:	7e 2c                                           	jle    0x3a4da8
  3a4d7c:	45 2b d3                                        	sub    r10d,r11d
  3a4d7f:	4d 63 d2                                        	movsxd r10,r10d
  3a4d82:	41 8b d3                                        	mov    edx,r11d
  3a4d85:	45 85 db                                        	test   r11d,r11d
  3a4d88:	7e 13                                           	jle    0x3a4d9d
  3a4d8a:	41 0f b6 01                                     	movzx  eax,BYTE PTR [r9]
  3a4d8e:	ff ca                                           	dec    edx
  3a4d90:	8a 0c 03                                        	mov    cl,BYTE PTR [rbx+rax*1]
  3a4d93:	41 88 09                                        	mov    BYTE PTR [r9],cl
  3a4d96:	49 ff c1                                        	inc    r9
  3a4d99:	85 d2                                           	test   edx,edx
  3a4d9b:	7f ed                                           	jg     0x3a4d8a
  3a4d9d:	41 ff c8                                        	dec    r8d
  3a4da0:	4d 03 ca                                        	add    r9,r10
  3a4da3:	45 85 c0                                        	test   r8d,r8d
  3a4da6:	7f da                                           	jg     0x3a4d82
  3a4da8:	48 8b 5c 24 08                                  	mov    rbx,QWORD PTR [rsp+0x8]
  3a4dad:	c3                                              	ret
