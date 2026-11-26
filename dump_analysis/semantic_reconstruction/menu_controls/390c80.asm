
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000390c80 <.data+0x390c80>:
  390c80:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  390c85:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  390c8a:	57                                              	push   rdi
  390c8b:	48 83 ec 20                                     	sub    rsp,0x20
  390c8f:	48 8b 35 92 4e 07 00                            	mov    rsi,QWORD PTR [rip+0x74e92]        # 0x405b28
  390c96:	66 ff 8e b0 5b 00 00                            	dec    WORD PTR [rsi+0x5bb0]
  390c9d:	48 8d 9e 90 48 00 00                            	lea    rbx,[rsi+0x4890]
  390ca4:	8b be 88 47 00 00                               	mov    edi,DWORD PTR [rsi+0x4788]
  390caa:	48 8b cb                                        	mov    rcx,rbx
  390cad:	e8 ee e1 00 00                                  	call   0x39eea0
  390cb2:	48 8b cb                                        	mov    rcx,rbx
  390cb5:	e8 4a d6 00 00                                  	call   0x39e304
  390cba:	8b 08                                           	mov    ecx,DWORD PTR [rax]
  390cbc:	89 8e 88 47 00 00                               	mov    DWORD PTR [rsi+0x4788],ecx
  390cc2:	0f ba e7 02                                     	bt     edi,0x2
  390cc6:	73 11                                           	jae    0x390cd9
  390cc8:	f6 c1 04                                        	test   cl,0x4
  390ccb:	75 0c                                           	jne    0x390cd9
  390ccd:	8b 86 ac 5b 00 00                               	mov    eax,DWORD PTR [rsi+0x5bac]
  390cd3:	89 86 d0 37 00 00                               	mov    DWORD PTR [rsi+0x37d0],eax
  390cd9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  390cde:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  390ce3:	48 83 c4 20                                     	add    rsp,0x20
  390ce7:	5f                                              	pop    rdi
  390ce8:	c3                                              	ret
