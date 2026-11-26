
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032bb60 <.data+0x32bb60>:
  32bb60:	40 55                                           	rex push rbp
  32bb62:	53                                              	push   rbx
  32bb63:	56                                              	push   rsi
  32bb64:	57                                              	push   rdi
  32bb65:	41 56                                           	push   r14
  32bb67:	41 57                                           	push   r15
  32bb69:	48 8b ec                                        	mov    rbp,rsp
  32bb6c:	48 83 ec 78                                     	sub    rsp,0x78
  32bb70:	0f 29 74 24 60                                  	movaps XMMWORD PTR [rsp+0x60],xmm6
  32bb75:	48 8b f9                                        	mov    rdi,rcx
  32bb78:	e8 1f 1f fb ff                                  	call   0x2dda9c
  32bb7d:	48 8b c8                                        	mov    rcx,rax
  32bb80:	e8 83 f3 f9 ff                                  	call   0x2caf08
  32bb85:	84 c0                                           	test   al,al
  32bb87:	0f 84 a7 01 00 00                               	je     0x32bd34
  32bb8d:	48 8b cf                                        	mov    rcx,rdi
  32bb90:	e8 73 f3 f9 ff                                  	call   0x2caf08
  32bb95:	84 c0                                           	test   al,al
  32bb97:	0f 84 97 01 00 00                               	je     0x32bd34
  32bb9d:	48 8b cf                                        	mov    rcx,rdi
  32bba0:	e8 5f 58 04 00                                  	call   0x371404
  32bba5:	48 8b cf                                        	mov    rcx,rdi
  32bba8:	48 8b d8                                        	mov    rbx,rax
  32bbab:	e8 50 65 04 00                                  	call   0x372100
  32bbb0:	48 8b cf                                        	mov    rcx,rdi
  32bbb3:	4c 8b f8                                        	mov    r15,rax
  32bbb6:	e8 a9 5b 04 00                                  	call   0x371764
  32bbbb:	48 8b cf                                        	mov    rcx,rdi
  32bbbe:	4c 8b f0                                        	mov    r14,rax
  32bbc1:	e8 5e 63 04 00                                  	call   0x371f24
  32bbc6:	48 8b cf                                        	mov    rcx,rdi
  32bbc9:	48 8b f0                                        	mov    rsi,rax
  32bbcc:	e8 57 57 04 00                                  	call   0x371328
  32bbd1:	48 8b cb                                        	mov    rcx,rbx
  32bbd4:	48 8b d0                                        	mov    rdx,rax
  32bbd7:	e8 2c f3 f9 ff                                  	call   0x2caf08
  32bbdc:	84 c0                                           	test   al,al
  32bbde:	74 0d                                           	je     0x32bbed
  32bbe0:	f3 0f 10 05 d0 75 f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff675d0]        # 0x2931b8
  32bbe8:	e9 4a 01 00 00                                  	jmp    0x32bd37
  32bbed:	49 8b cf                                        	mov    rcx,r15
  32bbf0:	e8 13 f3 f9 ff                                  	call   0x2caf08
  32bbf5:	84 c0                                           	test   al,al
  32bbf7:	0f 85 37 01 00 00                               	jne    0x32bd34
  32bbfd:	48 8b ca                                        	mov    rcx,rdx
  32bc00:	e8 03 f3 f9 ff                                  	call   0x2caf08
  32bc05:	84 c0                                           	test   al,al
  32bc07:	0f 85 27 01 00 00                               	jne    0x32bd34
  32bc0d:	49 8b ce                                        	mov    rcx,r14
  32bc10:	e8 f3 f2 f9 ff                                  	call   0x2caf08
  32bc15:	84 c0                                           	test   al,al
  32bc17:	74 0d                                           	je     0x32bc26
  32bc19:	f3 0f 10 05 37 75 f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff67537]        # 0x293158
  32bc21:	e9 11 01 00 00                                  	jmp    0x32bd37
  32bc26:	48 8b ce                                        	mov    rcx,rsi
  32bc29:	e8 da f2 f9 ff                                  	call   0x2caf08
  32bc2e:	84 c0                                           	test   al,al
  32bc30:	0f 84 f4 00 00 00                               	je     0x32bd2a
  32bc36:	48 8d 55 c8                                     	lea    rdx,[rbp-0x38]
  32bc3a:	48 8b ce                                        	mov    rcx,rsi
  32bc3d:	e8 ee f8 03 00                                  	call   0x36b530
  32bc42:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  32bc46:	e8 49 ca fa ff                                  	call   0x2d8694
  32bc4b:	84 c0                                           	test   al,al
  32bc4d:	0f 85 c1 00 00 00                               	jne    0x32bd14
  32bc53:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  32bc57:	e8 90 1b fa ff                                  	call   0x2cd7ec
  32bc5c:	48 8b c8                                        	mov    rcx,rax
  32bc5f:	e8 f0 a6 fa ff                                  	call   0x2d6354
  32bc64:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  32bc68:	48 8b d8                                        	mov    rbx,rax
  32bc6b:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32bc6f:	e8 44 fc ff ff                                  	call   0x32b8b8
  32bc74:	48 8b c8                                        	mov    rcx,rax
  32bc77:	e8 60 df fb ff                                  	call   0x2e9bdc
  32bc7c:	48 bf 25 23 22 84 e4 9c f2 cb                   	movabs rdi,0xcbf29ce484222325
  32bc86:	48 8b c8                                        	mov    rcx,rax
  32bc89:	48 8b d7                                        	mov    rdx,rdi
  32bc8c:	e8 bb 9e fb ff                                  	call   0x2e5b4c
  32bc91:	48 3b d8                                        	cmp    rbx,rax
  32bc94:	74 7e                                           	je     0x32bd14
  32bc96:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  32bc9a:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32bc9e:	e8 7d fc ff ff                                  	call   0x32b920
  32bca3:	48 8b c8                                        	mov    rcx,rax
  32bca6:	e8 29 ec ff ff                                  	call   0x32a8d4
  32bcab:	48 8b c8                                        	mov    rcx,rax
  32bcae:	48 8b d7                                        	mov    rdx,rdi
  32bcb1:	e8 96 9e fb ff                                  	call   0x2e5b4c
  32bcb6:	48 3b d8                                        	cmp    rbx,rax
  32bcb9:	74 59                                           	je     0x32bd14
  32bcbb:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  32bcbf:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32bcc3:	e8 f4 fc ff ff                                  	call   0x32b9bc
  32bcc8:	48 8b c8                                        	mov    rcx,rax
  32bccb:	e8 9c c9 fa ff                                  	call   0x2d866c
  32bcd0:	48 8b c8                                        	mov    rcx,rax
  32bcd3:	48 8b d7                                        	mov    rdx,rdi
  32bcd6:	e8 71 9e fb ff                                  	call   0x2e5b4c
  32bcdb:	48 3b d8                                        	cmp    rbx,rax
  32bcde:	75 05                                           	jne    0x32bce5
  32bce0:	0f 57 f6                                        	xorps  xmm6,xmm6
  32bce3:	eb 37                                           	jmp    0x32bd1c
  32bce5:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  32bce9:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  32bced:	e8 56 fd ff ff                                  	call   0x32ba48
  32bcf2:	48 8b c8                                        	mov    rcx,rax
  32bcf5:	e8 8e 14 fb ff                                  	call   0x2dd188
  32bcfa:	48 8b c8                                        	mov    rcx,rax
  32bcfd:	48 8b d7                                        	mov    rdx,rdi
  32bd00:	e8 47 9e fb ff                                  	call   0x2e5b4c
  32bd05:	48 3b d8                                        	cmp    rbx,rax
  32bd08:	75 0a                                           	jne    0x32bd14
  32bd0a:	f3 0f 10 35 0a 1e f6 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff61e0a]        # 0x28db1c
  32bd12:	eb 08                                           	jmp    0x32bd1c
  32bd14:	f3 0f 10 35 3c 74 f6 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff6743c]        # 0x293158
  32bd1c:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  32bd20:	e8 cf 07 fa ff                                  	call   0x2cc4f4
  32bd25:	0f 28 c6                                        	movaps xmm0,xmm6
  32bd28:	eb 0d                                           	jmp    0x32bd37
  32bd2a:	f3 0f 10 05 56 74 f6 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff67456]        # 0x293188
  32bd32:	eb 03                                           	jmp    0x32bd37
  32bd34:	0f 57 c0                                        	xorps  xmm0,xmm0
  32bd37:	0f 28 74 24 60                                  	movaps xmm6,XMMWORD PTR [rsp+0x60]
  32bd3c:	48 83 c4 78                                     	add    rsp,0x78
  32bd40:	41 5f                                           	pop    r15
  32bd42:	41 5e                                           	pop    r14
  32bd44:	5f                                              	pop    rdi
  32bd45:	5e                                              	pop    rsi
  32bd46:	5b                                              	pop    rbx
  32bd47:	5d                                              	pop    rbp
  32bd48:	c3                                              	ret
  32bd49:	cc                                              	int3
  32bd4a:	cc                                              	int3
  32bd4b:	cc                                              	int3
