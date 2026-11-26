
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000398cc8 <.data+0x398cc8>:
  398cc8:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  398ccd:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  398cd2:	57                                              	push   rdi
  398cd3:	48 83 ec 40                                     	sub    rsp,0x40
  398cd7:	0f 29 74 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm6
  398cdc:	8b f1                                           	mov    esi,ecx
  398cde:	0f 28 f1                                        	movaps xmm6,xmm1
  398ce1:	e8 ce 9f ff ff                                  	call   0x392cb4
  398ce6:	83 38 08                                        	cmp    DWORD PTR [rax],0x8
  398ce9:	75 42                                           	jne    0x398d2d
  398ceb:	83 78 04 01                                     	cmp    DWORD PTR [rax+0x4],0x1
  398cef:	75 3c                                           	jne    0x398d2d
  398cf1:	48 8b 3d 30 ce 06 00                            	mov    rdi,QWORD PTR [rip+0x6ce30]        # 0x405b28
  398cf8:	48 8b c8                                        	mov    rcx,rax
  398cfb:	48 8d 97 d0 37 00 00                            	lea    rdx,[rdi+0x37d0]
  398d02:	e8 bd a0 ff ff                                  	call   0x392dc4
  398d07:	8b d6                                           	mov    edx,esi
  398d09:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  398d0e:	48 8b d8                                        	mov    rbx,rax
  398d11:	f3 0f 10 10                                     	movss  xmm2,DWORD PTR [rax]
  398d15:	e8 ba 28 ff ff                                  	call   0x38b5d4
  398d1a:	48 8b d0                                        	mov    rdx,rax
  398d1d:	48 8d 8f 60 48 00 00                            	lea    rcx,[rdi+0x4860]
  398d24:	e8 4f 63 00 00                                  	call   0x39f078
  398d29:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  398d2d:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  398d32:	48 8b 74 24 58                                  	mov    rsi,QWORD PTR [rsp+0x58]
  398d37:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [rsp+0x30]
  398d3c:	48 83 c4 40                                     	add    rsp,0x40
  398d40:	5f                                              	pop    rdi
  398d41:	c3                                              	ret
