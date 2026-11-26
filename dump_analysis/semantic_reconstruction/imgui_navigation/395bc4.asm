
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000395bc4 <.data+0x395bc4>:
  395bc4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  395bc9:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  395bce:	57                                              	push   rdi
  395bcf:	48 83 ec 20                                     	sub    rsp,0x20
  395bd3:	48 8b 1d 4e ff 06 00                            	mov    rbx,QWORD PTR [rip+0x6ff4e]        # 0x405b28
  395bda:	8b f1                                           	mov    esi,ecx
  395bdc:	41 0f ba e0 09                                  	bt     r8d,0x9
  395be1:	72 30                                           	jb     0x395c13
  395be3:	48 8b 83 08 3f 00 00                            	mov    rax,QWORD PTR [rbx+0x3f08]
  395bea:	44 8b 80 58 01 00 00                            	mov    r8d,DWORD PTR [rax+0x158]
  395bf1:	44 39 83 20 49 00 00                            	cmp    DWORD PTR [rbx+0x4920],r8d
  395bf8:	0f 85 cf 00 00 00                               	jne    0x395ccd
  395bfe:	f6 c2 01                                        	test   dl,0x1
  395c01:	75 0c                                           	jne    0x395c0f
  395c03:	f6 43 08 01                                     	test   BYTE PTR [rbx+0x8],0x1
  395c07:	75 0a                                           	jne    0x395c13
  395c09:	0f ba e2 0a                                     	bt     edx,0xa
  395c0d:	72 04                                           	jb     0x395c13
  395c0f:	32 c0                                           	xor    al,al
  395c11:	eb 02                                           	jmp    0x395c15
  395c13:	b0 01                                           	mov    al,0x1
  395c15:	8b 8b 80 49 00 00                               	mov    ecx,DWORD PTR [rbx+0x4980]
  395c1b:	48 8d bb 88 49 00 00                            	lea    rdi,[rbx+0x4988]
  395c22:	83 f9 01                                        	cmp    ecx,0x1
  395c25:	75 4c                                           	jne    0x395c73
  395c27:	84 c0                                           	test   al,al
  395c29:	74 34                                           	je     0x395c5f
  395c2b:	83 bb 20 4a 00 00 00                            	cmp    DWORD PTR [rbx+0x4a20],0x0
  395c32:	75 0c                                           	jne    0x395c40
  395c34:	48 8d 8b 18 4a 00 00                            	lea    rcx,[rbx+0x4a18]
  395c3b:	e8 18 f6 ff ff                                  	call   0x395258
  395c40:	8b 83 84 49 00 00                               	mov    eax,DWORD PTR [rbx+0x4984]
  395c46:	85 c0                                           	test   eax,eax
  395c48:	7e 15                                           	jle    0x395c5f
  395c4a:	83 e8 01                                        	sub    eax,0x1
  395c4d:	89 83 84 49 00 00                               	mov    DWORD PTR [rbx+0x4984],eax
  395c53:	75 0a                                           	jne    0x395c5f
  395c55:	48 8b cf                                        	mov    rcx,rdi
  395c58:	e8 1b fc ff ff                                  	call   0x395878
  395c5d:	eb 6e                                           	jmp    0x395ccd
  395c5f:	39 b3 f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],esi
  395c65:	75 66                                           	jne    0x395ccd
  395c67:	c7 83 84 49 00 00 01 00 00 00                   	mov    DWORD PTR [rbx+0x4984],0x1
  395c71:	eb 5a                                           	jmp    0x395ccd
  395c73:	83 f9 ff                                        	cmp    ecx,0xffffffff
  395c76:	75 28                                           	jne    0x395ca0
  395c78:	39 b3 f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],esi
  395c7e:	75 17                                           	jne    0x395c97
  395c80:	83 bb 90 49 00 00 00                            	cmp    DWORD PTR [rbx+0x4990],0x0
  395c87:	74 44                                           	je     0x395ccd
  395c89:	c6 83 41 49 00 00 00                            	mov    BYTE PTR [rbx+0x4941],0x0
  395c90:	e8 d7 0a 00 00                                  	call   0x39676c
  395c95:	eb 36                                           	jmp    0x395ccd
  395c97:	84 c0                                           	test   al,al
  395c99:	74 32                                           	je     0x395ccd
  395c9b:	48 8b cf                                        	mov    rcx,rdi
  395c9e:	eb 28                                           	jmp    0x395cc8
  395ca0:	85 c9                                           	test   ecx,ecx
  395ca2:	75 29                                           	jne    0x395ccd
  395ca4:	84 c0                                           	test   al,al
  395ca6:	74 25                                           	je     0x395ccd
  395ca8:	39 b3 f0 48 00 00                               	cmp    DWORD PTR [rbx+0x48f0],esi
  395cae:	75 08                                           	jne    0x395cb8
  395cb0:	48 8b cf                                        	mov    rcx,rdi
  395cb3:	e8 c0 fb ff ff                                  	call   0x395878
  395cb8:	83 bb 20 4a 00 00 00                            	cmp    DWORD PTR [rbx+0x4a20],0x0
  395cbf:	75 0c                                           	jne    0x395ccd
  395cc1:	48 8d 8b 18 4a 00 00                            	lea    rcx,[rbx+0x4a18]
  395cc8:	e8 8b f5 ff ff                                  	call   0x395258
  395ccd:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  395cd2:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  395cd7:	48 83 c4 20                                     	add    rsp,0x20
  395cdb:	5f                                              	pop    rdi
  395cdc:	c3                                              	ret
