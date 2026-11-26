
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039eee8 <.data+0x39eee8>:
  39eee8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39eeed:	57                                              	push   rdi
  39eeee:	48 83 ec 20                                     	sub    rsp,0x20
  39eef2:	48 8b fa                                        	mov    rdi,rdx
  39eef5:	48 8b d9                                        	mov    rbx,rcx
  39eef8:	8b 11                                           	mov    edx,DWORD PTR [rcx]
  39eefa:	3b 51 04                                        	cmp    edx,DWORD PTR [rcx+0x4]
  39eefd:	75 11                                           	jne    0x39ef10
  39eeff:	ff c2                                           	inc    edx
  39ef01:	e8 f6 3f fc ff                                  	call   0x362efc
  39ef06:	8b d0                                           	mov    edx,eax
  39ef08:	48 8b cb                                        	mov    rcx,rbx
  39ef0b:	e8 7c 5f fc ff                                  	call   0x364e8c
  39ef10:	48 63 13                                        	movsxd rdx,DWORD PTR [rbx]
  39ef13:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  39ef17:	8b 07                                           	mov    eax,DWORD PTR [rdi]
  39ef19:	89 04 91                                        	mov    DWORD PTR [rcx+rdx*4],eax
  39ef1c:	ff 03                                           	inc    DWORD PTR [rbx]
  39ef1e:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  39ef23:	48 83 c4 20                                     	add    rsp,0x20
  39ef27:	5f                                              	pop    rdi
  39ef28:	c3                                              	ret
