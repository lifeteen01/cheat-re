
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cc8d0 <.data+0x2cc8d0>:
  2cc8d0:	48 8b c4                                        	mov    rax,rsp
  2cc8d3:	48 89 58 10                                     	mov    QWORD PTR [rax+0x10],rbx
  2cc8d7:	48 89 70 18                                     	mov    QWORD PTR [rax+0x18],rsi
  2cc8db:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  2cc8df:	55                                              	push   rbp
  2cc8e0:	57                                              	push   rdi
  2cc8e1:	41 57                                           	push   r15
  2cc8e3:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  2cc8e7:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  2cc8ee:	80 3d 6b 98 10 00 00                            	cmp    BYTE PTR [rip+0x10986b],0x0        # 0x3d6160
  2cc8f5:	48 8b f2                                        	mov    rsi,rdx
  2cc8f8:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  2cc8fc:	48 8b d9                                        	mov    rbx,rcx
  2cc8ff:	0f 28 f2                                        	movaps xmm6,xmm2
  2cc902:	0f 84 eb 00 00 00                               	je     0x2cc9f3
  2cc908:	48 85 c9                                        	test   rcx,rcx
  2cc90b:	0f 84 e2 00 00 00                               	je     0x2cc9f3
  2cc911:	80 39 00                                        	cmp    BYTE PTR [rcx],0x0
  2cc914:	0f 84 d9 00 00 00                               	je     0x2cc9f3
  2cc91a:	4c 8d 3d 2f 98 10 00                            	lea    r15,[rip+0x10982f]        # 0x3d6150
  2cc921:	49 8b cf                                        	mov    rcx,r15
  2cc924:	4c 8d 45 67                                     	lea    r8,[rbp+0x67]
  2cc928:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  2cc92c:	e8 b7 f3 ff ff                                  	call   0x2cbce8
  2cc931:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2cc935:	49 8b cf                                        	mov    rcx,r15
  2cc938:	e8 47 15 00 00                                  	call   0x2cde84
  2cc93d:	48 8b d0                                        	mov    rdx,rax
  2cc940:	48 8d 4d 7f                                     	lea    rcx,[rbp+0x7f]
  2cc944:	e8 eb fb ff ff                                  	call   0x2cc534
  2cc949:	84 c0                                           	test   al,al
  2cc94b:	75 52                                           	jne    0x2cc99f
  2cc94d:	48 8d 4d 7f                                     	lea    rcx,[rbp+0x7f]
  2cc951:	e8 f6 fb ff ff                                  	call   0x2cc54c
  2cc956:	48 8d 78 20                                     	lea    rdi,[rax+0x20]
  2cc95a:	80 3f 00                                        	cmp    BYTE PTR [rdi],0x0
  2cc95d:	0f 84 90 00 00 00                               	je     0x2cc9f3
  2cc963:	48 8b 50 28                                     	mov    rdx,QWORD PTR [rax+0x28]
  2cc967:	48 8b ca                                        	mov    rcx,rdx
  2cc96a:	e8 99 e5 ff ff                                  	call   0x2caf08
  2cc96f:	84 c0                                           	test   al,al
  2cc971:	74 1c                                           	je     0x2cc98f
  2cc973:	48 8b ca                                        	mov    rcx,rdx
  2cc976:	e8 91 02 00 00                                  	call   0x2ccc0c
  2cc97b:	84 c0                                           	test   al,al
  2cc97d:	74 10                                           	je     0x2cc98f
  2cc97f:	48 8b cf                                        	mov    rcx,rdi
  2cc982:	48 8b d6                                        	mov    rdx,rsi
  2cc985:	0f 28 d6                                        	movaps xmm2,xmm6
  2cc988:	e8 bb 00 00 00                                  	call   0x2cca48
  2cc98d:	eb 66                                           	jmp    0x2cc9f5
  2cc98f:	4c 8b 45 7f                                     	mov    r8,QWORD PTR [rbp+0x7f]
  2cc993:	48 8d 55 7f                                     	lea    rdx,[rbp+0x7f]
  2cc997:	49 8b cf                                        	mov    rcx,r15
  2cc99a:	e8 e1 f2 ff ff                                  	call   0x2cbc80
  2cc99f:	48 8d 4d ff                                     	lea    rcx,[rbp-0x1]
  2cc9a3:	e8 88 f9 ff ff                                  	call   0x2cc330
  2cc9a8:	48 8d 55 ff                                     	lea    rdx,[rbp-0x1]
  2cc9ac:	48 8b cb                                        	mov    rcx,rbx
  2cc9af:	e8 60 03 00 00                                  	call   0x2ccd14
  2cc9b4:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  2cc9b8:	48 8b d3                                        	mov    rdx,rbx
  2cc9bb:	84 c0                                           	test   al,al
  2cc9bd:	75 53                                           	jne    0x2cca12
  2cc9bf:	88 45 e7                                        	mov    BYTE PTR [rbp-0x19],al
  2cc9c2:	48 c7 45 ef 00 00 00 00                         	mov    QWORD PTR [rbp-0x11],0x0
  2cc9ca:	48 c7 45 f7 00 00 00 00                         	mov    QWORD PTR [rbp-0x9],0x0
  2cc9d2:	e8 f5 f8 ff ff                                  	call   0x2cc2cc
  2cc9d7:	4c 8b c0                                        	mov    r8,rax
  2cc9da:	4c 8d 4d e7                                     	lea    r9,[rbp-0x19]
  2cc9de:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2cc9e2:	49 8b cf                                        	mov    rcx,r15
  2cc9e5:	e8 1e f2 ff ff                                  	call   0x2cbc08
  2cc9ea:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  2cc9ee:	e8 01 fb ff ff                                  	call   0x2cc4f4
  2cc9f3:	32 c0                                           	xor    al,al
  2cc9f5:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  2cc9fd:	49 8b 5b 28                                     	mov    rbx,QWORD PTR [r11+0x28]
  2cca01:	49 8b 73 30                                     	mov    rsi,QWORD PTR [r11+0x30]
  2cca05:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  2cca0a:	49 8b e3                                        	mov    rsp,r11
  2cca0d:	41 5f                                           	pop    r15
  2cca0f:	5f                                              	pop    rdi
  2cca10:	5d                                              	pop    rbp
  2cca11:	c3                                              	ret
  2cca12:	e8 b5 f8 ff ff                                  	call   0x2cc2cc
  2cca17:	4c 8b c0                                        	mov    r8,rax
  2cca1a:	4c 8d 4d ff                                     	lea    r9,[rbp-0x1]
  2cca1e:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2cca22:	49 8b cf                                        	mov    rcx,r15
  2cca25:	e8 de f1 ff ff                                  	call   0x2cbc08
  2cca2a:	48 8d 4d 17                                     	lea    rcx,[rbp+0x17]
  2cca2e:	e8 c1 fa ff ff                                  	call   0x2cc4f4
  2cca33:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2cca37:	e8 10 fb ff ff                                  	call   0x2cc54c
  2cca3c:	48 8d 48 20                                     	lea    rcx,[rax+0x20]
  2cca40:	e9 3d ff ff ff                                  	jmp    0x2cc982
