
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039bb4c <.data+0x39bb4c>:
  39bb4c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  39bb51:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  39bb56:	57                                              	push   rdi
  39bb57:	48 83 ec 30                                     	sub    rsp,0x30
  39bb5b:	48 8b f2                                        	mov    rsi,rdx
  39bb5e:	48 8b f9                                        	mov    rdi,rcx
  39bb61:	45 85 c0                                        	test   r8d,r8d
  39bb64:	74 10                                           	je     0x39bb76
  39bb66:	0f be 81 dc 00 00 00                            	movsx  eax,BYTE PTR [rcx+0xdc]
  39bb6d:	41 85 c0                                        	test   r8d,eax
  39bb70:	0f 84 e3 00 00 00                               	je     0x39bc59
  39bb76:	44 0f b6 81 dc 00 00 00                         	movzx  r8d,BYTE PTR [rcx+0xdc]
  39bb7e:	8b 81 dc 00 00 00                               	mov    eax,DWORD PTR [rcx+0xdc]
  39bb84:	41 81 e0 f1 00 00 00                            	and    r8d,0xf1
  39bb8b:	f3 0f 10 0d c1 1f ef ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffef1fc1]        # 0x28db54
  39bb93:	25 00 ff ff ff                                  	and    eax,0xffffff00
  39bb98:	44 0b c0                                        	or     r8d,eax
  39bb9b:	0f 28 d1                                        	movaps xmm2,xmm1
  39bb9e:	44 89 81 dc 00 00 00                            	mov    DWORD PTR [rcx+0xdc],r8d
  39bba5:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  39bbaa:	e8 91 07 f3 ff                                  	call   0x2cc340
  39bbaf:	48 8d 5f 20                                     	lea    rbx,[rdi+0x20]
  39bbb3:	48 8b d6                                        	mov    rdx,rsi
  39bbb6:	f2 0f 10 0b                                     	movsd  xmm1,QWORD PTR [rbx]
  39bbba:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  39bbbf:	f2 0f 11 4c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm1
  39bbc5:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  39bbc9:	f2 0f 11 87 e0 00 00 00                         	movsd  QWORD PTR [rdi+0xe0],xmm0
  39bbd1:	e8 a6 74 ff ff                                  	call   0x39307c
  39bbd6:	4c 8d 44 24 20                                  	lea    r8,[rsp+0x20]
  39bbdb:	48 8b d3                                        	mov    rdx,rbx
  39bbde:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  39bbe3:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  39bbe7:	f2 0f 11 03                                     	movsd  QWORD PTR [rbx],xmm0
  39bbeb:	e8 f4 ab f9 ff                                  	call   0x3367e4
  39bbf0:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [rsp+0x58]
  39bbf6:	0f 57 c9                                        	xorps  xmm1,xmm1
  39bbf9:	0f 2e c1                                        	ucomiss xmm0,xmm1
  39bbfc:	7a 0f                                           	jp     0x39bc0d
  39bbfe:	75 0d                                           	jne    0x39bc0d
  39bc00:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [rsp+0x5c]
  39bc06:	0f 2e c1                                        	ucomiss xmm0,xmm1
  39bc09:	7a 02                                           	jp     0x39bc0d
  39bc0b:	74 4c                                           	je     0x39bc59
  39bc0d:	48 8b cf                                        	mov    rcx,rdi
  39bc10:	e8 f3 94 ff ff                                  	call   0x395108
  39bc15:	48 8d 8f 00 01 00 00                            	lea    rcx,[rdi+0x100]
  39bc1c:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  39bc21:	e8 22 10 ff ff                                  	call   0x38cc48
  39bc26:	48 8d 8f 18 01 00 00                            	lea    rcx,[rdi+0x118]
  39bc2d:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  39bc32:	e8 11 10 ff ff                                  	call   0x38cc48
  39bc37:	48 8d 8f 20 01 00 00                            	lea    rcx,[rdi+0x120]
  39bc3e:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  39bc43:	e8 00 10 ff ff                                  	call   0x38cc48
  39bc48:	48 8d 8f 10 01 00 00                            	lea    rcx,[rdi+0x110]
  39bc4f:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  39bc54:	e8 ef 0f ff ff                                  	call   0x38cc48
  39bc59:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
  39bc5e:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  39bc63:	48 83 c4 30                                     	add    rsp,0x30
  39bc67:	5f                                              	pop    rdi
  39bc68:	c3                                              	ret
