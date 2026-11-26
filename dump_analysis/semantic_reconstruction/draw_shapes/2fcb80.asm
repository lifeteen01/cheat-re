
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002fcb80 <.data+0x2fcb80>:
  2fcb80:	48 8d 0d d1 e3 0e 00                            	lea    rcx,[rip+0xee3d1]        # 0x3eaf58
  2fcb87:	e8 80 2c ff ff                                  	call   0x2ef80c
  2fcb8c:	f3 0f 10 95 e4 02 00 00                         	movss  xmm2,DWORD PTR [rbp+0x2e4]
  2fcb94:	48 8d 8d e8 0c 00 00                            	lea    rcx,[rbp+0xce8]
  2fcb9b:	f3 0f 10 8d e0 02 00 00                         	movss  xmm1,DWORD PTR [rbp+0x2e0]
  2fcba3:	8b d8                                           	mov    ebx,eax
  2fcba5:	e8 96 f7 fc ff                                  	call   0x2cc340
  2fcbaa:	44 8b cb                                        	mov    r9d,ebx
  2fcbad:	f3 44 0f 11 5c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm11
  2fcbb4:	48 8b 9d d0 29 00 00                            	mov    rbx,QWORD PTR [rbp+0x29d0]
  2fcbbb:	48 8b d0                                        	mov    rdx,rax
  2fcbbe:	48 8b cb                                        	mov    rcx,rbx
  2fcbc1:	c6 44 24 20 00                                  	mov    BYTE PTR [rsp+0x20],0x0
  2fcbc6:	0f 28 d6                                        	movaps xmm2,xmm6
  2fcbc9:	e8 aa f9 05 00                                  	call   0x35c578
