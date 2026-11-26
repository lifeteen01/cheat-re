
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000324b30 <.data+0x324b30>:
  324b30:	48 8b c4             	mov    rax,rsp
  324b33:	48 89 58 10          	mov    QWORD PTR [rax+0x10],rbx
  324b37:	4c 89 40 18          	mov    QWORD PTR [rax+0x18],r8
  324b3b:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  324b3f:	55                   	push   rbp
  324b40:	56                   	push   rsi
  324b41:	57                   	push   rdi
  324b42:	41 54                	push   r12
  324b44:	41 55                	push   r13
  324b46:	41 56                	push   r14
  324b48:	41 57                	push   r15
  324b4a:	48 8d a8 98 fd ff ff 	lea    rbp,[rax-0x268]
  324b51:	48 81 ec 30 03 00 00 	sub    rsp,0x330
  324b58:	0f 29 70 b8          	movaps XMMWORD PTR [rax-0x48],xmm6
  324b5c:	48 8b fa             	mov    rdi,rdx
  324b5f:	0f 29 78 a8          	movaps XMMWORD PTR [rax-0x58],xmm7
  324b63:	4c 8b e9             	mov    r13,rcx
  324b66:	8b 0d cc f8 0c 00    	mov    ecx,DWORD PTR [rip+0xcf8cc]        # 0x3f4438
  324b6c:	45 33 e4             	xor    r12d,r12d
  324b6f:	44 0f 29 40 98       	movaps XMMWORD PTR [rax-0x68],xmm8
  324b74:	49 8b f0             	mov    rsi,r8
  324b77:	44 0f 29 48 88       	movaps XMMWORD PTR [rax-0x78],xmm9
  324b7c:	44 0f 29 90 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm10
  324b84:	44 0f 29 98 68 ff ff ff 	movaps XMMWORD PTR [rax-0x98],xmm11
  324b8c:	45 8d 74 24 01       	lea    r14d,[r12+0x1]
  324b91:	44 0f 29 a0 58 ff ff ff 	movaps XMMWORD PTR [rax-0xa8],xmm12
  324b99:	41 8a d6             	mov    dl,r14b
  324b9c:	44 0f 29 a8 48 ff ff ff 	movaps XMMWORD PTR [rax-0xb8],xmm13
  324ba4:	44 0f 29 b0 38 ff ff ff 	movaps XMMWORD PTR [rax-0xc8],xmm14
  324bac:	44 0f 29 b8 28 ff ff ff 	movaps XMMWORD PTR [rax-0xd8],xmm15
  324bb4:	e8 93 12 fc ff       	call   0x2e5e4c
  324bb9:	84 c0                	test   al,al
  324bbb:	75 15                	jne    0x324bd2
  324bbd:	8b 0d d5 f8 0c 00    	mov    ecx,DWORD PTR [rip+0xcf8d5]        # 0x3f4498
  324bc3:	41 8a d6             	mov    dl,r14b
  324bc6:	e8 81 12 fc ff       	call   0x2e5e4c
  324bcb:	84 c0                	test   al,al
  324bcd:	41 8a c4             	mov    al,r12b
  324bd0:	74 03                	je     0x324bd5
  324bd2:	41 8a c6             	mov    al,r14b
  324bd5:	8a 15 ad d8 0c 00    	mov    dl,BYTE PTR [rip+0xcd8ad]        # 0x3f2488
  324bdb:	48 8d 0d 56 ac 0c 00 	lea    rcx,[rip+0xcac56]        # 0x3ef838
  324be2:	45 8a c6             	mov    r8b,r14b
  324be5:	88 05 b5 26 0b 00    	mov    BYTE PTR [rip+0xb26b5],al        # 0x3d72a0
  324beb:	e8 64 4b 00 00       	call   0x329754
  324bf0:	8a 15 42 ec 0c 00    	mov    dl,BYTE PTR [rip+0xcec42]        # 0x3f3838
  324bf6:	48 8d 0d 3b af 0c 00 	lea    rcx,[rip+0xcaf3b]        # 0x3efb38
  324bfd:	45 8a c6             	mov    r8b,r14b
  324c00:	e8 4f 4b 00 00       	call   0x329754
  324c05:	8a 15 ad ee 0c 00    	mov    dl,BYTE PTR [rip+0xceead]        # 0x3f3ab8
  324c0b:	48 8d 0d 46 aa 0c 00 	lea    rcx,[rip+0xcaa46]        # 0x3ef658
  324c12:	45 8a c6             	mov    r8b,r14b
  324c15:	e8 3a 4b 00 00       	call   0x329754
  324c1a:	8a 15 48 ee 0c 00    	mov    dl,BYTE PTR [rip+0xcee48]        # 0x3f3a68
  324c20:	48 8d 0d 71 af 0c 00 	lea    rcx,[rip+0xcaf71]        # 0x3efb98
  324c27:	45 8a c6             	mov    r8b,r14b
  324c2a:	e8 25 4b 00 00       	call   0x329754
  324c2f:	8a 15 a3 ec 0c 00    	mov    dl,BYTE PTR [rip+0xceca3]        # 0x3f38d8
  324c35:	48 8d 0d 2c 08 0c 00 	lea    rcx,[rip+0xc082c]        # 0x3e5468
  324c3c:	45 8a c6             	mov    r8b,r14b
  324c3f:	e8 10 4b 00 00       	call   0x329754
  324c44:	8a 15 de ec 0c 00    	mov    dl,BYTE PTR [rip+0xcecde]        # 0x3f3928
  324c4a:	48 8d 0d 07 f6 0c 00 	lea    rcx,[rip+0xcf607]        # 0x3f4258
  324c51:	45 8a c6             	mov    r8b,r14b
  324c54:	e8 fb 4a 00 00       	call   0x329754
  324c59:	8a 15 a9 ee 0c 00    	mov    dl,BYTE PTR [rip+0xceea9]        # 0x3f3b08
  324c5f:	48 8d 0d 32 36 0b 00 	lea    rcx,[rip+0xb3632]        # 0x3d8298
  324c66:	45 8a c6             	mov    r8b,r14b
  324c69:	e8 e6 4a 00 00       	call   0x329754
  324c6e:	8a 15 44 e9 0c 00    	mov    dl,BYTE PTR [rip+0xce944]        # 0x3f35b8
  324c74:	48 8d 0d fd ad 0c 00 	lea    rcx,[rip+0xcadfd]        # 0x3efa78
  324c7b:	45 8a c6             	mov    r8b,r14b
  324c7e:	e8 d1 4a 00 00       	call   0x329754
  324c83:	8a 15 cf 4c 0c 00    	mov    dl,BYTE PTR [rip+0xc4ccf]        # 0x3e9958
  324c89:	48 8d 0d e8 a7 0c 00 	lea    rcx,[rip+0xca7e8]        # 0x3ef478
  324c90:	45 8a c6             	mov    r8b,r14b
  324c93:	e8 bc 4a 00 00       	call   0x329754
  324c98:	8a 15 6a e4 0c 00    	mov    dl,BYTE PTR [rip+0xce46a]        # 0x3f3108
  324c9e:	48 8d 0d 53 36 0b 00 	lea    rcx,[rip+0xb3653]        # 0x3d82f8
  324ca5:	45 8a c6             	mov    r8b,r14b
  324ca8:	e8 a7 4a 00 00       	call   0x329754
  324cad:	8a 15 d5 e1 0c 00    	mov    dl,BYTE PTR [rip+0xce1d5]        # 0x3f2e88
  324cb3:	48 8d 0d 3e a9 0c 00 	lea    rcx,[rip+0xca93e]        # 0x3ef5f8
  324cba:	45 8a c6             	mov    r8b,r14b
  324cbd:	e8 92 4a 00 00       	call   0x329754
  324cc2:	8a 15 80 e5 0c 00    	mov    dl,BYTE PTR [rip+0xce580]        # 0x3f3248
  324cc8:	48 8d 0d 09 ae 0c 00 	lea    rcx,[rip+0xcae09]        # 0x3efad8
  324ccf:	45 8a c6             	mov    r8b,r14b
  324cd2:	e8 7d 4a 00 00       	call   0x329754
  324cd7:	8a 15 7b ee 0c 00    	mov    dl,BYTE PTR [rip+0xcee7b]        # 0x3f3b58
  324cdd:	48 8d 0d b4 a8 0c 00 	lea    rcx,[rip+0xca8b4]        # 0x3ef598
  324ce4:	45 8a c6             	mov    r8b,r14b
  324ce7:	e8 68 4a 00 00       	call   0x329754
  324cec:	8a 15 76 e8 0c 00    	mov    dl,BYTE PTR [rip+0xce876]        # 0x3f3568
  324cf2:	48 8d 0d 7f aa 0c 00 	lea    rcx,[rip+0xcaa7f]        # 0x3ef778
  324cf9:	45 8a c6             	mov    r8b,r14b
  324cfc:	e8 53 4a 00 00       	call   0x329754
  324d01:	8a 15 f1 e4 0c 00    	mov    dl,BYTE PTR [rip+0xce4f1]        # 0x3f31f8
  324d07:	48 8d 0d ea ae 0c 00 	lea    rcx,[rip+0xcaeea]        # 0x3efbf8
  324d0e:	45 8a c6             	mov    r8b,r14b
  324d11:	e8 3e 4a 00 00       	call   0x329754
  324d16:	48 8d 0d 43 3c ef ff 	lea    rcx,[rip+0xffffffffffef3c43]        # 0x218960
  324d1d:	e8 42 c2 ff ff       	call   0x320f64
  324d22:	48 83 f8 42          	cmp    rax,0x42
  324d26:	72 13                	jb     0x324d3b
  324d28:	48 8d 0d 31 3c ef ff 	lea    rcx,[rip+0xffffffffffef3c31]        # 0x218960
  324d2f:	44 88 25 0b ae 0c 00 	mov    BYTE PTR [rip+0xcae0b],r12b        # 0x3efb41
  324d36:	e8 29 5f ff ff       	call   0x31ac64
  324d3b:	48 8d 0d 2e e8 0c 00 	lea    rcx,[rip+0xce82e]        # 0x3f3570
  324d42:	e8 b5 aa fc ff       	call   0x2ef7fc
  324d47:	84 c0                	test   al,al
  324d49:	75 0b                	jne    0x324d56
  324d4b:	41 8a d4             	mov    dl,r12b
  324d4e:	88 15 2d ad 0c 00    	mov    BYTE PTR [rip+0xcad2d],dl        # 0x3efa81
  324d54:	eb 06                	jmp    0x324d5c
  324d56:	8a 15 25 ad 0c 00    	mov    dl,BYTE PTR [rip+0xcad25]        # 0x3efa81
  324d5c:	44 38 25 05 e3 0c 00 	cmp    BYTE PTR [rip+0xce305],r12b        # 0x3f3068
  324d63:	75 0d                	jne    0x324d72
  324d65:	84 d2                	test   dl,dl
  324d67:	75 09                	jne    0x324d72
  324d69:	44 38 25 d1 ad 0c 00 	cmp    BYTE PTR [rip+0xcadd1],r12b        # 0x3efb41
  324d70:	74 21                	je     0x324d93
  324d72:	4d 8b 45 30          	mov    r8,QWORD PTR [r13+0x30]
  324d76:	49 8b c8             	mov    rcx,r8
  324d79:	e8 8a 61 fa ff       	call   0x2caf08
  324d7e:	84 c0                	test   al,al
  324d80:	74 0d                	je     0x324d8f
  324d82:	4d 89 a0 40 01 00 00 	mov    QWORD PTR [r8+0x140],r12
  324d89:	8a 15 f2 ac 0c 00    	mov    dl,BYTE PTR [rip+0xcacf2]        # 0x3efa81
  324d8f:	84 d2                	test   dl,dl
  324d91:	75 0c                	jne    0x324d9f
  324d93:	44 38 25 07 35 0b 00 	cmp    BYTE PTR [rip+0xb3507],r12b        # 0x3d82a1
  324d9a:	45 8a fc             	mov    r15b,r12b
  324d9d:	74 03                	je     0x324da2
  324d9f:	45 8a fe             	mov    r15b,r14b
  324da2:	44 38 25 6f ec 0c 00 	cmp    BYTE PTR [rip+0xcec6f],r12b        # 0x3f3a18
  324da9:	44 88 bd 88 02 00 00 	mov    BYTE PTR [rbp+0x288],r15b
  324db0:	75 1b                	jne    0x324dcd
  324db2:	44 38 25 e8 ad 0c 00 	cmp    BYTE PTR [rip+0xcade8],r12b        # 0x3efba1
  324db9:	75 12                	jne    0x324dcd
  324dbb:	44 38 25 66 21 0d 00 	cmp    BYTE PTR [rip+0xd2166],r12b        # 0x3f6f28
  324dc2:	74 19                	je     0x324ddd
  324dc4:	44 88 25 5d 21 0d 00 	mov    BYTE PTR [rip+0xd215d],r12b        # 0x3f6f28
  324dcb:	eb 07                	jmp    0x324dd4
  324dcd:	44 88 35 54 21 0d 00 	mov    BYTE PTR [rip+0xd2154],r14b        # 0x3f6f28
  324dd4:	b8 7a e4 bb b4       	mov    eax,0xb4bbe47a
  324dd9:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
  324ddd:	45 84 ff             	test   r15b,r15b
  324de0:	74 0d                	je     0x324def
  324de2:	ba 04 00 00 00       	mov    edx,0x4
  324de7:	48 8b ce             	mov    rcx,rsi
  324dea:	e8 2d de 04 00       	call   0x372c1c
  324def:	8b 1d 43 21 0d 00    	mov    ebx,DWORD PTR [rip+0xd2143]        # 0x3f6f38
  324df5:	41 84 de             	test   r14b,bl
  324df8:	75 1e                	jne    0x324e18
  324dfa:	41 0b de             	or     ebx,r14d
  324dfd:	48 8d 0d a4 1a 0c 00 	lea    rcx,[rip+0xc1aa4]        # 0x3e68a8
  324e04:	89 1d 2e 21 0d 00    	mov    DWORD PTR [rip+0xd212e],ebx        # 0x3f6f38
  324e0a:	e8 c9 97 fa ff       	call   0x2ce5d8
  324e0f:	48 89 05 1a 21 0d 00 	mov    QWORD PTR [rip+0xd211a],rax        # 0x3f6f30
  324e16:	eb 07                	jmp    0x324e1f
  324e18:	48 8b 05 11 21 0d 00 	mov    rax,QWORD PTR [rip+0xd2111]        # 0x3f6f30
  324e1f:	f6 c3 02             	test   bl,0x2
  324e22:	75 22                	jne    0x324e46
  324e24:	48 8b 0d 35 10 0b 00 	mov    rcx,QWORD PTR [rip+0xb1035]        # 0x3d5e60
  324e2b:	48 8d 15 0e 21 0d 00 	lea    rdx,[rip+0xd210e]        # 0x3f6f40
  324e32:	83 cb 02             	or     ebx,0x2
  324e35:	45 33 c9             	xor    r9d,r9d
  324e38:	4c 8b c0             	mov    r8,rax
  324e3b:	89 1d f7 20 0d 00    	mov    DWORD PTR [rip+0xd20f7],ebx        # 0x3f6f38
  324e41:	e8 de 6e fa ff       	call   0x2cbd24
  324e46:	48 8b 0d 13 10 0b 00 	mov    rcx,QWORD PTR [rip+0xb1013]        # 0x3d5e60
  324e4d:	48 8d 15 ec 20 0d 00 	lea    rdx,[rip+0xd20ec]        # 0x3f6f40
  324e54:	4c 8b cf             	mov    r9,rdi
  324e57:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  324e5c:	4d 8b c5             	mov    r8,r13
  324e5f:	e8 ec 6b fa ff       	call   0x2cba50
  324e64:	44 38 25 f6 a7 0c 00 	cmp    BYTE PTR [rip+0xca7f6],r12b        # 0x3ef661
  324e6b:	74 0b                	je     0x324e78
  324e6d:	41 8b d6             	mov    edx,r14d
  324e70:	48 8b ce             	mov    rcx,rsi
  324e73:	e8 a4 dd 04 00       	call   0x372c1c
  324e78:	45 84 ff             	test   r15b,r15b
  324e7b:	74 0d                	je     0x324e8a
  324e7d:	ba 04 00 00 00       	mov    edx,0x4
  324e82:	48 8b ce             	mov    rcx,rsi
  324e85:	e8 92 dd 04 00       	call   0x372c1c
  324e8a:	48 8d 0d 3f eb 0c 00 	lea    rcx,[rip+0xceb3f]        # 0x3f39d0
  324e91:	e8 66 a9 fc ff       	call   0x2ef7fc
  324e96:	84 c0                	test   al,al
  324e98:	75 09                	jne    0x324ea3
  324e9a:	44 38 25 00 ad 0c 00 	cmp    BYTE PTR [rip+0xcad00],r12b        # 0x3efba1
  324ea1:	74 09                	je     0x324eac
  324ea3:	b8 7a e6 bb b4       	mov    eax,0xb4bbe67a
  324ea8:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
  324eac:	44 38 25 15 30 0b 00 	cmp    BYTE PTR [rip+0xb3015],r12b        # 0x3d7ec8
  324eb3:	75 09                	jne    0x324ebe
  324eb5:	44 38 25 ec ec 0c 00 	cmp    BYTE PTR [rip+0xcecec],r12b        # 0x3f3ba8
  324ebc:	74 31                	je     0x324eef
  324ebe:	44 38 25 53 21 0d 00 	cmp    BYTE PTR [rip+0xd2153],r12b        # 0x3f7018
  324ec5:	75 28                	jne    0x324eef
  324ec7:	48 8b 15 32 20 0b 00 	mov    rdx,QWORD PTR [rip+0xb2032]        # 0x3d6f00
  324ece:	4c 8d 05 63 b7 00 00 	lea    r8,[rip+0xb763]        # 0x330638
  324ed5:	48 81 c2 b8 67 6b 0f 	add    rdx,0xf6b67b8
  324edc:	48 8d 0d 6d fb 0c 00 	lea    rcx,[rip+0xcfb6d]        # 0x3f4a50
  324ee3:	e8 a4 e1 ff ff       	call   0x32308c
  324ee8:	44 88 35 29 21 0d 00 	mov    BYTE PTR [rip+0xd2129],r14b        # 0x3f7018
  324eef:	44 38 25 32 03 0c 00 	cmp    BYTE PTR [rip+0xc0332],r12b        # 0x3e5228
  324ef6:	75 09                	jne    0x324f01
  324ef8:	44 38 25 59 ce 0c 00 	cmp    BYTE PTR [rip+0xcce59],r12b        # 0x3f1d58
  324eff:	74 31                	je     0x324f32
  324f01:	44 38 25 11 21 0d 00 	cmp    BYTE PTR [rip+0xd2111],r12b        # 0x3f7019
  324f08:	75 28                	jne    0x324f32
  324f0a:	48 8b 15 ef 1f 0b 00 	mov    rdx,QWORD PTR [rip+0xb1fef]        # 0x3d6f00
  324f11:	4c 8d 05 48 ce ff ff 	lea    r8,[rip+0xffffffffffffce48]        # 0x321d60
  324f18:	48 81 c2 60 8c 6b 0f 	add    rdx,0xf6b8c60
  324f1f:	48 8d 0d 62 fb 0c 00 	lea    rcx,[rip+0xcfb62]        # 0x3f4a88
  324f26:	e8 61 e1 ff ff       	call   0x32308c
  324f2b:	44 88 35 e7 20 0d 00 	mov    BYTE PTR [rip+0xd20e7],r14b        # 0x3f7019
  324f32:	44 38 25 0f ed 0c 00 	cmp    BYTE PTR [rip+0xced0f],r12b        # 0x3f3c48
  324f39:	75 09                	jne    0x324f44
  324f3b:	44 38 25 46 ee 0c 00 	cmp    BYTE PTR [rip+0xcee46],r12b        # 0x3f3d88
  324f42:	74 31                	je     0x324f75
  324f44:	44 38 25 cf 20 0d 00 	cmp    BYTE PTR [rip+0xd20cf],r12b        # 0x3f701a
  324f4b:	75 28                	jne    0x324f75
  324f4d:	48 8b 15 ac 1f 0b 00 	mov    rdx,QWORD PTR [rip+0xb1fac]        # 0x3d6f00
  324f54:	4c 8d 05 59 9a 00 00 	lea    r8,[rip+0x9a59]        # 0x32e9b4
  324f5b:	48 81 c2 68 6d 6b 0f 	add    rdx,0xf6b6d68
  324f62:	48 8d 0d af fa 0c 00 	lea    rcx,[rip+0xcfaaf]        # 0x3f4a18
  324f69:	e8 1e e1 ff ff       	call   0x32308c
  324f6e:	44 88 35 a5 20 0d 00 	mov    BYTE PTR [rip+0xd20a5],r14b        # 0x3f701a
  324f75:	e8 22 8b fb ff       	call   0x2dda9c
  324f7a:	48 8b c8             	mov    rcx,rax
  324f7d:	4c 8b f8             	mov    r15,rax
  324f80:	e8 83 5f fa ff       	call   0x2caf08
  324f85:	f3 44 0f 10 1d c2 82 f6 ff 	movss  xmm11,DWORD PTR [rip+0xfffffffffff682c2]        # 0x28d250
  324f8e:	bb 10 00 00 00       	mov    ebx,0x10
  324f93:	45 0f 57 c0          	xorps  xmm8,xmm8
  324f97:	84 c0                	test   al,al
  324f99:	0f 84 c7 3d 00 00    	je     0x328d66
  324f9f:	49 8b cf             	mov    rcx,r15
  324fa2:	e8 f5 be fb ff       	call   0x2e0e9c
  324fa7:	84 c0                	test   al,al
  324fa9:	0f 84 b7 3d 00 00    	je     0x328d66
  324faf:	8a 15 73 df 0c 00    	mov    dl,BYTE PTR [rip+0xcdf73]        # 0x3f2f28
  324fb5:	48 8d 0d 7c a5 0c 00 	lea    rcx,[rip+0xca57c]        # 0x3ef538
  324fbc:	45 8a c6             	mov    r8b,r14b
  324fbf:	e8 90 47 00 00       	call   0x329754
  324fc4:	44 38 25 76 a5 0c 00 	cmp    BYTE PTR [rip+0xca576],r12b        # 0x3ef541
  324fcb:	74 05                	je     0x324fd2
  324fcd:	e8 56 43 00 00       	call   0x329328
  324fd2:	44 38 25 9f df 0c 00 	cmp    BYTE PTR [rip+0xcdf9f],r12b        # 0x3f2f78
  324fd9:	74 17                	je     0x324ff2
  324fdb:	33 d2                	xor    edx,edx
  324fdd:	48 8d 0d 34 f3 0c 00 	lea    rcx,[rip+0xcf334]        # 0x3f4318
  324fe4:	e8 fb 39 fc ff       	call   0x2e89e4
  324fe9:	84 c0                	test   al,al
  324feb:	74 05                	je     0x324ff2
  324fed:	e8 12 f9 ff ff       	call   0x324904
  324ff2:	4c 39 25 47 f2 0b 00 	cmp    QWORD PTR [rip+0xbf247],r12        # 0x3e4240
  324ff9:	75 70                	jne    0x32506b
  324ffb:	e8 9c b6 fb ff       	call   0x2e069c
  325000:	48 8b c8             	mov    rcx,rax
  325003:	48 8b d0             	mov    rdx,rax
  325006:	e8 fd 5e fa ff       	call   0x2caf08
  32500b:	84 c0                	test   al,al
  32500d:	74 5c                	je     0x32506b
  32500f:	48 8b ca             	mov    rcx,rdx
  325012:	e8 f1 b4 04 00       	call   0x370508
  325017:	48 8b c8             	mov    rcx,rax
  32501a:	48 8b f8             	mov    rdi,rax
  32501d:	e8 e6 5e fa ff       	call   0x2caf08
  325022:	84 c0                	test   al,al
  325024:	74 45                	je     0x32506b
  325026:	48 8d 54 24 42       	lea    rdx,[rsp+0x42]
  32502b:	48 8d 4c 24 42       	lea    rcx,[rsp+0x42]
  325030:	e8 fb 76 fa ff       	call   0x2cc730
  325035:	48 8b c8             	mov    rcx,rax
  325038:	e8 67 8c fa ff       	call   0x2cdca4
  32503d:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  325041:	48 8b d8             	mov    rbx,rax
  325044:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325049:	e8 2e e9 ff ff       	call   0x32397c
  32504e:	48 8b c8             	mov    rcx,rax
  325051:	e8 86 4b fc ff       	call   0x2e9bdc
  325056:	48 8b d0             	mov    rdx,rax
  325059:	4c 8b c3             	mov    r8,rbx
  32505c:	48 8b cf             	mov    rcx,rdi
  32505f:	e8 98 de 04 00       	call   0x372efc
  325064:	48 89 05 d5 f1 0b 00 	mov    QWORD PTR [rip+0xbf1d5],rax        # 0x3e4240
  32506b:	44 38 25 76 e7 0c 00 	cmp    BYTE PTR [rip+0xce776],r12b        # 0x3f37e8
  325072:	be 12 00 00 00       	mov    esi,0x12
  325077:	0f 84 a2 00 00 00    	je     0x32511f
  32507d:	41 8a d6             	mov    dl,r14b
  325080:	8b ce                	mov    ecx,esi
  325082:	e8 c5 0d fc ff       	call   0x2e5e4c
  325087:	84 c0                	test   al,al
  325089:	0f 84 90 00 00 00    	je     0x32511f
  32508f:	49 8b cf             	mov    rcx,r15
  325092:	e8 5d 52 04 00       	call   0x36a2f4
  325097:	48 8b c8             	mov    rcx,rax
  32509a:	48 8b f8             	mov    rdi,rax
  32509d:	e8 66 5e fa ff       	call   0x2caf08
  3250a2:	84 c0                	test   al,al
  3250a4:	74 79                	je     0x32511f
  3250a6:	48 8b cf             	mov    rcx,rdi
  3250a9:	e8 a6 09 fc ff       	call   0x2e5a54
  3250ae:	48 8b c8             	mov    rcx,rax
  3250b1:	48 8b d0             	mov    rdx,rax
  3250b4:	e8 4f 5e fa ff       	call   0x2caf08
  3250b9:	84 c0                	test   al,al
  3250bb:	74 62                	je     0x32511f
  3250bd:	48 8b ca             	mov    rcx,rdx
  3250c0:	e8 8f 12 fb ff       	call   0x2d6354
  3250c5:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3250c9:	48 8b d8             	mov    rbx,rax
  3250cc:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3250d1:	e8 6e ec ff ff       	call   0x323d44
  3250d6:	48 8b c8             	mov    rcx,rax
  3250d9:	e8 c6 34 fb ff       	call   0x2d85a4
  3250de:	48 8b c8             	mov    rcx,rax
  3250e1:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  3250eb:	e8 5c 0a fc ff       	call   0x2e5b4c
  3250f0:	48 3b d8             	cmp    rbx,rax
  3250f3:	75 2a                	jne    0x32511f
  3250f5:	f6 87 d8 01 00 00 08 	test   BYTE PTR [rdi+0x1d8],0x8
  3250fc:	75 21                	jne    0x32511f
  3250fe:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  325102:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325107:	e8 08 f0 ff ff       	call   0x324114
  32510c:	48 8b c8             	mov    rcx,rax
  32510f:	e8 e0 34 fb ff       	call   0x2d85f4
  325114:	48 8b d0             	mov    rdx,rax
  325117:	48 8b cf             	mov    rcx,rdi
  32511a:	e8 11 1b 04 00       	call   0x366c30
  32511f:	44 38 25 72 e6 0c 00 	cmp    BYTE PTR [rip+0xce672],r12b        # 0x3f3798
  325126:	f3 44 0f 10 3d b5 89 f6 ff 	movss  xmm15,DWORD PTR [rip+0xfffffffffff689b5]        # 0x28dae4
  32512f:	0f 84 c4 00 00 00    	je     0x3251f9
  325135:	49 8b cf             	mov    rcx,r15
  325138:	e8 b7 51 04 00       	call   0x36a2f4
  32513d:	48 8b c8             	mov    rcx,rax
  325140:	48 8b f8             	mov    rdi,rax
  325143:	e8 c0 5d fa ff       	call   0x2caf08
  325148:	84 c0                	test   al,al
  32514a:	0f 84 a9 00 00 00    	je     0x3251f9
  325150:	48 8b cf             	mov    rcx,rdi
  325153:	e8 fc 08 fc ff       	call   0x2e5a54
  325158:	48 8b c8             	mov    rcx,rax
  32515b:	48 8b d0             	mov    rdx,rax
  32515e:	e8 a5 5d fa ff       	call   0x2caf08
  325163:	84 c0                	test   al,al
  325165:	0f 84 8e 00 00 00    	je     0x3251f9
  32516b:	48 8b ca             	mov    rcx,rdx
  32516e:	e8 e1 11 fb ff       	call   0x2d6354
  325173:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  325177:	48 8b d8             	mov    rbx,rax
  32517a:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  32517f:	e8 00 f3 ff ff       	call   0x324484
  325184:	48 8b c8             	mov    rcx,rax
  325187:	e8 40 8b fa ff       	call   0x2cdccc
  32518c:	48 8b c8             	mov    rcx,rax
  32518f:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  325199:	e8 ae 09 fc ff       	call   0x2e5b4c
  32519e:	48 3b d8             	cmp    rbx,rax
  3251a1:	75 56                	jne    0x3251f9
  3251a3:	41 0f 28 cf          	movaps xmm1,xmm15
  3251a7:	48 8d 0d 6e 1e 0d 00 	lea    rcx,[rip+0xd1e6e]        # 0x3f701c
  3251ae:	e8 c9 09 fc ff       	call   0x2e5b7c
  3251b3:	84 c0                	test   al,al
  3251b5:	74 42                	je     0x3251f9
  3251b7:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3251bb:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3251c0:	e8 c3 f3 ff ff       	call   0x324588
  3251c5:	48 8b c8             	mov    rcx,rax
  3251c8:	e8 27 34 fb ff       	call   0x2d85f4
  3251cd:	48 8b d0             	mov    rdx,rax
  3251d0:	48 8b cf             	mov    rcx,rdi
  3251d3:	e8 58 1a 04 00       	call   0x366c30
  3251d8:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3251dc:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3251e1:	e8 ea f3 ff ff       	call   0x3245d0
  3251e6:	48 8b c8             	mov    rcx,rax
  3251e9:	e8 9a 7f fb ff       	call   0x2dd188
  3251ee:	48 8b d0             	mov    rdx,rax
  3251f1:	48 8b cf             	mov    rcx,rdi
  3251f4:	e8 37 1a 04 00       	call   0x366c30
  3251f9:	44 38 25 98 ea 0c 00 	cmp    BYTE PTR [rip+0xcea98],r12b        # 0x3f3c98
  325200:	0f 84 e8 00 00 00    	je     0x3252ee
  325206:	41 8a d6             	mov    dl,r14b
  325209:	8b ce                	mov    ecx,esi
  32520b:	e8 00 37 fc ff       	call   0x2e8910
  325210:	84 c0                	test   al,al
  325212:	0f 84 d6 00 00 00    	je     0x3252ee
  325218:	49 8b cf             	mov    rcx,r15
  32521b:	e8 24 30 04 00       	call   0x368244
  325220:	84 c0                	test   al,al
  325222:	0f 84 c6 00 00 00    	je     0x3252ee
  325228:	49 8b cf             	mov    rcx,r15
  32522b:	e8 c4 50 04 00       	call   0x36a2f4
  325230:	48 8b c8             	mov    rcx,rax
  325233:	48 8b f8             	mov    rdi,rax
  325236:	e8 cd 5c fa ff       	call   0x2caf08
  32523b:	84 c0                	test   al,al
  32523d:	0f 84 ab 00 00 00    	je     0x3252ee
  325243:	48 8b cf             	mov    rcx,rdi
  325246:	e8 09 08 fc ff       	call   0x2e5a54
  32524b:	48 8b c8             	mov    rcx,rax
  32524e:	4c 8b c8             	mov    r9,rax
  325251:	e8 b2 5c fa ff       	call   0x2caf08
  325256:	84 c0                	test   al,al
  325258:	0f 84 90 00 00 00    	je     0x3252ee
  32525e:	ba d8 01 00 00       	mov    edx,0x1d8
  325263:	48 8b cf             	mov    rcx,rdi
  325266:	e8 d1 9b fb ff       	call   0x2dee3c
  32526b:	49 8b c9             	mov    rcx,r9
  32526e:	0f b7 30             	movzx  esi,WORD PTR [rax]
  325271:	e8 de 10 fb ff       	call   0x2d6354
  325276:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  32527a:	48 8b d8             	mov    rbx,rax
  32527d:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325282:	e8 95 f4 ff ff       	call   0x32471c
  325287:	48 8b c8             	mov    rcx,rax
  32528a:	e8 3d 8a fa ff       	call   0x2cdccc
  32528f:	48 8b c8             	mov    rcx,rax
  325292:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  32529c:	e8 ab 08 fc ff       	call   0x2e5b4c
  3252a1:	48 3b d8             	cmp    rbx,rax
  3252a4:	75 48                	jne    0x3252ee
  3252a6:	40 f6 c6 08          	test   sil,0x8
  3252aa:	74 42                	je     0x3252ee
  3252ac:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3252b0:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3252b5:	e8 f6 f4 ff ff       	call   0x3247b0
  3252ba:	48 8b c8             	mov    rcx,rax
  3252bd:	e8 12 56 00 00       	call   0x32a8d4
  3252c2:	48 8b d0             	mov    rdx,rax
  3252c5:	48 8b cf             	mov    rcx,rdi
  3252c8:	e8 63 19 04 00       	call   0x366c30
  3252cd:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3252d1:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3252d6:	e8 f1 e3 ff ff       	call   0x3236cc
  3252db:	48 8b c8             	mov    rcx,rax
  3252de:	e8 a5 7e fb ff       	call   0x2dd188
  3252e3:	48 8b d0             	mov    rdx,rax
  3252e6:	48 8b cf             	mov    rcx,rdi
  3252e9:	e8 42 19 04 00       	call   0x366c30
  3252ee:	44 38 25 23 35 ef ff 	cmp    BYTE PTR [rip+0xffffffffffef3523],r12b        # 0x218818
  3252f5:	74 39                	je     0x325330
  3252f7:	44 38 25 3a db 0c 00 	cmp    BYTE PTR [rip+0xcdb3a],r12b        # 0x3f2e38
  3252fe:	74 30                	je     0x325330
  325300:	48 8b 05 f9 1b 0b 00 	mov    rax,QWORD PTR [rip+0xb1bf9]        # 0x3d6f00
  325307:	48 8b 90 80 74 0a 0f 	mov    rdx,QWORD PTR [rax+0xf0a7480]
  32530e:	48 8b ca             	mov    rcx,rdx
  325311:	e8 f2 5b fa ff       	call   0x2caf08
  325316:	84 c0                	test   al,al
  325318:	74 16                	je     0x325330
  32531a:	48 8b 92 b8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xb8]
  325321:	48 8b ca             	mov    rcx,rdx
  325324:	e8 df 5b fa ff       	call   0x2caf08
  325329:	84 c0                	test   al,al
  32532b:	74 03                	je     0x325330
  32532d:	44 89 32             	mov    DWORD PTR [rdx],r14d
  325330:	44 38 25 e9 1c 0d 00 	cmp    BYTE PTR [rip+0xd1ce9],r12b        # 0x3f7020
  325337:	74 0e                	je     0x325347
  325339:	44 38 25 31 0b 0c 00 	cmp    BYTE PTR [rip+0xc0b31],r12b        # 0x3e5e71
  325340:	74 05                	je     0x325347
  325342:	41 8a c6             	mov    al,r14b
  325345:	eb 08                	jmp    0x32534f
  325347:	49 8b cf             	mov    rcx,r15
  32534a:	e8 19 31 04 00       	call   0x368468
  32534f:	44 38 25 82 52 0c 00 	cmp    BYTE PTR [rip+0xc5282],r12b        # 0x3ea5d8
  325356:	88 05 c4 1c 0d 00    	mov    BYTE PTR [rip+0xd1cc4],al        # 0x3f7020
  32535c:	74 24                	je     0x325382
  32535e:	44 38 25 3b 1f 0b 00 	cmp    BYTE PTR [rip+0xb1f3b],r12b        # 0x3d72a0
  325365:	74 1b                	je     0x325382
  325367:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32536c:	e8 4b 28 0a 00       	call   0x3c7bbc
  325371:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  325375:	f2 41 0f 11 45 44    	movsd  QWORD PTR [r13+0x44],xmm0
  32537b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  32537e:	41 89 45 4c          	mov    DWORD PTR [r13+0x4c],eax
  325382:	e8 49 2a fd ff       	call   0x2f7dd0
  325387:	84 c0                	test   al,al
  325389:	74 36                	je     0x3253c1
  32538b:	44 38 25 0e 1f 0b 00 	cmp    BYTE PTR [rip+0xb1f0e],r12b        # 0x3d72a0
  325392:	74 2d                	je     0x3253c1
  325394:	44 38 25 5d fc 0b 00 	cmp    BYTE PTR [rip+0xbfc5d],r12b        # 0x3e4ff8
  32539b:	74 24                	je     0x3253c1
  32539d:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3253a2:	44 88 35 7f 52 0c 00 	mov    BYTE PTR [rip+0xc527f],r14b        # 0x3ea628
  3253a9:	e8 0e 28 0a 00       	call   0x3c7bbc
  3253ae:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3253b2:	f2 41 0f 11 45 44    	movsd  QWORD PTR [r13+0x44],xmm0
  3253b8:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3253bb:	41 89 45 4c          	mov    DWORD PTR [r13+0x4c],eax
  3253bf:	eb 07                	jmp    0x3253c8
  3253c1:	44 88 25 60 52 0c 00 	mov    BYTE PTR [rip+0xc5260],r12b        # 0x3ea628
  3253c8:	44 38 25 f9 db 0c 00 	cmp    BYTE PTR [rip+0xcdbf9],r12b        # 0x3f2fc8
  3253cf:	74 41                	je     0x325412
  3253d1:	49 8b cf             	mov    rcx,r15
  3253d4:	e8 ab 36 04 00       	call   0x368a84
  3253d9:	48 8b c8             	mov    rcx,rax
  3253dc:	48 8b d0             	mov    rdx,rax
  3253df:	e8 24 5b fa ff       	call   0x2caf08
  3253e4:	84 c0                	test   al,al
  3253e6:	74 2a                	je     0x325412
  3253e8:	48 8b ca             	mov    rcx,rdx
  3253eb:	e8 04 ca 04 00       	call   0x371df4
  3253f0:	48 8b c8             	mov    rcx,rax
  3253f3:	48 8b d8             	mov    rbx,rax
  3253f6:	e8 0d 5b fa ff       	call   0x2caf08
  3253fb:	84 c0                	test   al,al
  3253fd:	74 13                	je     0x325412
  3253ff:	49 8b cf             	mov    rcx,r15
  325402:	e8 05 43 04 00       	call   0x36970c
  325407:	0f 28 c8             	movaps xmm1,xmm0
  32540a:	48 8b cb             	mov    rcx,rbx
  32540d:	e8 1a 66 04 00       	call   0x36ba2c
  325412:	44 38 25 e8 2e 0b 00 	cmp    BYTE PTR [rip+0xb2ee8],r12b        # 0x3d8301
  325419:	0f 84 bc 05 00 00    	je     0x3259db
  32541f:	49 8b cf             	mov    rcx,r15
  325422:	e8 5d 36 04 00       	call   0x368a84
  325427:	48 8b c8             	mov    rcx,rax
  32542a:	48 8b f8             	mov    rdi,rax
  32542d:	e8 d6 5a fa ff       	call   0x2caf08
  325432:	84 c0                	test   al,al
  325434:	0f 84 a1 05 00 00    	je     0x3259db
  32543a:	48 8b cf             	mov    rcx,rdi
  32543d:	e8 22 c0 04 00       	call   0x371464
  325442:	48 8b c8             	mov    rcx,rax
  325445:	48 8b d8             	mov    rbx,rax
  325448:	e8 bb 5a fa ff       	call   0x2caf08
  32544d:	84 c0                	test   al,al
  32544f:	0f 84 86 05 00 00    	je     0x3259db
  325455:	48 8b cf             	mov    rcx,rdi
  325458:	e8 ef c0 04 00       	call   0x37154c
  32545d:	48 8b c8             	mov    rcx,rax
  325460:	48 8b f8             	mov    rdi,rax
  325463:	e8 a0 5a fa ff       	call   0x2caf08
  325468:	84 c0                	test   al,al
  32546a:	0f 84 95 05 00 00    	je     0x325a05
  325470:	48 8b cb             	mov    rcx,rbx
  325473:	e8 c0 64 04 00       	call   0x36b938
  325478:	48 8b c8             	mov    rcx,rax
  32547b:	48 8b f0             	mov    rsi,rax
  32547e:	e8 85 5a fa ff       	call   0x2caf08
  325483:	84 c0                	test   al,al
  325485:	0f 84 7a 05 00 00    	je     0x325a05
  32548b:	48 8b ce             	mov    rcx,rsi
  32548e:	e8 29 d6 04 00       	call   0x372abc
  325493:	48 8b c8             	mov    rcx,rax
  325496:	4c 8b e8             	mov    r13,rax
  325499:	e8 6a 5a fa ff       	call   0x2caf08
  32549e:	84 c0                	test   al,al
  3254a0:	0f 84 5f 05 00 00    	je     0x325a05
  3254a6:	f3 44 0f 10 93 ac 03 00 00 	movss  xmm10,DWORD PTR [rbx+0x3ac]
  3254af:	48 8b cf             	mov    rcx,rdi
  3254b2:	e8 65 d1 04 00       	call   0x37261c
  3254b7:	3d 71 3d b7 34       	cmp    eax,0x34b73d71
  3254bc:	75 0c                	jne    0x3254ca
  3254be:	48 8b cb             	mov    rcx,rbx
  3254c1:	e8 3e 60 04 00       	call   0x36b504
  3254c6:	44 0f 28 d0          	movaps xmm10,xmm0
  3254ca:	f3 0f 10 3d b2 0b 0c 00 	movss  xmm7,DWORD PTR [rip+0xc0bb2]        # 0x3e6084
  3254d2:	48 8b cb             	mov    rcx,rbx
  3254d5:	f3 0f 5d 3d 1b 86 f6 ff 	minss  xmm7,DWORD PTR [rip+0xfffffffffff6861b]        # 0x28daf8
  3254dd:	e8 76 62 04 00       	call   0x36b758
  3254e2:	f3 0f 10 76 44       	movss  xmm6,DWORD PTR [rsi+0x44]
  3254e7:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3254ec:	f3 0f 58 76 40       	addss  xmm6,DWORD PTR [rsi+0x40]
  3254f1:	49 8b cf             	mov    rcx,r15
  3254f4:	f3 41 0f 59 f2       	mulss  xmm6,xmm10
  3254f9:	f3 0f 59 f7          	mulss  xmm6,xmm7
  3254fd:	e8 fe 2b 04 00       	call   0x368100
  325502:	48 8b c8             	mov    rcx,rax
  325505:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  32550c:	0f 28 d6             	movaps xmm2,xmm6
  32550f:	e8 58 a1 fb ff       	call   0x2df66c
  325514:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  325518:	49 8b cf             	mov    rcx,r15
  32551b:	e8 44 3c 04 00       	call   0x369164
  325520:	e8 8b ad fb ff       	call   0x2e02b0
  325525:	48 8b c8             	mov    rcx,rax
  325528:	4c 8b e0             	mov    r12,rax
  32552b:	e8 d8 59 fa ff       	call   0x2caf08
  325530:	84 c0                	test   al,al
  325532:	0f 84 95 04 00 00    	je     0x3259cd
  325538:	49 8b cc             	mov    rcx,r12
  32553b:	e8 5c b9 fb ff       	call   0x2e0e9c
  325540:	84 c0                	test   al,al
  325542:	0f 84 85 04 00 00    	je     0x3259cd
  325548:	49 8b cc             	mov    rcx,r12
  32554b:	e8 04 05 fc ff       	call   0x2e5a54
  325550:	48 8b c8             	mov    rcx,rax
  325553:	48 8b d0             	mov    rdx,rax
  325556:	e8 ad 59 fa ff       	call   0x2caf08
  32555b:	84 c0                	test   al,al
  32555d:	0f 84 9f 04 00 00    	je     0x325a02
  325563:	48 8b ca             	mov    rcx,rdx
  325566:	e8 e9 0d fb ff       	call   0x2d6354
  32556b:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32556f:	48 8b f8             	mov    rdi,rax
  325572:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325577:	e8 8c e1 ff ff       	call   0x323708
  32557c:	48 8b c8             	mov    rcx,rax
  32557f:	e8 04 7c fb ff       	call   0x2dd188
  325584:	48 8b c8             	mov    rcx,rax
  325587:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  325591:	e8 b6 05 fc ff       	call   0x2e5b4c
  325596:	41 b8 37 00 00 00    	mov    r8d,0x37
  32559c:	48 8d 55 60          	lea    rdx,[rbp+0x60]
  3255a0:	48 3b f8             	cmp    rdi,rax
  3255a3:	48 8b d8             	mov    rbx,rax
  3255a6:	49 8b cc             	mov    rcx,r12
  3255a9:	41 8d 40 d4          	lea    eax,[r8-0x2c]
  3255ad:	44 0f 44 c0          	cmove  r8d,eax
  3255b1:	e8 32 36 04 00       	call   0x368be8
  3255b6:	41 b8 36 00 00 00    	mov    r8d,0x36
  3255bc:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  3255c0:	48 3b fb             	cmp    rdi,rbx
  3255c3:	49 8b cc             	mov    rcx,r12
  3255c6:	41 8d 78 d9          	lea    edi,[r8-0x27]
  3255ca:	44 0f 44 c7          	cmove  r8d,edi
  3255ce:	e8 15 36 04 00       	call   0x368be8
  3255d3:	48 8d 55 70          	lea    rdx,[rbp+0x70]
  3255d7:	49 8b cc             	mov    rcx,r12
  3255da:	e8 b1 41 04 00       	call   0x369790
  3255df:	f3 0f 10 5d 68       	movss  xmm3,DWORD PTR [rbp+0x68]
  3255e4:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3255e9:	f3 0f 10 55 c4       	movss  xmm2,DWORD PTR [rbp-0x3c]
  3255ee:	f3 0f 10 4d 60       	movss  xmm1,DWORD PTR [rbp+0x60]
  3255f3:	e8 b0 25 0a 00       	call   0x3c7ba8
  3255f8:	f3 0f 10 15 98 da f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6da98]        # 0x293098
  325600:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  325605:	0f 57 db             	xorps  xmm3,xmm3
  325608:	0f 57 c9             	xorps  xmm1,xmm1
  32560b:	48 8b d8             	mov    rbx,rax
  32560e:	e8 95 25 0a 00       	call   0x3c7ba8
  325613:	4c 8b c0             	mov    r8,rax
  325616:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  32561a:	48 8b cb             	mov    rcx,rbx
  32561d:	e8 e6 a0 fb ff       	call   0x2df708
  325622:	45 33 e4             	xor    r12d,r12d
  325625:	44 38 25 9c 28 0b 00 	cmp    BYTE PTR [rip+0xb289c],r12b        # 0x3d7ec8
  32562c:	74 2e                	je     0x32565c
  32562e:	f3 0f 10 15 fe da f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6dafe]        # 0x293134
  325636:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32563b:	0f 57 db             	xorps  xmm3,xmm3
  32563e:	0f 57 c9             	xorps  xmm1,xmm1
  325641:	e8 62 25 0a 00       	call   0x3c7ba8
  325646:	4c 8b c0             	mov    r8,rax
  325649:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  32564e:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  325652:	e8 b1 a0 fb ff       	call   0x2df708
  325657:	48 8b c8             	mov    rcx,rax
  32565a:	eb 14                	jmp    0x325670
  32565c:	f2 0f 10 45 70       	movsd  xmm0,QWORD PTR [rbp+0x70]
  325661:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  325665:	8b 45 78             	mov    eax,DWORD PTR [rbp+0x78]
  325668:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
  32566d:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  325670:	8b 41 08             	mov    eax,DWORD PTR [rcx+0x8]
  325673:	f2 44 0f 10 21       	movsd  xmm12,QWORD PTR [rcx]
  325678:	f2 0f 10 45 50       	movsd  xmm0,QWORD PTR [rbp+0x50]
  32567d:	f3 45 0f 10 6d 38    	movss  xmm13,DWORD PTR [r13+0x38]
  325683:	f3 45 0f 10 75 34    	movss  xmm14,DWORD PTR [r13+0x34]
  325689:	f3 45 0f 10 7d 44    	movss  xmm15,DWORD PTR [r13+0x44]
  32568f:	f3 44 0f 10 4e 44    	movss  xmm9,DWORD PTR [rsi+0x44]
  325695:	f3 0f 10 76 40       	movss  xmm6,DWORD PTR [rsi+0x40]
  32569a:	89 45 10             	mov    DWORD PTR [rbp+0x10],eax
  32569d:	8b 45 58             	mov    eax,DWORD PTR [rbp+0x58]
  3256a0:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  3256a4:	8b 41 08             	mov    eax,DWORD PTR [rcx+0x8]
  3256a7:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  3256aa:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  3256b0:	f2 44 0f 11 65 b0    	movsd  QWORD PTR [rbp-0x50],xmm12
  3256b6:	e8 b1 13 fc ff       	call   0x2e6a6c
  3256bb:	44 8b c0             	mov    r8d,eax
  3256be:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  3256c5:	0f 57 db             	xorps  xmm3,xmm3
  3256c8:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3256cd:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  3256d1:	e8 4a cc fb ff       	call   0x2e2320
  3256d6:	84 c0                	test   al,al
  3256d8:	0f 84 b5 02 00 00    	je     0x325993
  3256de:	8b 05 34 d4 0c 00    	mov    eax,DWORD PTR [rip+0xcd434]        # 0x3f2b18
  3256e4:	66 0f 6e c0          	movd   xmm0,eax
  3256e8:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3256eb:	0f 2f 05 66 e9 0c 00 	comiss xmm0,DWORD PTR [rip+0xce966]        # 0x3f4058
  3256f2:	0f 82 90 02 00 00    	jb     0x325988
  3256f8:	8b 05 4a ea 0c 00    	mov    eax,DWORD PTR [rip+0xcea4a]        # 0x3f4148
  3256fe:	f3 44 0f 58 ce       	addss  xmm9,xmm6
  325703:	f3 45 0f 59 ca       	mulss  xmm9,xmm10
  325708:	85 c0                	test   eax,eax
  32570a:	75 05                	jne    0x325711
  32570c:	8d 58 05             	lea    ebx,[rax+0x5]
  32570f:	eb 21                	jmp    0x325732
  325711:	41 3b c6             	cmp    eax,r14d
  325714:	75 04                	jne    0x32571a
  325716:	8b df                	mov    ebx,edi
  325718:	eb 18                	jmp    0x325732
  32571a:	83 f8 02             	cmp    eax,0x2
  32571d:	75 05                	jne    0x325724
  32571f:	8d 58 17             	lea    ebx,[rax+0x17]
  325722:	eb 0e                	jmp    0x325732
  325724:	bb 05 00 00 00       	mov    ebx,0x5
  325729:	83 f8 03             	cmp    eax,0x3
  32572c:	8d 4b 1e             	lea    ecx,[rbx+0x1e]
  32572f:	0f 44 d9             	cmove  ebx,ecx
  325732:	f3 44 0f 10 1d 19 7b f6 ff 	movss  xmm11,DWORD PTR [rip+0xfffffffffff67b19]        # 0x28d254
  32573b:	8d 43 ff             	lea    eax,[rbx-0x1]
  32573e:	66 0f 6e c0          	movd   xmm0,eax
  325742:	41 8b f4             	mov    esi,r12d
  325745:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  325748:	f3 44 0f 5e d8       	divss  xmm11,xmm0
  32574d:	41 0f 5a c7          	cvtps2pd xmm0,xmm15
  325751:	f2 0f 11 45 40       	movsd  QWORD PTR [rbp+0x40],xmm0
  325756:	41 0f 5a c5          	cvtps2pd xmm0,xmm13
  32575a:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
  32575f:	41 0f 5a c6          	cvtps2pd xmm0,xmm14
  325763:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  325769:	f3 44 0f 10 15 8a 83 f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff6838a]        # 0x28dafc
  325772:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  325776:	66 0f 6e c6          	movd   xmm0,esi
  32577a:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  32577f:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  325782:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  325787:	f3 44 0f 5c d0       	subss  xmm10,xmm0
  32578c:	0f 57 c0             	xorps  xmm0,xmm0
  32578f:	0f 11 85 d0 00 00 00 	movups XMMWORD PTR [rbp+0xd0],xmm0
  325796:	0f 11 85 e0 00 00 00 	movups XMMWORD PTR [rbp+0xe0],xmm0
  32579d:	41 0f 28 fa          	movaps xmm7,xmm10
  3257a1:	f3 0f 5d 3d 4f 83 f6 ff 	minss  xmm7,DWORD PTR [rip+0xfffffffffff6834f]        # 0x28daf8
  3257a9:	f3 41 0f 59 f9       	mulss  xmm7,xmm9
  3257ae:	0f 5a f7             	cvtps2pd xmm6,xmm7
  3257b1:	e8 76 df ff ff       	call   0x32372c
  3257b6:	48 8b c8             	mov    rcx,rax
  3257b9:	e8 d6 ac ff ff       	call   0x320494
  3257be:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  3257c5:	48 8b d0             	mov    rdx,rax
  3257c8:	f2 0f 10 45 40       	movsd  xmm0,QWORD PTR [rbp+0x40]
  3257cd:	0f 28 d6             	movaps xmm2,xmm6
  3257d0:	f2 0f 10 5c 24 60    	movsd  xmm3,QWORD PTR [rsp+0x60]
  3257d6:	66 49 0f 7e f0       	movq   r8,xmm6
  3257db:	f2 0f 11 44 24 28    	movsd  QWORD PTR [rsp+0x28],xmm0
  3257e1:	66 49 0f 7e d9       	movq   r9,xmm3
  3257e6:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  3257eb:	f2 0f 11 44 24 20    	movsd  QWORD PTR [rsp+0x20],xmm0
  3257f1:	e8 1e 8f fc ff       	call   0x2ee714
  3257f6:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  3257fd:	e8 52 0b fb ff       	call   0x2d6354
  325802:	48 8b c8             	mov    rcx,rax
  325805:	4c 8b e0             	mov    r12,rax
  325808:	e8 13 b6 fb ff       	call   0x2e0e20
  32580d:	48 8b f8             	mov    rdi,rax
  325810:	48 85 c0             	test   rax,rax
  325813:	75 31                	jne    0x325846
  325815:	41 0f 28 de          	movaps xmm3,xmm14
  325819:	f3 44 0f 11 7c 24 20 	movss  DWORD PTR [rsp+0x20],xmm15
  325820:	41 0f 28 d5          	movaps xmm2,xmm13
  325824:	0f 28 cf             	movaps xmm1,xmm7
  325827:	49 8b cc             	mov    rcx,r12
  32582a:	e8 35 a6 fb ff       	call   0x2dfe64
  32582f:	45 33 e4             	xor    r12d,r12d
  325832:	48 8b f8             	mov    rdi,rax
  325835:	48 85 c0             	test   rax,rax
  325838:	0f 84 1b 01 00 00    	je     0x325959
  32583e:	48 8b c8             	mov    rcx,rax
  325841:	e8 2a e2 fb ff       	call   0x2e3a70
  325846:	f2 0f 10 05 fa 19 0b 00 	movsd  xmm0,QWORD PTR [rip+0xb19fa]        # 0x3d7248
  32584e:	4c 8d 8d 80 00 00 00 	lea    r9,[rbp+0x80]
  325855:	8b 05 f5 19 0b 00    	mov    eax,DWORD PTR [rip+0xb19f5]        # 0x3d7250
  32585b:	4c 8d 85 90 00 00 00 	lea    r8,[rbp+0x90]
  325862:	44 8b 65 10          	mov    r12d,DWORD PTR [rbp+0x10]
  325866:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  32586a:	f2 0f 11 85 80 00 00 00 	movsd  QWORD PTR [rbp+0x80],xmm0
  325872:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  325876:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
  32587b:	89 85 88 00 00 00    	mov    DWORD PTR [rbp+0x88],eax
  325881:	8b 45 28             	mov    eax,DWORD PTR [rbp+0x28]
  325884:	f2 0f 11 45 30       	movsd  QWORD PTR [rbp+0x30],xmm0
  325889:	f2 44 0f 11 a5 90 00 00 00 	movsd  QWORD PTR [rbp+0x90],xmm12
  325892:	44 89 a5 98 00 00 00 	mov    DWORD PTR [rbp+0x98],r12d
  325899:	89 45 38             	mov    DWORD PTR [rbp+0x38],eax
  32589c:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  3258a1:	e8 ce ca fb ff       	call   0x2e2374
  3258a6:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  3258aa:	e8 a9 e2 fb ff       	call   0x2e3b58
  3258af:	84 c0                	test   al,al
  3258b1:	74 09                	je     0x3258bc
  3258b3:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  3258ba:	eb 62                	jmp    0x32591e
  3258bc:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
  3258c1:	4c 8d 4d 00          	lea    r9,[rbp+0x0]
  3258c5:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  3258c8:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  3258cc:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  3258d1:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3258d6:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  3258db:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3258e0:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  3258e3:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  3258e6:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  3258eb:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
  3258f0:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  3258f3:	8b 45 28             	mov    eax,DWORD PTR [rbp+0x28]
  3258f6:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3258fc:	f2 44 0f 11 64 24 70 	movsd  QWORD PTR [rsp+0x70],xmm12
  325903:	44 89 64 24 78       	mov    DWORD PTR [rsp+0x78],r12d
  325908:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  32590c:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  325911:	e8 3a 42 00 00       	call   0x329b50
  325916:	84 c0                	test   al,al
  325918:	75 48                	jne    0x325962
  32591a:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32591e:	45 33 e4             	xor    r12d,r12d
  325921:	c7 05 59 07 0c 00 00 00 80 3f 	mov    DWORD PTR [rip+0xc0759],0x3f800000        # 0x3e6084
  32592b:	44 88 25 06 e9 0b 00 	mov    BYTE PTR [rip+0xbe906],r12b        # 0x3e4238
  325932:	e8 85 22 0a 00       	call   0x3c7bbc
  325937:	41 03 f6             	add    esi,r14d
  32593a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  32593e:	f2 0f 11 05 9a 19 0b 00 	movsd  QWORD PTR [rip+0xb199a],xmm0        # 0x3d72e0
  325946:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  325949:	89 05 99 19 0b 00    	mov    DWORD PTR [rip+0xb1999],eax        # 0x3d72e8
  32594f:	3b f3                	cmp    esi,ebx
  325951:	0f 8c 12 fe ff ff    	jl     0x325769
  325957:	eb 2c                	jmp    0x325985
  325959:	44 88 25 d8 e8 0b 00 	mov    BYTE PTR [rip+0xbe8d8],r12b        # 0x3e4238
  325960:	eb 23                	jmp    0x325985
  325962:	44 89 25 7f 19 0b 00 	mov    DWORD PTR [rip+0xb197f],r12d        # 0x3d72e8
  325969:	45 33 e4             	xor    r12d,r12d
  32596c:	f3 44 0f 11 15 0f 07 0c 00 	movss  DWORD PTR [rip+0xc070f],xmm10        # 0x3e6084
  325975:	f2 44 0f 11 25 62 19 0b 00 	movsd  QWORD PTR [rip+0xb1962],xmm12        # 0x3d72e0
  32597e:	44 88 35 b3 e8 0b 00 	mov    BYTE PTR [rip+0xbe8b3],r14b        # 0x3e4238
  325985:	41 8b c4             	mov    eax,r12d
  325988:	41 03 c6             	add    eax,r14d
  32598b:	89 05 87 d1 0c 00    	mov    DWORD PTR [rip+0xcd187],eax        # 0x3f2b18
  325991:	eb 2f                	jmp    0x3259c2
  325993:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325997:	e8 20 22 0a 00       	call   0x3c7bbc
  32599c:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3259a0:	f2 0f 11 05 38 19 0b 00 	movsd  QWORD PTR [rip+0xb1938],xmm0        # 0x3d72e0
  3259a8:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3259ab:	89 05 37 19 0b 00    	mov    DWORD PTR [rip+0xb1937],eax        # 0x3d72e8
  3259b1:	c7 05 c9 06 0c 00 00 00 80 3f 	mov    DWORD PTR [rip+0xc06c9],0x3f800000        # 0x3e6084
  3259bb:	44 88 25 76 e8 0b 00 	mov    BYTE PTR [rip+0xbe876],r12b        # 0x3e4238
  3259c2:	f3 44 0f 10 3d 19 81 f6 ff 	movss  xmm15,DWORD PTR [rip+0xfffffffffff68119]        # 0x28dae4
  3259cb:	eb 38                	jmp    0x325a05
  3259cd:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3259d1:	e8 e6 21 0a 00       	call   0x3c7bbc
  3259d6:	45 33 e4             	xor    r12d,r12d
  3259d9:	eb 09                	jmp    0x3259e4
  3259db:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3259df:	e8 d8 21 0a 00       	call   0x3c7bbc
  3259e4:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3259e8:	f2 0f 11 05 f0 18 0b 00 	movsd  QWORD PTR [rip+0xb18f0],xmm0        # 0x3d72e0
  3259f0:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3259f3:	89 05 ef 18 0b 00    	mov    DWORD PTR [rip+0xb18ef],eax        # 0x3d72e8
  3259f9:	44 88 25 38 e8 0b 00 	mov    BYTE PTR [rip+0xbe838],r12b        # 0x3e4238
  325a00:	eb 03                	jmp    0x325a05
  325a02:	45 33 e4             	xor    r12d,r12d
  325a05:	44 38 25 0c 16 0c 00 	cmp    BYTE PTR [rip+0xc160c],r12b        # 0x3e7018
  325a0c:	0f 84 8c 07 00 00    	je     0x32619e
  325a12:	44 38 25 5f 24 0b 00 	cmp    BYTE PTR [rip+0xb245f],r12b        # 0x3d7e78
  325a19:	0f 84 7f 07 00 00    	je     0x32619e
  325a1f:	44 38 25 7a 18 0b 00 	cmp    BYTE PTR [rip+0xb187a],r12b        # 0x3d72a0
  325a26:	0f 84 72 07 00 00    	je     0x32619e
  325a2c:	49 8b cf             	mov    rcx,r15
  325a2f:	e8 50 30 04 00       	call   0x368a84
  325a34:	48 8b c8             	mov    rcx,rax
  325a37:	48 8b f0             	mov    rsi,rax
  325a3a:	e8 c9 54 fa ff       	call   0x2caf08
  325a3f:	84 c0                	test   al,al
  325a41:	0f 84 68 07 00 00    	je     0x3261af
  325a47:	48 8b ce             	mov    rcx,rsi
  325a4a:	e8 91 bc 04 00       	call   0x3716e0
  325a4f:	48 8b c8             	mov    rcx,rax
  325a52:	4c 8b e8             	mov    r13,rax
  325a55:	e8 ae 54 fa ff       	call   0x2caf08
  325a5a:	84 c0                	test   al,al
  325a5c:	0f 84 3c 07 00 00    	je     0x32619e
  325a62:	e8 49 a8 fb ff       	call   0x2e02b0
  325a67:	44 38 25 7a 18 0c 00 	cmp    BYTE PTR [rip+0xc187a],r12b        # 0x3e72e8
  325a6e:	48 8b f8             	mov    rdi,rax
  325a71:	f3 44 0f 10 2d 32 d6 f6 ff 	movss  xmm13,DWORD PTR [rip+0xfffffffffff6d632]        # 0x2930ac
  325a7a:	f3 44 0f 10 35 19 d6 f6 ff 	movss  xmm14,DWORD PTR [rip+0xfffffffffff6d619]        # 0x29309c
  325a83:	f2 44 0f 10 1d 84 d6 f6 ff 	movsd  xmm11,QWORD PTR [rip+0xfffffffffff6d684]        # 0x293110
  325a8c:	f3 44 0f 10 0d b3 d6 f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff6d6b3]        # 0x293148
  325a95:	f3 44 0f 10 15 42 87 f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff68742]        # 0x28e1e0
  325a9e:	f3 44 0f 10 25 45 87 f6 ff 	movss  xmm12,DWORD PTR [rip+0xfffffffffff68745]        # 0x28e1ec
  325aa7:	0f 84 52 03 00 00    	je     0x325dff
  325aad:	48 8b c8             	mov    rcx,rax
  325ab0:	e8 53 54 fa ff       	call   0x2caf08
  325ab5:	84 c0                	test   al,al
  325ab7:	0f 85 42 03 00 00    	jne    0x325dff
  325abd:	f2 0f 10 35 13 a5 0c 00 	movsd  xmm6,QWORD PTR [rip+0xca513]        # 0x3effd8
  325ac5:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  325ac9:	44 8b 25 10 a5 0c 00 	mov    r12d,DWORD PTR [rip+0xca510]        # 0x3effe0
  325ad0:	f2 0f 11 75 f0       	movsd  QWORD PTR [rbp-0x10],xmm6
  325ad5:	44 89 65 f8          	mov    DWORD PTR [rbp-0x8],r12d
  325ad9:	e8 7a e0 fb ff       	call   0x2e3b58
  325ade:	84 c0                	test   al,al
  325ae0:	0f 85 16 03 00 00    	jne    0x325dfc
  325ae6:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  325aea:	49 8b cf             	mov    rcx,r15
  325aed:	e8 72 36 04 00       	call   0x369164
  325af2:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  325af9:	49 8b cf             	mov    rcx,r15
  325afc:	48 8b d8             	mov    rbx,rax
  325aff:	e8 fc 25 04 00       	call   0x368100
  325b04:	48 8b c8             	mov    rcx,rax
  325b07:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  325b0e:	41 0f 28 d5          	movaps xmm2,xmm13
  325b12:	e8 55 9b fb ff       	call   0x2df66c
  325b17:	4c 8b c0             	mov    r8,rax
  325b1a:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  325b1e:	48 8b cb             	mov    rcx,rbx
  325b21:	e8 e2 9b fb ff       	call   0x2df708
  325b26:	f3 41 0f 10 bd f8 03 00 00 	movss  xmm7,DWORD PTR [r13+0x3f8]
  325b2f:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325b33:	e8 84 20 0a 00       	call   0x3c7bbc
  325b38:	4c 8d 4c 24 50       	lea    r9,[rsp+0x50]
  325b3d:	f3 44 0f 11 74 24 20 	movss  DWORD PTR [rsp+0x20],xmm14
  325b44:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  325b49:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  325b4d:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  325b51:	48 8d 8d 40 01 00 00 	lea    rcx,[rbp+0x140]
  325b58:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  325b5b:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  325b61:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  325b66:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  325b6a:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  325b6d:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  325b72:	f2 0f 11 74 24 70    	movsd  QWORD PTR [rsp+0x70],xmm6
  325b78:	44 89 64 24 78       	mov    DWORD PTR [rsp+0x78],r12d
  325b7d:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  325b80:	e8 0f 16 ff ff       	call   0x317194
  325b85:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  325b8a:	0f 10 40 10          	movups xmm0,XMMWORD PTR [rax+0x10]
  325b8e:	0f 10 48 20          	movups xmm1,XMMWORD PTR [rax+0x20]
  325b92:	0f 10 30             	movups xmm6,XMMWORD PTR [rax]
  325b95:	0f 29 85 00 01 00 00 	movaps XMMWORD PTR [rbp+0x100],xmm0
  325b9c:	0f 10 40 30          	movups xmm0,XMMWORD PTR [rax+0x30]
  325ba0:	0f 29 8d 10 01 00 00 	movaps XMMWORD PTR [rbp+0x110],xmm1
  325ba7:	0f 10 48 40          	movups xmm1,XMMWORD PTR [rax+0x40]
  325bab:	0f 29 85 20 01 00 00 	movaps XMMWORD PTR [rbp+0x120],xmm0
  325bb2:	0f 29 8d 30 01 00 00 	movaps XMMWORD PTR [rbp+0x130],xmm1
  325bb9:	0f 29 b5 f0 00 00 00 	movaps XMMWORD PTR [rbp+0xf0],xmm6
  325bc0:	e8 f7 1f 0a 00       	call   0x3c7bbc
  325bc5:	66 0f 7e f0          	movd   eax,xmm6
  325bc9:	45 33 e4             	xor    r12d,r12d
  325bcc:	84 c0                	test   al,al
  325bce:	74 76                	je     0x325c46
  325bd0:	f3 0f 10 85 04 01 00 00 	movss  xmm0,DWORD PTR [rbp+0x104]
  325bd8:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  325bdc:	f3 0f 58 05 a4 04 0c 00 	addss  xmm0,DWORD PTR [rip+0xc04a4]        # 0x3e6088
  325be4:	48 8d 8d 00 01 00 00 	lea    rcx,[rbp+0x100]
  325beb:	f3 0f 11 85 04 01 00 00 	movss  DWORD PTR [rbp+0x104],xmm0
  325bf3:	0f 5a c7             	cvtps2pd xmm0,xmm7
  325bf6:	f2 41 0f 5c c3       	subsd  xmm0,xmm11
  325bfb:	66 0f 5a f0          	cvtpd2ps xmm6,xmm0
  325bff:	e8 74 b6 fb ff       	call   0x2e1278
  325c04:	48 8b c8             	mov    rcx,rax
  325c07:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  325c0e:	0f 28 d6             	movaps xmm2,xmm6
  325c11:	e8 56 9a fb ff       	call   0x2df66c
  325c16:	f3 0f 10 15 32 76 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff67632]        # 0x28d250
  325c1e:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  325c25:	48 8d 0d 34 04 0c 00 	lea    rcx,[rip+0xc0434]        # 0x3e6060
  325c2c:	48 8b d8             	mov    rbx,rax
  325c2f:	e8 38 9a fb ff       	call   0x2df66c
  325c34:	4c 8b c0             	mov    r8,rax
  325c37:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  325c3c:	48 8b cb             	mov    rcx,rbx
  325c3f:	e8 88 9a fb ff       	call   0x2df6cc
  325c44:	eb 17                	jmp    0x325c5d
  325c46:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325c4a:	44 88 35 d0 13 0d 00 	mov    BYTE PTR [rip+0xd13d0],r14b        # 0x3f7021
  325c51:	44 88 25 20 02 0c 00 	mov    BYTE PTR [rip+0xc0220],r12b        # 0x3e5e78
  325c58:	e8 5f 1f 0a 00       	call   0x3c7bbc
  325c5d:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  325c61:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325c65:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  325c6b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  325c6e:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  325c72:	e8 45 1f 0a 00       	call   0x3c7bbc
  325c77:	48 8b d0             	mov    rdx,rax
  325c7a:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  325c7f:	e8 58 99 fb ff       	call   0x2df5dc
  325c84:	84 c0                	test   al,al
  325c86:	0f 84 32 01 00 00    	je     0x325dbe
  325c8c:	48 8b ce             	mov    rcx,rsi
  325c8f:	e8 c0 fd fb ff       	call   0x2e5a54
  325c94:	48 8b c8             	mov    rcx,rax
  325c97:	48 8b d0             	mov    rdx,rax
  325c9a:	e8 69 52 fa ff       	call   0x2caf08
  325c9f:	84 c0                	test   al,al
  325ca1:	0f 84 0f 01 00 00    	je     0x325db6
  325ca7:	48 8b ca             	mov    rcx,rdx
  325caa:	e8 a5 06 fb ff       	call   0x2d6354
  325caf:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  325cb3:	48 8b d8             	mov    rbx,rax
  325cb6:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325cbb:	e8 a0 da ff ff       	call   0x323760
  325cc0:	48 8b c8             	mov    rcx,rax
  325cc3:	e8 c0 74 fb ff       	call   0x2dd188
  325cc8:	48 8b c8             	mov    rcx,rax
  325ccb:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  325cd5:	e8 72 fe fb ff       	call   0x2e5b4c
  325cda:	48 3b d8             	cmp    rbx,rax
  325cdd:	75 06                	jne    0x325ce5
  325cdf:	41 0f 28 f1          	movaps xmm6,xmm9
  325ce3:	eb 04                	jmp    0x325ce9
  325ce5:	41 0f 28 f2          	movaps xmm6,xmm10
  325ce9:	0f 57 db             	xorps  xmm3,xmm3
  325cec:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325cf0:	41 0f 28 d4          	movaps xmm2,xmm12
  325cf4:	0f 57 c9             	xorps  xmm1,xmm1
  325cf7:	e8 ac 1e 0a 00       	call   0x3c7ba8
  325cfc:	f3 0f 10 3d 50 75 f6 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff67550]        # 0x28d254
  325d04:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  325d0b:	0f 28 d7             	movaps xmm2,xmm7
  325d0e:	48 8b c8             	mov    rcx,rax
  325d11:	e8 56 99 fb ff       	call   0x2df66c
  325d16:	c7 44 24 38 01 60 a1 48 	mov    DWORD PTR [rsp+0x38],0x48a16001
  325d1e:	4c 8d 4d 10          	lea    r9,[rbp+0x10]
  325d22:	f3 44 0f 11 44 24 30 	movss  DWORD PTR [rsp+0x30],xmm8
  325d29:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
  325d2e:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  325d32:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  325d36:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  325d3b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  325d3e:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  325d42:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
  325d47:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  325d4c:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  325d52:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  325d58:	e8 0f 44 00 00       	call   0x32a16c
  325d5d:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  325d61:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  325d66:	e8 c5 a1 fb ff       	call   0x2dff30
  325d6b:	0f 2f f8             	comiss xmm7,xmm0
  325d6e:	72 36                	jb     0x325da6
  325d70:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  325d75:	e8 de dd fb ff       	call   0x2e3b58
  325d7a:	84 c0                	test   al,al
  325d7c:	75 28                	jne    0x325da6
  325d7e:	44 88 25 9c 12 0d 00 	mov    BYTE PTR [rip+0xd129c],r12b        # 0x3f7021
  325d85:	44 88 35 ec 00 0c 00 	mov    BYTE PTR [rip+0xc00ec],r14b        # 0x3e5e78
  325d8c:	f3 0f 10 05 f4 02 0c 00 	movss  xmm0,DWORD PTR [rip+0xc02f4]        # 0x3e6088
  325d94:	0f 2f 05 8d d4 f6 ff 	comiss xmm0,DWORD PTR [rip+0xfffffffffff6d48d]        # 0x293228
  325d9b:	72 62                	jb     0x325dff
  325d9d:	44 89 25 e4 02 0c 00 	mov    DWORD PTR [rip+0xc02e4],r12d        # 0x3e6088
  325da4:	eb 59                	jmp    0x325dff
  325da6:	44 88 35 74 12 0d 00 	mov    BYTE PTR [rip+0xd1274],r14b        # 0x3f7021
  325dad:	44 88 25 c4 00 0c 00 	mov    BYTE PTR [rip+0xc00c4],r12b        # 0x3e5e78
  325db4:	eb 1c                	jmp    0x325dd2
  325db6:	8a 05 65 12 0d 00    	mov    al,BYTE PTR [rip+0xd1265]        # 0x3f7021
  325dbc:	eb 10                	jmp    0x325dce
  325dbe:	41 8a c6             	mov    al,r14b
  325dc1:	44 88 25 b0 00 0c 00 	mov    BYTE PTR [rip+0xc00b0],r12b        # 0x3e5e78
  325dc8:	88 05 53 12 0d 00    	mov    BYTE PTR [rip+0xd1253],al        # 0x3f7021
  325dce:	84 c0                	test   al,al
  325dd0:	74 ba                	je     0x325d8c
  325dd2:	f3 0f 10 05 ae 02 0c 00 	movss  xmm0,DWORD PTR [rip+0xc02ae]        # 0x3e6088
  325dda:	41 0f 2f c0          	comiss xmm0,xmm8
  325dde:	72 b4                	jb     0x325d94
  325de0:	b8 14 00 00 00       	mov    eax,0x14
  325de5:	f3 0f 58 05 ab d2 f6 ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffff6d2ab]        # 0x293098
  325ded:	41 2b c6             	sub    eax,r14d
  325df0:	75 f3                	jne    0x325de5
  325df2:	f3 0f 11 05 8e 02 0c 00 	movss  DWORD PTR [rip+0xc028e],xmm0        # 0x3e6088
  325dfa:	eb 98                	jmp    0x325d94
  325dfc:	45 33 e4             	xor    r12d,r12d
  325dff:	48 8b cf             	mov    rcx,rdi
  325e02:	e8 01 51 fa ff       	call   0x2caf08
  325e07:	84 c0                	test   al,al
  325e09:	0f 84 a0 03 00 00    	je     0x3261af
  325e0f:	48 8b cf             	mov    rcx,rdi
  325e12:	e8 85 b0 fb ff       	call   0x2e0e9c
  325e17:	84 c0                	test   al,al
  325e19:	0f 84 90 03 00 00    	je     0x3261af
  325e1f:	48 8b cf             	mov    rcx,rdi
  325e22:	e8 2d fc fb ff       	call   0x2e5a54
  325e27:	48 8b c8             	mov    rcx,rax
  325e2a:	48 8b d0             	mov    rdx,rax
  325e2d:	e8 d6 50 fa ff       	call   0x2caf08
  325e32:	84 c0                	test   al,al
  325e34:	0f 84 75 03 00 00    	je     0x3261af
  325e3a:	48 8b ca             	mov    rcx,rdx
  325e3d:	e8 12 05 fb ff       	call   0x2d6354
  325e42:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  325e46:	48 8b d8             	mov    rbx,rax
  325e49:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  325e4e:	e8 31 d9 ff ff       	call   0x323784
  325e53:	48 8b c8             	mov    rcx,rax
  325e56:	e8 2d 73 fb ff       	call   0x2dd188
  325e5b:	48 8b c8             	mov    rcx,rax
  325e5e:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  325e68:	e8 df fc fb ff       	call   0x2e5b4c
  325e6d:	b9 2f 00 00 00       	mov    ecx,0x2f
  325e72:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  325e76:	48 3b d8             	cmp    rbx,rax
  325e79:	44 8d 41 06          	lea    r8d,[rcx+0x6]
  325e7d:	44 0f 44 c1          	cmove  r8d,ecx
  325e81:	48 8b cf             	mov    rcx,rdi
  325e84:	e8 5f 2d 04 00       	call   0x368be8
  325e89:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  325e8d:	49 8b cf             	mov    rcx,r15
  325e90:	e8 cf 32 04 00       	call   0x369164
  325e95:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  325e9c:	49 8b cf             	mov    rcx,r15
  325e9f:	48 8b d8             	mov    rbx,rax
  325ea2:	e8 59 22 04 00       	call   0x368100
  325ea7:	48 8b c8             	mov    rcx,rax
  325eaa:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  325eb1:	41 0f 28 d5          	movaps xmm2,xmm13
  325eb5:	e8 b2 97 fb ff       	call   0x2df66c
  325eba:	4c 8b c0             	mov    r8,rax
  325ebd:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  325ec1:	48 8b cb             	mov    rcx,rbx
  325ec4:	e8 3f 98 fb ff       	call   0x2df708
  325ec9:	f3 41 0f 10 bd f8 03 00 00 	movss  xmm7,DWORD PTR [r13+0x3f8]
  325ed2:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325ed6:	e8 e1 1c 0a 00       	call   0x3c7bbc
  325edb:	4c 8d 4c 24 50       	lea    r9,[rsp+0x50]
  325ee0:	f3 44 0f 11 74 24 20 	movss  DWORD PTR [rsp+0x20],xmm14
  325ee7:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  325eec:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  325ef0:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  325ef4:	48 8d 8d 40 01 00 00 	lea    rcx,[rbp+0x140]
  325efb:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  325efe:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  325f04:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
  325f09:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  325f0d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  325f10:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  325f16:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  325f1b:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  325f1f:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  325f22:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  325f27:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  325f2a:	e8 65 12 ff ff       	call   0x317194
  325f2f:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  325f34:	0f 10 40 10          	movups xmm0,XMMWORD PTR [rax+0x10]
  325f38:	0f 10 48 20          	movups xmm1,XMMWORD PTR [rax+0x20]
  325f3c:	0f 10 30             	movups xmm6,XMMWORD PTR [rax]
  325f3f:	0f 29 85 00 01 00 00 	movaps XMMWORD PTR [rbp+0x100],xmm0
  325f46:	0f 10 40 30          	movups xmm0,XMMWORD PTR [rax+0x30]
  325f4a:	0f 29 8d 10 01 00 00 	movaps XMMWORD PTR [rbp+0x110],xmm1
  325f51:	0f 10 48 40          	movups xmm1,XMMWORD PTR [rax+0x40]
  325f55:	0f 29 85 20 01 00 00 	movaps XMMWORD PTR [rbp+0x120],xmm0
  325f5c:	0f 29 8d 30 01 00 00 	movaps XMMWORD PTR [rbp+0x130],xmm1
  325f63:	0f 29 b5 f0 00 00 00 	movaps XMMWORD PTR [rbp+0xf0],xmm6
  325f6a:	e8 4d 1c 0a 00       	call   0x3c7bbc
  325f6f:	66 0f 7e f0          	movd   eax,xmm6
  325f73:	84 c0                	test   al,al
  325f75:	74 76                	je     0x325fed
  325f77:	f3 0f 10 85 04 01 00 00 	movss  xmm0,DWORD PTR [rbp+0x104]
  325f7f:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  325f83:	f3 0f 58 05 fd 00 0c 00 	addss  xmm0,DWORD PTR [rip+0xc00fd]        # 0x3e6088
  325f8b:	48 8d 8d 00 01 00 00 	lea    rcx,[rbp+0x100]
  325f92:	f3 0f 11 85 04 01 00 00 	movss  DWORD PTR [rbp+0x104],xmm0
  325f9a:	0f 5a c7             	cvtps2pd xmm0,xmm7
  325f9d:	f2 41 0f 5c c3       	subsd  xmm0,xmm11
  325fa2:	66 0f 5a f0          	cvtpd2ps xmm6,xmm0
  325fa6:	e8 cd b2 fb ff       	call   0x2e1278
  325fab:	48 8b c8             	mov    rcx,rax
  325fae:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  325fb5:	0f 28 d6             	movaps xmm2,xmm6
  325fb8:	e8 af 96 fb ff       	call   0x2df66c
  325fbd:	f3 0f 10 15 8b 72 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6728b]        # 0x28d250
  325fc5:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  325fcc:	48 8d 0d 8d 00 0c 00 	lea    rcx,[rip+0xc008d]        # 0x3e6060
  325fd3:	48 8b d8             	mov    rbx,rax
  325fd6:	e8 91 96 fb ff       	call   0x2df66c
  325fdb:	4c 8b c0             	mov    r8,rax
  325fde:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  325fe3:	48 8b cb             	mov    rcx,rbx
  325fe6:	e8 e1 96 fb ff       	call   0x2df6cc
  325feb:	eb 17                	jmp    0x326004
  325fed:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  325ff1:	44 88 35 2a 10 0d 00 	mov    BYTE PTR [rip+0xd102a],r14b        # 0x3f7022
  325ff8:	44 88 25 79 fe 0b 00 	mov    BYTE PTR [rip+0xbfe79],r12b        # 0x3e5e78
  325fff:	e8 b8 1b 0a 00       	call   0x3c7bbc
  326004:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  326008:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32600c:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  326012:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  326015:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  326019:	e8 9e 1b 0a 00       	call   0x3c7bbc
  32601e:	48 8b d0             	mov    rdx,rax
  326021:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  326026:	e8 b1 95 fb ff       	call   0x2df5dc
  32602b:	84 c0                	test   al,al
  32602d:	0f 84 2d 01 00 00    	je     0x326160
  326033:	48 8b ce             	mov    rcx,rsi
  326036:	e8 19 fa fb ff       	call   0x2e5a54
  32603b:	48 8b c8             	mov    rcx,rax
  32603e:	48 8b d0             	mov    rdx,rax
  326041:	e8 c2 4e fa ff       	call   0x2caf08
  326046:	84 c0                	test   al,al
  326048:	0f 84 0a 01 00 00    	je     0x326158
  32604e:	48 8b ca             	mov    rcx,rdx
  326051:	e8 fe 02 fb ff       	call   0x2d6354
  326056:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32605a:	48 8b d8             	mov    rbx,rax
  32605d:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  326062:	e8 65 d7 ff ff       	call   0x3237cc
  326067:	48 8b c8             	mov    rcx,rax
  32606a:	e8 19 71 fb ff       	call   0x2dd188
  32606f:	48 8b c8             	mov    rcx,rax
  326072:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  32607c:	e8 cb fa fb ff       	call   0x2e5b4c
  326081:	48 3b d8             	cmp    rbx,rax
  326084:	74 04                	je     0x32608a
  326086:	45 0f 28 ca          	movaps xmm9,xmm10
  32608a:	0f 57 db             	xorps  xmm3,xmm3
  32608d:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326091:	41 0f 28 d4          	movaps xmm2,xmm12
  326095:	0f 57 c9             	xorps  xmm1,xmm1
  326098:	e8 0b 1b 0a 00       	call   0x3c7ba8
  32609d:	f3 0f 10 35 af 71 f6 ff 	movss  xmm6,DWORD PTR [rip+0xfffffffffff671af]        # 0x28d254
  3260a5:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  3260ac:	0f 28 d6             	movaps xmm2,xmm6
  3260af:	48 8b c8             	mov    rcx,rax
  3260b2:	e8 b5 95 fb ff       	call   0x2df66c
  3260b7:	c7 44 24 38 01 60 a1 48 	mov    DWORD PTR [rsp+0x38],0x48a16001
  3260bf:	4c 8d 4d 10          	lea    r9,[rbp+0x10]
  3260c3:	f3 44 0f 11 44 24 30 	movss  DWORD PTR [rsp+0x30],xmm8
  3260ca:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
  3260cf:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  3260d3:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3260d7:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3260dc:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3260df:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3260e3:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
  3260e8:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  3260ed:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  3260f4:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3260fa:	e8 6d 40 00 00       	call   0x32a16c
  3260ff:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  326103:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  326108:	e8 23 9e fb ff       	call   0x2dff30
  32610d:	0f 2f f0             	comiss xmm6,xmm0
  326110:	72 36                	jb     0x326148
  326112:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  326117:	e8 3c da fb ff       	call   0x2e3b58
  32611c:	84 c0                	test   al,al
  32611e:	75 28                	jne    0x326148
  326120:	44 88 25 fb 0e 0d 00 	mov    BYTE PTR [rip+0xd0efb],r12b        # 0x3f7022
  326127:	44 88 35 4a fd 0b 00 	mov    BYTE PTR [rip+0xbfd4a],r14b        # 0x3e5e78
  32612e:	f3 0f 10 05 52 ff 0b 00 	movss  xmm0,DWORD PTR [rip+0xbff52]        # 0x3e6088
  326136:	44 0f 2f c0          	comiss xmm8,xmm0
  32613a:	72 73                	jb     0x3261af
  32613c:	c7 05 42 ff 0b 00 00 00 16 43 	mov    DWORD PTR [rip+0xbff42],0x43160000        # 0x3e6088
  326146:	eb 67                	jmp    0x3261af
  326148:	44 88 35 d3 0e 0d 00 	mov    BYTE PTR [rip+0xd0ed3],r14b        # 0x3f7022
  32614f:	44 88 25 22 fd 0b 00 	mov    BYTE PTR [rip+0xbfd22],r12b        # 0x3e5e78
  326156:	eb 1c                	jmp    0x326174
  326158:	8a 05 c4 0e 0d 00    	mov    al,BYTE PTR [rip+0xd0ec4]        # 0x3f7022
  32615e:	eb 10                	jmp    0x326170
  326160:	41 8a c6             	mov    al,r14b
  326163:	44 88 25 0e fd 0b 00 	mov    BYTE PTR [rip+0xbfd0e],r12b        # 0x3e5e78
  32616a:	88 05 b2 0e 0d 00    	mov    BYTE PTR [rip+0xd0eb2],al        # 0x3f7022
  326170:	84 c0                	test   al,al
  326172:	74 ba                	je     0x32612e
  326174:	f3 0f 10 05 0c ff 0b 00 	movss  xmm0,DWORD PTR [rip+0xbff0c]        # 0x3e6088
  32617c:	41 0f 2f c0          	comiss xmm0,xmm8
  326180:	72 b4                	jb     0x326136
  326182:	b8 28 00 00 00       	mov    eax,0x28
  326187:	f3 0f 58 05 49 e0 f6 ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffff6e049]        # 0x2941d8
  32618f:	41 2b c6             	sub    eax,r14d
  326192:	75 f3                	jne    0x326187
  326194:	f3 0f 11 05 ec fe 0b 00 	movss  DWORD PTR [rip+0xbfeec],xmm0        # 0x3e6088
  32619c:	eb 98                	jmp    0x326136
  32619e:	c7 05 e0 fe 0b 00 00 00 15 43 	mov    DWORD PTR [rip+0xbfee0],0x43150000        # 0x3e6088
  3261a8:	44 88 25 c9 fc 0b 00 	mov    BYTE PTR [rip+0xbfcc9],r12b        # 0x3e5e78
  3261af:	44 38 25 e2 ee 0b 00 	cmp    BYTE PTR [rip+0xbeee2],r12b        # 0x3e5098
  3261b6:	74 5c                	je     0x326214
  3261b8:	44 38 25 b9 fc 0b 00 	cmp    BYTE PTR [rip+0xbfcb9],r12b        # 0x3e5e78
  3261bf:	74 53                	je     0x326214
  3261c1:	49 8b cf             	mov    rcx,r15
  3261c4:	e8 bb 28 04 00       	call   0x368a84
  3261c9:	48 8b c8             	mov    rcx,rax
  3261cc:	48 8b d0             	mov    rdx,rax
  3261cf:	e8 34 4d fa ff       	call   0x2caf08
  3261d4:	84 c0                	test   al,al
  3261d6:	74 3c                	je     0x326214
  3261d8:	48 8b ca             	mov    rcx,rdx
  3261db:	e8 00 b5 04 00       	call   0x3716e0
  3261e0:	48 8b c8             	mov    rcx,rax
  3261e3:	e8 20 4d fa ff       	call   0x2caf08
  3261e8:	84 c0                	test   al,al
  3261ea:	74 28                	je     0x326214
  3261ec:	f3 0f 10 0d a4 ce f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6cea4]        # 0x293098
  3261f4:	48 8d 0d 29 0e 0d 00 	lea    rcx,[rip+0xd0e29]        # 0x3f7024
  3261fb:	e8 7c f9 fb ff       	call   0x2e5b7c
  326200:	84 c0                	test   al,al
  326202:	74 10                	je     0x326214
  326204:	e8 13 71 03 00       	call   0x35d31c
  326209:	48 8b c8             	mov    rcx,rax
  32620c:	49 8b d7             	mov    rdx,r15
  32620f:	e8 28 1a ff ff       	call   0x317c3c
  326214:	41 83 cd ff          	or     r13d,0xffffffff
  326218:	44 38 25 c9 3d 0c 00 	cmp    BYTE PTR [rip+0xc3dc9],r12b        # 0x3e9fe8
  32621f:	0f 84 ce 01 00 00    	je     0x3263f3
  326225:	41 8a d6             	mov    dl,r14b
  326228:	48 8d 0d 69 df 0c 00 	lea    rcx,[rip+0xcdf69]        # 0x3f4198
  32622f:	e8 b0 27 fc ff       	call   0x2e89e4
  326234:	84 c0                	test   al,al
  326236:	0f 84 b7 01 00 00    	je     0x3263f3
  32623c:	4c 39 25 fd df 0b 00 	cmp    QWORD PTR [rip+0xbdffd],r12        # 0x3e4240
  326243:	0f 84 aa 01 00 00    	je     0x3263f3
  326249:	41 8a d6             	mov    dl,r14b
  32624c:	49 8b cf             	mov    rcx,r15
  32624f:	e8 14 4b 04 00       	call   0x36ad68
  326254:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326258:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  32625d:	e8 8e d5 ff ff       	call   0x3237f0
  326262:	48 8b c8             	mov    rcx,rax
  326265:	e8 52 a2 ff ff       	call   0x3204bc
  32626a:	48 8b d0             	mov    rdx,rax
  32626d:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  326274:	e8 53 60 fa ff       	call   0x2cc2cc
  326279:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32627d:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  326282:	e8 85 d5 ff ff       	call   0x32380c
  326287:	48 8b c8             	mov    rcx,rax
  32628a:	e8 f9 6e fb ff       	call   0x2dd188
  32628f:	48 8b d0             	mov    rdx,rax
  326292:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326296:	e8 31 60 fa ff       	call   0x2cc2cc
  32629b:	8b 05 97 0c 0d 00    	mov    eax,DWORD PTR [rip+0xd0c97]        # 0x3f6f38
  3262a1:	a8 04                	test   al,0x4
  3262a3:	0f 85 a3 00 00 00    	jne    0x32634c
  3262a9:	83 c8 04             	or     eax,0x4
  3262ac:	48 8d 54 24 41       	lea    rdx,[rsp+0x41]
  3262b1:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3262b6:	89 05 7c 0c 0d 00    	mov    DWORD PTR [rip+0xd0c7c],eax        # 0x3f6f38
  3262bc:	e8 6f 64 fa ff       	call   0x2cc730
  3262c1:	48 8b c8             	mov    rcx,rax
  3262c4:	e8 db 79 fa ff       	call   0x2cdca4
  3262c9:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3262ce:	48 8b f0             	mov    rsi,rax
  3262d1:	48 8d 4c 24 42       	lea    rcx,[rsp+0x42]
  3262d6:	e8 8d d5 ff ff       	call   0x323868
  3262db:	48 8b c8             	mov    rcx,rax
  3262de:	e8 61 7a fa ff       	call   0x2cdd44
  3262e3:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3262e8:	48 8b f8             	mov    rdi,rax
  3262eb:	48 8d 4c 24 42       	lea    rcx,[rsp+0x42]
  3262f0:	e8 3b 64 fa ff       	call   0x2cc730
  3262f5:	48 8b c8             	mov    rcx,rax
  3262f8:	e8 a7 79 fa ff       	call   0x2cdca4
  3262fd:	48 8d 95 d0 00 00 00 	lea    rdx,[rbp+0xd0]
  326304:	48 8b d8             	mov    rbx,rax
  326307:	48 8d 4c 24 42       	lea    rcx,[rsp+0x42]
  32630c:	e8 1f d5 ff ff       	call   0x323830
  326311:	48 8b c8             	mov    rcx,rax
  326314:	e8 c3 38 fc ff       	call   0x2e9bdc
  326319:	48 8b c8             	mov    rcx,rax
  32631c:	48 8b d3             	mov    rdx,rbx
  32631f:	e8 00 df 00 00       	call   0x334224
  326324:	48 8b c8             	mov    rcx,rax
  326327:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
  32632c:	4c 8b ce             	mov    r9,rsi
  32632f:	45 8b c5             	mov    r8d,r13d
  326332:	48 8b d7             	mov    rdx,rdi
  326335:	e8 72 e6 00 00       	call   0x3349ac
  32633a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32633d:	8b 05 f5 0b 0d 00    	mov    eax,DWORD PTR [rip+0xd0bf5]        # 0x3f6f38
  326343:	4c 89 05 de 0c 0d 00 	mov    QWORD PTR [rip+0xd0cde],r8        # 0x3f7028
  32634a:	eb 07                	jmp    0x326353
  32634c:	4c 8b 05 d5 0c 0d 00 	mov    r8,QWORD PTR [rip+0xd0cd5]        # 0x3f7028
  326353:	b9 08 00 00 00       	mov    ecx,0x8
  326358:	48 8d 1d d1 0c 0d 00 	lea    rbx,[rip+0xd0cd1]        # 0x3f7030
  32635f:	84 c1                	test   cl,al
  326361:	75 1a                	jne    0x32637d
  326363:	0b c1                	or     eax,ecx
  326365:	45 33 c9             	xor    r9d,r9d
  326368:	48 8b 0d f1 fa 0a 00 	mov    rcx,QWORD PTR [rip+0xafaf1]        # 0x3d5e60
  32636f:	48 8b d3             	mov    rdx,rbx
  326372:	89 05 c0 0b 0d 00    	mov    DWORD PTR [rip+0xd0bc0],eax        # 0x3f6f38
  326378:	e8 a7 59 fa ff       	call   0x2cbd24
  32637d:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  326384:	e8 63 74 fa ff       	call   0x2cd7ec
  326389:	48 8b c8             	mov    rcx,rax
  32638c:	e8 4b 82 fa ff       	call   0x2ce5dc
  326391:	4c 8b 05 a8 de 0b 00 	mov    r8,QWORD PTR [rip+0xbdea8]        # 0x3e4240
  326398:	4c 8b c8             	mov    r9,rax
  32639b:	48 8b 0d be fa 0a 00 	mov    rcx,QWORD PTR [rip+0xafabe]        # 0x3d5e60
  3263a2:	48 8b d3             	mov    rdx,rbx
  3263a5:	e8 ea bc fa ff       	call   0x2d2094
  3263aa:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3263ae:	e8 39 74 fa ff       	call   0x2cd7ec
  3263b3:	48 8b c8             	mov    rcx,rax
  3263b6:	e8 21 82 fa ff       	call   0x2ce5dc
  3263bb:	4c 8b 05 7e de 0b 00 	mov    r8,QWORD PTR [rip+0xbde7e]        # 0x3e4240
  3263c2:	4c 8b c8             	mov    r9,rax
  3263c5:	48 8b 0d 94 fa 0a 00 	mov    rcx,QWORD PTR [rip+0xafa94]        # 0x3d5e60
  3263cc:	48 8b d3             	mov    rdx,rbx
  3263cf:	e8 c0 bc fa ff       	call   0x2d2094
  3263d4:	33 d2                	xor    edx,edx
  3263d6:	49 8b cf             	mov    rcx,r15
  3263d9:	e8 8a 49 04 00       	call   0x36ad68
  3263de:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3263e2:	e8 0d 61 fa ff       	call   0x2cc4f4
  3263e7:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  3263ee:	e8 01 61 fa ff       	call   0x2cc4f4
  3263f3:	44 38 25 ae cd 0c 00 	cmp    BYTE PTR [rip+0xccdae],r12b        # 0x3f31a8
  3263fa:	0f 84 dd 02 00 00    	je     0x3266dd
  326400:	41 8a d6             	mov    dl,r14b
  326403:	48 8d 0d ee dd 0c 00 	lea    rcx,[rip+0xcddee]        # 0x3f41f8
  32640a:	e8 d5 25 fc ff       	call   0x2e89e4
  32640f:	84 c0                	test   al,al
  326411:	0f 84 cd 02 00 00    	je     0x3266e4
  326417:	4c 39 25 22 de 0b 00 	cmp    QWORD PTR [rip+0xbde22],r12        # 0x3e4240
  32641e:	0f 84 68 01 00 00    	je     0x32658c
  326424:	44 38 25 dd 0c 0d 00 	cmp    BYTE PTR [rip+0xd0cdd],r12b        # 0x3f7108
  32642b:	0f 85 68 01 00 00    	jne    0x326599
  326431:	41 8a d6             	mov    dl,r14b
  326434:	49 8b cf             	mov    rcx,r15
  326437:	e8 2c 49 04 00       	call   0x36ad68
  32643c:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326440:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326445:	e8 6a d5 ff ff       	call   0x3239b4
  32644a:	48 8b c8             	mov    rcx,rax
  32644d:	e8 a2 21 fb ff       	call   0x2d85f4
  326452:	48 8b d0             	mov    rdx,rax
  326455:	4c 8d 05 5c e1 0c 00 	lea    r8,[rip+0xce15c]        # 0x3f45b8
  32645c:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326460:	e8 af 42 fc ff       	call   0x2ea714
  326465:	8b 05 cd 0a 0d 00    	mov    eax,DWORD PTR [rip+0xd0acd]        # 0x3f6f38
  32646b:	b9 10 00 00 00       	mov    ecx,0x10
  326470:	84 c1                	test   cl,al
  326472:	0f 85 a2 00 00 00    	jne    0x32651a
  326478:	0b c1                	or     eax,ecx
  32647a:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  32647f:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326484:	89 05 ae 0a 0d 00    	mov    DWORD PTR [rip+0xd0aae],eax        # 0x3f6f38
  32648a:	e8 a1 62 fa ff       	call   0x2cc730
  32648f:	48 8b c8             	mov    rcx,rax
  326492:	e8 0d 78 fa ff       	call   0x2cdca4
  326497:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  32649c:	48 8b f0             	mov    rsi,rax
  32649f:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3264a4:	e8 4b d5 ff ff       	call   0x3239f4
  3264a9:	48 8b c8             	mov    rcx,rax
  3264ac:	e8 93 78 fa ff       	call   0x2cdd44
  3264b1:	48 8d 54 24 42       	lea    rdx,[rsp+0x42]
  3264b6:	48 8b f8             	mov    rdi,rax
  3264b9:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3264be:	e8 6d 62 fa ff       	call   0x2cc730
  3264c3:	48 8b c8             	mov    rcx,rax
  3264c6:	e8 d9 77 fa ff       	call   0x2cdca4
  3264cb:	48 8d 95 d0 00 00 00 	lea    rdx,[rbp+0xd0]
  3264d2:	48 8b d8             	mov    rbx,rax
  3264d5:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3264da:	e8 f9 d4 ff ff       	call   0x3239d8
  3264df:	48 8b c8             	mov    rcx,rax
  3264e2:	e8 f5 36 fc ff       	call   0x2e9bdc
  3264e7:	48 8b c8             	mov    rcx,rax
  3264ea:	48 8b d3             	mov    rdx,rbx
  3264ed:	e8 32 dd 00 00       	call   0x334224
  3264f2:	48 8b c8             	mov    rcx,rax
  3264f5:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
  3264fa:	4c 8b ce             	mov    r9,rsi
  3264fd:	45 8b c5             	mov    r8d,r13d
  326500:	48 8b d7             	mov    rdx,rdi
  326503:	e8 a4 e4 00 00       	call   0x3349ac
  326508:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32650b:	8b 05 27 0a 0d 00    	mov    eax,DWORD PTR [rip+0xd0a27]        # 0x3f6f38
  326511:	4c 89 05 f8 0b 0d 00 	mov    QWORD PTR [rip+0xd0bf8],r8        # 0x3f7110
  326518:	eb 07                	jmp    0x326521
  32651a:	4c 8b 05 ef 0b 0d 00 	mov    r8,QWORD PTR [rip+0xd0bef]        # 0x3f7110
  326521:	a8 20                	test   al,0x20
  326523:	75 1f                	jne    0x326544
  326525:	48 8b 0d 34 f9 0a 00 	mov    rcx,QWORD PTR [rip+0xaf934]        # 0x3d5e60
  32652c:	48 8d 15 ed 0b 0d 00 	lea    rdx,[rip+0xd0bed]        # 0x3f7120
  326533:	83 c8 20             	or     eax,0x20
  326536:	45 33 c9             	xor    r9d,r9d
  326539:	89 05 f9 09 0d 00    	mov    DWORD PTR [rip+0xd09f9],eax        # 0x3f6f38
  32653f:	e8 e0 57 fa ff       	call   0x2cbd24
  326544:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326548:	e8 9f 72 fa ff       	call   0x2cd7ec
  32654d:	48 8b c8             	mov    rcx,rax
  326550:	e8 87 80 fa ff       	call   0x2ce5dc
  326555:	4c 8b 05 e4 dc 0b 00 	mov    r8,QWORD PTR [rip+0xbdce4]        # 0x3e4240
  32655c:	48 8d 15 bd 0b 0d 00 	lea    rdx,[rip+0xd0bbd]        # 0x3f7120
  326563:	48 8b 0d f6 f8 0a 00 	mov    rcx,QWORD PTR [rip+0xaf8f6]        # 0x3d5e60
  32656a:	4c 8b c8             	mov    r9,rax
  32656d:	e8 22 bb fa ff       	call   0x2d2094
  326572:	33 d2                	xor    edx,edx
  326574:	44 88 35 8d 0b 0d 00 	mov    BYTE PTR [rip+0xd0b8d],r14b        # 0x3f7108
  32657b:	49 8b cf             	mov    rcx,r15
  32657e:	e8 e5 47 04 00       	call   0x36ad68
  326583:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326587:	e9 4a 01 00 00       	jmp    0x3266d6
  32658c:	44 38 25 75 0b 0d 00 	cmp    BYTE PTR [rip+0xd0b75],r12b        # 0x3f7108
  326593:	0f 84 4b 01 00 00    	je     0x3266e4
  326599:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  32659e:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3265a3:	e8 68 d4 ff ff       	call   0x323a10
  3265a8:	48 8b c8             	mov    rcx,rax
  3265ab:	e8 94 77 fa ff       	call   0x2cdd44
  3265b0:	48 8b d0             	mov    rdx,rax
  3265b3:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  3265ba:	e8 0d 5d fa ff       	call   0x2cc2cc
  3265bf:	8b 05 73 09 0d 00    	mov    eax,DWORD PTR [rip+0xd0973]        # 0x3f6f38
  3265c5:	a8 40                	test   al,0x40
  3265c7:	0f 85 9f 00 00 00    	jne    0x32666c
  3265cd:	83 c8 40             	or     eax,0x40
  3265d0:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3265d5:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3265da:	89 05 58 09 0d 00    	mov    DWORD PTR [rip+0xd0958],eax        # 0x3f6f38
  3265e0:	e8 4b 61 fa ff       	call   0x2cc730
  3265e5:	48 8b c8             	mov    rcx,rax
  3265e8:	e8 b7 76 fa ff       	call   0x2cdca4
  3265ed:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  3265f1:	48 8b f0             	mov    rsi,rax
  3265f4:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3265f9:	e8 4a d4 ff ff       	call   0x323a48
  3265fe:	48 8b c8             	mov    rcx,rax
  326601:	e8 3e 77 fa ff       	call   0x2cdd44
  326606:	48 8d 54 24 42       	lea    rdx,[rsp+0x42]
  32660b:	48 8b f8             	mov    rdi,rax
  32660e:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  326613:	e8 18 61 fa ff       	call   0x2cc730
  326618:	48 8b c8             	mov    rcx,rax
  32661b:	e8 84 76 fa ff       	call   0x2cdca4
  326620:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326624:	48 8b d8             	mov    rbx,rax
  326627:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  32662c:	e8 fb d3 ff ff       	call   0x323a2c
  326631:	48 8b c8             	mov    rcx,rax
  326634:	e8 a3 35 fc ff       	call   0x2e9bdc
  326639:	48 8b c8             	mov    rcx,rax
  32663c:	48 8b d3             	mov    rdx,rbx
  32663f:	e8 e0 db 00 00       	call   0x334224
  326644:	48 8b c8             	mov    rcx,rax
  326647:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
  32664c:	4c 8b ce             	mov    r9,rsi
  32664f:	45 8b c5             	mov    r8d,r13d
  326652:	48 8b d7             	mov    rdx,rdi
  326655:	e8 52 e3 00 00       	call   0x3349ac
  32665a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32665d:	8b 05 d5 08 0d 00    	mov    eax,DWORD PTR [rip+0xd08d5]        # 0x3f6f38
  326663:	4c 89 05 8e 0b 0d 00 	mov    QWORD PTR [rip+0xd0b8e],r8        # 0x3f71f8
  32666a:	eb 07                	jmp    0x326673
  32666c:	4c 8b 05 85 0b 0d 00 	mov    r8,QWORD PTR [rip+0xd0b85]        # 0x3f71f8
  326673:	84 c0                	test   al,al
  326675:	78 20                	js     0x326697
  326677:	48 8b 0d e2 f7 0a 00 	mov    rcx,QWORD PTR [rip+0xaf7e2]        # 0x3d5e60
  32667e:	48 8d 15 7b 0b 0d 00 	lea    rdx,[rip+0xd0b7b]        # 0x3f7200
  326685:	0f ba e8 07          	bts    eax,0x7
  326689:	45 33 c9             	xor    r9d,r9d
  32668c:	89 05 a6 08 0d 00    	mov    DWORD PTR [rip+0xd08a6],eax        # 0x3f6f38
  326692:	e8 8d 56 fa ff       	call   0x2cbd24
  326697:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  32669e:	e8 49 71 fa ff       	call   0x2cd7ec
  3266a3:	48 8b c8             	mov    rcx,rax
  3266a6:	e8 31 7f fa ff       	call   0x2ce5dc
  3266ab:	4c 8b 05 8e db 0b 00 	mov    r8,QWORD PTR [rip+0xbdb8e]        # 0x3e4240
  3266b2:	48 8d 15 47 0b 0d 00 	lea    rdx,[rip+0xd0b47]        # 0x3f7200
  3266b9:	48 8b 0d a0 f7 0a 00 	mov    rcx,QWORD PTR [rip+0xaf7a0]        # 0x3d5e60
  3266c0:	4c 8b c8             	mov    r9,rax
  3266c3:	e8 cc b9 fa ff       	call   0x2d2094
  3266c8:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  3266cf:	44 88 25 32 0a 0d 00 	mov    BYTE PTR [rip+0xd0a32],r12b        # 0x3f7108
  3266d6:	e8 19 5e fa ff       	call   0x2cc4f4
  3266db:	eb 07                	jmp    0x3266e4
  3266dd:	44 88 25 24 0a 0d 00 	mov    BYTE PTR [rip+0xd0a24],r12b        # 0x3f7108
  3266e4:	44 38 25 bd cf 0c 00 	cmp    BYTE PTR [rip+0xccfbd],r12b        # 0x3f36a8
  3266eb:	f3 0f 10 35 e5 73 f6 ff 	movss  xmm6,DWORD PTR [rip+0xfffffffffff673e5]        # 0x28dad8
  3266f3:	74 40                	je     0x326735
  3266f5:	49 8b cf             	mov    rcx,r15
  3266f8:	e8 e7 3a 04 00       	call   0x36a1e4
  3266fd:	84 c0                	test   al,al
  3266ff:	74 34                	je     0x326735
  326701:	0f 28 ce             	movaps xmm1,xmm6
  326704:	48 8d 0d cd 0b 0d 00 	lea    rcx,[rip+0xd0bcd]        # 0x3f72d8
  32670b:	e8 6c f4 fb ff       	call   0x2e5b7c
  326710:	84 c0                	test   al,al
  326712:	74 21                	je     0x326735
  326714:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326718:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32671d:	e8 5a d3 ff ff       	call   0x323a7c
  326722:	48 8b c8             	mov    rcx,rax
  326725:	e8 6a 76 fa ff       	call   0x2cdd94
  32672a:	48 8b d0             	mov    rdx,rax
  32672d:	49 8b cf             	mov    rcx,r15
  326730:	e8 fb 04 04 00       	call   0x366c30
  326735:	44 38 25 bc cf 0c 00 	cmp    BYTE PTR [rip+0xccfbc],r12b        # 0x3f36f8
  32673c:	f3 44 0f 10 0d 0f ca f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff6ca0f]        # 0x293154
  326745:	0f 84 ee 00 00 00    	je     0x326839
  32674b:	44 38 25 66 31 0c 00 	cmp    BYTE PTR [rip+0xc3166],r12b        # 0x3e98b8
  326752:	0f 85 e1 00 00 00    	jne    0x326839
  326758:	e8 c3 29 00 00       	call   0x329120
  32675d:	48 8b c8             	mov    rcx,rax
  326760:	48 8b d8             	mov    rbx,rax
  326763:	e8 a0 47 fa ff       	call   0x2caf08
  326768:	84 c0                	test   al,al
  32676a:	0f 84 c9 00 00 00    	je     0x326839
  326770:	48 8b cb             	mov    rcx,rbx
  326773:	e8 24 a7 fb ff       	call   0x2e0e9c
  326778:	84 c0                	test   al,al
  32677a:	0f 84 b9 00 00 00    	je     0x326839
  326780:	48 8b cb             	mov    rcx,rbx
  326783:	e8 00 4b 04 00       	call   0x36b288
  326788:	84 c0                	test   al,al
  32678a:	0f 85 a9 00 00 00    	jne    0x326839
  326790:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  326795:	49 8b cf             	mov    rcx,r15
  326798:	e8 c7 29 04 00       	call   0x369164
  32679d:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  3267a3:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3267a8:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  3267ac:	48 8b cb             	mov    rcx,rbx
  3267af:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  3267b5:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  3267b9:	e8 f2 fe 03 00       	call   0x3666b0
  3267be:	48 8b cb             	mov    rcx,rbx
  3267c1:	0f 28 f8             	movaps xmm7,xmm0
  3267c4:	e8 1b 3a 04 00       	call   0x36a1e4
  3267c9:	84 c0                	test   al,al
  3267cb:	74 6c                	je     0x326839
  3267cd:	44 0f 2f cf          	comiss xmm9,xmm7
  3267d1:	72 34                	jb     0x326807
  3267d3:	0f 28 ce             	movaps xmm1,xmm6
  3267d6:	48 8d 0d ff 0a 0d 00 	lea    rcx,[rip+0xd0aff]        # 0x3f72dc
  3267dd:	e8 9a f3 fb ff       	call   0x2e5b7c
  3267e2:	84 c0                	test   al,al
  3267e4:	74 21                	je     0x326807
  3267e6:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3267ea:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3267ef:	e8 a0 d2 ff ff       	call   0x323a94
  3267f4:	48 8b c8             	mov    rcx,rax
  3267f7:	e8 10 9d ff ff       	call   0x32050c
  3267fc:	48 8b d0             	mov    rdx,rax
  3267ff:	48 8b cb             	mov    rcx,rbx
  326802:	e8 29 04 04 00       	call   0x366c30
  326807:	41 8a d6             	mov    dl,r14b
  32680a:	b9 13 00 00 00       	mov    ecx,0x13
  32680f:	e8 fc 20 fc ff       	call   0x2e8910
  326814:	84 c0                	test   al,al
  326816:	74 21                	je     0x326839
  326818:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32681c:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326821:	e8 8a d2 ff ff       	call   0x323ab0
  326826:	48 8b c8             	mov    rcx,rax
  326829:	e8 b6 9c ff ff       	call   0x3204e4
  32682e:	48 8b d0             	mov    rdx,rax
  326831:	48 8b cb             	mov    rcx,rbx
  326834:	e8 f7 03 04 00       	call   0x366c30
  326839:	44 38 25 18 ce 0c 00 	cmp    BYTE PTR [rip+0xcce18],r12b        # 0x3f3658
  326840:	74 71                	je     0x3268b3
  326842:	0f 28 ce             	movaps xmm1,xmm6
  326845:	48 8d 0d 94 0a 0d 00 	lea    rcx,[rip+0xd0a94]        # 0x3f72e0
  32684c:	e8 2b f3 fb ff       	call   0x2e5b7c
  326851:	84 c0                	test   al,al
  326853:	74 5e                	je     0x3268b3
  326855:	49 8b cf             	mov    rcx,r15
  326858:	e8 27 22 04 00       	call   0x368a84
  32685d:	48 8b c8             	mov    rcx,rax
  326860:	48 8b d8             	mov    rbx,rax
  326863:	e8 a0 46 fa ff       	call   0x2caf08
  326868:	84 c0                	test   al,al
  32686a:	74 47                	je     0x3268b3
  32686c:	48 8b cb             	mov    rcx,rbx
  32686f:	e8 d8 ac 04 00       	call   0x37154c
  326874:	48 8b c8             	mov    rcx,rax
  326877:	48 8b d0             	mov    rdx,rax
  32687a:	e8 89 46 fa ff       	call   0x2caf08
  32687f:	84 c0                	test   al,al
  326881:	74 30                	je     0x3268b3
  326883:	48 8b ca             	mov    rcx,rdx
  326886:	e8 91 bd 04 00       	call   0x37261c
  32688b:	3d 54 13 f5 cd       	cmp    eax,0xcdf51354
  326890:	75 21                	jne    0x3268b3
  326892:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326896:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32689b:	e8 2c d2 ff ff       	call   0x323acc
  3268a0:	48 8b c8             	mov    rcx,rax
  3268a3:	e8 54 9d ff ff       	call   0x3205fc
  3268a8:	48 8b d0             	mov    rdx,rax
  3268ab:	48 8b cb             	mov    rcx,rbx
  3268ae:	e8 7d 03 04 00       	call   0x366c30
  3268b3:	44 38 25 1e cb 0c 00 	cmp    BYTE PTR [rip+0xccb1e],r12b        # 0x3f33d8
  3268ba:	0f 84 60 01 00 00    	je     0x326a20
  3268c0:	41 8a d6             	mov    dl,r14b
  3268c3:	b9 3c 00 00 00       	mov    ecx,0x3c
  3268c8:	e8 7f f5 fb ff       	call   0x2e5e4c
  3268cd:	f2 0f 10 35 e3 d8 f6 ff 	movsd  xmm6,QWORD PTR [rip+0xfffffffffff6d8e3]        # 0x2941b8
  3268d5:	84 c0                	test   al,al
  3268d7:	74 1b                	je     0x3268f4
  3268d9:	f3 0f 10 05 03 0a 0d 00 	movss  xmm0,DWORD PTR [rip+0xd0a03]        # 0x3f72e4
  3268e1:	0f 5a c0             	cvtps2pd xmm0,xmm0
  3268e4:	f2 0f 58 c6          	addsd  xmm0,xmm6
  3268e8:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  3268ec:	f3 0f 11 05 f0 09 0d 00 	movss  DWORD PTR [rip+0xd09f0],xmm0        # 0x3f72e4
  3268f4:	41 8a d6             	mov    dl,r14b
  3268f7:	b9 3d 00 00 00       	mov    ecx,0x3d
  3268fc:	e8 4b f5 fb ff       	call   0x2e5e4c
  326901:	84 c0                	test   al,al
  326903:	74 1b                	je     0x326920
  326905:	f3 0f 10 05 d7 09 0d 00 	movss  xmm0,DWORD PTR [rip+0xd09d7]        # 0x3f72e4
  32690d:	0f 5a c0             	cvtps2pd xmm0,xmm0
  326910:	f2 0f 5c c6          	subsd  xmm0,xmm6
  326914:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  326918:	f3 0f 11 05 c4 09 0d 00 	movss  DWORD PTR [rip+0xd09c4],xmm0        # 0x3f72e4
  326920:	41 8a d6             	mov    dl,r14b
  326923:	b9 3e 00 00 00       	mov    ecx,0x3e
  326928:	e8 1f f5 fb ff       	call   0x2e5e4c
  32692d:	84 c0                	test   al,al
  32692f:	74 1b                	je     0x32694c
  326931:	f3 0f 10 05 af 09 0d 00 	movss  xmm0,DWORD PTR [rip+0xd09af]        # 0x3f72e8
  326939:	0f 5a c0             	cvtps2pd xmm0,xmm0
  32693c:	f2 0f 58 c6          	addsd  xmm0,xmm6
  326940:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  326944:	f3 0f 11 05 9c 09 0d 00 	movss  DWORD PTR [rip+0xd099c],xmm0        # 0x3f72e8
  32694c:	41 8a d6             	mov    dl,r14b
  32694f:	b9 3f 00 00 00       	mov    ecx,0x3f
  326954:	e8 f3 f4 fb ff       	call   0x2e5e4c
  326959:	84 c0                	test   al,al
  32695b:	74 1b                	je     0x326978
  32695d:	f3 0f 10 05 83 09 0d 00 	movss  xmm0,DWORD PTR [rip+0xd0983]        # 0x3f72e8
  326965:	0f 5a c0             	cvtps2pd xmm0,xmm0
  326968:	f2 0f 5c c6          	subsd  xmm0,xmm6
  32696c:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  326970:	f3 0f 11 05 70 09 0d 00 	movss  DWORD PTR [rip+0xd0970],xmm0        # 0x3f72e8
  326978:	49 8b cf             	mov    rcx,r15
  32697b:	e8 04 21 04 00       	call   0x368a84
  326980:	48 8b c8             	mov    rcx,rax
  326983:	48 8b f8             	mov    rdi,rax
  326986:	e8 7d 45 fa ff       	call   0x2caf08
  32698b:	84 c0                	test   al,al
  32698d:	0f 84 8d 00 00 00    	je     0x326a20
  326993:	48 8b cf             	mov    rcx,rdi
  326996:	e8 b9 f0 fb ff       	call   0x2e5a54
  32699b:	48 8b c8             	mov    rcx,rax
  32699e:	48 8b d0             	mov    rdx,rax
  3269a1:	e8 62 45 fa ff       	call   0x2caf08
  3269a6:	84 c0                	test   al,al
  3269a8:	74 76                	je     0x326a20
  3269aa:	48 8b ca             	mov    rcx,rdx
  3269ad:	e8 a2 f9 fa ff       	call   0x2d6354
  3269b2:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3269b7:	48 8b d8             	mov    rbx,rax
  3269ba:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3269bf:	e8 e8 d1 ff ff       	call   0x323bac
  3269c4:	48 8b c8             	mov    rcx,rax
  3269c7:	e8 48 cc fb ff       	call   0x2e3614
  3269cc:	48 be 25 23 22 84 e4 9c f2 cb 	movabs rsi,0xcbf29ce484222325
  3269d6:	48 8b c8             	mov    rcx,rax
  3269d9:	48 8b d6             	mov    rdx,rsi
  3269dc:	e8 6b f1 fb ff       	call   0x2e5b4c
  3269e1:	48 3b d8             	cmp    rbx,rax
  3269e4:	75 44                	jne    0x326a2a
  3269e6:	f3 0f 10 15 f6 08 0d 00 	movss  xmm2,DWORD PTR [rip+0xd08f6]        # 0x3f72e4
  3269ee:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3269f2:	f3 0f 10 0d ee 08 0d 00 	movss  xmm1,DWORD PTR [rip+0xd08ee]        # 0x3f72e8
  3269fa:	0f 57 db             	xorps  xmm3,xmm3
  3269fd:	e8 a6 11 0a 00       	call   0x3c7ba8
  326a02:	44 88 35 e3 08 0d 00 	mov    BYTE PTR [rip+0xd08e3],r14b        # 0x3f72ec
  326a09:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  326a0d:	f2 0f 11 87 00 03 00 00 	movsd  QWORD PTR [rdi+0x300],xmm0
  326a15:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  326a18:	89 87 08 03 00 00    	mov    DWORD PTR [rdi+0x308],eax
  326a1e:	eb 0a                	jmp    0x326a2a
  326a20:	48 be 25 23 22 84 e4 9c f2 cb 	movabs rsi,0xcbf29ce484222325
  326a2a:	44 38 25 bb 08 0d 00 	cmp    BYTE PTR [rip+0xd08bb],r12b        # 0x3f72ec
  326a31:	0f 84 b3 00 00 00    	je     0x326aea
  326a37:	44 38 25 9a c9 0c 00 	cmp    BYTE PTR [rip+0xcc99a],r12b        # 0x3f33d8
  326a3e:	0f 85 a6 00 00 00    	jne    0x326aea
  326a44:	49 8b cf             	mov    rcx,r15
  326a47:	e8 38 20 04 00       	call   0x368a84
  326a4c:	48 8b c8             	mov    rcx,rax
  326a4f:	48 8b f8             	mov    rdi,rax
  326a52:	e8 b1 44 fa ff       	call   0x2caf08
  326a57:	84 c0                	test   al,al
  326a59:	0f 84 8b 00 00 00    	je     0x326aea
  326a5f:	48 8b cf             	mov    rcx,rdi
  326a62:	e8 ed ef fb ff       	call   0x2e5a54
  326a67:	48 8b c8             	mov    rcx,rax
  326a6a:	48 8b d0             	mov    rdx,rax
  326a6d:	e8 96 44 fa ff       	call   0x2caf08
  326a72:	84 c0                	test   al,al
  326a74:	74 74                	je     0x326aea
  326a76:	48 8b ca             	mov    rcx,rdx
  326a79:	e8 d6 f8 fa ff       	call   0x2d6354
  326a7e:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  326a83:	48 8b d8             	mov    rbx,rax
  326a86:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326a8b:	e8 1c d1 ff ff       	call   0x323bac
  326a90:	48 8b c8             	mov    rcx,rax
  326a93:	e8 7c cb fb ff       	call   0x2e3614
  326a98:	48 8b c8             	mov    rcx,rax
  326a9b:	48 8b d6             	mov    rdx,rsi
  326a9e:	e8 a9 f0 fb ff       	call   0x2e5b4c
  326aa3:	48 3b d8             	cmp    rbx,rax
  326aa6:	75 42                	jne    0x326aea
  326aa8:	0f 57 db             	xorps  xmm3,xmm3
  326aab:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  326aaf:	0f 57 d2             	xorps  xmm2,xmm2
  326ab2:	0f 57 c9             	xorps  xmm1,xmm1
  326ab5:	e8 ee 10 0a 00       	call   0x3c7ba8
  326aba:	c7 05 20 08 0d 00 00 00 00 00 	mov    DWORD PTR [rip+0xd0820],0x0        # 0x3f72e4
  326ac4:	c7 05 1a 08 0d 00 00 00 00 00 	mov    DWORD PTR [rip+0xd081a],0x0        # 0x3f72e8
  326ace:	44 88 25 17 08 0d 00 	mov    BYTE PTR [rip+0xd0817],r12b        # 0x3f72ec
  326ad5:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  326ad9:	f2 0f 11 87 00 03 00 00 	movsd  QWORD PTR [rdi+0x300],xmm0
  326ae1:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  326ae4:	89 87 08 03 00 00    	mov    DWORD PTR [rdi+0x308],eax
  326aea:	44 38 25 e7 c3 0c 00 	cmp    BYTE PTR [rip+0xcc3e7],r12b        # 0x3f2ed8
  326af1:	74 54                	je     0x326b47
  326af3:	49 8b cf             	mov    rcx,r15
  326af6:	e8 89 1f 04 00       	call   0x368a84
  326afb:	48 8b c8             	mov    rcx,rax
  326afe:	48 8b d0             	mov    rdx,rax
  326b01:	e8 02 44 fa ff       	call   0x2caf08
  326b06:	84 c0                	test   al,al
  326b08:	74 3d                	je     0x326b47
  326b0a:	48 8b ca             	mov    rcx,rdx
  326b0d:	e8 ae ac 04 00       	call   0x3717c0
  326b12:	48 8b c8             	mov    rcx,rax
  326b15:	4c 8b c0             	mov    r8,rax
  326b18:	e8 eb 43 fa ff       	call   0x2caf08
  326b1d:	84 c0                	test   al,al
  326b1f:	74 26                	je     0x326b47
  326b21:	ba 48 03 00 00       	mov    edx,0x348
  326b26:	49 8b c8             	mov    rcx,r8
  326b29:	e8 0e 83 fb ff       	call   0x2dee3c
  326b2e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  326b31:	48 8b ca             	mov    rcx,rdx
  326b34:	e8 cf 43 fa ff       	call   0x2caf08
  326b39:	84 c0                	test   al,al
  326b3b:	74 0a                	je     0x326b47
  326b3d:	c7 82 70 01 00 00 00 00 80 3f 	mov    DWORD PTR [rdx+0x170],0x3f800000
  326b47:	44 38 25 fa cb 0c 00 	cmp    BYTE PTR [rip+0xccbfa],r12b        # 0x3f3748
  326b4e:	bf 00 04 00 00       	mov    edi,0x400
  326b53:	f3 0f 10 3d 69 76 f6 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff67669]        # 0x28e1c4
  326b5b:	0f 84 9e 00 00 00    	je     0x326bff
  326b61:	49 8b cf             	mov    rcx,r15
  326b64:	e8 1b 1f 04 00       	call   0x368a84
  326b69:	48 8b c8             	mov    rcx,rax
  326b6c:	48 8b d0             	mov    rdx,rax
  326b6f:	e8 94 43 fa ff       	call   0x2caf08
  326b74:	84 c0                	test   al,al
  326b76:	0f 84 83 00 00 00    	je     0x326bff
  326b7c:	48 8b ca             	mov    rcx,rdx
  326b7f:	e8 04 ab 04 00       	call   0x371688
  326b84:	48 8b c8             	mov    rcx,rax
  326b87:	48 8b d8             	mov    rbx,rax
  326b8a:	e8 79 43 fa ff       	call   0x2caf08
  326b8f:	84 c0                	test   al,al
  326b91:	74 6c                	je     0x326bff
  326b93:	0f 28 cf             	movaps xmm1,xmm7
  326b96:	48 8d 0d 53 07 0d 00 	lea    rcx,[rip+0xd0753]        # 0x3f72f0
  326b9d:	e8 da ef fb ff       	call   0x2e5b7c
  326ba2:	84 c0                	test   al,al
  326ba4:	74 59                	je     0x326bff
  326ba6:	ba d8 01 00 00       	mov    edx,0x1d8
  326bab:	48 8b cb             	mov    rcx,rbx
  326bae:	e8 89 82 fb ff       	call   0x2dee3c
  326bb3:	0f b7 08             	movzx  ecx,WORD PTR [rax]
  326bb6:	66 3b cf             	cmp    cx,di
  326bb9:	75 18                	jne    0x326bd3
  326bbb:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  326bbf:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326bc4:	e8 f7 cf ff ff       	call   0x323bc0
  326bc9:	48 8b c8             	mov    rcx,rax
  326bcc:	e8 23 71 fa ff       	call   0x2cdcf4
  326bd1:	eb 21                	jmp    0x326bf4
  326bd3:	b8 02 04 00 00       	mov    eax,0x402
  326bd8:	66 3b c8             	cmp    cx,ax
  326bdb:	75 22                	jne    0x326bff
  326bdd:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  326be2:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326be7:	e8 f4 cf ff ff       	call   0x323be0
  326bec:	48 8b c8             	mov    rcx,rax
  326bef:	e8 60 30 fc ff       	call   0x2e9c54
  326bf4:	48 8b d0             	mov    rdx,rax
  326bf7:	48 8b cb             	mov    rcx,rbx
  326bfa:	e8 31 00 04 00       	call   0x366c30
  326bff:	44 38 25 82 c7 0c 00 	cmp    BYTE PTR [rip+0xcc782],r12b        # 0x3f3388
  326c06:	0f 84 be 01 00 00    	je     0x326dca
  326c0c:	41 8a d6             	mov    dl,r14b
  326c0f:	b9 12 00 00 00       	mov    ecx,0x12
  326c14:	e8 33 f2 fb ff       	call   0x2e5e4c
  326c19:	84 c0                	test   al,al
  326c1b:	0f 84 94 01 00 00    	je     0x326db5
  326c21:	49 8b cf             	mov    rcx,r15
  326c24:	e8 cb 36 04 00       	call   0x36a2f4
  326c29:	48 8b c8             	mov    rcx,rax
  326c2c:	48 8b f8             	mov    rdi,rax
  326c2f:	e8 d4 42 fa ff       	call   0x2caf08
  326c34:	84 c0                	test   al,al
  326c36:	0f 84 8e 01 00 00    	je     0x326dca
  326c3c:	48 8b cf             	mov    rcx,rdi
  326c3f:	e8 10 ee fb ff       	call   0x2e5a54
  326c44:	48 8b c8             	mov    rcx,rax
  326c47:	48 8b d0             	mov    rdx,rax
  326c4a:	e8 b9 42 fa ff       	call   0x2caf08
  326c4f:	84 c0                	test   al,al
  326c51:	0f 84 73 01 00 00    	je     0x326dca
  326c57:	48 8b ca             	mov    rcx,rdx
  326c5a:	e8 f5 f6 fa ff       	call   0x2d6354
  326c5f:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  326c64:	48 8b d8             	mov    rbx,rax
  326c67:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326c6c:	e8 8b cf ff ff       	call   0x323bfc
  326c71:	48 8b c8             	mov    rcx,rax
  326c74:	e8 db 2f fc ff       	call   0x2e9c54
  326c79:	48 8b c8             	mov    rcx,rax
  326c7c:	48 8b d6             	mov    rdx,rsi
  326c7f:	e8 c8 ee fb ff       	call   0x2e5b4c
  326c84:	48 3b d8             	cmp    rbx,rax
  326c87:	0f 85 3d 01 00 00    	jne    0x326dca
  326c8d:	33 d2                	xor    edx,edx
  326c8f:	49 8b cf             	mov    rcx,r15
  326c92:	e8 95 66 fa ff       	call   0x2cd32c
  326c97:	33 d2                	xor    edx,edx
  326c99:	48 8b cf             	mov    rcx,rdi
  326c9c:	4c 8b e0             	mov    r12,rax
  326c9f:	e8 88 66 fa ff       	call   0x2cd32c
  326ca4:	48 8b cf             	mov    rcx,rdi
  326ca7:	48 8b d8             	mov    rbx,rax
  326caa:	e8 d9 45 04 00       	call   0x36b288
  326caf:	40 8a f0             	mov    sil,al
  326cb2:	48 85 db             	test   rbx,rbx
  326cb5:	74 0d                	je     0x326cc4
  326cb7:	49 3b dc             	cmp    rbx,r12
  326cba:	75 08                	jne    0x326cc4
  326cbc:	41 8a de             	mov    bl,r14b
  326cbf:	45 33 e4             	xor    r12d,r12d
  326cc2:	eb 06                	jmp    0x326cca
  326cc4:	45 33 e4             	xor    r12d,r12d
  326cc7:	41 8a dc             	mov    bl,r12b
  326cca:	45 33 c0             	xor    r8d,r8d
  326ccd:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326cd1:	48 8b cf             	mov    rcx,rdi
  326cd4:	e8 97 31 04 00       	call   0x369e70
  326cd9:	48 8b d0             	mov    rdx,rax
  326cdc:	48 8d 0d 7d 05 0b 00 	lea    rcx,[rip+0xb057d]        # 0x3d7260
  326ce3:	e8 20 89 fb ff       	call   0x2df608
  326ce8:	44 39 70 24          	cmp    DWORD PTR [rax+0x24],r14d
  326cec:	74 07                	je     0x326cf5
  326cee:	84 db                	test   bl,bl
  326cf0:	41 8a dc             	mov    bl,r12b
  326cf3:	74 03                	je     0x326cf8
  326cf5:	41 8a de             	mov    bl,r14b
  326cf8:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  326cfc:	e8 f3 57 fa ff       	call   0x2cc4f4
  326d01:	8b 05 a1 d3 0c 00    	mov    eax,DWORD PTR [rip+0xcd3a1]        # 0x3f40a8
  326d07:	41 3b c6             	cmp    eax,r14d
  326d0a:	75 43                	jne    0x326d4f
  326d0c:	40 84 f6             	test   sil,sil
  326d0f:	0f 84 b5 00 00 00    	je     0x326dca
  326d15:	84 db                	test   bl,bl
  326d17:	0f 84 ad 00 00 00    	je     0x326dca
  326d1d:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326d21:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326d26:	e8 ed ce ff ff       	call   0x323c18
  326d2b:	48 8b c8             	mov    rcx,rax
  326d2e:	e8 55 64 fb ff       	call   0x2dd188
  326d33:	48 8b d0             	mov    rdx,rax
  326d36:	48 8b cf             	mov    rcx,rdi
  326d39:	e8 f2 fe 03 00       	call   0x366c30
  326d3e:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  326d43:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326d48:	e8 ff ce ff ff       	call   0x323c4c
  326d4d:	eb 51                	jmp    0x326da0
  326d4f:	85 c0                	test   eax,eax
  326d51:	75 77                	jne    0x326dca
  326d53:	40 84 f6             	test   sil,sil
  326d56:	74 72                	je     0x326dca
  326d58:	f3 0f 10 0d 4c d4 f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6d44c]        # 0x2941ac
  326d60:	48 8d 0d 8d 05 0d 00 	lea    rcx,[rip+0xd058d]        # 0x3f72f4
  326d67:	e8 10 ee fb ff       	call   0x2e5b7c
  326d6c:	84 c0                	test   al,al
  326d6e:	74 5a                	je     0x326dca
  326d70:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326d74:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326d79:	e8 ea ce ff ff       	call   0x323c68
  326d7e:	48 8b c8             	mov    rcx,rax
  326d81:	e8 02 64 fb ff       	call   0x2dd188
  326d86:	48 8b d0             	mov    rdx,rax
  326d89:	48 8b cf             	mov    rcx,rdi
  326d8c:	e8 9f fe 03 00       	call   0x366c30
  326d91:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  326d96:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326d9b:	e8 ec ce ff ff       	call   0x323c8c
  326da0:	48 8b c8             	mov    rcx,rax
  326da3:	e8 ac 2e fc ff       	call   0x2e9c54
  326da8:	48 8b d0             	mov    rdx,rax
  326dab:	48 8b cf             	mov    rcx,rdi
  326dae:	e8 7d fe 03 00       	call   0x366c30
  326db3:	eb 15                	jmp    0x326dca
  326db5:	e8 86 f4 fb ff       	call   0x2e6240
  326dba:	f3 0f 58 05 e6 c2 f6 ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffff6c2e6]        # 0x2930a8
  326dc2:	f3 0f 11 05 2a 05 0d 00 	movss  DWORD PTR [rip+0xd052a],xmm0        # 0x3f72f4
  326dca:	44 38 25 d0 87 0c 00 	cmp    BYTE PTR [rip+0xc87d0],r12b        # 0x3ef5a1
  326dd1:	f3 44 0f 10 1d 76 64 f6 ff 	movss  xmm11,DWORD PTR [rip+0xfffffffffff66476]        # 0x28d250
  326dda:	0f 84 0b 01 00 00    	je     0x326eeb
  326de0:	41 0f 28 cb          	movaps xmm1,xmm11
  326de4:	48 8d 0d 0d 05 0d 00 	lea    rcx,[rip+0xd050d]        # 0x3f72f8
  326deb:	e8 8c ed fb ff       	call   0x2e5b7c
  326df0:	84 c0                	test   al,al
  326df2:	0f 84 f3 00 00 00    	je     0x326eeb
  326df8:	49 8b cf             	mov    rcx,r15
  326dfb:	e8 88 44 04 00       	call   0x36b288
  326e00:	84 c0                	test   al,al
  326e02:	74 1e                	je     0x326e22
  326e04:	49 8b cf             	mov    rcx,r15
  326e07:	e8 a4 25 04 00       	call   0x3693b0
  326e0c:	84 c0                	test   al,al
  326e0e:	74 12                	je     0x326e22
  326e10:	33 d2                	xor    edx,edx
  326e12:	49 8b cf             	mov    rcx,r15
  326e15:	e8 f2 33 04 00       	call   0x36a20c
  326e1a:	84 c0                	test   al,al
  326e1c:	0f 85 c9 00 00 00    	jne    0x326eeb
  326e22:	48 8b 3d df f0 0b 00 	mov    rdi,QWORD PTR [rip+0xbf0df]        # 0x3e5f08
  326e29:	48 8b cf             	mov    rcx,rdi
  326e2c:	e8 d7 40 fa ff       	call   0x2caf08
  326e31:	84 c0                	test   al,al
  326e33:	0f 84 b2 00 00 00    	je     0x326eeb
  326e39:	48 8b cf             	mov    rcx,rdi
  326e3c:	e8 5b a0 fb ff       	call   0x2e0e9c
  326e41:	84 c0                	test   al,al
  326e43:	0f 84 a2 00 00 00    	je     0x326eeb
  326e49:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  326e4e:	49 8b cf             	mov    rcx,r15
  326e51:	e8 0e 23 04 00       	call   0x369164
  326e56:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  326e5c:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  326e61:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  326e65:	48 8b cf             	mov    rcx,rdi
  326e68:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  326e6e:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  326e72:	e8 39 f8 03 00       	call   0x3666b0
  326e77:	44 0f 2f c8          	comiss xmm9,xmm0
  326e7b:	76 6e                	jbe    0x326eeb
  326e7d:	ba d8 01 00 00       	mov    edx,0x1d8
  326e82:	48 8b cf             	mov    rcx,rdi
  326e85:	e8 b2 7f fb ff       	call   0x2dee3c
  326e8a:	bb 10 00 00 00       	mov    ebx,0x10
  326e8f:	66 39 18             	cmp    WORD PTR [rax],bx
  326e92:	75 5c                	jne    0x326ef0
  326e94:	ba 98 02 00 00       	mov    edx,0x298
  326e99:	48 8b cf             	mov    rcx,rdi
  326e9c:	e8 9b 7f fb ff       	call   0x2dee3c
  326ea1:	44 38 20             	cmp    BYTE PTR [rax],r12b
  326ea4:	75 4a                	jne    0x326ef0
  326ea6:	48 8d 0d 7b d7 0c 00 	lea    rcx,[rip+0xcd77b]        # 0x3f4628
  326ead:	e8 26 1c fb ff       	call   0x2d8ad8
  326eb2:	48 83 f8 04          	cmp    rax,0x4
  326eb6:	75 38                	jne    0x326ef0
  326eb8:	48 8d 0d 69 d7 0c 00 	lea    rcx,[rip+0xcd769]        # 0x3f4628
  326ebf:	e8 28 69 fa ff       	call   0x2cd7ec
  326ec4:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326ec8:	48 8b d8             	mov    rbx,rax
  326ecb:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  326ed0:	e8 3f ce ff ff       	call   0x323d14
  326ed5:	48 8b c8             	mov    rcx,rax
  326ed8:	e8 8f 17 fb ff       	call   0x2d866c
  326edd:	48 8b d0             	mov    rdx,rax
  326ee0:	4c 8b c3             	mov    r8,rbx
  326ee3:	48 8b cf             	mov    rcx,rdi
  326ee6:	e8 91 fe 03 00       	call   0x366d7c
  326eeb:	bb 10 00 00 00       	mov    ebx,0x10
  326ef0:	44 38 25 c1 2e 0c 00 	cmp    BYTE PTR [rip+0xc2ec1],r12b        # 0x3e9db8
  326ef7:	0f 84 bc 01 00 00    	je     0x3270b9
  326efd:	49 8b cf             	mov    rcx,r15
  326f00:	e8 83 43 04 00       	call   0x36b288
  326f05:	84 c0                	test   al,al
  326f07:	74 1e                	je     0x326f27
  326f09:	49 8b cf             	mov    rcx,r15
  326f0c:	e8 9f 24 04 00       	call   0x3693b0
  326f11:	84 c0                	test   al,al
  326f13:	74 12                	je     0x326f27
  326f15:	33 d2                	xor    edx,edx
  326f17:	49 8b cf             	mov    rcx,r15
  326f1a:	e8 ed 32 04 00       	call   0x36a20c
  326f1f:	84 c0                	test   al,al
  326f21:	0f 85 92 01 00 00    	jne    0x3270b9
  326f27:	48 8b 3d d2 ef 0b 00 	mov    rdi,QWORD PTR [rip+0xbefd2]        # 0x3e5f00
  326f2e:	48 8b cf             	mov    rcx,rdi
  326f31:	e8 d2 3f fa ff       	call   0x2caf08
  326f36:	84 c0                	test   al,al
  326f38:	0f 84 69 01 00 00    	je     0x3270a7
  326f3e:	48 8b cf             	mov    rcx,rdi
  326f41:	e8 56 9f fb ff       	call   0x2e0e9c
  326f46:	84 c0                	test   al,al
  326f48:	0f 84 59 01 00 00    	je     0x3270a7
  326f4e:	41 0f 28 cf          	movaps xmm1,xmm15
  326f52:	48 8d 0d a3 03 0d 00 	lea    rcx,[rip+0xd03a3]        # 0x3f72fc
  326f59:	e8 1e ec fb ff       	call   0x2e5b7c
  326f5e:	84 c0                	test   al,al
  326f60:	0f 84 53 01 00 00    	je     0x3270b9
  326f66:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  326f6b:	49 8b cf             	mov    rcx,r15
  326f6e:	e8 f1 21 04 00       	call   0x369164
  326f73:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  326f79:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  326f7e:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  326f82:	48 8b cf             	mov    rcx,rdi
  326f85:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  326f8b:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  326f8f:	e8 1c f7 03 00       	call   0x3666b0
  326f94:	f3 0f 10 0d ec c1 f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6c1ec]        # 0x293188
  326f9c:	0f 2f c8             	comiss xmm1,xmm0
  326f9f:	0f 86 14 01 00 00    	jbe    0x3270b9
  326fa5:	ba 88 02 00 00       	mov    edx,0x288
  326faa:	48 8b cf             	mov    rcx,rdi
  326fad:	e8 8a 7e fb ff       	call   0x2dee3c
  326fb2:	48 8b cf             	mov    rcx,rdi
  326fb5:	ba d8 01 00 00       	mov    edx,0x1d8
  326fba:	48 8b f0             	mov    rsi,rax
  326fbd:	e8 7a 7e fb ff       	call   0x2dee3c
  326fc2:	66 39 18             	cmp    WORD PTR [rax],bx
  326fc5:	0f 84 ee 00 00 00    	je     0x3270b9
  326fcb:	4c 8d 2d c6 d6 0c 00 	lea    r13,[rip+0xcd6c6]        # 0x3f4698
  326fd2:	49 8b cd             	mov    rcx,r13
  326fd5:	e8 fe 1a fb ff       	call   0x2d8ad8
  326fda:	48 83 f8 04          	cmp    rax,0x4
  326fde:	0f 85 d5 00 00 00    	jne    0x3270b9
  326fe4:	40 8a 36             	mov    sil,BYTE PTR [rsi]
  326fe7:	40 84 f6             	test   sil,sil
  326fea:	75 32                	jne    0x32701e
  326fec:	49 8b cd             	mov    rcx,r13
  326fef:	e8 f8 67 fa ff       	call   0x2cd7ec
  326ff4:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  326ff8:	48 8b d8             	mov    rbx,rax
  326ffb:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327000:	e8 8f ce ff ff       	call   0x323e94
  327005:	48 8b c8             	mov    rcx,rax
  327008:	e8 5f 16 fb ff       	call   0x2d866c
  32700d:	48 8b d0             	mov    rdx,rax
  327010:	45 33 c9             	xor    r9d,r9d
  327013:	4c 8b c3             	mov    r8,rbx
  327016:	48 8b cf             	mov    rcx,rdi
  327019:	e8 1a fe 03 00       	call   0x366e38
  32701e:	8b 0d a4 e4 0b 00    	mov    ecx,DWORD PTR [rip+0xbe4a4]        # 0x3e54c8
  327024:	41 8a d6             	mov    dl,r14b
  327027:	e8 20 ee fb ff       	call   0x2e5e4c
  32702c:	84 c0                	test   al,al
  32702e:	74 0c                	je     0x32703c
  327030:	44 38 25 a1 e1 0b 00 	cmp    BYTE PTR [rip+0xbe1a1],r12b        # 0x3e51d8
  327037:	41 8a c6             	mov    al,r14b
  32703a:	75 03                	jne    0x32703f
  32703c:	41 8a c4             	mov    al,r12b
  32703f:	40 84 f6             	test   sil,sil
  327042:	74 75                	je     0x3270b9
  327044:	44 38 25 0d c1 0c 00 	cmp    BYTE PTR [rip+0xcc10d],r12b        # 0x3f3158
  32704b:	74 6c                	je     0x3270b9
  32704d:	84 c0                	test   al,al
  32704f:	75 68                	jne    0x3270b9
  327051:	49 8b cd             	mov    rcx,r13
  327054:	e8 93 67 fa ff       	call   0x2cd7ec
  327059:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32705d:	48 8b d8             	mov    rbx,rax
  327060:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327065:	e8 da ce ff ff       	call   0x323f44
  32706a:	48 8b c8             	mov    rcx,rax
  32706d:	e8 fa 15 fb ff       	call   0x2d866c
  327072:	48 8b d0             	mov    rdx,rax
  327075:	45 33 c9             	xor    r9d,r9d
  327078:	4c 8b c3             	mov    r8,rbx
  32707b:	48 8b cf             	mov    rcx,rdi
  32707e:	e8 b5 fd 03 00       	call   0x366e38
  327083:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327088:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32708d:	e8 1a cf ff ff       	call   0x323fac
  327092:	48 8b c8             	mov    rcx,rax
  327095:	e8 7a c5 fb ff       	call   0x2e3614
  32709a:	48 8b d0             	mov    rdx,rax
  32709d:	48 8b cf             	mov    rcx,rdi
  3270a0:	e8 8b fb 03 00       	call   0x366c30
  3270a5:	eb 12                	jmp    0x3270b9
  3270a7:	e8 94 f1 fb ff       	call   0x2e6240
  3270ac:	f3 41 0f 58 c7       	addss  xmm0,xmm15
  3270b1:	f3 0f 11 05 43 02 0d 00 	movss  DWORD PTR [rip+0xd0243],xmm0        # 0x3f72fc
  3270b9:	44 38 25 b8 c8 0c 00 	cmp    BYTE PTR [rip+0xcc8b8],r12b        # 0x3f3978
  3270c0:	74 25                	je     0x3270e7
  3270c2:	49 8b cf             	mov    rcx,r15
  3270c5:	e8 e6 22 04 00       	call   0x3693b0
  3270ca:	84 c0                	test   al,al
  3270cc:	74 19                	je     0x3270e7
  3270ce:	41 0f 28 cb          	movaps xmm1,xmm11
  3270d2:	48 8d 0d 27 02 0d 00 	lea    rcx,[rip+0xd0227]        # 0x3f7300
  3270d9:	e8 9e ea fb ff       	call   0x2e5b7c
  3270de:	84 c0                	test   al,al
  3270e0:	74 05                	je     0x3270e7
  3270e2:	e8 2d 2f 00 00       	call   0x32a014
  3270e7:	44 38 25 da c8 0c 00 	cmp    BYTE PTR [rip+0xcc8da],r12b        # 0x3f39c8
  3270ee:	74 2d                	je     0x32711d
  3270f0:	8b 0d c2 d1 0c 00    	mov    ecx,DWORD PTR [rip+0xcd1c2]        # 0x3f42b8
  3270f6:	41 8a d6             	mov    dl,r14b
  3270f9:	e8 4e ed fb ff       	call   0x2e5e4c
  3270fe:	84 c0                	test   al,al
  327100:	74 1b                	je     0x32711d
  327102:	0f 28 cf             	movaps xmm1,xmm7
  327105:	48 8d 0d f8 01 0d 00 	lea    rcx,[rip+0xd01f8]        # 0x3f7304
  32710c:	e8 6b ea fb ff       	call   0x2e5b7c
  327111:	84 c0                	test   al,al
  327113:	74 08                	je     0x32711d
  327115:	49 8b cf             	mov    rcx,r15
  327118:	e8 e7 3e 04 00       	call   0x36b004
  32711d:	44 38 25 74 24 0c 00 	cmp    BYTE PTR [rip+0xc2474],r12b        # 0x3e9598
  327124:	0f 84 8a 03 00 00    	je     0x3274b4
  32712a:	49 8b cf             	mov    rcx,r15
  32712d:	e8 c2 31 04 00       	call   0x36a2f4
  327132:	48 8b c8             	mov    rcx,rax
  327135:	48 8b f8             	mov    rdi,rax
  327138:	e8 cb 3d fa ff       	call   0x2caf08
  32713d:	84 c0                	test   al,al
  32713f:	0f 84 76 03 00 00    	je     0x3274bb
  327145:	48 8b cf             	mov    rcx,rdi
  327148:	e8 4f 9d fb ff       	call   0x2e0e9c
  32714d:	84 c0                	test   al,al
  32714f:	0f 84 66 03 00 00    	je     0x3274bb
  327155:	48 8b cf             	mov    rcx,rdi
  327158:	e8 f7 e8 fb ff       	call   0x2e5a54
  32715d:	48 8b c8             	mov    rcx,rax
  327160:	48 8b d0             	mov    rdx,rax
  327163:	e8 a0 3d fa ff       	call   0x2caf08
  327168:	84 c0                	test   al,al
  32716a:	0f 84 4b 03 00 00    	je     0x3274bb
  327170:	48 8b ca             	mov    rcx,rdx
  327173:	e8 dc f1 fa ff       	call   0x2d6354
  327178:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  32717d:	48 8b d8             	mov    rbx,rax
  327180:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327185:	e8 72 ce ff ff       	call   0x323ffc
  32718a:	48 8b c8             	mov    rcx,rax
  32718d:	e8 fa 29 fc ff       	call   0x2e9b8c
  327192:	48 be 25 23 22 84 e4 9c f2 cb 	movabs rsi,0xcbf29ce484222325
  32719c:	48 8b c8             	mov    rcx,rax
  32719f:	48 8b d6             	mov    rdx,rsi
  3271a2:	e8 a5 e9 fb ff       	call   0x2e5b4c
  3271a7:	48 3b d8             	cmp    rbx,rax
  3271aa:	74 2a                	je     0x3271d6
  3271ac:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3271b0:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3271b5:	e8 92 ce ff ff       	call   0x32404c
  3271ba:	48 8b c8             	mov    rcx,rax
  3271bd:	e8 1a 2a fc ff       	call   0x2e9bdc
  3271c2:	48 8b c8             	mov    rcx,rax
  3271c5:	48 8b d6             	mov    rdx,rsi
  3271c8:	e8 7f e9 fb ff       	call   0x2e5b4c
  3271cd:	48 3b d8             	cmp    rbx,rax
  3271d0:	0f 85 e5 02 00 00    	jne    0x3274bb
  3271d6:	48 8b 57 48          	mov    rdx,QWORD PTR [rdi+0x48]
  3271da:	48 8b ca             	mov    rcx,rdx
  3271dd:	e8 26 3d fa ff       	call   0x2caf08
  3271e2:	84 c0                	test   al,al
  3271e4:	0f 84 d1 02 00 00    	je     0x3274bb
  3271ea:	8b 42 38             	mov    eax,DWORD PTR [rdx+0x38]
  3271ed:	48 8b cf             	mov    rcx,rdi
  3271f0:	ba d8 01 00 00       	mov    edx,0x1d8
  3271f5:	89 45 10             	mov    DWORD PTR [rbp+0x10],eax
  3271f8:	e8 3f 7c fb ff       	call   0x2dee3c
  3271fd:	b9 10 00 00 00       	mov    ecx,0x10
  327202:	66 39 08             	cmp    WORD PTR [rax],cx
  327205:	49 8b cf             	mov    rcx,r15
  327208:	0f 85 6f 02 00 00    	jne    0x32747d
  32720e:	8a 9f 98 02 00 00    	mov    bl,BYTE PTR [rdi+0x298]
  327214:	e8 97 21 04 00       	call   0x3693b0
  327219:	84 c0                	test   al,al
  32721b:	0f 85 9a 02 00 00    	jne    0x3274bb
  327221:	33 d2                	xor    edx,edx
  327223:	49 8b cf             	mov    rcx,r15
  327226:	e8 e1 2f 04 00       	call   0x36a20c
  32722b:	84 c0                	test   al,al
  32722d:	0f 85 88 02 00 00    	jne    0x3274bb
  327233:	49 8b cf             	mov    rcx,r15
  327236:	e8 4d 40 04 00       	call   0x36b288
  32723b:	0a c3                	or     al,bl
  32723d:	0f 85 78 02 00 00    	jne    0x3274bb
  327243:	e8 f8 ef fb ff       	call   0x2e6240
  327248:	0f 2f 05 b9 00 0d 00 	comiss xmm0,DWORD PTR [rip+0xd00b9]        # 0x3f7308
  32724f:	0f 86 66 02 00 00    	jbe    0x3274bb
  327255:	e8 e6 ef fb ff       	call   0x2e6240
  32725a:	f3 44 0f 10 0d f1 5f f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff65ff1]        # 0x28d254
  327263:	48 63 05 a2 b8 0c 00 	movsxd rax,DWORD PTR [rip+0xcb8a2]        # 0x3f2b0c
  32726a:	f3 41 0f 58 c1       	addss  xmm0,xmm9
  32726f:	f3 0f 11 05 91 00 0d 00 	movss  DWORD PTR [rip+0xd0091],xmm0        # 0x3f7308
  327277:	3d 10 27 00 00       	cmp    eax,0x2710
  32727c:	0f 8f 45 01 00 00    	jg     0x3273c7
  327282:	48 8d 0d ff 15 ef ff 	lea    rcx,[rip+0xffffffffffef15ff]        # 0x218888
  327289:	48 8b d8             	mov    rbx,rax
  32728c:	e8 57 21 fb ff       	call   0x2d93e8
  327291:	48 3b d8             	cmp    rbx,rax
  327294:	72 0f                	jb     0x3272a5
  327296:	48 8d 0d eb 15 ef ff 	lea    rcx,[rip+0xffffffffffef15eb]        # 0x218888
  32729d:	e8 46 21 fb ff       	call   0x2d93e8
  3272a2:	48 8b d8             	mov    rbx,rax
  3272a5:	48 8d 0d dc 15 ef ff 	lea    rcx,[rip+0xffffffffffef15dc]        # 0x218888
  3272ac:	e8 37 21 fb ff       	call   0x2d93e8
  3272b1:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
  3272b6:	48 3b d8             	cmp    rbx,rax
  3272b9:	0f 83 08 01 00 00    	jae    0x3273c7
  3272bf:	48 8b d3             	mov    rdx,rbx
  3272c2:	48 8d 0d bf 15 ef ff 	lea    rcx,[rip+0xffffffffffef15bf]        # 0x218888
  3272c9:	e8 52 da fa ff       	call   0x2d4d20
  3272ce:	48 8d 0d c3 1b f2 ff 	lea    rcx,[rip+0xfffffffffff21bc3]        # 0x248e98
  3272d5:	4c 8b e0             	mov    r12,rax
  3272d8:	e8 9b a6 fa ff       	call   0x2d1978
  3272dd:	48 8d 0d b4 1b f2 ff 	lea    rcx,[rip+0xfffffffffff21bb4]        # 0x248e98
  3272e4:	48 8b f0             	mov    rsi,rax
  3272e7:	e8 d4 06 fb ff       	call   0x2d79c0
  3272ec:	4c 8b e8             	mov    r13,rax
  3272ef:	48 3b f0             	cmp    rsi,rax
  3272f2:	74 1c                	je     0x327310
  3272f4:	49 8b d4             	mov    rdx,r12
  3272f7:	48 8b ce             	mov    rcx,rsi
  3272fa:	e8 31 7c fa ff       	call   0x2cef30
  3272ff:	84 c0                	test   al,al
  327301:	0f 85 63 01 00 00    	jne    0x32746a
  327307:	48 83 c6 20          	add    rsi,0x20
  32730b:	49 3b f5             	cmp    rsi,r13
  32730e:	75 e4                	jne    0x3272f4
  327310:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  327314:	48 8d 0d 15 eb 0b 00 	lea    rcx,[rip+0xbeb15]        # 0x3e5e30
  32731b:	e8 c4 83 fc ff       	call   0x2ef6e4
  327320:	44 01 30             	add    DWORD PTR [rax],r14d
  327323:	e8 f4 e4 fe ff       	call   0x31581c
  327328:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  32732c:	0f 28 f0             	movaps xmm6,xmm0
  32732f:	48 8d 0d ba ea 0b 00 	lea    rcx,[rip+0xbeaba]        # 0x3e5df0
  327336:	e8 c9 83 fc ff       	call   0x2ef704
  32733b:	49 8b cc             	mov    rcx,r12
  32733e:	f3 0f 11 30          	movss  DWORD PTR [rax],xmm6
  327342:	e8 a5 64 fa ff       	call   0x2cd7ec
  327347:	48 8b d0             	mov    rdx,rax
  32734a:	48 8d 0d 17 15 ef ff 	lea    rcx,[rip+0xffffffffffef1517]        # 0x218868
  327351:	e8 12 d9 fa ff       	call   0x2d4c68
  327356:	49 8b cc             	mov    rcx,r12
  327359:	c6 05 84 ea 0b 00 00 	mov    BYTE PTR [rip+0xbea84],0x0        # 0x3e5de4
  327360:	e8 87 64 fa ff       	call   0x2cd7ec
  327365:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327369:	48 8b d8             	mov    rbx,rax
  32736c:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327371:	e8 f2 cc ff ff       	call   0x324068
  327376:	48 8b c8             	mov    rcx,rax
  327379:	e8 ee 12 fb ff       	call   0x2d866c
  32737e:	48 8b d0             	mov    rdx,rax
  327381:	4c 8b c3             	mov    r8,rbx
  327384:	48 8b cf             	mov    rcx,rdi
  327387:	e8 f0 f9 03 00       	call   0x366d7c
  32738c:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327391:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327396:	e8 fd cc ff ff       	call   0x324098
  32739b:	48 8b c8             	mov    rcx,rax
  32739e:	e8 a1 69 fa ff       	call   0x2cdd44
  3273a3:	48 8b d0             	mov    rdx,rax
  3273a6:	48 8b cf             	mov    rcx,rdi
  3273a9:	e8 82 f8 03 00       	call   0x366c30
  3273ae:	44 01 35 33 ea 0b 00 	add    DWORD PTR [rip+0xbea33],r14d        # 0x3e5de8
  3273b5:	48 8d 0d dc 1a f2 ff 	lea    rcx,[rip+0xfffffffffff21adc]        # 0x248e98
  3273bc:	49 8b d4             	mov    rdx,r12
  3273bf:	e8 58 1c fb ff       	call   0x2d901c
  3273c4:	45 33 e4             	xor    r12d,r12d
  3273c7:	e8 58 13 ff ff       	call   0x318724
  3273cc:	44 38 25 c5 be 0c 00 	cmp    BYTE PTR [rip+0xcbec5],r12b        # 0x3f3298
  3273d3:	0f 84 1f 01 00 00    	je     0x3274f8
  3273d9:	48 8b 05 20 fb 0a 00 	mov    rax,QWORD PTR [rip+0xafb20]        # 0x3d6f00
  3273e0:	48 8b 90 b0 90 0c 0f 	mov    rdx,QWORD PTR [rax+0xf0c90b0]
  3273e7:	48 8b ca             	mov    rcx,rdx
  3273ea:	e8 19 3b fa ff       	call   0x2caf08
  3273ef:	84 c0                	test   al,al
  3273f1:	74 21                	je     0x327414
  3273f3:	48 8b 92 b8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xb8]
  3273fa:	48 8b ca             	mov    rcx,rdx
  3273fd:	e8 06 3b fa ff       	call   0x2caf08
  327402:	84 c0                	test   al,al
  327404:	74 0e                	je     0x327414
  327406:	b8 00 00 80 3f       	mov    eax,0x3f800000
  32740b:	89 42 58             	mov    DWORD PTR [rdx+0x58],eax
  32740e:	89 82 c4 03 00 00    	mov    DWORD PTR [rdx+0x3c4],eax
  327414:	49 8b cf             	mov    rcx,r15
  327417:	e8 94 1f 04 00       	call   0x3693b0
  32741c:	41 32 c6             	xor    al,r14b
  32741f:	48 8d 0d d2 d0 0c 00 	lea    rcx,[rip+0xcd0d2]        # 0x3f44f8
  327426:	8a d0                	mov    dl,al
  327428:	e8 b7 15 fc ff       	call   0x2e89e4
  32742d:	84 c0                	test   al,al
  32742f:	0f 84 02 01 00 00    	je     0x327537
  327435:	e8 42 21 00 00       	call   0x32957c
  32743a:	48 8b c8             	mov    rcx,rax
  32743d:	48 8b d8             	mov    rbx,rax
  327440:	e8 c3 3a fa ff       	call   0x2caf08
  327445:	84 c0                	test   al,al
  327447:	0f 84 ea 00 00 00    	je     0x327537
  32744d:	e8 7a d3 ff ff       	call   0x3247cc
  327452:	84 c0                	test   al,al
  327454:	75 73                	jne    0x3274c9
  327456:	48 8b cb             	mov    rcx,rbx
  327459:	44 88 35 11 ea 0b 00 	mov    BYTE PTR [rip+0xbea11],r14b        # 0x3e5e71
  327460:	e8 eb 96 04 00       	call   0x370b50
  327465:	e9 84 00 00 00       	jmp    0x3274ee
  32746a:	49 03 de             	add    rbx,r14
  32746d:	48 3b 5c 24 60       	cmp    rbx,QWORD PTR [rsp+0x60]
  327472:	0f 82 47 fe ff ff    	jb     0x3272bf
  327478:	e9 47 ff ff ff       	jmp    0x3273c4
  32747d:	e8 2e 1f 04 00       	call   0x3693b0
  327482:	84 c0                	test   al,al
  327484:	75 35                	jne    0x3274bb
  327486:	33 d2                	xor    edx,edx
  327488:	49 8b cf             	mov    rcx,r15
  32748b:	e8 7c 2d 04 00       	call   0x36a20c
  327490:	f3 44 0f 10 0d bb 5d f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff65dbb]        # 0x28d254
  327499:	84 c0                	test   al,al
  32749b:	0f 85 26 ff ff ff    	jne    0x3273c7
  3274a1:	44 89 25 40 e9 0b 00 	mov    DWORD PTR [rip+0xbe940],r12d        # 0x3e5de8
  3274a8:	44 88 35 35 e9 0b 00 	mov    BYTE PTR [rip+0xbe935],r14b        # 0x3e5de4
  3274af:	e9 13 ff ff ff       	jmp    0x3273c7
  3274b4:	44 88 25 29 e9 0b 00 	mov    BYTE PTR [rip+0xbe929],r12b        # 0x3e5de4
  3274bb:	f3 44 0f 10 0d 90 5d f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff65d90]        # 0x28d254
  3274c4:	e9 fe fe ff ff       	jmp    0x3273c7
  3274c9:	e8 46 22 00 00       	call   0x329714
  3274ce:	48 8b c8             	mov    rcx,rax
  3274d1:	4c 8b c0             	mov    r8,rax
  3274d4:	e8 2f 3a fa ff       	call   0x2caf08
  3274d9:	84 c0                	test   al,al
  3274db:	74 11                	je     0x3274ee
  3274dd:	33 d2                	xor    edx,edx
  3274df:	44 88 25 8b e9 0b 00 	mov    BYTE PTR [rip+0xbe98b],r12b        # 0x3e5e71
  3274e6:	49 8b c8             	mov    rcx,r8
  3274e9:	e8 2a 59 04 00       	call   0x36ce18
  3274ee:	49 8b cf             	mov    rcx,r15
  3274f1:	e8 86 0c 04 00       	call   0x36817c
  3274f6:	eb 3f                	jmp    0x327537
  3274f8:	44 38 25 72 e9 0b 00 	cmp    BYTE PTR [rip+0xbe972],r12b        # 0x3e5e71
  3274ff:	74 36                	je     0x327537
  327501:	e8 c6 d2 ff ff       	call   0x3247cc
  327506:	84 c0                	test   al,al
  327508:	74 26                	je     0x327530
  32750a:	e8 05 22 00 00       	call   0x329714
  32750f:	48 8b c8             	mov    rcx,rax
  327512:	4c 8b c0             	mov    r8,rax
  327515:	e8 ee 39 fa ff       	call   0x2caf08
  32751a:	84 c0                	test   al,al
  32751c:	74 12                	je     0x327530
  32751e:	33 d2                	xor    edx,edx
  327520:	49 8b c8             	mov    rcx,r8
  327523:	e8 f0 58 04 00       	call   0x36ce18
  327528:	49 8b cf             	mov    rcx,r15
  32752b:	e8 4c 0c 04 00       	call   0x36817c
  327530:	44 88 25 3a e9 0b 00 	mov    BYTE PTR [rip+0xbe93a],r12b        # 0x3e5e71
  327537:	e8 60 91 fb ff       	call   0x2e069c
  32753c:	45 33 ed             	xor    r13d,r13d
  32753f:	4c 8b e0             	mov    r12,rax
  327542:	44 38 2d 28 e9 0b 00 	cmp    BYTE PTR [rip+0xbe928],r13b        # 0x3e5e71
  327549:	0f 84 61 07 00 00    	je     0x327cb0
  32754f:	44 38 2d b2 c0 0c 00 	cmp    BYTE PTR [rip+0xcc0b2],r13b        # 0x3f3608
  327556:	0f 84 4b 07 00 00    	je     0x327ca7
  32755c:	48 8b c8             	mov    rcx,rax
  32755f:	e8 a4 39 fa ff       	call   0x2caf08
  327564:	84 c0                	test   al,al
  327566:	0f 84 3b 07 00 00    	je     0x327ca7
  32756c:	49 8b cc             	mov    rcx,r12
  32756f:	e8 7c 22 00 00       	call   0x3297f0
  327574:	48 8b c8             	mov    rcx,rax
  327577:	48 8b d8             	mov    rbx,rax
  32757a:	e8 89 39 fa ff       	call   0x2caf08
  32757f:	84 c0                	test   al,al
  327581:	0f 84 20 07 00 00    	je     0x327ca7
  327587:	f3 0f 10 1d 8d 65 f6 ff 	movss  xmm3,DWORD PTR [rip+0xfffffffffff6658d]        # 0x28db1c
  32758f:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  327593:	0f 57 d2             	xorps  xmm2,xmm2
  327596:	0f 57 c9             	xorps  xmm1,xmm1
  327599:	e8 0a 06 0a 00       	call   0x3c7ba8
  32759e:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  3275a2:	48 8b cb             	mov    rcx,rbx
  3275a5:	e8 2a d2 04 00       	call   0x3747d4
  3275aa:	48 8d 95 d0 00 00 00 	lea    rdx,[rbp+0xd0]
  3275b1:	48 8b cb             	mov    rcx,rbx
  3275b4:	e8 eb d4 04 00       	call   0x374aa4
  3275b9:	0f 57 c0             	xorps  xmm0,xmm0
  3275bc:	48 8d 8d f0 00 00 00 	lea    rcx,[rbp+0xf0]
  3275c3:	0f 11 85 00 01 00 00 	movups XMMWORD PTR [rbp+0x100],xmm0
  3275ca:	0f 11 85 0c 01 00 00 	movups XMMWORD PTR [rbp+0x10c],xmm0
  3275d1:	0f 11 85 f0 00 00 00 	movups XMMWORD PTR [rbp+0xf0],xmm0
  3275d8:	e8 27 d9 fb ff       	call   0x2e4f04
  3275dd:	4c 8d 85 d0 00 00 00 	lea    r8,[rbp+0xd0]
  3275e4:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  3275e8:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3275ec:	e8 c3 97 ff ff       	call   0x320db4
  3275f1:	4c 8b c0             	mov    r8,rax
  3275f4:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  3275f8:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  3275fc:	e8 07 81 fb ff       	call   0x2df708
  327601:	e8 66 f4 fb ff       	call   0x2e6a6c
  327606:	8b d8                	mov    ebx,eax
  327608:	4c 8d 45 20          	lea    r8,[rbp+0x20]
  32760c:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  327613:	81 cb 00 09 a3 48    	or     ebx,0x48a30900
  327619:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  32761d:	e8 aa 80 fb ff       	call   0x2df6cc
  327622:	f3 0f 10 15 56 bb f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6bb56]        # 0x293180
  32762a:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  32762f:	44 89 6c 24 28       	mov    DWORD PTR [rsp+0x28],r13d
  327634:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  327639:	44 8b cb             	mov    r9d,ebx
  32763c:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327640:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327643:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327647:	8b 45 28             	mov    eax,DWORD PTR [rbp+0x28]
  32764a:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  32764e:	48 8d 85 f0 00 00 00 	lea    rax,[rbp+0xf0]
  327655:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  32765b:	f2 0f 10 45 20       	movsd  xmm0,QWORD PTR [rbp+0x20]
  327660:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  327665:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  32766b:	e8 3c 19 fc ff       	call   0x2e8fac
  327670:	84 c0                	test   al,al
  327672:	0f 84 2f 06 00 00    	je     0x327ca7
  327678:	48 8d 8d f0 00 00 00 	lea    rcx,[rbp+0xf0]
  32767f:	e8 9c 22 00 00       	call   0x329920
  327684:	48 8b c8             	mov    rcx,rax
  327687:	48 8b d8             	mov    rbx,rax
  32768a:	e8 79 38 fa ff       	call   0x2caf08
  32768f:	84 c0                	test   al,al
  327691:	0f 84 10 06 00 00    	je     0x327ca7
  327697:	8b 0d 9b f8 0c 00    	mov    ecx,DWORD PTR [rip+0xcf89b]        # 0x3f6f38
  32769d:	b8 00 01 00 00       	mov    eax,0x100
  3276a2:	85 c8                	test   eax,ecx
  3276a4:	75 1f                	jne    0x3276c5
  3276a6:	4c 8b 05 53 f8 0a 00 	mov    r8,QWORD PTR [rip+0xaf853]        # 0x3d6f00
  3276ad:	0b c8                	or     ecx,eax
  3276af:	49 81 c0 b0 e7 97 05 	add    r8,0x597e7b0
  3276b6:	89 0d 7c f8 0c 00    	mov    DWORD PTR [rip+0xcf87c],ecx        # 0x3f6f38
  3276bc:	4c 89 05 4d fc 0c 00 	mov    QWORD PTR [rip+0xcfc4d],r8        # 0x3f7310
  3276c3:	eb 07                	jmp    0x3276cc
  3276c5:	4c 8b 05 44 fc 0c 00 	mov    r8,QWORD PTR [rip+0xcfc44]        # 0x3f7310
  3276cc:	b8 00 02 00 00       	mov    eax,0x200
  3276d1:	85 c8                	test   eax,ecx
  3276d3:	75 1e                	jne    0x3276f3
  3276d5:	0b c8                	or     ecx,eax
  3276d7:	48 8d 15 42 fc 0c 00 	lea    rdx,[rip+0xcfc42]        # 0x3f7320
  3276de:	89 0d 54 f8 0c 00    	mov    DWORD PTR [rip+0xcf854],ecx        # 0x3f6f38
  3276e4:	45 33 c9             	xor    r9d,r9d
  3276e7:	48 8b 0d 72 e7 0a 00 	mov    rcx,QWORD PTR [rip+0xae772]        # 0x3d5e60
  3276ee:	e8 31 46 fa ff       	call   0x2cbd24
  3276f3:	48 8b 0d 66 e7 0a 00 	mov    rcx,QWORD PTR [rip+0xae766]        # 0x3d5e60
  3276fa:	48 8d 15 1f fc 0c 00 	lea    rdx,[rip+0xcfc1f]        # 0x3f7320
  327701:	4c 8b c3             	mov    r8,rbx
  327704:	e8 f3 42 fa ff       	call   0x2cb9fc
  327709:	48 8b c8             	mov    rcx,rax
  32770c:	48 8b f8             	mov    rdi,rax
  32770f:	e8 f4 37 fa ff       	call   0x2caf08
  327714:	84 c0                	test   al,al
  327716:	0f 84 8b 05 00 00    	je     0x327ca7
  32771c:	48 8b cf             	mov    rcx,rdi
  32771f:	e8 30 e3 fb ff       	call   0x2e5a54
  327724:	48 8b c8             	mov    rcx,rax
  327727:	48 8b d0             	mov    rdx,rax
  32772a:	e8 d9 37 fa ff       	call   0x2caf08
  32772f:	84 c0                	test   al,al
  327731:	0f 84 70 05 00 00    	je     0x327ca7
  327737:	48 8b ca             	mov    rcx,rdx
  32773a:	e8 15 ec fa ff       	call   0x2d6354
  32773f:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  327743:	48 8b f0             	mov    rsi,rax
  327746:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32774b:	e8 64 c9 ff ff       	call   0x3240b4
  327750:	48 8b c8             	mov    rcx,rax
  327753:	e8 74 65 fa ff       	call   0x2cdccc
  327758:	48 8b c8             	mov    rcx,rax
  32775b:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  327765:	e8 e2 e3 fb ff       	call   0x2e5b4c
  32776a:	f3 0f 10 35 22 ba f6 ff 	movss  xmm6,DWORD PTR [rip+0xfffffffffff6ba22]        # 0x293194
  327772:	48 3b f0             	cmp    rsi,rax
  327775:	0f 85 9c 00 00 00    	jne    0x327817
  32777b:	41 8a d6             	mov    dl,r14b
  32777e:	b9 13 00 00 00       	mov    ecx,0x13
  327783:	e8 88 11 fc ff       	call   0x2e8910
  327788:	84 c0                	test   al,al
  32778a:	0f 84 87 00 00 00    	je     0x327817
  327790:	ba d8 01 00 00       	mov    edx,0x1d8
  327795:	48 8b cf             	mov    rcx,rdi
  327798:	e8 9f 76 fb ff       	call   0x2dee3c
  32779d:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3277a1:	49 8b cf             	mov    rcx,r15
  3277a4:	0f b7 18             	movzx  ebx,WORD PTR [rax]
  3277a7:	e8 a0 1a 04 00       	call   0x36924c
  3277ac:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3277b1:	48 8b cf             	mov    rcx,rdi
  3277b4:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3277b8:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3277bb:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3277c1:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3277c5:	e8 e6 ee 03 00       	call   0x3666b0
  3277ca:	0f 2f f0             	comiss xmm6,xmm0
  3277cd:	76 48                	jbe    0x327817
  3277cf:	66 85 db             	test   bx,bx
  3277d2:	75 18                	jne    0x3277ec
  3277d4:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3277d8:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3277dd:	e8 ea c8 ff ff       	call   0x3240cc
  3277e2:	48 8b c8             	mov    rcx,rax
  3277e5:	e8 0a 0e fb ff       	call   0x2d85f4
  3277ea:	eb 20                	jmp    0x32780c
  3277ec:	b8 08 00 00 00       	mov    eax,0x8
  3277f1:	66 3b d8             	cmp    bx,ax
  3277f4:	75 21                	jne    0x327817
  3277f6:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3277fa:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3277ff:	e8 ec c8 ff ff       	call   0x3240f0
  327804:	48 8b c8             	mov    rcx,rax
  327807:	e8 7c 59 fb ff       	call   0x2dd188
  32780c:	48 8b d0             	mov    rdx,rax
  32780f:	48 8b cf             	mov    rcx,rdi
  327812:	e8 19 f4 03 00       	call   0x366c30
  327817:	44 38 2d 43 ca 0c 00 	cmp    BYTE PTR [rip+0xcca43],r13b        # 0x3f4261
  32781e:	0f 84 bd 01 00 00    	je     0x3279e1
  327824:	44 38 2d 0d d9 0b 00 	cmp    BYTE PTR [rip+0xbd90d],r13b        # 0x3e5138
  32782b:	74 54                	je     0x327881
  32782d:	49 8b cf             	mov    rcx,r15
  327830:	e8 4f 12 04 00       	call   0x368a84
  327835:	48 8b c8             	mov    rcx,rax
  327838:	48 8b d0             	mov    rdx,rax
  32783b:	e8 c8 36 fa ff       	call   0x2caf08
  327840:	84 c0                	test   al,al
  327842:	0f 84 99 01 00 00    	je     0x3279e1
  327848:	48 8b ca             	mov    rcx,rdx
  32784b:	e8 fc 9c 04 00       	call   0x37154c
  327850:	48 8b c8             	mov    rcx,rax
  327853:	48 8b d8             	mov    rbx,rax
  327856:	e8 ad 36 fa ff       	call   0x2caf08
  32785b:	84 c0                	test   al,al
  32785d:	74 22                	je     0x327881
  32785f:	48 8b cb             	mov    rcx,rbx
  327862:	e8 b5 ad 04 00       	call   0x37261c
  327867:	3d ac 8e f7 0b       	cmp    eax,0xbf78eac
  32786c:	74 13                	je     0x327881
  32786e:	48 8b cb             	mov    rcx,rbx
  327871:	e8 a6 ad 04 00       	call   0x37261c
  327876:	3d f6 47 84 6b       	cmp    eax,0x6b8447f6
  32787b:	0f 85 60 01 00 00    	jne    0x3279e1
  327881:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327885:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32788a:	e8 f5 c8 ff ff       	call   0x324184
  32788f:	48 8b c8             	mov    rcx,rax
  327892:	e8 f1 58 fb ff       	call   0x2dd188
  327897:	48 8b c8             	mov    rcx,rax
  32789a:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  3278a4:	e8 a3 e2 fb ff       	call   0x2e5b4c
  3278a9:	48 3b f0             	cmp    rsi,rax
  3278ac:	0f 85 2f 01 00 00    	jne    0x3279e1
  3278b2:	44 8b 0d af da 0b 00 	mov    r9d,DWORD PTR [rip+0xbdaaf]        # 0x3e5368
  3278b9:	45 85 c9             	test   r9d,r9d
  3278bc:	0f 8e 1f 01 00 00    	jle    0x3279e1
  3278c2:	ba 40 03 00 00       	mov    edx,0x340
  3278c7:	48 8b cf             	mov    rcx,rdi
  3278ca:	e8 6d 75 fb ff       	call   0x2dee3c
  3278cf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  3278d2:	48 8b ca             	mov    rcx,rdx
  3278d5:	e8 2e 36 fa ff       	call   0x2caf08
  3278da:	84 c0                	test   al,al
  3278dc:	0f 84 ff 00 00 00    	je     0x3279e1
  3278e2:	48 8b 8a f8 01 00 00 	mov    rcx,QWORD PTR [rdx+0x1f8]
  3278e9:	e8 1a 36 fa ff       	call   0x2caf08
  3278ee:	84 c0                	test   al,al
  3278f0:	0f 84 eb 00 00 00    	je     0x3279e1
  3278f6:	ba 70 03 00 00       	mov    edx,0x370
  3278fb:	48 8b cf             	mov    rcx,rdi
  3278fe:	e8 39 75 fb ff       	call   0x2dee3c
  327903:	0f bf 08             	movsx  ecx,WORD PTR [rax]
  327906:	3b 0d ac da 0b 00    	cmp    ecx,DWORD PTR [rip+0xbdaac]        # 0x3e53b8
  32790c:	0f 85 cf 00 00 00    	jne    0x3279e1
  327912:	41 3b c9             	cmp    ecx,r9d
  327915:	0f 84 c6 00 00 00    	je     0x3279e1
  32791b:	0f 28 cf             	movaps xmm1,xmm7
  32791e:	48 8d 0d d3 fa 0c 00 	lea    rcx,[rip+0xcfad3]        # 0x3f73f8
  327925:	e8 52 e2 fb ff       	call   0x2e5b7c
  32792a:	84 c0                	test   al,al
  32792c:	0f 84 af 00 00 00    	je     0x3279e1
  327932:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327936:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  32793b:	e8 84 c8 ff ff       	call   0x3241c4
  327940:	48 8b c8             	mov    rcx,rax
  327943:	e8 6c 22 fc ff       	call   0x2e9bb4
  327948:	48 8b c8             	mov    rcx,rax
  32794b:	e8 8c 6c fa ff       	call   0x2ce5dc
  327950:	8b 15 e2 f5 0c 00    	mov    edx,DWORD PTR [rip+0xcf5e2]        # 0x3f6f38
  327956:	48 8b d8             	mov    rbx,rax
  327959:	b8 00 04 00 00       	mov    eax,0x400
  32795e:	85 d0                	test   eax,edx
  327960:	75 1f                	jne    0x327981
  327962:	4c 8b 05 97 f5 0a 00 	mov    r8,QWORD PTR [rip+0xaf597]        # 0x3d6f00
  327969:	0b d0                	or     edx,eax
  32796b:	49 81 c0 a0 f0 95 03 	add    r8,0x395f0a0
  327972:	89 15 c0 f5 0c 00    	mov    DWORD PTR [rip+0xcf5c0],edx        # 0x3f6f38
  327978:	4c 89 05 81 fa 0c 00 	mov    QWORD PTR [rip+0xcfa81],r8        # 0x3f7400
  32797f:	eb 07                	jmp    0x327988
  327981:	4c 8b 05 78 fa 0c 00 	mov    r8,QWORD PTR [rip+0xcfa78]        # 0x3f7400
  327988:	b8 00 08 00 00       	mov    eax,0x800
  32798d:	85 d0                	test   eax,edx
  32798f:	75 1e                	jne    0x3279af
  327991:	48 8b 0d c8 e4 0a 00 	mov    rcx,QWORD PTR [rip+0xae4c8]        # 0x3d5e60
  327998:	0b d0                	or     edx,eax
  32799a:	89 15 98 f5 0c 00    	mov    DWORD PTR [rip+0xcf598],edx        # 0x3f6f38
  3279a0:	45 33 c9             	xor    r9d,r9d
  3279a3:	48 8d 15 66 fa 0c 00 	lea    rdx,[rip+0xcfa66]        # 0x3f7410
  3279aa:	e8 75 43 fa ff       	call   0x2cbd24
  3279af:	8b 05 b3 d9 0b 00    	mov    eax,DWORD PTR [rip+0xbd9b3]        # 0x3e5368
  3279b5:	48 8d 15 54 fa 0c 00 	lea    rdx,[rip+0xcfa54]        # 0x3f7410
  3279bc:	48 8b 0d 9d e4 0a 00 	mov    rcx,QWORD PTR [rip+0xae49d]        # 0x3d5e60
  3279c3:	45 33 c9             	xor    r9d,r9d
  3279c6:	44 89 6c 24 38       	mov    DWORD PTR [rsp+0x38],r13d
  3279cb:	4c 8b c7             	mov    r8,rdi
  3279ce:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  3279d2:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  3279d7:	44 89 6c 24 20       	mov    DWORD PTR [rsp+0x20],r13d
  3279dc:	e8 2b ce fb ff       	call   0x2e480c
  3279e1:	41 8a d6             	mov    dl,r14b
  3279e4:	b9 13 00 00 00       	mov    ecx,0x13
  3279e9:	e8 22 0f fc ff       	call   0x2e8910
  3279ee:	84 c0                	test   al,al
  3279f0:	0f 84 a0 00 00 00    	je     0x327a96
  3279f6:	49 8b cf             	mov    rcx,r15
  3279f9:	e8 86 10 04 00       	call   0x368a84
  3279fe:	48 8b c8             	mov    rcx,rax
  327a01:	48 8b d0             	mov    rdx,rax
  327a04:	e8 ff 34 fa ff       	call   0x2caf08
  327a09:	84 c0                	test   al,al
  327a0b:	0f 84 85 00 00 00    	je     0x327a96
  327a11:	48 8b ca             	mov    rcx,rdx
  327a14:	e8 33 9b 04 00       	call   0x37154c
  327a19:	48 8b c8             	mov    rcx,rax
  327a1c:	48 8b d8             	mov    rbx,rax
  327a1f:	e8 e4 34 fa ff       	call   0x2caf08
  327a24:	84 c0                	test   al,al
  327a26:	74 6e                	je     0x327a96
  327a28:	48 8b cb             	mov    rcx,rbx
  327a2b:	e8 ec ab 04 00       	call   0x37261c
  327a30:	3d ac 8e f7 0b       	cmp    eax,0xbf78eac
  327a35:	74 0f                	je     0x327a46
  327a37:	48 8b cb             	mov    rcx,rbx
  327a3a:	e8 dd ab 04 00       	call   0x37261c
  327a3f:	3d f6 47 84 6b       	cmp    eax,0x6b8447f6
  327a44:	75 50                	jne    0x327a96
  327a46:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327a4a:	49 8b cf             	mov    rcx,r15
  327a4d:	e8 fa 17 04 00       	call   0x36924c
  327a52:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327a57:	48 8b cf             	mov    rcx,rdi
  327a5a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327a5e:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327a61:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327a67:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327a6b:	e8 40 ec 03 00       	call   0x3666b0
  327a70:	0f 2f f0             	comiss xmm6,xmm0
  327a73:	76 21                	jbe    0x327a96
  327a75:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327a79:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327a7e:	e8 2d c8 ff ff       	call   0x3242b0
  327a83:	48 8b c8             	mov    rcx,rax
  327a86:	e8 d5 56 fb ff       	call   0x2dd160
  327a8b:	48 8b d0             	mov    rdx,rax
  327a8e:	48 8b cf             	mov    rcx,rdi
  327a91:	e8 9a f1 03 00       	call   0x366c30
  327a96:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327a9b:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327aa0:	e8 4f c8 ff ff       	call   0x3242f4
  327aa5:	48 8b c8             	mov    rcx,rax
  327aa8:	e8 df 20 fc ff       	call   0x2e9b8c
  327aad:	48 8b c8             	mov    rcx,rax
  327ab0:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  327aba:	e8 8d e0 fb ff       	call   0x2e5b4c
  327abf:	48 3b f0             	cmp    rsi,rax
  327ac2:	75 7b                	jne    0x327b3f
  327ac4:	41 8a d6             	mov    dl,r14b
  327ac7:	b9 13 00 00 00       	mov    ecx,0x13
  327acc:	e8 3f 0e fc ff       	call   0x2e8910
  327ad1:	84 c0                	test   al,al
  327ad3:	74 6a                	je     0x327b3f
  327ad5:	ba d8 01 00 00       	mov    edx,0x1d8
  327ada:	48 8b cf             	mov    rcx,rdi
  327add:	e8 5a 73 fb ff       	call   0x2dee3c
  327ae2:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327ae6:	49 8b cf             	mov    rcx,r15
  327ae9:	0f b7 18             	movzx  ebx,WORD PTR [rax]
  327aec:	e8 5b 17 04 00       	call   0x36924c
  327af1:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327af6:	48 8b cf             	mov    rcx,rdi
  327af9:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327afd:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327b00:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327b06:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327b0a:	e8 a1 eb 03 00       	call   0x3666b0
  327b0f:	0f 2f f0             	comiss xmm6,xmm0
  327b12:	76 2b                	jbe    0x327b3f
  327b14:	66 85 db             	test   bx,bx
  327b17:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327b1c:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327b21:	0f 94 c3             	sete   bl
  327b24:	e8 27 c8 ff ff       	call   0x324350
  327b29:	48 8b c8             	mov    rcx,rax
  327b2c:	e8 5b 20 fc ff       	call   0x2e9b8c
  327b31:	48 8b d0             	mov    rdx,rax
  327b34:	44 8a c3             	mov    r8b,bl
  327b37:	48 8b cf             	mov    rcx,rdi
  327b3a:	e8 8d f1 03 00       	call   0x366ccc
  327b3f:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327b43:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327b48:	e8 1f c8 ff ff       	call   0x32436c
  327b4d:	48 8b c8             	mov    rcx,rax
  327b50:	e8 17 0b fb ff       	call   0x2d866c
  327b55:	48 8b c8             	mov    rcx,rax
  327b58:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  327b62:	e8 e5 df fb ff       	call   0x2e5b4c
  327b67:	48 3b f0             	cmp    rsi,rax
  327b6a:	75 61                	jne    0x327bcd
  327b6c:	41 8a d6             	mov    dl,r14b
  327b6f:	b9 13 00 00 00       	mov    ecx,0x13
  327b74:	e8 97 0d fc ff       	call   0x2e8910
  327b79:	84 c0                	test   al,al
  327b7b:	74 50                	je     0x327bcd
  327b7d:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327b81:	49 8b cf             	mov    rcx,r15
  327b84:	e8 c3 16 04 00       	call   0x36924c
  327b89:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327b8e:	48 8b cf             	mov    rcx,rdi
  327b91:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327b95:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327b98:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327b9e:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327ba2:	e8 09 eb 03 00       	call   0x3666b0
  327ba7:	0f 2f f0             	comiss xmm6,xmm0
  327baa:	76 21                	jbe    0x327bcd
  327bac:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327bb0:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327bb5:	e8 06 c8 ff ff       	call   0x3243c0
  327bba:	48 8b c8             	mov    rcx,rax
  327bbd:	e8 aa 0a fb ff       	call   0x2d866c
  327bc2:	48 8b d0             	mov    rdx,rax
  327bc5:	48 8b cf             	mov    rcx,rdi
  327bc8:	e8 63 f0 03 00       	call   0x366c30
  327bcd:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  327bd1:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327bd6:	e8 31 c8 ff ff       	call   0x32440c
  327bdb:	48 8b c8             	mov    rcx,rax
  327bde:	e8 a5 55 fb ff       	call   0x2dd188
  327be3:	48 8b c8             	mov    rcx,rax
  327be6:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  327bf0:	e8 57 df fb ff       	call   0x2e5b4c
  327bf5:	48 3b f0             	cmp    rsi,rax
  327bf8:	0f 85 a9 00 00 00    	jne    0x327ca7
  327bfe:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327c02:	49 8b cf             	mov    rcx,r15
  327c05:	e8 42 16 04 00       	call   0x36924c
  327c0a:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327c0f:	48 8b cf             	mov    rcx,rdi
  327c12:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327c16:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327c19:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327c1f:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327c23:	e8 88 ea 03 00       	call   0x3666b0
  327c28:	0f 2f f0             	comiss xmm6,xmm0
  327c2b:	76 7a                	jbe    0x327ca7
  327c2d:	8b 0d 45 c7 0c 00    	mov    ecx,DWORD PTR [rip+0xcc745]        # 0x3f4378
  327c33:	41 8a d6             	mov    dl,r14b
  327c36:	e8 d5 0c fc ff       	call   0x2e8910
  327c3b:	84 c0                	test   al,al
  327c3d:	74 2b                	je     0x327c6a
  327c3f:	44 38 2d a2 b6 0c 00 	cmp    BYTE PTR [rip+0xcb6a2],r13b        # 0x3f32e8
  327c46:	74 22                	je     0x327c6a
  327c48:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327c4d:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327c52:	e8 f5 c7 ff ff       	call   0x32444c
  327c57:	48 8b c8             	mov    rcx,rax
  327c5a:	e8 f5 1f fc ff       	call   0x2e9c54
  327c5f:	48 8b d0             	mov    rdx,rax
  327c62:	48 8b cf             	mov    rcx,rdi
  327c65:	e8 c6 ef 03 00       	call   0x366c30
  327c6a:	8b 0d 68 c7 0c 00    	mov    ecx,DWORD PTR [rip+0xcc768]        # 0x3f43d8
  327c70:	41 8a d6             	mov    dl,r14b
  327c73:	e8 98 0c fc ff       	call   0x2e8910
  327c78:	84 c0                	test   al,al
  327c7a:	74 2b                	je     0x327ca7
  327c7c:	44 38 2d b5 b6 0c 00 	cmp    BYTE PTR [rip+0xcb6b5],r13b        # 0x3f3338
  327c83:	74 22                	je     0x327ca7
  327c85:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  327c8a:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  327c8f:	e8 d4 c7 ff ff       	call   0x324468
  327c94:	48 8b c8             	mov    rcx,rax
  327c97:	e8 b8 1f fc ff       	call   0x2e9c54
  327c9c:	48 8b d0             	mov    rdx,rax
  327c9f:	48 8b cf             	mov    rcx,rdi
  327ca2:	e8 89 ef 03 00       	call   0x366c30
  327ca7:	44 38 2d c3 e1 0b 00 	cmp    BYTE PTR [rip+0xbe1c3],r13b        # 0x3e5e71
  327cae:	75 12                	jne    0x327cc2
  327cb0:	44 38 2d ea 05 0b 00 	cmp    BYTE PTR [rip+0xb05ea],r13b        # 0x3d82a1
  327cb7:	75 09                	jne    0x327cc2
  327cb9:	e8 0e cb ff ff       	call   0x3247cc
  327cbe:	84 c0                	test   al,al
  327cc0:	74 15                	je     0x327cd7
  327cc2:	e8 79 e5 fb ff       	call   0x2e6240
  327cc7:	f3 0f 58 05 2d 5e f6 ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffff65e2d]        # 0x28dafc
  327ccf:	f3 0f 11 05 11 f8 0c 00 	movss  DWORD PTR [rip+0xcf811],xmm0        # 0x3f74e8
  327cd7:	8b 05 5b f2 0c 00    	mov    eax,DWORD PTR [rip+0xcf25b]        # 0x3f6f38
  327cdd:	b9 00 10 00 00       	mov    ecx,0x1000
  327ce2:	85 c1                	test   ecx,eax
  327ce4:	75 14                	jne    0x327cfa
  327ce6:	0b c1                	or     eax,ecx
  327ce8:	48 8d 0d 01 f8 0c 00 	lea    rcx,[rip+0xcf801]        # 0x3f74f0
  327cef:	89 05 43 f2 0c 00    	mov    DWORD PTR [rip+0xcf243],eax        # 0x3f6f38
  327cf5:	e8 c2 fe 09 00       	call   0x3c7bbc
  327cfa:	e8 41 e5 fb ff       	call   0x2e6240
  327cff:	f3 0f 10 0d e1 f7 0c 00 	movss  xmm1,DWORD PTR [rip+0xcf7e1]        # 0x3f74e8
  327d07:	0f 2f c8             	comiss xmm1,xmm0
  327d0a:	0f 86 85 01 00 00    	jbe    0x327e95
  327d10:	49 8b cc             	mov    rcx,r12
  327d13:	e8 f0 31 fa ff       	call   0x2caf08
  327d18:	84 c0                	test   al,al
  327d1a:	0f 84 9f 01 00 00    	je     0x327ebf
  327d20:	49 8b cc             	mov    rcx,r12
  327d23:	e8 c8 1a 00 00       	call   0x3297f0
  327d28:	48 8b c8             	mov    rcx,rax
  327d2b:	48 8b d8             	mov    rbx,rax
  327d2e:	e8 d5 31 fa ff       	call   0x2caf08
  327d33:	45 33 e4             	xor    r12d,r12d
  327d36:	84 c0                	test   al,al
  327d38:	0f 84 84 01 00 00    	je     0x327ec2
  327d3e:	49 8b 97 e8 04 00 00 	mov    rdx,QWORD PTR [r15+0x4e8]
  327d45:	48 8b ca             	mov    rcx,rdx
  327d48:	e8 bb 31 fa ff       	call   0x2caf08
  327d4d:	84 c0                	test   al,al
  327d4f:	0f 84 6d 01 00 00    	je     0x327ec2
  327d55:	44 38 25 c4 f2 0c 00 	cmp    BYTE PTR [rip+0xcf2c4],r12b        # 0x3f7020
  327d5c:	48 8d 7a 30          	lea    rdi,[rdx+0x30]
  327d60:	8b 72 28             	mov    esi,DWORD PTR [rdx+0x28]
  327d63:	0f 57 db             	xorps  xmm3,xmm3
  327d66:	0f 57 c9             	xorps  xmm1,xmm1
  327d69:	74 0e                	je     0x327d79
  327d6b:	f3 0f 10 15 65 b3 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6b365]        # 0x2930d8
  327d73:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  327d77:	eb 0f                	jmp    0x327d88
  327d79:	f3 0f 10 15 7b 5d f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff65d7b]        # 0x28dafc
  327d81:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  327d88:	e8 1b fe 09 00       	call   0x3c7ba8
  327d8d:	4c 8b c0             	mov    r8,rax
  327d90:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  327d94:	48 8b cf             	mov    rcx,rdi
  327d97:	e8 6c 79 fb ff       	call   0x2df708
  327d9c:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327da0:	49 8b cf             	mov    rcx,r15
  327da3:	e8 18 14 04 00       	call   0x3691c0
  327da8:	85 f6                	test   esi,esi
  327daa:	75 6c                	jne    0x327e18
  327dac:	49 8b cf             	mov    rcx,r15
  327daf:	e8 2c 23 04 00       	call   0x36a0e0
  327db4:	84 c0                	test   al,al
  327db6:	75 60                	jne    0x327e18
  327db8:	33 d2                	xor    edx,edx
  327dba:	49 8b cf             	mov    rcx,r15
  327dbd:	e8 4a 24 04 00       	call   0x36a20c
  327dc2:	84 c0                	test   al,al
  327dc4:	75 52                	jne    0x327e18
  327dc6:	44 38 25 d4 04 0b 00 	cmp    BYTE PTR [rip+0xb04d4],r12b        # 0x3d82a1
  327dcd:	74 49                	je     0x327e18
  327dcf:	48 8d 0d 1a f7 0c 00 	lea    rcx,[rip+0xcf71a]        # 0x3f74f0
  327dd6:	e8 7d bd fb ff       	call   0x2e3b58
  327ddb:	8b 4d c8             	mov    ecx,DWORD PTR [rbp-0x38]
  327dde:	f2 0f 10 45 c0       	movsd  xmm0,QWORD PTR [rbp-0x40]
  327de3:	84 c0                	test   al,al
  327de5:	74 0e                	je     0x327df5
  327de7:	f2 0f 11 05 01 f7 0c 00 	movsd  QWORD PTR [rip+0xcf701],xmm0        # 0x3f74f0
  327def:	89 0d 03 f7 0c 00    	mov    DWORD PTR [rip+0xcf703],ecx        # 0x3f74f8
  327df5:	89 4c 24 58          	mov    DWORD PTR [rsp+0x58],ecx
  327df9:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327dfe:	48 8b cb             	mov    rcx,rbx
  327e01:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327e07:	e8 34 d3 04 00       	call   0x375140
  327e0c:	44 88 35 f5 ac 0c 00 	mov    BYTE PTR [rip+0xcacf5],r14b        # 0x3f2b08
  327e13:	e9 aa 00 00 00       	jmp    0x327ec2
  327e18:	44 38 25 e9 ac 0c 00 	cmp    BYTE PTR [rip+0xcace9],r12b        # 0x3f2b08
  327e1f:	74 48                	je     0x327e69
  327e21:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  327e25:	e8 92 fd 09 00       	call   0x3c7bbc
  327e2a:	4c 8b ad 70 02 00 00 	mov    r13,QWORD PTR [rbp+0x270]
  327e31:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327e36:	48 8b cb             	mov    rcx,rbx
  327e39:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327e3d:	f2 41 0f 11 45 44    	movsd  QWORD PTR [r13+0x44],xmm0
  327e43:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327e46:	41 89 45 4c          	mov    DWORD PTR [r13+0x4c],eax
  327e4a:	f2 0f 10 05 9e f6 0c 00 	movsd  xmm0,QWORD PTR [rip+0xcf69e]        # 0x3f74f0
  327e52:	8b 05 a0 f6 0c 00    	mov    eax,DWORD PTR [rip+0xcf6a0]        # 0x3f74f8
  327e58:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327e5e:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327e62:	e8 d9 d2 04 00       	call   0x375140
  327e67:	eb 60                	jmp    0x327ec9
  327e69:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  327e6d:	49 8b cf             	mov    rcx,r15
  327e70:	e8 4b 13 04 00       	call   0x3691c0
  327e75:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  327e7a:	48 8b cb             	mov    rcx,rbx
  327e7d:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327e81:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327e84:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  327e8a:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  327e8e:	e8 ad d2 04 00       	call   0x375140
  327e93:	eb 2d                	jmp    0x327ec2
  327e95:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  327e99:	e8 1e fd 09 00       	call   0x3c7bbc
  327e9e:	45 33 e4             	xor    r12d,r12d
  327ea1:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  327ea5:	f2 0f 11 05 43 f6 0c 00 	movsd  QWORD PTR [rip+0xcf643],xmm0        # 0x3f74f0
  327ead:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  327eb0:	89 05 42 f6 0c 00    	mov    DWORD PTR [rip+0xcf642],eax        # 0x3f74f8
  327eb6:	44 88 25 4b ac 0c 00 	mov    BYTE PTR [rip+0xcac4b],r12b        # 0x3f2b08
  327ebd:	eb 03                	jmp    0x327ec2
  327ebf:	45 33 e4             	xor    r12d,r12d
  327ec2:	4c 8b ad 70 02 00 00 	mov    r13,QWORD PTR [rbp+0x270]
  327ec9:	44 38 25 a1 df 0b 00 	cmp    BYTE PTR [rip+0xbdfa1],r12b        # 0x3e5e71
  327ed0:	74 09                	je     0x327edb
  327ed2:	44 38 25 bf b3 0c 00 	cmp    BYTE PTR [rip+0xcb3bf],r12b        # 0x3f3298
  327ed9:	75 15                	jne    0x327ef0
  327edb:	44 38 25 26 bc 0c 00 	cmp    BYTE PTR [rip+0xcbc26],r12b        # 0x3f3b08
  327ee2:	41 8a dc             	mov    bl,r12b
  327ee5:	74 29                	je     0x327f10
  327ee7:	44 38 25 b3 03 0b 00 	cmp    BYTE PTR [rip+0xb03b3],r12b        # 0x3d82a1
  327eee:	74 20                	je     0x327f10
  327ef0:	49 8b cf             	mov    rcx,r15
  327ef3:	41 8a de             	mov    bl,r14b
  327ef6:	e8 b5 14 04 00       	call   0x3693b0
  327efb:	84 c0                	test   al,al
  327efd:	74 11                	je     0x327f10
  327eff:	33 d2                	xor    edx,edx
  327f01:	49 8b cf             	mov    rcx,r15
  327f04:	e8 03 23 04 00       	call   0x36a20c
  327f09:	41 8a d6             	mov    dl,r14b
  327f0c:	84 c0                	test   al,al
  327f0e:	74 03                	je     0x327f13
  327f10:	41 8a d4             	mov    dl,r12b
  327f13:	49 8b cf             	mov    rcx,r15
  327f16:	e8 75 2f 04 00       	call   0x36ae90
  327f1b:	44 38 25 fe f0 0c 00 	cmp    BYTE PTR [rip+0xcf0fe],r12b        # 0x3f7020
  327f22:	74 13                	je     0x327f37
  327f24:	84 db                	test   bl,bl
  327f26:	74 0f                	je     0x327f37
  327f28:	48 8b 8d 80 02 00 00 	mov    rcx,QWORD PTR [rbp+0x280]
  327f2f:	41 8b d6             	mov    edx,r14d
  327f32:	e8 e5 ac 04 00       	call   0x372c1c
  327f37:	44 38 25 7a b1 0c 00 	cmp    BYTE PTR [rip+0xcb17a],r12b        # 0x3f30b8
  327f3e:	bf 00 00 00 02       	mov    edi,0x2000000
  327f43:	74 3a                	je     0x327f7f
  327f45:	44 38 25 24 df 0b 00 	cmp    BYTE PTR [rip+0xbdf24],r12b        # 0x3e5e70
  327f4c:	75 69                	jne    0x327fb7
  327f4e:	e8 d1 d9 fe ff       	call   0x315924
  327f53:	48 8b c8             	mov    rcx,rax
  327f56:	48 8b d8             	mov    rbx,rax
  327f59:	e8 aa 2f fa ff       	call   0x2caf08
  327f5e:	84 c0                	test   al,al
  327f60:	74 55                	je     0x327fb7
  327f62:	48 8b cb             	mov    rcx,rbx
  327f65:	e8 32 48 04 00       	call   0x36c79c
  327f6a:	33 c7                	xor    eax,edi
  327f6c:	48 8b cb             	mov    rcx,rbx
  327f6f:	8b d0                	mov    edx,eax
  327f71:	e8 6e 4c 04 00       	call   0x36cbe4
  327f76:	44 88 35 f3 de 0b 00 	mov    BYTE PTR [rip+0xbdef3],r14b        # 0x3e5e70
  327f7d:	eb 38                	jmp    0x327fb7
  327f7f:	44 38 25 ea de 0b 00 	cmp    BYTE PTR [rip+0xbdeea],r12b        # 0x3e5e70
  327f86:	74 2f                	je     0x327fb7
  327f88:	e8 97 d9 fe ff       	call   0x315924
  327f8d:	48 8b c8             	mov    rcx,rax
  327f90:	48 8b d8             	mov    rbx,rax
  327f93:	e8 70 2f fa ff       	call   0x2caf08
  327f98:	84 c0                	test   al,al
  327f9a:	74 14                	je     0x327fb0
  327f9c:	48 8b cb             	mov    rcx,rbx
  327f9f:	e8 f8 47 04 00       	call   0x36c79c
  327fa4:	33 c7                	xor    eax,edi
  327fa6:	48 8b cb             	mov    rcx,rbx
  327fa9:	8b d0                	mov    edx,eax
  327fab:	e8 34 4c 04 00       	call   0x36cbe4
  327fb0:	44 88 25 b9 de 0b 00 	mov    BYTE PTR [rip+0xbdeb9],r12b        # 0x3e5e70
  327fb7:	44 38 25 7a bd 0c 00 	cmp    BYTE PTR [rip+0xcbd7a],r12b        # 0x3f3d38
  327fbe:	0f 84 46 01 00 00    	je     0x32810a
  327fc4:	41 8a d6             	mov    dl,r14b
  327fc7:	48 8d 0d 8a c5 0c 00 	lea    rcx,[rip+0xcc58a]        # 0x3f4558
  327fce:	e8 11 0a fc ff       	call   0x2e89e4
  327fd3:	84 c0                	test   al,al
  327fd5:	0f 84 2f 01 00 00    	je     0x32810a
  327fdb:	e8 44 d9 fe ff       	call   0x315924
  327fe0:	48 8b c8             	mov    rcx,rax
  327fe3:	48 8b f0             	mov    rsi,rax
  327fe6:	e8 1d 2f fa ff       	call   0x2caf08
  327feb:	84 c0                	test   al,al
  327fed:	0f 84 17 01 00 00    	je     0x32810a
  327ff3:	48 8b ce             	mov    rcx,rsi
  327ff6:	e8 a1 47 04 00       	call   0x36c79c
  327ffb:	41 b8 04 00 00 00    	mov    r8d,0x4
  328001:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  328005:	48 8d 0d 1c c7 0c 00 	lea    rcx,[rip+0xcc71c]        # 0x3f4728
  32800c:	8b d8                	mov    ebx,eax
  32800e:	e8 dd 18 fc ff       	call   0x2e98f0
  328013:	48 8b c8             	mov    rcx,rax
  328016:	e8 55 cd fa ff       	call   0x2d4d70
  32801b:	8b fb                	mov    edi,ebx
  32801d:	48 8d 95 d0 00 00 00 	lea    rdx,[rbp+0xd0]
  328024:	0f ba ff 15          	btc    edi,0x15
  328028:	48 8d 0d f9 c6 0c 00 	lea    rcx,[rip+0xcc6f9]        # 0x3f4728
  32802f:	84 c0                	test   al,al
  328031:	41 b8 05 00 00 00    	mov    r8d,0x5
  328037:	0f 44 fb             	cmove  edi,ebx
  32803a:	e8 b1 18 fc ff       	call   0x2e98f0
  32803f:	48 8b c8             	mov    rcx,rax
  328042:	e8 29 cd fa ff       	call   0x2d4d70
  328047:	8b df                	mov    ebx,edi
  328049:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  32804d:	0f ba fb 1e          	btc    ebx,0x1e
  328051:	48 8d 0d d0 c6 0c 00 	lea    rcx,[rip+0xcc6d0]        # 0x3f4728
  328058:	84 c0                	test   al,al
  32805a:	41 b8 03 00 00 00    	mov    r8d,0x3
  328060:	0f 44 df             	cmove  ebx,edi
  328063:	e8 88 18 fc ff       	call   0x2e98f0
  328068:	48 8b c8             	mov    rcx,rax
  32806b:	e8 00 cd fa ff       	call   0x2d4d70
  328070:	8b fb                	mov    edi,ebx
  328072:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  328079:	0f ba ff 17          	btc    edi,0x17
  32807d:	48 8d 0d a4 c6 0c 00 	lea    rcx,[rip+0xcc6a4]        # 0x3f4728
  328084:	84 c0                	test   al,al
  328086:	41 b8 02 00 00 00    	mov    r8d,0x2
  32808c:	0f 44 fb             	cmove  edi,ebx
  32808f:	e8 5c 18 fc ff       	call   0x2e98f0
  328094:	48 8b c8             	mov    rcx,rax
  328097:	e8 d4 cc fa ff       	call   0x2d4d70
  32809c:	8b df                	mov    ebx,edi
  32809e:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  3280a5:	83 f3 10             	xor    ebx,0x10
  3280a8:	48 8d 0d 79 c6 0c 00 	lea    rcx,[rip+0xcc679]        # 0x3f4728
  3280af:	84 c0                	test   al,al
  3280b1:	4d 8b c6             	mov    r8,r14
  3280b4:	0f 44 df             	cmove  ebx,edi
  3280b7:	e8 34 18 fc ff       	call   0x2e98f0
  3280bc:	48 8b c8             	mov    rcx,rax
  3280bf:	e8 ac cc fa ff       	call   0x2d4d70
  3280c4:	8b fb                	mov    edi,ebx
  3280c6:	0f ba ff 10          	btc    edi,0x10
  3280ca:	84 c0                	test   al,al
  3280cc:	0f 44 fb             	cmove  edi,ebx
  3280cf:	44 38 25 e2 af 0c 00 	cmp    BYTE PTR [rip+0xcafe2],r12b        # 0x3f30b8
  3280d6:	75 28                	jne    0x328100
  3280d8:	45 33 c0             	xor    r8d,r8d
  3280db:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3280df:	48 8d 0d 42 c6 0c 00 	lea    rcx,[rip+0xcc642]        # 0x3f4728
  3280e6:	e8 05 18 fc ff       	call   0x2e98f0
  3280eb:	48 8b c8             	mov    rcx,rax
  3280ee:	e8 7d cc fa ff       	call   0x2d4d70
  3280f3:	8b d7                	mov    edx,edi
  3280f5:	0f ba fa 19          	btc    edx,0x19
  3280f9:	84 c0                	test   al,al
  3280fb:	0f 44 d7             	cmove  edx,edi
  3280fe:	eb 02                	jmp    0x328102
  328100:	8b d7                	mov    edx,edi
  328102:	48 8b ce             	mov    rcx,rsi
  328105:	e8 da 4a 04 00       	call   0x36cbe4
  32810a:	44 38 25 e7 ba 0c 00 	cmp    BYTE PTR [rip+0xcbae7],r12b        # 0x3f3bf8
  328111:	0f 84 8c 01 00 00    	je     0x3282a3
  328117:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  32811c:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  328121:	e8 0a 46 fa ff       	call   0x2cc730
  328126:	48 8b c8             	mov    rcx,rax
  328129:	e8 76 5b fa ff       	call   0x2cdca4
  32812e:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  328132:	48 8b d8             	mov    rbx,rax
  328135:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  32813a:	e8 5d c3 ff ff       	call   0x32449c
  32813f:	48 8b c8             	mov    rcx,rax
  328142:	e8 ad 04 fb ff       	call   0x2d85f4
  328147:	48 8b c8             	mov    rcx,rax
  32814a:	48 8b d3             	mov    rdx,rbx
  32814d:	e8 d2 c0 00 00       	call   0x334224
  328152:	48 8b c8             	mov    rcx,rax
  328155:	48 8b d0             	mov    rdx,rax
  328158:	e8 ab 2d fa ff       	call   0x2caf08
  32815d:	84 c0                	test   al,al
  32815f:	0f 84 3e 01 00 00    	je     0x3282a3
  328165:	48 8b 92 b8 00 00 00 	mov    rdx,QWORD PTR [rdx+0xb8]
  32816c:	48 8b ca             	mov    rcx,rdx
  32816f:	e8 94 2d fa ff       	call   0x2caf08
  328174:	84 c0                	test   al,al
  328176:	0f 84 27 01 00 00    	je     0x3282a3
  32817c:	4c 8b 42 10          	mov    r8,QWORD PTR [rdx+0x10]
  328180:	49 8b c8             	mov    rcx,r8
  328183:	e8 80 2d fa ff       	call   0x2caf08
  328188:	84 c0                	test   al,al
  32818a:	0f 84 13 01 00 00    	je     0x3282a3
  328190:	4d 8b 60 20          	mov    r12,QWORD PTR [r8+0x20]
  328194:	49 8b cc             	mov    rcx,r12
  328197:	e8 6c 2d fa ff       	call   0x2caf08
  32819c:	84 c0                	test   al,al
  32819e:	0f 84 fc 00 00 00    	je     0x3282a0
  3281a4:	8b 05 8e ed 0c 00    	mov    eax,DWORD PTR [rip+0xced8e]        # 0x3f6f38
  3281aa:	b9 00 20 00 00       	mov    ecx,0x2000
  3281af:	85 c1                	test   ecx,eax
  3281b1:	0f 85 a2 00 00 00    	jne    0x328259
  3281b7:	0b c1                	or     eax,ecx
  3281b9:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3281be:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3281c3:	89 05 6f ed 0c 00    	mov    DWORD PTR [rip+0xced6f],eax        # 0x3f6f38
  3281c9:	e8 62 45 fa ff       	call   0x2cc730
  3281ce:	48 8b c8             	mov    rcx,rax
  3281d1:	e8 ce 5a fa ff       	call   0x2cdca4
  3281d6:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3281db:	48 8b f0             	mov    rsi,rax
  3281de:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3281e3:	e8 10 c3 ff ff       	call   0x3244f8
  3281e8:	48 8b c8             	mov    rcx,rax
  3281eb:	e8 54 5b fa ff       	call   0x2cdd44
  3281f0:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3281f4:	48 8b f8             	mov    rdi,rax
  3281f7:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3281fc:	e8 db c2 ff ff       	call   0x3244dc
  328201:	48 8b c8             	mov    rcx,rax
  328204:	e8 2b 5c fa ff       	call   0x2cde34
  328209:	48 8d 95 a0 00 00 00 	lea    rdx,[rbp+0xa0]
  328210:	48 8b d8             	mov    rbx,rax
  328213:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  328218:	e8 a3 c2 ff ff       	call   0x3244c0
  32821d:	48 8b c8             	mov    rcx,rax
  328220:	e8 0f 5c fa ff       	call   0x2cde34
  328225:	48 8b c8             	mov    rcx,rax
  328228:	48 8b d3             	mov    rdx,rbx
  32822b:	e8 f4 bf 00 00       	call   0x334224
  328230:	41 83 c8 ff          	or     r8d,0xffffffff
  328234:	48 8b c8             	mov    rcx,rax
  328237:	4c 8b ce             	mov    r9,rsi
  32823a:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  32823f:	48 8b d7             	mov    rdx,rdi
  328242:	e8 65 c7 00 00       	call   0x3349ac
  328247:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32824a:	8b 05 e8 ec 0c 00    	mov    eax,DWORD PTR [rip+0xcece8]        # 0x3f6f38
  328250:	4c 89 05 a9 f2 0c 00 	mov    QWORD PTR [rip+0xcf2a9],r8        # 0x3f7500
  328257:	eb 07                	jmp    0x328260
  328259:	4c 8b 05 a0 f2 0c 00 	mov    r8,QWORD PTR [rip+0xcf2a0]        # 0x3f7500
  328260:	b9 00 40 00 00       	mov    ecx,0x4000
  328265:	85 c1                	test   ecx,eax
  328267:	75 1e                	jne    0x328287
  328269:	0b c1                	or     eax,ecx
  32826b:	48 8d 15 9e f2 0c 00 	lea    rdx,[rip+0xcf29e]        # 0x3f7510
  328272:	48 8b 0d e7 db 0a 00 	mov    rcx,QWORD PTR [rip+0xadbe7]        # 0x3d5e60
  328279:	45 33 c9             	xor    r9d,r9d
  32827c:	89 05 b6 ec 0c 00    	mov    DWORD PTR [rip+0xcecb6],eax        # 0x3f6f38
  328282:	e8 9d 3a fa ff       	call   0x2cbd24
  328287:	48 8b 0d d2 db 0a 00 	mov    rcx,QWORD PTR [rip+0xadbd2]        # 0x3d5e60
  32828e:	48 8d 15 7b f2 0c 00 	lea    rdx,[rip+0xcf27b]        # 0x3f7510
  328295:	0f 57 db             	xorps  xmm3,xmm3
  328298:	4d 8b c4             	mov    r8,r12
  32829b:	e8 bc 9f ff ff       	call   0x32225c
  3282a0:	45 33 e4             	xor    r12d,r12d
  3282a3:	44 38 25 3e ba 0c 00 	cmp    BYTE PTR [rip+0xcba3e],r12b        # 0x3f3ce8
  3282aa:	74 3b                	je     0x3282e7
  3282ac:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3282b1:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3282b6:	e8 75 44 fa ff       	call   0x2cc730
  3282bb:	48 8b c8             	mov    rcx,rax
  3282be:	e8 e1 59 fa ff       	call   0x2cdca4
  3282c3:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3282c7:	48 8b d8             	mov    rbx,rax
  3282ca:	48 8d 4c 24 41       	lea    rcx,[rsp+0x41]
  3282cf:	e8 40 c2 ff ff       	call   0x324514
  3282d4:	48 8b c8             	mov    rcx,rax
  3282d7:	e8 d8 18 fc ff       	call   0x2e9bb4
  3282dc:	48 8b c8             	mov    rcx,rax
  3282df:	48 8b d3             	mov    rdx,rbx
  3282e2:	e8 3d bf 00 00       	call   0x334224
  3282e7:	44 39 25 fe f2 0c 00 	cmp    DWORD PTR [rip+0xcf2fe],r12d        # 0x3f75ec
  3282ee:	75 0d                	jne    0x3282fd
  3282f0:	41 8b 85 b8 00 00 00 	mov    eax,DWORD PTR [r13+0xb8]
  3282f7:	89 05 ef f2 0c 00    	mov    DWORD PTR [rip+0xcf2ef],eax        # 0x3f75ec
  3282fd:	40 8a bd 88 02 00 00 	mov    dil,BYTE PTR [rbp+0x288]
  328304:	40 84 ff             	test   dil,dil
  328307:	0f 84 6c 02 00 00    	je     0x328579
  32830d:	49 8b cf             	mov    rcx,r15
  328310:	e8 cb 1d 04 00       	call   0x36a0e0
  328315:	84 c0                	test   al,al
  328317:	0f 85 5c 02 00 00    	jne    0x328579
  32831d:	44 38 25 a4 b1 0c 00 	cmp    BYTE PTR [rip+0xcb1a4],r12b        # 0x3f34c8
  328324:	0f 85 4f 02 00 00    	jne    0x328579
  32832a:	49 8b cf             	mov    rcx,r15
  32832d:	e8 66 0f 04 00       	call   0x369298
  328332:	48 8b c8             	mov    rcx,rax
  328335:	48 8b d8             	mov    rbx,rax
  328338:	e8 cb 2b fa ff       	call   0x2caf08
  32833d:	84 c0                	test   al,al
  32833f:	0f 84 64 02 00 00    	je     0x3285a9
  328345:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  32834a:	e8 6d f8 09 00       	call   0x3c7bbc
  32834f:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  328353:	48 8b cb             	mov    rcx,rbx
  328356:	e8 69 b6 04 00       	call   0x3739c4
  32835b:	41 0f 28 cb          	movaps xmm1,xmm11
  32835f:	49 8b cd             	mov    rcx,r13
  328362:	e8 a5 bb 04 00       	call   0x373f0c
  328367:	44 38 25 33 ff 0a 00 	cmp    BYTE PTR [rip+0xaff33],r12b        # 0x3d82a1
  32836e:	b9 24 00 00 00       	mov    ecx,0x24
  328373:	44 88 35 d6 be 0b 00 	mov    BYTE PTR [rip+0xbbed6],r14b        # 0x3e4250
  32837a:	0f 95 c2             	setne  dl
  32837d:	e8 ca da fb ff       	call   0x2e5e4c
  328382:	84 c0                	test   al,al
  328384:	74 2a                	je     0x3283b0
  328386:	44 38 25 e4 da 0b 00 	cmp    BYTE PTR [rip+0xbdae4],r12b        # 0x3e5e71
  32838d:	75 21                	jne    0x3283b0
  32838f:	4c 8d 45 90          	lea    r8,[rbp-0x70]
  328393:	48 8d 15 26 c7 0c 00 	lea    rdx,[rip+0xcc726]        # 0x3f4ac0
  32839a:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32839e:	e8 11 8a ff ff       	call   0x320db4
  3283a3:	48 8b d0             	mov    rdx,rax
  3283a6:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3283ab:	e8 18 f8 09 00       	call   0x3c7bc8
  3283b0:	44 38 25 ea fe 0a 00 	cmp    BYTE PTR [rip+0xafeea],r12b        # 0x3d82a1
  3283b7:	b9 20 00 00 00       	mov    ecx,0x20
  3283bc:	0f 95 c2             	setne  dl
  3283bf:	e8 88 da fb ff       	call   0x2e5e4c
  3283c4:	84 c0                	test   al,al
  3283c6:	74 2a                	je     0x3283f2
  3283c8:	44 38 25 a2 da 0b 00 	cmp    BYTE PTR [rip+0xbdaa2],r12b        # 0x3e5e71
  3283cf:	75 21                	jne    0x3283f2
  3283d1:	4c 8d 45 90          	lea    r8,[rbp-0x70]
  3283d5:	48 8d 15 e4 c6 0c 00 	lea    rdx,[rip+0xcc6e4]        # 0x3f4ac0
  3283dc:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3283e0:	e8 cf 89 ff ff       	call   0x320db4
  3283e5:	48 8b d0             	mov    rdx,rax
  3283e8:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3283ed:	e8 06 f8 09 00       	call   0x3c7bf8
  3283f2:	44 38 25 a8 fe 0a 00 	cmp    BYTE PTR [rip+0xafea8],r12b        # 0x3d82a1
  3283f9:	b9 0e 00 00 00       	mov    ecx,0xe
  3283fe:	0f 95 c2             	setne  dl
  328401:	e8 46 da fb ff       	call   0x2e5e4c
  328406:	84 c0                	test   al,al
  328408:	74 2a                	je     0x328434
  32840a:	44 38 25 60 da 0b 00 	cmp    BYTE PTR [rip+0xbda60],r12b        # 0x3e5e71
  328411:	75 21                	jne    0x328434
  328413:	4c 8d 45 90          	lea    r8,[rbp-0x70]
  328417:	48 8d 15 b2 c6 0c 00 	lea    rdx,[rip+0xcc6b2]        # 0x3f4ad0
  32841e:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  328422:	e8 8d 89 ff ff       	call   0x320db4
  328427:	48 8b d0             	mov    rdx,rax
  32842a:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  32842f:	e8 c4 f7 09 00       	call   0x3c7bf8
  328434:	44 38 25 66 fe 0a 00 	cmp    BYTE PTR [rip+0xafe66],r12b        # 0x3d82a1
  32843b:	b9 11 00 00 00       	mov    ecx,0x11
  328440:	0f 95 c2             	setne  dl
  328443:	e8 04 da fb ff       	call   0x2e5e4c
  328448:	84 c0                	test   al,al
  32844a:	74 2a                	je     0x328476
  32844c:	44 38 25 1e da 0b 00 	cmp    BYTE PTR [rip+0xbda1e],r12b        # 0x3e5e71
  328453:	75 21                	jne    0x328476
  328455:	4c 8d 45 90          	lea    r8,[rbp-0x70]
  328459:	48 8d 15 70 c6 0c 00 	lea    rdx,[rip+0xcc670]        # 0x3f4ad0
  328460:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  328464:	e8 4b 89 ff ff       	call   0x320db4
  328469:	48 8b d0             	mov    rdx,rax
  32846c:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  328471:	e8 52 f7 09 00       	call   0x3c7bc8
  328476:	44 38 25 24 fe 0a 00 	cmp    BYTE PTR [rip+0xafe24],r12b        # 0x3d82a1
  32847d:	0f 95 c2             	setne  dl
  328480:	33 c9                	xor    ecx,ecx
  328482:	e8 c5 d9 fb ff       	call   0x2e5e4c
  328487:	84 c0                	test   al,al
  328489:	74 1a                	je     0x3284a5
  32848b:	44 38 25 df d9 0b 00 	cmp    BYTE PTR [rip+0xbd9df],r12b        # 0x3e5e71
  328492:	75 11                	jne    0x3284a5
  328494:	f3 0f 10 44 24 64    	movss  xmm0,DWORD PTR [rsp+0x64]
  32849a:	f3 41 0f 58 c1       	addss  xmm0,xmm9
  32849f:	f3 0f 11 44 24 64    	movss  DWORD PTR [rsp+0x64],xmm0
  3284a5:	8a 05 f6 fd 0a 00    	mov    al,BYTE PTR [rip+0xafdf6]        # 0x3d82a1
  3284ab:	84 c0                	test   al,al
  3284ad:	74 0a                	je     0x3284b9
  3284af:	f3 0f 10 35 61 ba 0c 00 	movss  xmm6,DWORD PTR [rip+0xcba61]        # 0x3f3f18
  3284b7:	eb 08                	jmp    0x3284c1
  3284b9:	f3 0f 10 35 67 b9 0c 00 	movss  xmm6,DWORD PTR [rip+0xcb967]        # 0x3f3e28
  3284c1:	84 c0                	test   al,al
  3284c3:	b9 36 00 00 00       	mov    ecx,0x36
  3284c8:	0f 95 c2             	setne  dl
  3284cb:	e8 7c d9 fb ff       	call   0x2e5e4c
  3284d0:	8a 0d cb fd 0a 00    	mov    cl,BYTE PTR [rip+0xafdcb]        # 0x3d82a1
  3284d6:	84 c0                	test   al,al
  3284d8:	74 1f                	je     0x3284f9
  3284da:	44 38 25 90 d9 0b 00 	cmp    BYTE PTR [rip+0xbd990],r12b        # 0x3e5e71
  3284e1:	75 16                	jne    0x3284f9
  3284e3:	84 c9                	test   cl,cl
  3284e5:	74 0a                	je     0x3284f1
  3284e7:	f3 0f 10 35 79 ba 0c 00 	movss  xmm6,DWORD PTR [rip+0xcba79]        # 0x3f3f68
  3284ef:	eb 08                	jmp    0x3284f9
  3284f1:	f3 0f 10 35 7f b9 0c 00 	movss  xmm6,DWORD PTR [rip+0xcb97f]        # 0x3f3e78
  3284f9:	84 c9                	test   cl,cl
  3284fb:	b9 32 00 00 00       	mov    ecx,0x32
  328500:	0f 95 c2             	setne  dl
  328503:	e8 44 d9 fb ff       	call   0x2e5e4c
  328508:	84 c0                	test   al,al
  32850a:	74 24                	je     0x328530
  32850c:	44 38 25 5e d9 0b 00 	cmp    BYTE PTR [rip+0xbd95e],r12b        # 0x3e5e71
  328513:	75 1b                	jne    0x328530
  328515:	44 38 25 85 fd 0a 00 	cmp    BYTE PTR [rip+0xafd85],r12b        # 0x3d82a1
  32851c:	74 0a                	je     0x328528
  32851e:	f3 0f 10 35 92 ba 0c 00 	movss  xmm6,DWORD PTR [rip+0xcba92]        # 0x3f3fb8
  328526:	eb 08                	jmp    0x328530
  328528:	f3 0f 10 35 98 b9 0c 00 	movss  xmm6,DWORD PTR [rip+0xcb998]        # 0x3f3ec8
  328530:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  328534:	44 88 35 ad f0 0c 00 	mov    BYTE PTR [rip+0xcf0ad],r14b        # 0x3f75e8
  32853b:	e8 7c f6 09 00       	call   0x3c7bbc
  328540:	48 8b d0             	mov    rdx,rax
  328543:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  328548:	e8 8f 70 fb ff       	call   0x2df5dc
  32854d:	84 c0                	test   al,al
  32854f:	74 58                	je     0x3285a9
  328551:	0f 28 d6             	movaps xmm2,xmm6
  328554:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  328559:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  32855e:	e8 09 71 fb ff       	call   0x2df66c
  328563:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  328569:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  32856d:	f2 41 0f 11 45 44    	movsd  QWORD PTR [r13+0x44],xmm0
  328573:	41 89 45 4c          	mov    DWORD PTR [r13+0x4c],eax
  328577:	eb 30                	jmp    0x3285a9
  328579:	44 38 25 68 f0 0c 00 	cmp    BYTE PTR [rip+0xcf068],r12b        # 0x3f75e8
  328580:	74 27                	je     0x3285a9
  328582:	0f 57 c9             	xorps  xmm1,xmm1
  328585:	49 8b cd             	mov    rcx,r13
  328588:	e8 7f b9 04 00       	call   0x373f0c
  32858d:	48 63 05 58 f0 0c 00 	movsxd rax,DWORD PTR [rip+0xcf058]        # 0x3f75ec
  328594:	49 89 85 b8 00 00 00 	mov    QWORD PTR [r13+0xb8],rax
  32859b:	44 88 25 ae bc 0b 00 	mov    BYTE PTR [rip+0xbbcae],r12b        # 0x3e4250
  3285a2:	44 88 25 3f f0 0c 00 	mov    BYTE PTR [rip+0xcf03f],r12b        # 0x3f75e8
  3285a9:	44 38 25 31 75 0c 00 	cmp    BYTE PTR [rip+0xc7531],r12b        # 0x3efae1
  3285b0:	74 0b                	je     0x3285bd
  3285b2:	0f 57 c9             	xorps  xmm1,xmm1
  3285b5:	49 8b cd             	mov    rcx,r13
  3285b8:	e8 ab 14 00 00       	call   0x329a68
  3285bd:	48 8b 05 2c f0 0c 00 	mov    rax,QWORD PTR [rip+0xcf02c]        # 0x3f75f0
  3285c4:	48 85 c0             	test   rax,rax
  3285c7:	75 0e                	jne    0x3285d7
  3285c9:	41 8b 85 28 01 00 00 	mov    eax,DWORD PTR [r13+0x128]
  3285d0:	48 89 05 19 f0 0c 00 	mov    QWORD PTR [rip+0xcf019],rax        # 0x3f75f0
  3285d7:	40 84 ff             	test   dil,dil
  3285da:	75 20                	jne    0x3285fc
  3285dc:	44 38 25 9e 71 0c 00 	cmp    BYTE PTR [rip+0xc719e],r12b        # 0x3ef781
  3285e3:	74 17                	je     0x3285fc
  3285e5:	f3 0f 10 0d e7 bb f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6bbe7]        # 0x2941d4
  3285ed:	49 8b cd             	mov    rcx,r13
  3285f0:	41 89 85 28 01 00 00 	mov    DWORD PTR [r13+0x128],eax
  3285f7:	e8 8c 14 00 00       	call   0x329a88
  3285fc:	44 38 25 3e fc 0a 00 	cmp    BYTE PTR [rip+0xafc3e],r12b        # 0x3d8241
  328603:	75 0f                	jne    0x328614
  328605:	44 38 25 d5 6e 0c 00 	cmp    BYTE PTR [rip+0xc6ed5],r12b        # 0x3ef4e1
  32860c:	8a 15 16 ae 0c 00    	mov    dl,BYTE PTR [rip+0xcae16]        # 0x3f3428
  328612:	74 03                	je     0x328617
  328614:	41 8a d6             	mov    dl,r14b
  328617:	49 8b cd             	mov    rcx,r13
  32861a:	e8 95 b8 04 00       	call   0x373eb4
  32861f:	4d 8b 85 e8 00 00 00 	mov    r8,QWORD PTR [r13+0xe8]
  328626:	49 8b c8             	mov    rcx,r8
  328629:	e8 da 28 fa ff       	call   0x2caf08
  32862e:	84 c0                	test   al,al
  328630:	74 11                	je     0x328643
  328632:	44 38 25 df a9 0c 00 	cmp    BYTE PTR [rip+0xca9df],r12b        # 0x3f3018
  328639:	41 8b c4             	mov    eax,r12d
  32863c:	0f 95 c0             	setne  al
  32863f:	41 89 40 50          	mov    DWORD PTR [r8+0x50],eax
  328643:	44 38 25 57 75 0c 00 	cmp    BYTE PTR [rip+0xc7557],r12b        # 0x3efba1
  32864a:	48 8b b5 80 02 00 00 	mov    rsi,QWORD PTR [rbp+0x280]
  328651:	74 0d                	je     0x328660
  328653:	ba 20 00 00 00       	mov    edx,0x20
  328658:	48 8b ce             	mov    rcx,rsi
  32865b:	e8 bc a5 04 00       	call   0x372c1c
  328660:	48 8d 0d e9 18 0c 00 	lea    rcx,[rip+0xc18e9]        # 0x3e9f50
  328667:	e8 90 71 fc ff       	call   0x2ef7fc
  32866c:	40 0a c7             	or     al,dil
  32866f:	75 1b                	jne    0x32868c
  328671:	44 38 25 c9 fb 0a 00 	cmp    BYTE PTR [rip+0xafbc9],r12b        # 0x3d8241
  328678:	75 12                	jne    0x32868c
  32867a:	44 38 25 60 6e 0c 00 	cmp    BYTE PTR [rip+0xc6e60],r12b        # 0x3ef4e1
  328681:	75 09                	jne    0x32868c
  328683:	44 38 25 b7 74 0c 00 	cmp    BYTE PTR [rip+0xc74b7],r12b        # 0x3efb41
  32868a:	74 11                	je     0x32869d
  32868c:	bb 10 00 00 00       	mov    ebx,0x10
  328691:	48 8b ce             	mov    rcx,rsi
  328694:	8b d3                	mov    edx,ebx
  328696:	e8 81 a5 04 00       	call   0x372c1c
  32869b:	eb 05                	jmp    0x3286a2
  32869d:	bb 10 00 00 00       	mov    ebx,0x10
  3286a2:	44 38 25 1f f8 0a 00 	cmp    BYTE PTR [rip+0xaf81f],r12b        # 0x3d7ec8
  3286a9:	0f 84 7b 06 00 00    	je     0x328d2a
  3286af:	44 38 25 a2 f9 0a 00 	cmp    BYTE PTR [rip+0xaf9a2],r12b        # 0x3d8058
  3286b6:	0f 84 6e 06 00 00    	je     0x328d2a
  3286bc:	44 38 25 b5 f7 0a 00 	cmp    BYTE PTR [rip+0xaf7b5],r12b        # 0x3d7e78
  3286c3:	0f 84 61 06 00 00    	je     0x328d2a
  3286c9:	44 38 25 d0 eb 0a 00 	cmp    BYTE PTR [rip+0xaebd0],r12b        # 0x3d72a0
  3286d0:	0f 84 54 06 00 00    	je     0x328d2a
  3286d6:	8b 05 38 a4 0c 00    	mov    eax,DWORD PTR [rip+0xca438]        # 0x3f2b14
  3286dc:	66 0f 6e c0          	movd   xmm0,eax
  3286e0:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3286e3:	0f 2f 05 1e b9 0c 00 	comiss xmm0,DWORD PTR [rip+0xcb91e]        # 0x3f4008
  3286ea:	0f 82 23 06 00 00    	jb     0x328d13
  3286f0:	e8 bb 7b fb ff       	call   0x2e02b0
  3286f5:	48 8b c8             	mov    rcx,rax
  3286f8:	48 8b d8             	mov    rbx,rax
  3286fb:	e8 08 28 fa ff       	call   0x2caf08
  328700:	84 c0                	test   al,al
  328702:	0f 84 c7 05 00 00    	je     0x328ccf
  328708:	48 8b cb             	mov    rcx,rbx
  32870b:	e8 8c 87 fb ff       	call   0x2e0e9c
  328710:	84 c0                	test   al,al
  328712:	0f 84 c7 05 00 00    	je     0x328cdf
  328718:	48 8b cb             	mov    rcx,rbx
  32871b:	e8 34 d3 fb ff       	call   0x2e5a54
  328720:	48 8b c8             	mov    rcx,rax
  328723:	4c 8b c0             	mov    r8,rax
  328726:	e8 dd 27 fa ff       	call   0x2caf08
  32872b:	84 c0                	test   al,al
  32872d:	0f 84 dd 05 00 00    	je     0x328d10
  328733:	49 8b c8             	mov    rcx,r8
  328736:	e8 19 dc fa ff       	call   0x2d6354
  32873b:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32873f:	48 8b f0             	mov    rsi,rax
  328742:	48 8d 8d 88 02 00 00 	lea    rcx,[rbp+0x288]
  328749:	e8 de bd ff ff       	call   0x32452c
  32874e:	48 8b c8             	mov    rcx,rax
  328751:	e8 32 4a fb ff       	call   0x2dd188
  328756:	48 8b c8             	mov    rcx,rax
  328759:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  328763:	e8 e4 d3 fb ff       	call   0x2e5b4c
  328768:	48 8b cb             	mov    rcx,rbx
  32876b:	4c 8b e0             	mov    r12,rax
  32876e:	e8 7d 10 00 00       	call   0x3297f0
  328773:	48 8b c8             	mov    rcx,rax
  328776:	48 8b f8             	mov    rdi,rax
  328779:	e8 8a 27 fa ff       	call   0x2caf08
  32877e:	84 c0                	test   al,al
  328780:	0f 84 87 05 00 00    	je     0x328d0d
  328786:	49 8b cf             	mov    rcx,r15
  328789:	e8 f6 02 04 00       	call   0x368a84
  32878e:	48 8b c8             	mov    rcx,rax
  328791:	48 8b d0             	mov    rdx,rax
  328794:	e8 6f 27 fa ff       	call   0x2caf08
  328799:	84 c0                	test   al,al
  32879b:	0f 84 6c 05 00 00    	je     0x328d0d
  3287a1:	48 8b ca             	mov    rcx,rdx
  3287a4:	e8 0b 9a 04 00       	call   0x3721b4
  3287a9:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  3287ad:	49 8b cf             	mov    rcx,r15
  3287b0:	e8 af 09 04 00       	call   0x369164
  3287b5:	b9 0b 00 00 00       	mov    ecx,0xb
  3287ba:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3287bf:	49 3b f4             	cmp    rsi,r12
  3287c2:	44 8d 41 2c          	lea    r8d,[rcx+0x2c]
  3287c6:	44 0f 44 c1          	cmove  r8d,ecx
  3287ca:	48 8b cb             	mov    rcx,rbx
  3287cd:	e8 16 04 04 00       	call   0x368be8
  3287d2:	b9 0f 00 00 00       	mov    ecx,0xf
  3287d7:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3287db:	49 3b f4             	cmp    rsi,r12
  3287de:	44 8d 41 27          	lea    r8d,[rcx+0x27]
  3287e2:	44 0f 44 c1          	cmove  r8d,ecx
  3287e6:	48 8b cb             	mov    rcx,rbx
  3287e9:	e8 fa 03 04 00       	call   0x368be8
  3287ee:	f3 0f 10 5c 24 58    	movss  xmm3,DWORD PTR [rsp+0x58]
  3287f4:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3287f8:	f3 0f 10 55 44       	movss  xmm2,DWORD PTR [rbp+0x44]
  3287fd:	f3 0f 10 4c 24 50    	movss  xmm1,DWORD PTR [rsp+0x50]
  328803:	e8 a0 f3 09 00       	call   0x3c7ba8
  328808:	f3 0f 10 15 88 a8 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6a888]        # 0x293098
  328810:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  328817:	0f 57 db             	xorps  xmm3,xmm3
  32881a:	0f 57 c9             	xorps  xmm1,xmm1
  32881d:	48 8b d8             	mov    rbx,rax
  328820:	e8 83 f3 09 00       	call   0x3c7ba8
  328825:	4c 8b c0             	mov    r8,rax
  328828:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  32882d:	48 8b cb             	mov    rcx,rbx
  328830:	e8 d3 6e fb ff       	call   0x2df708
  328835:	48 8d 95 c0 00 00 00 	lea    rdx,[rbp+0xc0]
  32883c:	48 8b cf             	mov    rcx,rdi
  32883f:	e8 90 bf 04 00       	call   0x3747d4
  328844:	f3 0f 10 05 64 06 f2 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff20664]        # 0x248eb0
  32884c:	45 33 e4             	xor    r12d,r12d
  32884f:	44 38 25 ba a2 0c 00 	cmp    BYTE PTR [rip+0xca2ba],r12b        # 0x3f2b10
  328856:	75 10                	jne    0x328868
  328858:	f3 0f 58 05 7c b9 f6 ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffff6b97c]        # 0x2941dc
  328860:	f3 0f 11 05 48 06 f2 ff 	movss  DWORD PTR [rip+0xfffffffffff20648],xmm0        # 0x248eb0
  328868:	44 0f 2f c0          	comiss xmm8,xmm0
  32886c:	72 10                	jb     0x32887e
  32886e:	f3 0f 10 05 62 b5 0c 00 	movss  xmm0,DWORD PTR [rip+0xcb562]        # 0x3f3dd8
  328876:	f3 0f 11 05 32 06 f2 ff 	movss  DWORD PTR [rip+0xfffffffffff20632],xmm0        # 0x248eb0
  32887e:	f3 0f 10 15 ae a8 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff6a8ae]        # 0x293134
  328886:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32888a:	0f 57 db             	xorps  xmm3,xmm3
  32888d:	0f 57 c9             	xorps  xmm1,xmm1
  328890:	e8 13 f3 09 00       	call   0x3c7ba8
  328895:	4c 8b c0             	mov    r8,rax
  328898:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  32889c:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3288a1:	e8 62 6e fb ff       	call   0x2df708
  3288a6:	48 63 3d 4b b8 0c 00 	movsxd rdi,DWORD PTR [rip+0xcb84b]        # 0x3f40f8
  3288ad:	48 8d 35 3c c2 0c 00 	lea    rsi,[rip+0xcc23c]        # 0x3f4af0
  3288b4:	48 8b d7             	mov    rdx,rdi
  3288b7:	48 8b ce             	mov    rcx,rsi
  3288ba:	e8 6d 20 00 00       	call   0x32a92c
  3288bf:	48 8b d7             	mov    rdx,rdi
  3288c2:	48 8d 0d 3f c2 0c 00 	lea    rcx,[rip+0xcc23f]        # 0x3f4b08
  3288c9:	e8 5e 20 00 00       	call   0x32a92c
  3288ce:	39 3d e0 05 f2 ff    	cmp    DWORD PTR [rip+0xfffffffffff205e0],edi        # 0x248eb4
  3288d4:	74 23                	je     0x3288f9
  3288d6:	48 8b ce             	mov    rcx,rsi
  3288d9:	89 3d d5 05 f2 ff    	mov    DWORD PTR [rip+0xfffffffffff205d5],edi        # 0x248eb4
  3288df:	e8 80 86 ff ff       	call   0x320f64
  3288e4:	48 8b ce             	mov    rcx,rsi
  3288e7:	48 8b d8             	mov    rbx,rax
  3288ea:	e8 89 90 fa ff       	call   0x2d1978
  3288ef:	48 8b c8             	mov    rcx,rax
  3288f2:	8b d3                	mov    edx,ebx
  3288f4:	e8 c3 0c 00 00       	call   0x3295bc
  3288f9:	f2 0f 10 45 40       	movsd  xmm0,QWORD PTR [rbp+0x40]
  3288fe:	48 8b ce             	mov    rcx,rsi
  328901:	8b 45 48             	mov    eax,DWORD PTR [rbp+0x48]
  328904:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  32890a:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  32890e:	e8 51 86 ff ff       	call   0x320f64
  328913:	48 8d 0d ee c1 0c 00 	lea    rcx,[rip+0xcc1ee]        # 0x3f4b08
  32891a:	48 8b f8             	mov    rdi,rax
  32891d:	e8 56 90 fa ff       	call   0x2d1978
  328922:	48 8b ce             	mov    rcx,rsi
  328925:	48 8b d8             	mov    rbx,rax
  328928:	e8 4b 90 fa ff       	call   0x2d1978
  32892d:	f3 0f 10 05 7b 05 f2 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff2057b]        # 0x248eb0
  328935:	4c 8d 4c 24 70       	lea    r9,[rsp+0x70]
  32893a:	48 8b c8             	mov    rcx,rax
  32893d:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  328943:	44 8b c7             	mov    r8d,edi
  328946:	48 8b d3             	mov    rdx,rbx
  328949:	e8 06 1b 00 00       	call   0x32a454
  32894e:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  328953:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  328956:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  32895c:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  328962:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  328966:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  32896a:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  32896f:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  328972:	e8 f5 e0 fb ff       	call   0x2e6a6c
  328977:	44 8b c0             	mov    r8d,eax
  32897a:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  328981:	0f 57 db             	xorps  xmm3,xmm3
  328984:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  328989:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  32898d:	e8 8e 99 fb ff       	call   0x2e2320
  328992:	84 c0                	test   al,al
  328994:	0f 84 0b 01 00 00    	je     0x328aa5
  32899a:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  3289a0:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  3289a4:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  3289aa:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  3289af:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  3289b3:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  3289b6:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  3289bb:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  3289be:	e8 a9 e0 fb ff       	call   0x2e6a6c
  3289c3:	44 8b c0             	mov    r8d,eax
  3289c6:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  3289cd:	0f 57 db             	xorps  xmm3,xmm3
  3289d0:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3289d5:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  3289d9:	e8 42 99 fb ff       	call   0x2e2320
  3289de:	84 c0                	test   al,al
  3289e0:	0f 84 bf 00 00 00    	je     0x328aa5
  3289e6:	8b 05 64 e8 0a 00    	mov    eax,DWORD PTR [rip+0xae864]        # 0x3d7250
  3289ec:	4c 8d 4c 24 70       	lea    r9,[rsp+0x70]
  3289f1:	f2 0f 10 05 4f e8 0a 00 	movsd  xmm0,QWORD PTR [rip+0xae84f]        # 0x3d7248
  3289f9:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  3289fd:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  328a01:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  328a05:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  328a09:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  328a0d:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  328a13:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  328a19:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  328a1c:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  328a1f:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  328a24:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  328a29:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  328a2c:	48 8b 05 e5 cc 0b 00 	mov    rax,QWORD PTR [rip+0xbcce5]        # 0x3e5718
  328a33:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  328a38:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  328a3d:	e8 32 99 fb ff       	call   0x2e2374
  328a42:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  328a46:	e8 0d b1 fb ff       	call   0x2e3b58
  328a4b:	84 c0                	test   al,al
  328a4d:	75 1d                	jne    0x328a6c
  328a4f:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  328a53:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  328a59:	89 05 79 e8 0a 00    	mov    DWORD PTR [rip+0xae879],eax        # 0x3d72d8
  328a5f:	41 8a c6             	mov    al,r14b
  328a62:	f2 0f 11 05 66 e8 0a 00 	movsd  QWORD PTR [rip+0xae866],xmm0        # 0x3d72d0
  328a6a:	eb 21                	jmp    0x328a8d
  328a6c:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  328a70:	e8 47 f1 09 00       	call   0x3c7bbc
  328a75:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  328a79:	f2 0f 11 05 4f e8 0a 00 	movsd  QWORD PTR [rip+0xae84f],xmm0        # 0x3d72d0
  328a81:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  328a84:	89 05 4e e8 0a 00    	mov    DWORD PTR [rip+0xae84e],eax        # 0x3d72d8
  328a8a:	41 8a c4             	mov    al,r12b
  328a8d:	88 05 e6 d3 0b 00    	mov    BYTE PTR [rip+0xbd3e6],al        # 0x3e5e79
  328a93:	88 05 a0 b7 0b 00    	mov    BYTE PTR [rip+0xbb7a0],al        # 0x3e4239
  328a99:	44 88 25 70 a0 0c 00 	mov    BYTE PTR [rip+0xca070],r12b        # 0x3f2b10
  328aa0:	e9 6b 02 00 00       	jmp    0x328d10
  328aa5:	48 8d 35 5c c0 0c 00 	lea    rsi,[rip+0xcc05c]        # 0x3f4b08
  328aac:	41 8b dc             	mov    ebx,r12d
  328aaf:	48 8b ce             	mov    rcx,rsi
  328ab2:	e8 ad 84 ff ff       	call   0x320f64
  328ab7:	49 03 c6             	add    rax,r14
  328aba:	0f 84 50 02 00 00    	je     0x328d10
  328ac0:	85 db                	test   ebx,ebx
  328ac2:	75 06                	jne    0x328aca
  328ac4:	48 8d 45 40          	lea    rax,[rbp+0x40]
  328ac8:	eb 0e                	jmp    0x328ad8
  328aca:	8d 43 01             	lea    eax,[rbx+0x1]
  328acd:	48 8b ce             	mov    rcx,rsi
  328ad0:	48 63 d0             	movsxd rdx,eax
  328ad3:	e8 f8 6c fc ff       	call   0x2ef7d0
  328ad8:	f2 0f 10 30          	movsd  xmm6,QWORD PTR [rax]
  328adc:	8b 78 08             	mov    edi,DWORD PTR [rax+0x8]
  328adf:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  328ae4:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  328ae7:	f2 0f 11 74 24 70    	movsd  QWORD PTR [rsp+0x70],xmm6
  328aed:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  328af2:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  328af5:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
  328af9:	e8 6e df fb ff       	call   0x2e6a6c
  328afe:	44 8b c0             	mov    r8d,eax
  328b01:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  328b08:	0f 57 db             	xorps  xmm3,xmm3
  328b0b:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  328b10:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  328b14:	e8 07 98 fb ff       	call   0x2e2320
  328b19:	84 c0                	test   al,al
  328b1b:	75 38                	jne    0x328b55
  328b1d:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  328b21:	e8 96 f0 09 00       	call   0x3c7bbc
  328b26:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  328b2a:	f2 0f 11 05 9e e7 0a 00 	movsd  QWORD PTR [rip+0xae79e],xmm0        # 0x3d72d0
  328b32:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  328b35:	89 05 9d e7 0a 00    	mov    DWORD PTR [rip+0xae79d],eax        # 0x3d72d8
  328b3b:	44 88 25 37 d3 0b 00 	mov    BYTE PTR [rip+0xbd337],r12b        # 0x3e5e79
  328b42:	44 88 25 f0 b6 0b 00 	mov    BYTE PTR [rip+0xbb6f0],r12b        # 0x3e4239
  328b49:	44 88 25 c0 9f 0c 00 	mov    BYTE PTR [rip+0xc9fc0],r12b        # 0x3f2b10
  328b50:	e9 39 01 00 00       	jmp    0x328c8e
  328b55:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  328b5a:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  328b5d:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  328b62:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  328b65:	f2 0f 11 75 30       	movsd  QWORD PTR [rbp+0x30],xmm6
  328b6a:	89 7d 38             	mov    DWORD PTR [rbp+0x38],edi
  328b6d:	e8 fa de fb ff       	call   0x2e6a6c
  328b72:	44 8b c0             	mov    r8d,eax
  328b75:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  328b7c:	0f 57 db             	xorps  xmm3,xmm3
  328b7f:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  328b83:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  328b87:	e8 94 97 fb ff       	call   0x2e2320
  328b8c:	84 c0                	test   al,al
  328b8e:	75 09                	jne    0x328b99
  328b90:	48 8d 8d a0 00 00 00 	lea    rcx,[rbp+0xa0]
  328b97:	eb 88                	jmp    0x328b21
  328b99:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  328b9f:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  328ba3:	f2 0f 11 85 90 00 00 00 	movsd  QWORD PTR [rbp+0x90],xmm0
  328bab:	89 85 98 00 00 00    	mov    DWORD PTR [rbp+0x98],eax
  328bb1:	f2 0f 11 b5 80 00 00 00 	movsd  QWORD PTR [rbp+0x80],xmm6
  328bb9:	89 bd 88 00 00 00    	mov    DWORD PTR [rbp+0x88],edi
  328bbf:	e8 a8 de fb ff       	call   0x2e6a6c
  328bc4:	44 8b c0             	mov    r8d,eax
  328bc7:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  328bce:	0f 57 db             	xorps  xmm3,xmm3
  328bd1:	48 8d 95 90 00 00 00 	lea    rdx,[rbp+0x90]
  328bd8:	48 8d 8d 80 00 00 00 	lea    rcx,[rbp+0x80]
  328bdf:	e8 3c 97 fb ff       	call   0x2e2320
  328be4:	84 c0                	test   al,al
  328be6:	75 09                	jne    0x328bf1
  328be8:	48 8d 4d 10          	lea    rcx,[rbp+0x10]
  328bec:	e9 30 ff ff ff       	jmp    0x328b21
  328bf1:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  328bf7:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  328bfb:	f2 0f 11 45 60       	movsd  QWORD PTR [rbp+0x60],xmm0
  328c00:	f2 0f 11 75 70       	movsd  QWORD PTR [rbp+0x70],xmm6
  328c05:	89 7d 78             	mov    DWORD PTR [rbp+0x78],edi
  328c08:	89 45 68             	mov    DWORD PTR [rbp+0x68],eax
  328c0b:	e8 5c de fb ff       	call   0x2e6a6c
  328c10:	44 8b c0             	mov    r8d,eax
  328c13:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  328c1a:	0f 57 db             	xorps  xmm3,xmm3
  328c1d:	48 8d 55 70          	lea    rdx,[rbp+0x70]
  328c21:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  328c25:	e8 f6 96 fb ff       	call   0x2e2320
  328c2a:	84 c0                	test   al,al
  328c2c:	75 0c                	jne    0x328c3a
  328c2e:	48 8d 8d d0 00 00 00 	lea    rcx,[rbp+0xd0]
  328c35:	e9 e7 fe ff ff       	jmp    0x328b21
  328c3a:	f2 0f 10 45 40       	movsd  xmm0,QWORD PTR [rbp+0x40]
  328c3f:	4c 8d 45 c0          	lea    r8,[rbp-0x40]
  328c43:	8b 45 48             	mov    eax,DWORD PTR [rbp+0x48]
  328c46:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  328c4a:	f2 0f 11 45 c0       	movsd  QWORD PTR [rbp-0x40],xmm0
  328c4f:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  328c53:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  328c58:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  328c5b:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  328c5e:	f2 0f 11 45 50       	movsd  QWORD PTR [rbp+0x50],xmm0
  328c63:	f2 0f 11 75 f0       	movsd  QWORD PTR [rbp-0x10],xmm6
  328c68:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
  328c6b:	89 45 58             	mov    DWORD PTR [rbp+0x58],eax
  328c6e:	e8 fd 1a 00 00       	call   0x32a770
  328c73:	41 3b c6             	cmp    eax,r14d
  328c76:	75 09                	jne    0x328c81
  328c78:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  328c7c:	e9 a0 fe ff ff       	jmp    0x328b21
  328c81:	83 f8 02             	cmp    eax,0x2
  328c84:	0f 84 86 00 00 00    	je     0x328d10
  328c8a:	85 c0                	test   eax,eax
  328c8c:	74 1c                	je     0x328caa
  328c8e:	48 8b ce             	mov    rcx,rsi
  328c91:	41 03 de             	add    ebx,r14d
  328c94:	e8 cb 82 ff ff       	call   0x320f64
  328c99:	49 03 c6             	add    rax,r14
  328c9c:	48 63 cb             	movsxd rcx,ebx
  328c9f:	48 3b c8             	cmp    rcx,rax
  328ca2:	0f 82 18 fe ff ff    	jb     0x328ac0
  328ca8:	eb 66                	jmp    0x328d10
  328caa:	f2 0f 11 35 1e e6 0a 00 	movsd  QWORD PTR [rip+0xae61e],xmm6        # 0x3d72d0
  328cb2:	89 3d 20 e6 0a 00    	mov    DWORD PTR [rip+0xae620],edi        # 0x3d72d8
  328cb8:	44 88 35 7a b5 0b 00 	mov    BYTE PTR [rip+0xbb57a],r14b        # 0x3e4239
  328cbf:	44 88 35 b3 d1 0b 00 	mov    BYTE PTR [rip+0xbd1b3],r14b        # 0x3e5e79
  328cc6:	44 88 35 43 9e 0c 00 	mov    BYTE PTR [rip+0xc9e43],r14b        # 0x3f2b10
  328ccd:	eb 41                	jmp    0x328d10
  328ccf:	f3 0f 10 05 01 b1 0c 00 	movss  xmm0,DWORD PTR [rip+0xcb101]        # 0x3f3dd8
  328cd7:	f3 0f 11 05 d1 01 f2 ff 	movss  DWORD PTR [rip+0xfffffffffff201d1],xmm0        # 0x248eb0
  328cdf:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  328ce3:	e8 d4 ee 09 00       	call   0x3c7bbc
  328ce8:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  328cec:	f2 0f 11 05 dc e5 0a 00 	movsd  QWORD PTR [rip+0xae5dc],xmm0        # 0x3d72d0
  328cf4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  328cf7:	89 05 db e5 0a 00    	mov    DWORD PTR [rip+0xae5db],eax        # 0x3d72d8
  328cfd:	44 88 25 75 d1 0b 00 	mov    BYTE PTR [rip+0xbd175],r12b        # 0x3e5e79
  328d04:	44 88 25 2e b5 0b 00 	mov    BYTE PTR [rip+0xbb52e],r12b        # 0x3e4239
  328d0b:	eb 03                	jmp    0x328d10
  328d0d:	45 33 e4             	xor    r12d,r12d
  328d10:	41 8b c4             	mov    eax,r12d
  328d13:	48 8b b5 80 02 00 00 	mov    rsi,QWORD PTR [rbp+0x280]
  328d1a:	41 03 c6             	add    eax,r14d
  328d1d:	89 05 f1 9d 0c 00    	mov    DWORD PTR [rip+0xc9df1],eax        # 0x3f2b14
  328d23:	bb 10 00 00 00       	mov    ebx,0x10
  328d28:	eb 3c                	jmp    0x328d66
  328d2a:	f3 0f 10 05 a6 b0 0c 00 	movss  xmm0,DWORD PTR [rip+0xcb0a6]        # 0x3f3dd8
  328d32:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  328d36:	f3 0f 11 05 72 01 f2 ff 	movss  DWORD PTR [rip+0xfffffffffff20172],xmm0        # 0x248eb0
  328d3e:	e8 79 ee 09 00       	call   0x3c7bbc
  328d43:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  328d47:	f2 0f 11 05 81 e5 0a 00 	movsd  QWORD PTR [rip+0xae581],xmm0        # 0x3d72d0
  328d4f:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  328d52:	89 05 80 e5 0a 00    	mov    DWORD PTR [rip+0xae580],eax        # 0x3d72d8
  328d58:	44 88 25 1a d1 0b 00 	mov    BYTE PTR [rip+0xbd11a],r12b        # 0x3e5e79
  328d5f:	44 88 25 d3 b4 0b 00 	mov    BYTE PTR [rip+0xbb4d3],r12b        # 0x3e4239
  328d66:	44 38 25 1b ab 0c 00 	cmp    BYTE PTR [rip+0xcab1b],r12b        # 0x3f3888
  328d6d:	0f 84 48 01 00 00    	je     0x328ebb
  328d73:	49 8b cf             	mov    rcx,r15
  328d76:	e8 65 13 04 00       	call   0x36a0e0
  328d7b:	84 c0                	test   al,al
  328d7d:	0f 85 38 01 00 00    	jne    0x328ebb
  328d83:	49 8b cf             	mov    rcx,r15
  328d86:	e8 fd 24 04 00       	call   0x36b288
  328d8b:	84 c0                	test   al,al
  328d8d:	0f 85 28 01 00 00    	jne    0x328ebb
  328d93:	f3 41 0f 10 45 58    	movss  xmm0,DWORD PTR [r13+0x58]
  328d99:	41 0f 2f c3          	comiss xmm0,xmm11
  328d9d:	f3 44 0f 10 15 aa a3 f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff6a3aa]        # 0x293150
  328da6:	f3 0f 10 3d 12 b4 f6 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff6b412]        # 0x2941c0
  328dae:	f3 44 0f 10 0d 19 b4 f6 ff 	movss  xmm9,DWORD PTR [rip+0xfffffffffff6b419]        # 0x2941d0
  328db7:	77 35                	ja     0x328dee
  328db9:	49 8b cf             	mov    rcx,r15
  328dbc:	e8 77 14 04 00       	call   0x36a238
  328dc1:	84 c0                	test   al,al
  328dc3:	75 29                	jne    0x328dee
  328dc5:	f3 41 0f 10 45 54    	movss  xmm0,DWORD PTR [r13+0x54]
  328dcb:	41 0f 2f c3          	comiss xmm0,xmm11
  328dcf:	77 1d                	ja     0x328dee
  328dd1:	ba 02 00 00 00       	mov    edx,0x2
  328dd6:	48 8b ce             	mov    rcx,rsi
  328dd9:	e8 16 9e 04 00       	call   0x372bf4
  328dde:	84 c0                	test   al,al
  328de0:	74 06                	je     0x328de8
  328de2:	41 0f 28 f2          	movaps xmm6,xmm10
  328de6:	eb 09                	jmp    0x328df1
  328de8:	41 0f 28 f1          	movaps xmm6,xmm9
  328dec:	eb 03                	jmp    0x328df1
  328dee:	0f 28 f7             	movaps xmm6,xmm7
  328df1:	f3 41 0f 10 87 f8 07 00 00 	movss  xmm0,DWORD PTR [r15+0x7f8]
  328dfa:	41 0f 2f c0          	comiss xmm0,xmm8
  328dfe:	76 2d                	jbe    0x328e2d
  328e00:	41 0f 2e f1          	ucomiss xmm6,xmm9
  328e04:	7a 09                	jp     0x328e0f
  328e06:	75 07                	jne    0x328e0f
  328e08:	f3 41 0f 59 c1       	mulss  xmm0,xmm9
  328e0d:	eb 1a                	jmp    0x328e29
  328e0f:	41 0f 2e f2          	ucomiss xmm6,xmm10
  328e13:	7a 09                	jp     0x328e1e
  328e15:	75 07                	jne    0x328e1e
  328e17:	f3 41 0f 59 c2       	mulss  xmm0,xmm10
  328e1c:	eb 0b                	jmp    0x328e29
  328e1e:	0f 2e f7             	ucomiss xmm6,xmm7
  328e21:	7a 0a                	jp     0x328e2d
  328e23:	75 08                	jne    0x328e2d
  328e25:	f3 0f 59 c7          	mulss  xmm0,xmm7
  328e29:	f3 0f 5c f0          	subss  xmm6,xmm0
  328e2d:	49 8b cf             	mov    rcx,r15
  328e30:	e8 03 14 04 00       	call   0x36a238
  328e35:	84 c0                	test   al,al
  328e37:	74 11                	je     0x328e4a
  328e39:	f3 41 0f 10 87 d1 07 00 00 	movss  xmm0,DWORD PTR [r15+0x7d1]
  328e42:	f3 0f 59 c7          	mulss  xmm0,xmm7
  328e46:	f3 0f 58 f0          	addss  xmm6,xmm0
  328e4a:	f2 41 0f 10 45 44    	movsd  xmm0,QWORD PTR [r13+0x44]
  328e50:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  328e55:	41 8b 45 4c          	mov    eax,DWORD PTR [r13+0x4c]
  328e59:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  328e5f:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  328e63:	e8 80 80 fb ff       	call   0x2e0ee8
  328e68:	8b d3                	mov    edx,ebx
  328e6a:	48 8b ce             	mov    rcx,rsi
  328e6d:	0f 28 f8             	movaps xmm7,xmm0
  328e70:	e8 a7 9d 04 00       	call   0x372c1c
  328e75:	41 0f 2f f8          	comiss xmm7,xmm8
  328e79:	76 40                	jbe    0x328ebb
  328e7b:	f3 0f 10 5c 24 68    	movss  xmm3,DWORD PTR [rsp+0x68]
  328e81:	f3 0f 5f f7          	maxss  xmm6,xmm7
  328e85:	f3 0f 10 4c 24 60    	movss  xmm1,DWORD PTR [rsp+0x60]
  328e8b:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  328e8f:	f3 0f 10 54 24 64    	movss  xmm2,DWORD PTR [rsp+0x64]
  328e95:	f3 0f 5e df          	divss  xmm3,xmm7
  328e99:	f3 0f 5e cf          	divss  xmm1,xmm7
  328e9d:	f3 0f 59 de          	mulss  xmm3,xmm6
  328ea1:	f3 0f 59 ce          	mulss  xmm1,xmm6
  328ea5:	e8 fe ec 09 00       	call   0x3c7ba8
  328eaa:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  328eae:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  328eb1:	f2 41 0f 11 45 44    	movsd  QWORD PTR [r13+0x44],xmm0
  328eb7:	41 89 4d 4c          	mov    DWORD PTR [r13+0x4c],ecx
  328ebb:	48 8b 0d be cf 0b 00 	mov    rcx,QWORD PTR [rip+0xbcfbe]        # 0x3e5e80
  328ec2:	e8 41 20 fa ff       	call   0x2caf08
  328ec7:	84 c0                	test   al,al
  328ec9:	0f 85 24 01 00 00    	jne    0x328ff3
  328ecf:	e8 64 0b 00 00       	call   0x329a38
  328ed4:	48 8b c8             	mov    rcx,rax
  328ed7:	48 8b d0             	mov    rdx,rax
  328eda:	e8 29 20 fa ff       	call   0x2caf08
  328edf:	84 c0                	test   al,al
  328ee1:	0f 84 0c 01 00 00    	je     0x328ff3
  328ee7:	48 8b ca             	mov    rcx,rdx
  328eea:	e8 9d d3 04 00       	call   0x37628c
  328eef:	48 8b c8             	mov    rcx,rax
  328ef2:	48 8b d0             	mov    rdx,rax
  328ef5:	e8 0e 20 fa ff       	call   0x2caf08
  328efa:	84 c0                	test   al,al
  328efc:	0f 84 f1 00 00 00    	je     0x328ff3
  328f02:	48 8b ca             	mov    rcx,rdx
  328f05:	e8 fe 75 04 00       	call   0x370508
  328f0a:	48 8b c8             	mov    rcx,rax
  328f0d:	48 8b f8             	mov    rdi,rax
  328f10:	e8 f3 1f fa ff       	call   0x2caf08
  328f15:	84 c0                	test   al,al
  328f17:	0f 84 d6 00 00 00    	je     0x328ff3
  328f1d:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  328f21:	48 8d 8d 88 02 00 00 	lea    rcx,[rbp+0x288]
  328f28:	e8 3f b6 ff ff       	call   0x32456c
  328f2d:	48 8b c8             	mov    rcx,rax
  328f30:	e8 ff 4e fa ff       	call   0x2cde34
  328f35:	48 8d 95 d0 00 00 00 	lea    rdx,[rbp+0xd0]
  328f3c:	48 8b d8             	mov    rbx,rax
  328f3f:	48 8d 8d 88 02 00 00 	lea    rcx,[rbp+0x288]
  328f46:	e8 05 b6 ff ff       	call   0x324550
  328f4b:	48 8b c8             	mov    rcx,rax
  328f4e:	e8 e1 4e fa ff       	call   0x2cde34
  328f53:	48 8b d0             	mov    rdx,rax
  328f56:	4c 8b c3             	mov    r8,rbx
  328f59:	48 8b cf             	mov    rcx,rdi
  328f5c:	e8 9b 9f 04 00       	call   0x372efc
  328f61:	48 8b c8             	mov    rcx,rax
  328f64:	48 89 05 15 cf 0b 00 	mov    QWORD PTR [rip+0xbcf15],rax        # 0x3e5e80
  328f6b:	e8 98 1f fa ff       	call   0x2caf08
  328f70:	84 c0                	test   al,al
  328f72:	74 7f                	je     0x328ff3
  328f74:	e8 ab ca fe ff       	call   0x315a24
  328f79:	48 8b c8             	mov    rcx,rax
  328f7c:	4c 8b c0             	mov    r8,rax
  328f7f:	e8 84 1f fa ff       	call   0x2caf08
  328f84:	84 c0                	test   al,al
  328f86:	74 6b                	je     0x328ff3
  328f88:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  328f8d:	49 8b c8             	mov    rcx,r8
  328f90:	e8 63 b4 04 00       	call   0x3743f8
  328f95:	f2 0f 10 0d 2b b2 f6 ff 	movsd  xmm1,QWORD PTR [rip+0xfffffffffff6b22b]        # 0x2941c8
  328f9d:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  328fa2:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [rsp+0x58]
  328fa8:	f3 0f 10 15 10 52 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff65210]        # 0x28e1c0
  328fb0:	0f 5a c0             	cvtps2pd xmm0,xmm0
  328fb3:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  328fb7:	66 0f 5a d8          	cvtpd2ps xmm3,xmm0
  328fbb:	f3 0f 10 44 24 50    	movss  xmm0,DWORD PTR [rsp+0x50]
  328fc1:	0f 5a c0             	cvtps2pd xmm0,xmm0
  328fc4:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  328fc8:	66 0f 5a c8          	cvtpd2ps xmm1,xmm0
  328fcc:	e8 d7 eb 09 00       	call   0x3c7ba8
  328fd1:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  328fd7:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  328fdb:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  328fdf:	48 8b 0d 9a ce 0b 00 	mov    rcx,QWORD PTR [rip+0xbce9a]        # 0x3e5e80
  328fe6:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  328feb:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  328fee:	e8 75 79 04 00       	call   0x370968
  328ff3:	49 8b cf             	mov    rcx,r15
  328ff6:	e8 f5 07 00 00       	call   0x3297f0
  328ffb:	48 8b c8             	mov    rcx,rax
  328ffe:	48 8b d8             	mov    rbx,rax
  329001:	e8 02 1f fa ff       	call   0x2caf08
  329006:	bf 0c 00 00 00       	mov    edi,0xc
  32900b:	84 c0                	test   al,al
  32900d:	0f 84 95 00 00 00    	je     0x3290a8
  329013:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  329018:	49 8b cf             	mov    rcx,r15
  32901b:	e8 7c fb 03 00       	call   0x368b9c
  329020:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  329025:	48 8b cb             	mov    rcx,rbx
  329028:	e8 a7 b7 04 00       	call   0x3747d4
  32902d:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  329033:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  329037:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  32903b:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32903f:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  329044:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  329048:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  32904e:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  329051:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  329055:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  32905a:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  32905d:	e8 a6 66 fb ff       	call   0x2df708
  329062:	48 8b c8             	mov    rcx,rax
  329065:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  329069:	41 0f 28 d3          	movaps xmm2,xmm11
  32906d:	e8 fa 65 fb ff       	call   0x2df66c
  329072:	f2 0f 10 45 30       	movsd  xmm0,QWORD PTR [rbp+0x30]
  329077:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  32907b:	8b 45 38             	mov    eax,DWORD PTR [rbp+0x38]
  32907e:	f3 0f 10 0d 06 a0 f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6a006]        # 0x29308c
  329086:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  32908b:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  32908e:	e8 ed 94 ff ff       	call   0x322580
  329093:	44 38 25 de a3 0c 00 	cmp    BYTE PTR [rip+0xca3de],r12b        # 0x3f3478
  32909a:	8d 57 f8             	lea    edx,[rdi-0x8]
  32909d:	8b cf                	mov    ecx,edi
  32909f:	41 0f 94 c0          	sete   r8b
  3290a3:	e8 f8 09 00 00       	call   0x329aa0
  3290a8:	44 38 25 69 a4 0c 00 	cmp    BYTE PTR [rip+0xca469],r12b        # 0x3f3518
  3290af:	75 0c                	jne    0x3290bd
  3290b1:	44 38 25 89 6a 0c 00 	cmp    BYTE PTR [rip+0xc6a89],r12b        # 0x3efb41
  3290b8:	75 03                	jne    0x3290bd
  3290ba:	45 8a f4             	mov    r14b,r12b
  3290bd:	45 8a c6             	mov    r8b,r14b
  3290c0:	ba 0b 00 00 00       	mov    edx,0xb
  3290c5:	8b cf                	mov    ecx,edi
  3290c7:	4c 8d 9c 24 30 03 00 00 	lea    r11,[rsp+0x330]
  3290cf:	49 8b 5b 48          	mov    rbx,QWORD PTR [r11+0x48]
  3290d3:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3290d8:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3290dd:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3290e2:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3290e7:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  3290ec:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  3290f1:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  3290f6:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  3290fb:	45 0f 28 b3 70 ff ff ff 	movaps xmm14,XMMWORD PTR [r11-0x90]
  329103:	45 0f 28 bb 60 ff ff ff 	movaps xmm15,XMMWORD PTR [r11-0xa0]
  32910b:	49 8b e3             	mov    rsp,r11
  32910e:	41 5f                	pop    r15
  329110:	41 5e                	pop    r14
  329112:	41 5d                	pop    r13
  329114:	41 5c                	pop    r12
  329116:	5f                   	pop    rdi
  329117:	5e                   	pop    rsi
  329118:	5d                   	pop    rbp
  329119:	e9 82 09 00 00       	jmp    0x329aa0


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000317c3c <.data+0x317c3c>:
  317c3c:	48 8b c4             	mov    rax,rsp
  317c3f:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  317c43:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  317c47:	55                   	push   rbp
  317c48:	57                   	push   rdi
  317c49:	41 54                	push   r12
  317c4b:	41 56                	push   r14
  317c4d:	41 57                	push   r15
  317c4f:	48 8d a8 c8 fe ff ff 	lea    rbp,[rax-0x138]
  317c56:	48 81 ec 10 02 00 00 	sub    rsp,0x210
  317c5d:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  317c61:	48 8b ca             	mov    rcx,rdx
  317c64:	0f 29 78 b8          	movaps XMMWORD PTR [rax-0x48],xmm7
  317c68:	48 8b fa             	mov    rdi,rdx
  317c6b:	44 0f 29 40 a8       	movaps XMMWORD PTR [rax-0x58],xmm8
  317c70:	44 0f 29 48 98       	movaps XMMWORD PTR [rax-0x68],xmm9
  317c75:	44 0f 29 50 88       	movaps XMMWORD PTR [rax-0x78],xmm10
  317c7a:	44 0f 29 a8 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm13
  317c82:	e8 81 32 fb ff       	call   0x2caf08
  317c87:	84 c0                	test   al,al
  317c89:	0f 84 d7 08 00 00    	je     0x318566
  317c8f:	48 8b ca             	mov    rcx,rdx
  317c92:	e8 05 92 fc ff       	call   0x2e0e9c
  317c97:	84 c0                	test   al,al
  317c99:	0f 84 c7 08 00 00    	je     0x318566
  317c9f:	80 3d d2 01 0c 00 00 	cmp    BYTE PTR [rip+0xc01d2],0x0        # 0x3d7e78
  317ca6:	0f 84 ba 08 00 00    	je     0x318566
  317cac:	80 3d ed f5 0b 00 00 	cmp    BYTE PTR [rip+0xbf5ed],0x0        # 0x3d72a0
  317cb3:	0f 84 ad 08 00 00    	je     0x318566
  317cb9:	48 8b cf             	mov    rcx,rdi
  317cbc:	e8 c3 0d 05 00       	call   0x368a84
  317cc1:	48 8b c8             	mov    rcx,rax
  317cc4:	4c 8b f8             	mov    r15,rax
  317cc7:	e8 3c 32 fb ff       	call   0x2caf08
  317ccc:	84 c0                	test   al,al
  317cce:	0f 84 92 08 00 00    	je     0x318566
  317cd4:	48 8b cf             	mov    rcx,rdi
  317cd7:	e8 bc 15 05 00       	call   0x369298
  317cdc:	48 8b c8             	mov    rcx,rax
  317cdf:	4c 8b e0             	mov    r12,rax
  317ce2:	e8 21 32 fb ff       	call   0x2caf08
  317ce7:	84 c0                	test   al,al
  317ce9:	0f 84 77 08 00 00    	je     0x318566
  317cef:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  317cf3:	48 8b cf             	mov    rcx,rdi
  317cf6:	e8 69 14 05 00       	call   0x369164
  317cfb:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  317cff:	48 8b cf             	mov    rcx,rdi
  317d02:	e8 f9 03 05 00       	call   0x368100
  317d07:	49 8b cf             	mov    rcx,r15
  317d0a:	e8 d1 99 05 00       	call   0x3716e0
  317d0f:	4c 8b f0             	mov    r14,rax
  317d12:	e8 99 85 fc ff       	call   0x2e02b0
  317d17:	80 3d ca f5 0c 00 00 	cmp    BYTE PTR [rip+0xcf5ca],0x0        # 0x3e72e8
  317d1e:	48 8b f0             	mov    rsi,rax
  317d21:	f3 44 0f 10 15 2a b5 f7 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff7b52a]        # 0x293254
  317d2a:	45 0f 57 c9          	xorps  xmm9,xmm9
  317d2e:	0f 84 84 02 00 00    	je     0x317fb8
  317d34:	49 8b ce             	mov    rcx,r14
  317d37:	e8 cc 31 fb ff       	call   0x2caf08
  317d3c:	84 c0                	test   al,al
  317d3e:	0f 84 74 02 00 00    	je     0x317fb8
  317d44:	48 8b ce             	mov    rcx,rsi
  317d47:	e8 bc 31 fb ff       	call   0x2caf08
  317d4c:	84 c0                	test   al,al
  317d4e:	0f 85 64 02 00 00    	jne    0x317fb8
  317d54:	f3 0f 10 35 7c 82 0d 00 	movss  xmm6,DWORD PTR [rip+0xd827c]        # 0x3effd8
  317d5c:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  317d60:	f3 0f 10 3d 74 82 0d 00 	movss  xmm7,DWORD PTR [rip+0xd8274]        # 0x3effdc
  317d68:	f3 44 0f 10 05 6f 82 0d 00 	movss  xmm8,DWORD PTR [rip+0xd826f]        # 0x3effe0
  317d71:	f3 0f 11 75 a0       	movss  DWORD PTR [rbp-0x60],xmm6
  317d76:	f3 0f 11 7d a4       	movss  DWORD PTR [rbp-0x5c],xmm7
  317d7b:	f3 44 0f 11 45 a8    	movss  DWORD PTR [rbp-0x58],xmm8
  317d81:	e8 d2 bd fc ff       	call   0x2e3b58
  317d86:	84 c0                	test   al,al
  317d88:	0f 85 2a 02 00 00    	jne    0x317fb8
  317d8e:	f3 0f 10 15 16 b3 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff7b316]        # 0x2930ac
  317d96:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  317d9b:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  317d9f:	e8 c8 78 fc ff       	call   0x2df66c
  317da4:	4c 8b c0             	mov    r8,rax
  317da7:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  317dac:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  317db0:	e8 53 79 fc ff       	call   0x2df708
  317db5:	f2 0f 10 05 8b f4 0b 00 	movsd  xmm0,QWORD PTR [rip+0xbf48b]        # 0x3d7248
  317dbd:	4c 8d 4c 24 70       	lea    r9,[rsp+0x70]
  317dc2:	8b 05 88 f4 0b 00    	mov    eax,DWORD PTR [rip+0xbf488]        # 0x3d7250
  317dc8:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  317dcd:	f3 45 0f 10 ae f8 03 00 00 	movss  xmm13,DWORD PTR [r14+0x3f8]
  317dd6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  317ddb:	0f 14 f7             	unpcklps xmm6,xmm7
  317dde:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  317de2:	f3 0f 10 3d b2 b2 f7 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff7b2b2]        # 0x29309c
  317dea:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  317df0:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  317df6:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  317dfa:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  317dfe:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  317e04:	f3 44 0f 11 44 24 48 	movss  DWORD PTR [rsp+0x48],xmm8
  317e0b:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  317e11:	f2 0f 11 74 24 40    	movsd  QWORD PTR [rsp+0x40],xmm6
  317e17:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  317e1b:	e8 74 f3 ff ff       	call   0x317194
  317e20:	0f 10 40 10          	movups xmm0,XMMWORD PTR [rax+0x10]
  317e24:	0f 10 48 20          	movups xmm1,XMMWORD PTR [rax+0x20]
  317e28:	0f 10 10             	movups xmm2,XMMWORD PTR [rax]
  317e2b:	0f 29 45 00          	movaps XMMWORD PTR [rbp+0x0],xmm0
  317e2f:	0f 10 40 30          	movups xmm0,XMMWORD PTR [rax+0x30]
  317e33:	0f 29 4d 10          	movaps XMMWORD PTR [rbp+0x10],xmm1
  317e37:	0f 10 48 40          	movups xmm1,XMMWORD PTR [rax+0x40]
  317e3b:	66 0f 7e d0          	movd   eax,xmm2
  317e3f:	0f 29 55 f0          	movaps XMMWORD PTR [rbp-0x10],xmm2
  317e43:	0f 29 45 20          	movaps XMMWORD PTR [rbp+0x20],xmm0
  317e47:	0f 29 4d 30          	movaps XMMWORD PTR [rbp+0x30],xmm1
  317e4b:	84 c0                	test   al,al
  317e4d:	0f 84 6d 01 00 00    	je     0x317fc0
  317e53:	41 0f 5a c5          	cvtps2pd xmm0,xmm13
  317e57:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  317e5c:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  317e60:	f2 0f 5c 05 a8 b2 f7 ff 	subsd  xmm0,QWORD PTR [rip+0xfffffffffff7b2a8]        # 0x293110
  317e68:	66 0f 5a f0          	cvtpd2ps xmm6,xmm0
  317e6c:	e8 07 94 fc ff       	call   0x2e1278
  317e71:	48 8b c8             	mov    rcx,rax
  317e74:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  317e79:	0f 28 d6             	movaps xmm2,xmm6
  317e7c:	e8 eb 77 fc ff       	call   0x2df66c
  317e81:	48 8b c8             	mov    rcx,rax
  317e84:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
  317e89:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  317e8d:	e8 76 78 fc ff       	call   0x2df708
  317e92:	f3 0f 10 15 b6 53 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff753b6]        # 0x28d250
  317e9a:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  317e9e:	48 8d 0d bb e1 0c 00 	lea    rcx,[rip+0xce1bb]        # 0x3e6060
  317ea5:	48 8b d8             	mov    rbx,rax
  317ea8:	e8 bf 77 fc ff       	call   0x2df66c
  317ead:	4c 8b c0             	mov    r8,rax
  317eb0:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  317eb4:	48 8b cb             	mov    rcx,rbx
  317eb7:	e8 10 78 fc ff       	call   0x2df6cc
  317ebc:	80 3d 55 f1 0c 00 00 	cmp    BYTE PTR [rip+0xcf155],0x0        # 0x3e7018
  317ec3:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  317ec7:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  317eca:	f2 0f 11 45 a0       	movsd  QWORD PTR [rbp-0x60],xmm0
  317ecf:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
  317ed2:	74 12                	je     0x317ee6
  317ed4:	f3 0f 10 45 a4       	movss  xmm0,DWORD PTR [rbp-0x5c]
  317ed9:	f3 0f 58 05 a7 e1 0c 00 	addss  xmm0,DWORD PTR [rip+0xce1a7]        # 0x3e6088
  317ee1:	f3 0f 11 45 a4       	movss  DWORD PTR [rbp-0x5c],xmm0
  317ee6:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
  317eeb:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  317eef:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  317ef3:	e8 d4 77 fc ff       	call   0x2df6cc
  317ef8:	48 8b c8             	mov    rcx,rax
  317efb:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  317f00:	e8 73 93 fc ff       	call   0x2e1278
  317f05:	f3 0f 10 15 47 53 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff75347]        # 0x28d254
  317f0d:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  317f11:	0f 57 db             	xorps  xmm3,xmm3
  317f14:	0f 57 c9             	xorps  xmm1,xmm1
  317f17:	e8 8c fc 0a 00       	call   0x3c7ba8
  317f1c:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  317f21:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  317f26:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  317f2a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  317f2e:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  317f31:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  317f37:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  317f3d:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  317f41:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  317f45:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  317f4b:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  317f4f:	e8 9c 90 fc ff       	call   0x2e0ff0
  317f54:	80 3d 3d d1 0c 00 00 	cmp    BYTE PTR [rip+0xcd13d],0x0        # 0x3e5098
  317f5b:	74 44                	je     0x317fa1
  317f5d:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  317f63:	4c 8d 4c 24 30       	lea    r9,[rsp+0x30]
  317f68:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  317f6c:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  317f71:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  317f77:	48 8b d7             	mov    rdx,rdi
  317f7a:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  317f7f:	49 8b ce             	mov    rcx,r14
  317f82:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  317f86:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  317f89:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  317f8f:	f3 44 0f 11 54 24 20 	movss  DWORD PTR [rsp+0x20],xmm10
  317f96:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  317f9a:	e8 51 ef 04 00       	call   0x366ef0
  317f9f:	eb 1f                	jmp    0x317fc0
  317fa1:	0f 10 45 c0          	movups xmm0,XMMWORD PTR [rbp-0x40]
  317fa5:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  317fa9:	49 8b cc             	mov    rcx,r12
  317fac:	66 0f 7f 45 80       	movdqa XMMWORD PTR [rbp-0x80],xmm0
  317fb1:	e8 4e bd 05 00       	call   0x373d04
  317fb6:	eb 08                	jmp    0x317fc0
  317fb8:	f3 0f 10 3d dc b0 f7 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff7b0dc]        # 0x29309c
  317fc0:	48 8b ce             	mov    rcx,rsi
  317fc3:	e8 40 2f fb ff       	call   0x2caf08
  317fc8:	84 c0                	test   al,al
  317fca:	0f 84 96 05 00 00    	je     0x318566
  317fd0:	48 8b ce             	mov    rcx,rsi
  317fd3:	e8 c4 8e fc ff       	call   0x2e0e9c
  317fd8:	84 c0                	test   al,al
  317fda:	0f 84 86 05 00 00    	je     0x318566
  317fe0:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  317fe5:	48 8b ce             	mov    rcx,rsi
  317fe8:	e8 a3 17 05 00       	call   0x369790
  317fed:	49 8b cf             	mov    rcx,r15
  317ff0:	e8 c3 9e 05 00       	call   0x371eb8
  317ff5:	49 8b ce             	mov    rcx,r14
  317ff8:	4c 8b f8             	mov    r15,rax
  317ffb:	e8 08 2f fb ff       	call   0x2caf08
  318000:	84 c0                	test   al,al
  318002:	0f 84 cf 02 00 00    	je     0x3182d7
  318008:	f3 0f 10 15 9c b0 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff7b09c]        # 0x2930ac
  318010:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318014:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  318018:	e8 4f 76 fc ff       	call   0x2df66c
  31801d:	4c 8b c0             	mov    r8,rax
  318020:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  318025:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  318029:	e8 da 76 fc ff       	call   0x2df708
  31802e:	f3 41 0f 10 b6 f8 03 00 00 	movss  xmm6,DWORD PTR [r14+0x3f8]
  318037:	48 8b ce             	mov    rcx,rsi
  31803a:	e8 15 da ff ff       	call   0x315a54
  31803f:	48 8b c8             	mov    rcx,rax
  318042:	4c 8b c0             	mov    r8,rax
  318045:	e8 be 2e fb ff       	call   0x2caf08
  31804a:	84 c0                	test   al,al
  31804c:	74 1d                	je     0x31806b
  31804e:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318052:	49 8b c8             	mov    rcx,r8
  318055:	e8 7a c7 05 00       	call   0x3747d4
  31805a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31805e:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  318064:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  318067:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  31806b:	48 8b ce             	mov    rcx,rsi
  31806e:	e8 e1 d9 fc ff       	call   0x2e5a54
  318073:	48 8b c8             	mov    rcx,rax
  318076:	48 8b d0             	mov    rdx,rax
  318079:	e8 8a 2e fb ff       	call   0x2caf08
  31807e:	84 c0                	test   al,al
  318080:	74 6b                	je     0x3180ed
  318082:	48 8b ca             	mov    rcx,rdx
  318085:	e8 ca e2 fb ff       	call   0x2d6354
  31808a:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  31808e:	48 8b d8             	mov    rbx,rax
  318091:	48 8d 8d 50 01 00 00 	lea    rcx,[rbp+0x150]
  318098:	e8 b7 a2 fd ff       	call   0x2f2354
  31809d:	48 8b c8             	mov    rcx,rax
  3180a0:	e8 e3 50 fc ff       	call   0x2dd188
  3180a5:	48 8b c8             	mov    rcx,rax
  3180a8:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  3180b2:	e8 95 da fc ff       	call   0x2e5b4c
  3180b7:	80 3d 5a ef 0c 00 00 	cmp    BYTE PTR [rip+0xcef5a],0x0        # 0x3e7018
  3180be:	74 2d                	je     0x3180ed
  3180c0:	b9 2f 00 00 00       	mov    ecx,0x2f
  3180c5:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  3180c9:	48 3b d8             	cmp    rbx,rax
  3180cc:	44 8d 41 06          	lea    r8d,[rcx+0x6]
  3180d0:	44 0f 44 c1          	cmove  r8d,ecx
  3180d4:	48 8b ce             	mov    rcx,rsi
  3180d7:	e8 0c 0b 05 00       	call   0x368be8
  3180dc:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3180e0:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3180e6:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3180e9:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3180ed:	f2 0f 10 05 53 f1 0b 00 	movsd  xmm0,QWORD PTR [rip+0xbf153]        # 0x3d7248
  3180f5:	4c 8d 4c 24 30       	lea    r9,[rsp+0x30]
  3180fa:	8b 05 50 f1 0b 00    	mov    eax,DWORD PTR [rip+0xbf150]        # 0x3d7250
  318100:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  318105:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  31810b:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  318110:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  318116:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  31811a:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  31811e:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  318122:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  318128:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  31812e:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  318132:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  318136:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  31813c:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  318142:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  318146:	e8 49 f0 ff ff       	call   0x317194
  31814b:	0f 10 40 10          	movups xmm0,XMMWORD PTR [rax+0x10]
  31814f:	0f 10 48 20          	movups xmm1,XMMWORD PTR [rax+0x20]
  318153:	0f 10 10             	movups xmm2,XMMWORD PTR [rax]
  318156:	0f 29 45 00          	movaps XMMWORD PTR [rbp+0x0],xmm0
  31815a:	0f 10 40 30          	movups xmm0,XMMWORD PTR [rax+0x30]
  31815e:	0f 29 4d 10          	movaps XMMWORD PTR [rbp+0x10],xmm1
  318162:	0f 10 48 40          	movups xmm1,XMMWORD PTR [rax+0x40]
  318166:	66 0f 7e d0          	movd   eax,xmm2
  31816a:	0f 29 55 f0          	movaps XMMWORD PTR [rbp-0x10],xmm2
  31816e:	0f 29 45 20          	movaps XMMWORD PTR [rbp+0x20],xmm0
  318172:	0f 29 4d 30          	movaps XMMWORD PTR [rbp+0x30],xmm1
  318176:	84 c0                	test   al,al
  318178:	0f 84 e8 03 00 00    	je     0x318566
  31817e:	0f 5a c6             	cvtps2pd xmm0,xmm6
  318181:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318185:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  318189:	f2 0f 5c 05 7f af f7 ff 	subsd  xmm0,QWORD PTR [rip+0xfffffffffff7af7f]        # 0x293110
  318191:	66 0f 5a f0          	cvtpd2ps xmm6,xmm0
  318195:	e8 de 90 fc ff       	call   0x2e1278
  31819a:	48 8b c8             	mov    rcx,rax
  31819d:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  3181a1:	0f 28 d6             	movaps xmm2,xmm6
  3181a4:	e8 c3 74 fc ff       	call   0x2df66c
  3181a9:	48 8b c8             	mov    rcx,rax
  3181ac:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  3181b1:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3181b5:	e8 4e 75 fc ff       	call   0x2df708
  3181ba:	f3 0f 10 15 8e 50 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff7508e]        # 0x28d250
  3181c2:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3181c7:	48 8d 0d 92 de 0c 00 	lea    rcx,[rip+0xcde92]        # 0x3e6060
  3181ce:	48 8b d8             	mov    rbx,rax
  3181d1:	e8 96 74 fc ff       	call   0x2df66c
  3181d6:	4c 8b c0             	mov    r8,rax
  3181d9:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3181de:	48 8b cb             	mov    rcx,rbx
  3181e1:	e8 e6 74 fc ff       	call   0x2df6cc
  3181e6:	80 3d 2b ee 0c 00 00 	cmp    BYTE PTR [rip+0xcee2b],0x0        # 0x3e7018
  3181ed:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3181f1:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3181f7:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3181fa:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3181fe:	74 14                	je     0x318214
  318200:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [rsp+0x54]
  318206:	f3 0f 58 05 7a de 0c 00 	addss  xmm0,DWORD PTR [rip+0xcde7a]        # 0x3e6088
  31820e:	f3 0f 11 44 24 54    	movss  DWORD PTR [rsp+0x54],xmm0
  318214:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  318219:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  31821d:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  318222:	e8 a5 74 fc ff       	call   0x2df6cc
  318227:	48 8b c8             	mov    rcx,rax
  31822a:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  31822f:	e8 44 90 fc ff       	call   0x2e1278
  318234:	f3 0f 10 15 18 50 f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff75018]        # 0x28d254
  31823c:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  318240:	0f 57 db             	xorps  xmm3,xmm3
  318243:	0f 57 c9             	xorps  xmm1,xmm1
  318246:	e8 5d f9 0a 00       	call   0x3c7ba8
  31824b:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  318250:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  318255:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  318259:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31825d:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  318260:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  318266:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  31826c:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  318270:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  318274:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  31827a:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  31827e:	e8 6d 8d fc ff       	call   0x2e0ff0
  318283:	80 3d 0e ce 0c 00 00 	cmp    BYTE PTR [rip+0xcce0e],0x0        # 0x3e5098
  31828a:	0f 84 c1 02 00 00    	je     0x318551
  318290:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  318296:	4c 8d 4c 24 30       	lea    r9,[rsp+0x30]
  31829b:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  31829f:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  3182a4:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  3182aa:	48 8b d7             	mov    rdx,rdi
  3182ad:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  3182b2:	49 8b ce             	mov    rcx,r14
  3182b5:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  3182b9:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  3182bc:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  3182c2:	f3 44 0f 11 54 24 20 	movss  DWORD PTR [rsp+0x20],xmm10
  3182c9:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  3182cd:	e8 1e ec 04 00       	call   0x366ef0
  3182d2:	e9 8f 02 00 00       	jmp    0x318566
  3182d7:	49 8b cf             	mov    rcx,r15
  3182da:	e8 29 2c fb ff       	call   0x2caf08
  3182df:	84 c0                	test   al,al
  3182e1:	0f 84 7f 02 00 00    	je     0x318566
  3182e7:	49 8b cf             	mov    rcx,r15
  3182ea:	e8 49 36 05 00       	call   0x36b938
  3182ef:	48 8b c8             	mov    rcx,rax
  3182f2:	48 8b d0             	mov    rdx,rax
  3182f5:	e8 0e 2c fb ff       	call   0x2caf08
  3182fa:	84 c0                	test   al,al
  3182fc:	0f 84 64 02 00 00    	je     0x318566
  318302:	48 8b ca             	mov    rcx,rdx
  318305:	e8 26 a8 05 00       	call   0x372b30
  31830a:	48 8b c8             	mov    rcx,rax
  31830d:	48 8b d8             	mov    rbx,rax
  318310:	e8 f3 2b fb ff       	call   0x2caf08
  318315:	84 c0                	test   al,al
  318317:	0f 84 49 02 00 00    	je     0x318566
  31831d:	f3 45 0f 10 87 ac 03 00 00 	movss  xmm8,DWORD PTR [r15+0x3ac]
  318326:	48 8b ce             	mov    rcx,rsi
  318329:	f3 44 0f 59 43 3c    	mulss  xmm8,DWORD PTR [rbx+0x3c]
  31832f:	e8 20 d7 ff ff       	call   0x315a54
  318334:	48 8b c8             	mov    rcx,rax
  318337:	4c 8b c0             	mov    r8,rax
  31833a:	e8 c9 2b fb ff       	call   0x2caf08
  31833f:	84 c0                	test   al,al
  318341:	74 1d                	je     0x318360
  318343:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318347:	49 8b c8             	mov    rcx,r8
  31834a:	e8 85 c4 05 00       	call   0x3747d4
  31834f:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  318353:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  318359:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  31835c:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  318360:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318364:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  318368:	e8 0b 8f fc ff       	call   0x2e1278
  31836d:	f3 0f 10 15 df 4e f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff74edf]        # 0x28d254
  318375:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  318379:	48 8b c8             	mov    rcx,rax
  31837c:	e8 eb 72 fc ff       	call   0x2df66c
  318381:	4c 8b c0             	mov    r8,rax
  318384:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  318389:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  31838d:	e8 76 73 fc ff       	call   0x2df708
  318392:	f3 0f 10 7b 38       	movss  xmm7,DWORD PTR [rbx+0x38]
  318397:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  31839b:	f3 0f 10 73 34       	movss  xmm6,DWORD PTR [rbx+0x34]
  3183a0:	48 8d 8d 50 01 00 00 	lea    rcx,[rbp+0x150]
  3183a7:	0f 57 c0             	xorps  xmm0,xmm0
  3183aa:	0f 11 45 40          	movups XMMWORD PTR [rbp+0x40],xmm0
  3183ae:	0f 11 45 50          	movups XMMWORD PTR [rbp+0x50],xmm0
  3183b2:	0f 5a ff             	cvtps2pd xmm7,xmm7
  3183b5:	0f 5a f6             	cvtps2pd xmm6,xmm6
  3183b8:	e8 33 b4 fd ff       	call   0x2f37f0
  3183bd:	48 8b c8             	mov    rcx,rax
  3183c0:	e8 cf 80 00 00       	call   0x320494
  3183c5:	48 8b d0             	mov    rdx,rax
  3183c8:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3183cc:	41 0f 5a d0          	cvtps2pd xmm2,xmm8
  3183d0:	0f 28 de             	movaps xmm3,xmm6
  3183d3:	f2 0f 11 7c 24 20    	movsd  QWORD PTR [rsp+0x20],xmm7
  3183d9:	66 49 0f 7e d0       	movq   r8,xmm2
  3183de:	66 49 0f 7e f1       	movq   r9,xmm6
  3183e3:	e8 2c 63 fd ff       	call   0x2ee714
  3183e8:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3183ec:	e8 63 df fb ff       	call   0x2d6354
  3183f1:	48 8b c8             	mov    rcx,rax
  3183f4:	48 8b f0             	mov    rsi,rax
  3183f7:	e8 24 8a fc ff       	call   0x2e0e20
  3183fc:	48 8b f8             	mov    rdi,rax
  3183ff:	48 85 c0             	test   rax,rax
  318402:	75 31                	jne    0x318435
  318404:	f3 0f 10 5b 34       	movss  xmm3,DWORD PTR [rbx+0x34]
  318409:	41 0f 28 c8          	movaps xmm1,xmm8
  31840d:	f3 0f 10 53 38       	movss  xmm2,DWORD PTR [rbx+0x38]
  318412:	48 8b ce             	mov    rcx,rsi
  318415:	f3 44 0f 11 4c 24 20 	movss  DWORD PTR [rsp+0x20],xmm9
  31841c:	e8 43 7a fc ff       	call   0x2dfe64
  318421:	48 8b f8             	mov    rdi,rax
  318424:	48 85 c0             	test   rax,rax
  318427:	0f 84 39 01 00 00    	je     0x318566
  31842d:	48 8b c8             	mov    rcx,rax
  318430:	e8 3b b6 fc ff       	call   0x2e3a70
  318435:	f2 0f 10 05 0b ee 0b 00 	movsd  xmm0,QWORD PTR [rip+0xbee0b]        # 0x3d7248
  31843d:	4c 8d 4c 24 30       	lea    r9,[rsp+0x30]
  318442:	8b 05 08 ee 0b 00    	mov    eax,DWORD PTR [rip+0xbee08]        # 0x3d7250
  318448:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  31844d:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  318453:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  318458:	f2 0f 10 44 24 50    	movsd  xmm0,QWORD PTR [rsp+0x50]
  31845e:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  318462:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  318466:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  31846a:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  318470:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  318476:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  31847a:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  31847e:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  318484:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  318488:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  31848d:	e8 e2 9e fc ff       	call   0x2e2374
  318492:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  318496:	e8 bd b6 fc ff       	call   0x2e3b58
  31849b:	84 c0                	test   al,al
  31849d:	0f 85 c3 00 00 00    	jne    0x318566
  3184a3:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  3184a7:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  3184ab:	e8 c8 8d fc ff       	call   0x2e1278
  3184b0:	48 8b c8             	mov    rcx,rax
  3184b3:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  3184b7:	41 0f 28 d0          	movaps xmm2,xmm8
  3184bb:	e8 ac 71 fc ff       	call   0x2df66c
  3184c0:	48 8b c8             	mov    rcx,rax
  3184c3:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  3184c8:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3184cc:	e8 37 72 fc ff       	call   0x2df708
  3184d1:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  3184d6:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  3184da:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3184df:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3184e3:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3184e9:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3184ec:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3184f0:	e8 d7 71 fc ff       	call   0x2df6cc
  3184f5:	48 8b c8             	mov    rcx,rax
  3184f8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3184fd:	e8 76 8d fc ff       	call   0x2e1278
  318502:	f3 0f 10 15 4a 4d f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff74d4a]        # 0x28d254
  31850a:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  31850e:	0f 57 db             	xorps  xmm3,xmm3
  318511:	0f 57 c9             	xorps  xmm1,xmm1
  318514:	e8 8f f6 0a 00       	call   0x3c7ba8
  318519:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  31851e:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  318523:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  318527:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31852b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  31852e:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  318534:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  31853a:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  31853e:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  318542:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  318548:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  31854c:	e8 9f 8a fc ff       	call   0x2e0ff0
  318551:	0f 10 45 c0          	movups xmm0,XMMWORD PTR [rbp-0x40]
  318555:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  318559:	49 8b cc             	mov    rcx,r12
  31855c:	66 0f 7f 45 80       	movdqa XMMWORD PTR [rbp-0x80],xmm0
  318561:	e8 9e b7 05 00       	call   0x373d04
  318566:	4c 8d 9c 24 10 02 00 00 	lea    r11,[rsp+0x210]
  31856e:	49 8b 5b 30          	mov    rbx,QWORD PTR [r11+0x30]
  318572:	49 8b 73 38          	mov    rsi,QWORD PTR [r11+0x38]
  318576:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  31857b:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  318580:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  318585:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  31858a:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  31858f:	45 0f 28 6b a0       	movaps xmm13,XMMWORD PTR [r11-0x60]
  318594:	49 8b e3             	mov    rsp,r11
  318597:	41 5f                	pop    r15
  318599:	41 5e                	pop    r14
  31859b:	41 5c                	pop    r12
  31859d:	5f                   	pop    rdi
  31859e:	5d                   	pop    rbp
  31859f:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000317194 <.data+0x317194>:
  317194:	48 8b c4             	mov    rax,rsp
  317197:	48 89 58 10          	mov    QWORD PTR [rax+0x10],rbx
  31719b:	55                   	push   rbp
  31719c:	56                   	push   rsi
  31719d:	57                   	push   rdi
  31719e:	41 56                	push   r14
  3171a0:	41 57                	push   r15
  3171a2:	48 8d a8 58 fe ff ff 	lea    rbp,[rax-0x1a8]
  3171a9:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  3171b0:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  3171b4:	49 8b d9             	mov    rbx,r9
  3171b7:	0f 29 78 b8          	movaps XMMWORD PTR [rax-0x48],xmm7
  3171bb:	49 8b f0             	mov    rsi,r8
  3171be:	44 0f 29 40 a8       	movaps XMMWORD PTR [rax-0x58],xmm8
  3171c3:	4c 8b fa             	mov    r15,rdx
  3171c6:	44 0f 29 50 98       	movaps XMMWORD PTR [rax-0x68],xmm10
  3171cb:	48 8b f9             	mov    rdi,rcx
  3171ce:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  3171d3:	44 0f 29 a8 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm13
  3171db:	44 0f 29 b0 68 ff ff ff 	movaps XMMWORD PTR [rax-0x98],xmm14
  3171e3:	e8 50 7c fd ff       	call   0x2eee38
  3171e8:	4d 8b c7             	mov    r8,r15
  3171eb:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3171f0:	48 8b ce             	mov    rcx,rsi
  3171f3:	e8 d4 84 fc ff       	call   0x2df6cc
  3171f8:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3171fc:	f2 0f 11 47 10       	movsd  QWORD PTR [rdi+0x10],xmm0
  317201:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  317204:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  317208:	89 47 18             	mov    DWORD PTR [rdi+0x18],eax
  31720b:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  31720e:	f2 0f 11 47 04       	movsd  QWORD PTR [rdi+0x4],xmm0
  317213:	89 47 0c             	mov    DWORD PTR [rdi+0xc],eax
  317216:	c6 07 00             	mov    BYTE PTR [rdi],0x0
  317219:	e8 7e 68 fc ff       	call   0x2dda9c
  31721e:	48 8b c8             	mov    rcx,rax
  317221:	48 8b d0             	mov    rdx,rax
  317224:	e8 df 3c fb ff       	call   0x2caf08
  317229:	84 c0                	test   al,al
  31722b:	0f 84 4c 04 00 00    	je     0x31767d
  317231:	48 8b ca             	mov    rcx,rdx
  317234:	e8 63 9c fc ff       	call   0x2e0e9c
  317239:	84 c0                	test   al,al
  31723b:	0f 84 3c 04 00 00    	je     0x31767d
  317241:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  317246:	e8 71 09 0b 00       	call   0x3c7bbc
  31724b:	4c 8d 85 b0 01 00 00 	lea    r8,[rbp+0x1b0]
  317252:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  317257:	48 8d 8d c0 01 00 00 	lea    rcx,[rbp+0x1c0]
  31725e:	e8 2d e4 ff ff       	call   0x315690
  317263:	84 c0                	test   al,al
  317265:	0f 84 12 04 00 00    	je     0x31767d
  31726b:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  317271:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  317276:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  31727a:	4d 8b c7             	mov    r8,r15
  31727d:	f3 44 0f 10 b5 c0 01 00 00 	movss  xmm14,DWORD PTR [rbp+0x1c0]
  317286:	48 8b ce             	mov    rcx,rsi
  317289:	f2 0f 11 47 38       	movsd  QWORD PTR [rdi+0x38],xmm0
  31728e:	89 47 40             	mov    DWORD PTR [rdi+0x40],eax
  317291:	f3 44 0f 11 77 34    	movss  DWORD PTR [rdi+0x34],xmm14
  317297:	e8 30 84 fc ff       	call   0x2df6cc
  31729c:	48 8b c8             	mov    rcx,rax
  31729f:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  3172a3:	e8 d0 9f fc ff       	call   0x2e1278
  3172a8:	f3 0f 10 95 b0 01 00 00 	movss  xmm2,DWORD PTR [rbp+0x1b0]
  3172b0:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  3172b4:	48 8b c8             	mov    rcx,rax
  3172b7:	e8 b0 83 fc ff       	call   0x2df66c
  3172bc:	48 8d 4d 10          	lea    rcx,[rbp+0x10]
  3172c0:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3172c4:	f2 0f 11 47 10       	movsd  QWORD PTR [rdi+0x10],xmm0
  3172c9:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3172cc:	89 47 18             	mov    DWORD PTR [rdi+0x18],eax
  3172cf:	e8 c4 7b fd ff       	call   0x2eee98
  3172d4:	48 8d 8d b0 00 00 00 	lea    rcx,[rbp+0xb0]
  3172db:	e8 b8 7b fd ff       	call   0x2eee98
  3172e0:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3172e5:	e8 d2 08 0b 00       	call   0x3c7bbc
  3172ea:	f3 0f 10 15 62 cf 0c 00 	movss  xmm2,DWORD PTR [rip+0xccf62]        # 0x3e4254
  3172f2:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3172f7:	48 8b cb             	mov    rcx,rbx
  3172fa:	45 33 f6             	xor    r14d,r14d
  3172fd:	e8 6a 83 fc ff       	call   0x2df66c
  317302:	48 8b d0             	mov    rdx,rax
  317305:	48 8b ce             	mov    rcx,rsi
  317308:	e8 bb 08 0b 00       	call   0x3c7bc8
  31730d:	f3 0f 10 3d 0f 68 f7 ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffff7680f]        # 0x28db24
  317315:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  31731a:	4d 8b c7             	mov    r8,r15
  31731d:	48 8b ce             	mov    rcx,rsi
  317320:	e8 a7 83 fc ff       	call   0x2df6cc
  317325:	48 8b c8             	mov    rcx,rax
  317328:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  31732c:	e8 47 9f fc ff       	call   0x2e1278
  317331:	f3 0f 10 15 1b 5f f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff75f1b]        # 0x28d254
  317339:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  31733e:	0f 57 db             	xorps  xmm3,xmm3
  317341:	0f 57 c9             	xorps  xmm1,xmm1
  317344:	e8 5f 08 0b 00       	call   0x3c7ba8
  317349:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  31734e:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  317353:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  317357:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31735b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  31735e:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  317364:	f2 0f 10 45 b0       	movsd  xmm0,QWORD PTR [rbp-0x50]
  317369:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  31736d:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  317370:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  317376:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  31737a:	e8 71 9c fc ff       	call   0x2e0ff0
  31737f:	0f 10 45 a0          	movups xmm0,XMMWORD PTR [rbp-0x60]
  317383:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  317387:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  31738b:	66 0f 7f 45 a0       	movdqa XMMWORD PTR [rbp-0x60],xmm0
  317390:	e8 77 df ff ff       	call   0x31530c
  317395:	f3 0f 10 75 c0       	movss  xmm6,DWORD PTR [rbp-0x40]
  31739a:	f3 44 0f 10 25 89 be f7 ff 	movss  xmm12,DWORD PTR [rip+0xfffffffffff7be89]        # 0x29322c
  3173a3:	41 0f 2f f4          	comiss xmm6,xmm12
  3173a7:	76 08                	jbe    0x3173b1
  3173a9:	f3 0f 58 35 bf be f7 ff 	addss  xmm6,DWORD PTR [rip+0xfffffffffff7bebf]        # 0x293270
  3173b1:	44 0f 2f e6          	comiss xmm12,xmm6
  3173b5:	f3 44 0f 10 15 ae be f7 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff7beae]        # 0x29326c
  3173be:	f3 44 0f 10 85 d0 01 00 00 	movss  xmm8,DWORD PTR [rbp+0x1d0]
  3173c7:	0f 86 34 02 00 00    	jbe    0x317601
  3173cd:	f3 0f 10 55 c4       	movss  xmm2,DWORD PTR [rbp-0x3c]
  3173d2:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3173d7:	0f 57 db             	xorps  xmm3,xmm3
  3173da:	0f 28 ce             	movaps xmm1,xmm6
  3173dd:	e8 c6 07 0b 00       	call   0x3c7ba8
  3173e2:	f2 0f 10 44 24 40    	movsd  xmm0,QWORD PTR [rsp+0x40]
  3173e8:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3173ec:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  3173f0:	48 8d 8d 00 01 00 00 	lea    rcx,[rbp+0x100]
  3173f7:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  3173fc:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
  3173ff:	e8 10 16 00 00       	call   0x318a14
  317404:	f3 0f 10 1d 48 5e f7 ff 	movss  xmm3,DWORD PTR [rip+0xfffffffffff75e48]        # 0x28d254
  31740c:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  317410:	0f 57 d2             	xorps  xmm2,xmm2
  317413:	0f 57 c9             	xorps  xmm1,xmm1
  317416:	48 8b d8             	mov    rbx,rax
  317419:	e8 8a 07 0b 00       	call   0x3c7ba8
  31741e:	4c 8d 45 e0          	lea    r8,[rbp-0x20]
  317422:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  317427:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  31742a:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31742e:	89 4d e8             	mov    DWORD PTR [rbp-0x18],ecx
  317431:	48 8b cb             	mov    rcx,rbx
  317434:	f2 0f 11 45 e0       	movsd  QWORD PTR [rbp-0x20],xmm0
  317439:	e8 f6 83 fd ff       	call   0x2ef834
  31743e:	f3 0f 10 95 b0 01 00 00 	movss  xmm2,DWORD PTR [rbp+0x1b0]
  317446:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31744b:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  317450:	e8 17 82 fc ff       	call   0x2df66c
  317455:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  317458:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  31745c:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  317460:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  317464:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  317467:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  31746b:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  31746f:	41 0f 28 de          	movaps xmm3,xmm14
  317473:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  317476:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  31747a:	f2 0f 11 45 f0       	movsd  QWORD PTR [rbp-0x10],xmm0
  31747f:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  317485:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  317488:	41 8b 47 08          	mov    eax,DWORD PTR [r15+0x8]
  31748c:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
  31748f:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  317493:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  317498:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  31749e:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  3174a3:	48 8d 45 00          	lea    rax,[rbp+0x0]
  3174a7:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  3174ac:	f2 41 0f 10 07       	movsd  xmm0,QWORD PTR [r15]
  3174b1:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  3174b6:	f2 0f 11 45 90       	movsd  QWORD PTR [rbp-0x70],xmm0
  3174bb:	e8 c8 9a 00 00       	call   0x320f88
  3174c0:	0f 28 65 60          	movaps xmm4,XMMWORD PTR [rbp+0x60]
  3174c4:	41 ff c6             	inc    r14d
  3174c7:	0f 28 9d a0 00 00 00 	movaps xmm3,XMMWORD PTR [rbp+0xa0]
  3174ce:	32 c9                	xor    cl,cl
  3174d0:	0f 28 ad 80 00 00 00 	movaps xmm5,XMMWORD PTR [rbp+0x80]
  3174d7:	44 0f 28 6d 70       	movaps xmm13,XMMWORD PTR [rbp+0x70]
  3174dc:	66 0f 7e e0          	movd   eax,xmm4
  3174e0:	84 c0                	test   al,al
  3174e2:	8a 45 10             	mov    al,BYTE PTR [rbp+0x10]
  3174e5:	0f 84 89 00 00 00    	je     0x317574
  3174eb:	0f 28 d3             	movaps xmm2,xmm3
  3174ee:	0f c6 d3 aa          	shufps xmm2,xmm3,0xaa
  3174f2:	84 c0                	test   al,al
  3174f4:	74 0a                	je     0x317500
  3174f6:	f3 0f 10 4d 58       	movss  xmm1,DWORD PTR [rbp+0x58]
  3174fb:	0f 2f ca             	comiss xmm1,xmm2
  3174fe:	76 53                	jbe    0x317553
  317500:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  317506:	0f 28 cb             	movaps xmm1,xmm3
  317509:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  31750d:	89 85 9c 00 00 00    	mov    DWORD PTR [rbp+0x9c],eax
  317513:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  317517:	f2 0f 11 85 94 00 00 00 	movsd  QWORD PTR [rbp+0x94],xmm0
  31751f:	0f 28 85 90 00 00 00 	movaps xmm0,XMMWORD PTR [rbp+0x90]
  317526:	0f 29 45 40          	movaps XMMWORD PTR [rbp+0x40],xmm0
  31752a:	f2 0f 10 44 24 40    	movsd  xmm0,QWORD PTR [rsp+0x40]
  317530:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  317534:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  31753a:	0f 29 65 10          	movaps XMMWORD PTR [rbp+0x10],xmm4
  31753e:	44 0f 29 6d 20       	movaps XMMWORD PTR [rbp+0x20],xmm13
  317543:	0f 29 6d 30          	movaps XMMWORD PTR [rbp+0x30],xmm5
  317547:	0f 29 5d 50          	movaps XMMWORD PTR [rbp+0x50],xmm3
  31754b:	0f c6 cb aa          	shufps xmm1,xmm3,0xaa
  31754f:	66 0f 7e e0          	movd   eax,xmm4
  317553:	38 8d b0 00 00 00    	cmp    BYTE PTR [rbp+0xb0],cl
  317559:	74 15                	je     0x317570
  31755b:	f3 0f 5c 15 5d 6c f7 ff 	subss  xmm2,DWORD PTR [rip+0xfffffffffff76c5d]        # 0x28e1c0
  317563:	f3 0f 10 85 f8 00 00 00 	movss  xmm0,DWORD PTR [rbp+0xf8]
  31756b:	0f 2f c2             	comiss xmm0,xmm2
  31756e:	72 09                	jb     0x317579
  317570:	b1 01                	mov    cl,0x1
  317572:	eb 05                	jmp    0x317579
  317574:	f3 0f 10 4d 58       	movss  xmm1,DWORD PTR [rbp+0x58]
  317579:	41 83 fe 64          	cmp    r14d,0x64
  31757d:	0f 8d 86 00 00 00    	jge    0x317609
  317583:	84 c0                	test   al,al
  317585:	74 06                	je     0x31758d
  317587:	44 0f 2f c1          	comiss xmm8,xmm1
  31758b:	73 7c                	jae    0x317609
  31758d:	84 c9                	test   cl,cl
  31758f:	74 35                	je     0x3175c6
  317591:	0f 28 85 90 00 00 00 	movaps xmm0,XMMWORD PTR [rbp+0x90]
  317598:	44 0f 28 d6          	movaps xmm10,xmm6
  31759c:	0f 29 85 e0 00 00 00 	movaps XMMWORD PTR [rbp+0xe0],xmm0
  3175a3:	f3 0f 58 f7          	addss  xmm6,xmm7
  3175a7:	0f 29 a5 b0 00 00 00 	movaps XMMWORD PTR [rbp+0xb0],xmm4
  3175ae:	44 0f 29 ad c0 00 00 00 	movaps XMMWORD PTR [rbp+0xc0],xmm13
  3175b6:	0f 29 ad d0 00 00 00 	movaps XMMWORD PTR [rbp+0xd0],xmm5
  3175bd:	0f 29 9d f0 00 00 00 	movaps XMMWORD PTR [rbp+0xf0],xmm3
  3175c4:	eb 2f                	jmp    0x3175f5
  3175c6:	41 0f 28 f2          	movaps xmm6,xmm10
  3175ca:	c6 85 b0 00 00 00 00 	mov    BYTE PTR [rbp+0xb0],0x0
  3175d1:	f3 0f 5c f7          	subss  xmm6,xmm7
  3175d5:	f3 0f 5e 3d 93 bb f7 ff 	divss  xmm7,DWORD PTR [rip+0xfffffffffff7bb93]        # 0x293170
  3175dd:	f3 0f 5f 35 87 bc f7 ff 	maxss  xmm6,DWORD PTR [rip+0xfffffffffff7bc87]        # 0x29326c
  3175e5:	f3 0f 5f 3d ab ba f7 ff 	maxss  xmm7,DWORD PTR [rip+0xfffffffffff7baab]        # 0x293098
  3175ed:	f3 0f 58 35 a3 ba f7 ff 	addss  xmm6,DWORD PTR [rip+0xfffffffffff7baa3]        # 0x293098
  3175f5:	44 0f 2f e6          	comiss xmm12,xmm6
  3175f9:	0f 87 ce fd ff ff    	ja     0x3173cd
  3175ff:	eb 08                	jmp    0x317609
  317601:	f3 0f 10 4d 58       	movss  xmm1,DWORD PTR [rbp+0x58]
  317606:	8a 45 10             	mov    al,BYTE PTR [rbp+0x10]
  317609:	84 c0                	test   al,al
  31760b:	74 66                	je     0x317673
  31760d:	44 0f 2f c1          	comiss xmm8,xmm1
  317611:	f3 0f 10 45 50       	movss  xmm0,DWORD PTR [rbp+0x50]
  317616:	72 08                	jb     0x317620
  317618:	f3 0f 11 05 34 cc 0c 00 	movss  DWORD PTR [rip+0xccc34],xmm0        # 0x3e4254
  317620:	8b 45 4c             	mov    eax,DWORD PTR [rbp+0x4c]
  317623:	f3 0f 11 47 28       	movss  DWORD PTR [rdi+0x28],xmm0
  317628:	f2 0f 10 45 44       	movsd  xmm0,QWORD PTR [rbp+0x44]
  31762d:	f2 0f 11 47 10       	movsd  QWORD PTR [rdi+0x10],xmm0
  317632:	0f 28 45 20          	movaps xmm0,XMMWORD PTR [rbp+0x20]
  317636:	f2 0f 11 47 04       	movsd  QWORD PTR [rdi+0x4],xmm0
  31763b:	66 0f 73 d8 08       	psrldq xmm0,0x8
  317640:	66 0f 7e 47 0c       	movd   DWORD PTR [rdi+0xc],xmm0
  317645:	f2 0f 10 45 2c       	movsd  xmm0,QWORD PTR [rbp+0x2c]
  31764a:	f2 0f 11 47 1c       	movsd  QWORD PTR [rdi+0x1c],xmm0
  31764f:	f2 0f 10 44 24 70    	movsd  xmm0,QWORD PTR [rsp+0x70]
  317655:	89 47 18             	mov    DWORD PTR [rdi+0x18],eax
  317658:	8b 45 34             	mov    eax,DWORD PTR [rbp+0x34]
  31765b:	89 47 24             	mov    DWORD PTR [rdi+0x24],eax
  31765e:	8b 44 24 78          	mov    eax,DWORD PTR [rsp+0x78]
  317662:	f2 0f 11 47 44       	movsd  QWORD PTR [rdi+0x44],xmm0
  317667:	89 47 4c             	mov    DWORD PTR [rdi+0x4c],eax
  31766a:	f3 0f 11 4f 2c       	movss  DWORD PTR [rdi+0x2c],xmm1
  31766f:	44 89 77 30          	mov    DWORD PTR [rdi+0x30],r14d
  317673:	44 0f 2f 47 2c       	comiss xmm8,DWORD PTR [rdi+0x2c]
  317678:	0f 93 c0             	setae  al
  31767b:	88 07                	mov    BYTE PTR [rdi],al
  31767d:	4c 8d 9c 24 80 02 00 00 	lea    r11,[rsp+0x280]
  317685:	48 8b c7             	mov    rax,rdi
  317688:	49 8b 5b 38          	mov    rbx,QWORD PTR [r11+0x38]
  31768c:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  317691:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  317696:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  31769b:	45 0f 28 53 c0       	movaps xmm10,XMMWORD PTR [r11-0x40]
  3176a0:	45 0f 28 63 b0       	movaps xmm12,XMMWORD PTR [r11-0x50]
  3176a5:	45 0f 28 6b a0       	movaps xmm13,XMMWORD PTR [r11-0x60]
  3176aa:	45 0f 28 73 90       	movaps xmm14,XMMWORD PTR [r11-0x70]
  3176af:	49 8b e3             	mov    rsp,r11
  3176b2:	41 5f                	pop    r15
  3176b4:	41 5e                	pop    r14
  3176b6:	5f                   	pop    rdi
  3176b7:	5e                   	pop    rsi
  3176b8:	5d                   	pop    rbp
  3176b9:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320f88 <.data+0x320f88>:
  320f88:	48 8b c4             	mov    rax,rsp
  320f8b:	55                   	push   rbp
  320f8c:	53                   	push   rbx
  320f8d:	56                   	push   rsi
  320f8e:	57                   	push   rdi
  320f8f:	41 54                	push   r12
  320f91:	41 56                	push   r14
  320f93:	41 57                	push   r15
  320f95:	48 8d 68 88          	lea    rbp,[rax-0x78]
  320f99:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  320fa0:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
  320fa4:	49 8b f0             	mov    rsi,r8
  320fa7:	0f 29 70 b8          	movaps XMMWORD PTR [rax-0x48],xmm6
  320fab:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  320fb0:	0f 29 78 a8          	movaps XMMWORD PTR [rax-0x58],xmm7
  320fb4:	4c 8b f2             	mov    r14,rdx
  320fb7:	44 0f 29 40 98       	movaps XMMWORD PTR [rax-0x68],xmm8
  320fbc:	48 8b f9             	mov    rdi,rcx
  320fbf:	44 0f 29 48 88       	movaps XMMWORD PTR [rax-0x78],xmm9
  320fc4:	48 8d 4d 88          	lea    rcx,[rbp-0x78]
  320fc8:	44 0f 29 90 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm10
  320fd0:	f3 44 0f 10 15 7b cb f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff6cb7b]        # 0x28db54
  320fd9:	44 0f 29 98 68 ff ff ff 	movaps XMMWORD PTR [rax-0x98],xmm11
  320fe1:	44 0f 28 db          	movaps xmm11,xmm3
  320fe5:	44 0f 29 a0 58 ff ff ff 	movaps XMMWORD PTR [rax-0xa8],xmm12
  320fed:	8b 42 08             	mov    eax,DWORD PTR [rdx+0x8]
  320ff0:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  320ff5:	f2 0f 11 44 24 20    	movsd  QWORD PTR [rsp+0x20],xmm0
  320ffb:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  320fff:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  321005:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  321009:	e8 8e e2 fb ff       	call   0x2df29c
  32100e:	48 8b cf             	mov    rcx,rdi
  321011:	0f 57 ff             	xorps  xmm7,xmm7
  321014:	e8 7f de fc ff       	call   0x2eee98
  321019:	f2 44 0f 10 0e       	movsd  xmm9,QWORD PTR [rsi]
  32101e:	44 8b 66 08          	mov    r12d,DWORD PTR [rsi+0x8]
  321022:	4c 8b bd a8 00 00 00 	mov    r15,QWORD PTR [rbp+0xa8]
  321029:	f3 44 0f 10 05 aa ca f6 ff 	movss  xmm8,DWORD PTR [rip+0xfffffffffff6caaa]        # 0x28dadc
  321032:	f3 44 0f 10 25 a5 d1 f6 ff 	movss  xmm12,DWORD PTR [rip+0xfffffffffff6d1a5]        # 0x28e1e0
  32103b:	f2 41 0f 10 36       	movsd  xmm6,QWORD PTR [r14]
  321040:	48 8d 55 a0          	lea    rdx,[rbp-0x60]
  321044:	41 8b 5e 08          	mov    ebx,DWORD PTR [r14+0x8]
  321048:	41 0f 28 d0          	movaps xmm2,xmm8
  32104c:	48 8b ce             	mov    rcx,rsi
  32104f:	e8 18 e6 fb ff       	call   0x2df66c
  321054:	48 8b d0             	mov    rdx,rax
  321057:	49 8b ce             	mov    rcx,r14
  32105a:	e8 69 6b 0a 00       	call   0x3c7bc8
  32105f:	f2 41 0f 10 06       	movsd  xmm0,QWORD PTR [r14]
  321064:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  321069:	41 8b 46 08          	mov    eax,DWORD PTR [r14+0x8]
  32106d:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  321072:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  321077:	f2 0f 11 44 24 30    	movsd  QWORD PTR [rsp+0x30],xmm0
  32107d:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  321081:	f2 0f 11 74 24 20    	movsd  QWORD PTR [rsp+0x20],xmm6
  321087:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  32108b:	e8 0c e2 fb ff       	call   0x2df29c
  321090:	f2 41 0f 10 07       	movsd  xmm0,QWORD PTR [r15]
  321095:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  32109a:	41 8b 47 08          	mov    eax,DWORD PTR [r15+0x8]
  32109e:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  3210a3:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3210a8:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  3210ae:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  3210b2:	e8 c9 49 fc ff       	call   0x2e5a80
  3210b7:	49 8b d7             	mov    rdx,r15
  3210ba:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3210bf:	e8 6c ee fb ff       	call   0x2dff30
  3210c4:	41 0f 2f c2          	comiss xmm0,xmm10
  3210c8:	77 79                	ja     0x321143
  3210ca:	f2 0f 10 4d 80       	movsd  xmm1,QWORD PTR [rbp-0x80]
  3210cf:	48 8d 55 ac          	lea    rdx,[rbp-0x54]
  3210d3:	48 8b 8d a0 00 00 00 	mov    rcx,QWORD PTR [rbp+0xa0]
  3210da:	44 0f 28 d0          	movaps xmm10,xmm0
  3210de:	0f 10 44 24 70       	movups xmm0,XMMWORD PTR [rsp+0x70]
  3210e3:	41 0f 28 d0          	movaps xmm2,xmm8
  3210e7:	f2 0f 11 4d 98       	movsd  QWORD PTR [rbp-0x68],xmm1
  3210ec:	0f 11 45 88          	movups XMMWORD PTR [rbp-0x78],xmm0
  3210f0:	e8 77 e5 fb ff       	call   0x2df66c
  3210f5:	48 8b d0             	mov    rdx,rax
  3210f8:	48 8b ce             	mov    rcx,rsi
  3210fb:	e8 c8 6a 0a 00       	call   0x3c7bc8
  321100:	41 0f 28 d3          	movaps xmm2,xmm11
  321104:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
  321108:	48 8b ce             	mov    rcx,rsi
  32110b:	e8 5c e5 fb ff       	call   0x2df66c
  321110:	48 8b c8             	mov    rcx,rax
  321113:	48 8d 55 c4          	lea    rdx,[rbp-0x3c]
  321117:	41 0f 28 d0          	movaps xmm2,xmm8
  32111b:	e8 4c e5 fb ff       	call   0x2df66c
  321120:	48 8b d0             	mov    rdx,rax
  321123:	48 8b ce             	mov    rcx,rsi
  321126:	e8 cd 6a 0a 00       	call   0x3c7bf8
  32112b:	f2 44 0f 10 0e       	movsd  xmm9,QWORD PTR [rsi]
  321130:	f3 41 0f 58 f8       	addss  xmm7,xmm8
  321135:	44 8b 66 08          	mov    r12d,DWORD PTR [rsi+0x8]
  321139:	44 0f 2f e7          	comiss xmm12,xmm7
  32113d:	0f 87 f8 fe ff ff    	ja     0x32103b
  321143:	f2 41 0f 10 07       	movsd  xmm0,QWORD PTR [r15]
  321148:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  32114d:	41 8b 47 08          	mov    eax,DWORD PTR [r15+0x8]
  321151:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  321156:	48 8d 4d 88          	lea    rcx,[rbp-0x78]
  32115a:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  321160:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  321164:	e8 17 49 fc ff       	call   0x2e5a80
  321169:	49 8b d7             	mov    rdx,r15
  32116c:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  321171:	e8 ba ed fb ff       	call   0x2dff30
  321176:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
  32117a:	4c 8d 9c 24 40 01 00 00 	lea    r11,[rsp+0x140]
  321182:	f2 0f 10 4c 24 50    	movsd  xmm1,QWORD PTR [rsp+0x50]
  321188:	f3 41 0f 5c f8       	subss  xmm7,xmm8
  32118d:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  321192:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  321197:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  32119c:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  3211a1:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  3211a6:	f2 44 0f 11 4f 1c    	movsd  QWORD PTR [rdi+0x1c],xmm9
  3211ac:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3211b1:	f3 0f 11 47 48       	movss  DWORD PTR [rdi+0x48],xmm0
  3211b6:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  3211ba:	f2 0f 11 4f 10       	movsd  QWORD PTR [rdi+0x10],xmm1
  3211bf:	89 47 18             	mov    DWORD PTR [rdi+0x18],eax
  3211c2:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  3211c5:	f2 0f 11 47 34       	movsd  QWORD PTR [rdi+0x34],xmm0
  3211ca:	f3 0f 11 7f 40       	movss  DWORD PTR [rdi+0x40],xmm7
  3211cf:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3211d4:	89 47 3c             	mov    DWORD PTR [rdi+0x3c],eax
  3211d7:	48 8b c7             	mov    rax,rdi
  3211da:	44 89 67 24          	mov    DWORD PTR [rdi+0x24],r12d
  3211de:	c6 07 01             	mov    BYTE PTR [rdi],0x1
  3211e1:	49 8b e3             	mov    rsp,r11
  3211e4:	41 5f                	pop    r15
  3211e6:	41 5e                	pop    r14
  3211e8:	41 5c                	pop    r12
  3211ea:	5f                   	pop    rdi
  3211eb:	5e                   	pop    rsi
  3211ec:	5b                   	pop    rbx
  3211ed:	5d                   	pop    rbp
  3211ee:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032a16c <.data+0x32a16c>:
  32a16c:	48 8b c4             	mov    rax,rsp
  32a16f:	4c 89 40 18          	mov    QWORD PTR [rax+0x18],r8
  32a173:	55                   	push   rbp
  32a174:	53                   	push   rbx
  32a175:	56                   	push   rsi
  32a176:	57                   	push   rdi
  32a177:	41 54                	push   r12
  32a179:	41 55                	push   r13
  32a17b:	41 56                	push   r14
  32a17d:	41 57                	push   r15
  32a17f:	48 8d 68 b9          	lea    rbp,[rax-0x47]
  32a183:	48 81 ec f8 00 00 00 	sub    rsp,0xf8
  32a18a:	f3 0f 10 45 6f       	movss  xmm0,DWORD PTR [rbp+0x6f]
  32a18f:	4d 8b e9             	mov    r13,r9
  32a192:	8b 5a 08             	mov    ebx,DWORD PTR [rdx+0x8]
  32a195:	4d 8b f8             	mov    r15,r8
  32a198:	f3 0f 59 05 40 90 f6 ff 	mulss  xmm0,DWORD PTR [rip+0xfffffffffff69040]        # 0x2931e0
  32a1a0:	4c 8b f2             	mov    r14,rdx
  32a1a3:	48 8b f9             	mov    rdi,rcx
  32a1a6:	89 5c 24 38          	mov    DWORD PTR [rsp+0x38],ebx
  32a1aa:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  32a1ae:	0f 29 78 98          	movaps XMMWORD PTR [rax-0x68],xmm7
  32a1b2:	f2 0f 10 3a          	movsd  xmm7,QWORD PTR [rdx]
  32a1b6:	f2 0f 11 7c 24 30    	movsd  QWORD PTR [rsp+0x30],xmm7
  32a1bc:	e8 6b 6a ff ff       	call   0x320c2c
  32a1c1:	f3 44 0f 2c e0       	cvttss2si r12d,xmm0
  32a1c6:	33 f6                	xor    esi,esi
  32a1c8:	45 85 e4             	test   r12d,r12d
  32a1cb:	0f 8e e3 01 00 00    	jle    0x32a3b4
  32a1d1:	0f 57 c0             	xorps  xmm0,xmm0
  32a1d4:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  32a1d9:	0f 11 44 24 70       	movups XMMWORD PTR [rsp+0x70],xmm0
  32a1de:	0f 11 45 8b          	movups XMMWORD PTR [rbp-0x75],xmm0
  32a1e2:	0f 11 44 24 60       	movups XMMWORD PTR [rsp+0x60],xmm0
  32a1e7:	e8 18 ad fb ff       	call   0x2e4f04
  32a1ec:	49 8b d6             	mov    rdx,r14
  32a1ef:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  32a1f4:	e8 37 5d fb ff       	call   0x2dff30
  32a1f9:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  32a1fe:	49 8b ce             	mov    rcx,r14
  32a201:	48 8d 55 9f          	lea    rdx,[rbp-0x61]
  32a205:	0f 28 f0             	movaps xmm6,xmm0
  32a208:	e8 bf 54 fb ff       	call   0x2df6cc
  32a20d:	44 8b 8d 87 00 00 00 	mov    r9d,DWORD PTR [rbp+0x87]
  32a214:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  32a219:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  32a221:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32a226:	0f 28 d6             	movaps xmm2,xmm6
  32a229:	f2 0f 11 7c 24 50    	movsd  QWORD PTR [rsp+0x50],xmm7
  32a22f:	f2 0f 10 08          	movsd  xmm1,QWORD PTR [rax]
  32a233:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  32a236:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  32a23a:	48 8d 44 24 60       	lea    rax,[rsp+0x60]
  32a23f:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  32a244:	f2 0f 11 4c 24 40    	movsd  QWORD PTR [rsp+0x40],xmm1
  32a24a:	89 5c 24 58          	mov    DWORD PTR [rsp+0x58],ebx
  32a24e:	e8 59 ed fb ff       	call   0x2e8fac
  32a253:	84 c0                	test   al,al
  32a255:	0f 85 87 00 00 00    	jne    0x32a2e2
  32a25b:	f2 41 0f 10 3e       	movsd  xmm7,QWORD PTR [r14]
  32a260:	48 8d 55 ab          	lea    rdx,[rbp-0x55]
  32a264:	41 8b 5e 08          	mov    ebx,DWORD PTR [r14+0x8]
  32a268:	49 8b cf             	mov    rcx,r15
  32a26b:	f3 0f 10 15 69 38 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff63869]        # 0x28dadc
  32a273:	f2 0f 11 7c 24 30    	movsd  QWORD PTR [rsp+0x30],xmm7
  32a279:	89 5c 24 38          	mov    DWORD PTR [rsp+0x38],ebx
  32a27d:	e8 ea 53 fb ff       	call   0x2df66c
  32a282:	48 8b d0             	mov    rdx,rax
  32a285:	49 8b ce             	mov    rcx,r14
  32a288:	e8 3b d9 09 00       	call   0x3c7bc8
  32a28d:	f3 0f 10 15 47 38 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff63847]        # 0x28dadc
  32a295:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  32a299:	48 8b 4d 77          	mov    rcx,QWORD PTR [rbp+0x77]
  32a29d:	e8 ca 53 fb ff       	call   0x2df66c
  32a2a2:	48 8b d0             	mov    rdx,rax
  32a2a5:	49 8b cf             	mov    rcx,r15
  32a2a8:	e8 1b d9 09 00       	call   0x3c7bc8
  32a2ad:	f3 0f 10 55 7f       	movss  xmm2,DWORD PTR [rbp+0x7f]
  32a2b2:	48 8d 55 c3          	lea    rdx,[rbp-0x3d]
  32a2b6:	49 8b cf             	mov    rcx,r15
  32a2b9:	e8 ae 53 fb ff       	call   0x2df66c
  32a2be:	f3 0f 10 15 16 38 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff63816]        # 0x28dadc
  32a2c6:	48 8d 55 cf          	lea    rdx,[rbp-0x31]
  32a2ca:	48 8b c8             	mov    rcx,rax
  32a2cd:	e8 9a 53 fb ff       	call   0x2df66c
  32a2d2:	48 8b d0             	mov    rdx,rax
  32a2d5:	49 8b cf             	mov    rcx,r15
  32a2d8:	e8 1b d9 09 00       	call   0x3c7bf8
  32a2dd:	e9 c7 00 00 00       	jmp    0x32a3a9
  32a2e2:	f3 0f 10 45 8b       	movss  xmm0,DWORD PTR [rbp-0x75]
  32a2e7:	0f 2e 05 5e 2f f6 ff 	ucomiss xmm0,DWORD PTR [rip+0xfffffffffff62f5e]        # 0x28d24c
  32a2ee:	7a 06                	jp     0x32a2f6
  32a2f0:	0f 84 b3 00 00 00    	je     0x32a3a9
  32a2f6:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  32a2fb:	e8 20 f6 ff ff       	call   0x329920
  32a300:	48 8b c8             	mov    rcx,rax
  32a303:	4c 8b f8             	mov    r15,rax
  32a306:	e8 fd 0b fa ff       	call   0x2caf08
  32a30b:	84 c0                	test   al,al
  32a30d:	0f 84 92 00 00 00    	je     0x32a3a5
  32a313:	8b 15 37 a4 0c 00    	mov    edx,DWORD PTR [rip+0xca437]        # 0x3f4750
  32a319:	f6 c2 01             	test   dl,0x1
  32a31c:	75 20                	jne    0x32a33e
  32a31e:	4c 8b 05 db cb 0a 00 	mov    r8,QWORD PTR [rip+0xacbdb]        # 0x3d6f00
  32a325:	83 ca 01             	or     edx,0x1
  32a328:	49 81 c0 b0 e7 97 05 	add    r8,0x597e7b0
  32a32f:	89 15 1b a4 0c 00    	mov    DWORD PTR [rip+0xca41b],edx        # 0x3f4750
  32a335:	4c 89 05 0c a4 0c 00 	mov    QWORD PTR [rip+0xca40c],r8        # 0x3f4748
  32a33c:	eb 07                	jmp    0x32a345
  32a33e:	4c 8b 05 03 a4 0c 00 	mov    r8,QWORD PTR [rip+0xca403]        # 0x3f4748
  32a345:	f6 c2 02             	test   dl,0x2
  32a348:	75 1f                	jne    0x32a369
  32a34a:	48 8b 0d 0f bb 0a 00 	mov    rcx,QWORD PTR [rip+0xabb0f]        # 0x3d5e60
  32a351:	83 ca 02             	or     edx,0x2
  32a354:	89 15 f6 a3 0c 00    	mov    DWORD PTR [rip+0xca3f6],edx        # 0x3f4750
  32a35a:	45 33 c9             	xor    r9d,r9d
  32a35d:	48 8d 15 fc a3 0c 00 	lea    rdx,[rip+0xca3fc]        # 0x3f4760
  32a364:	e8 bb 19 fa ff       	call   0x2cbd24
  32a369:	48 8b 0d f0 ba 0a 00 	mov    rcx,QWORD PTR [rip+0xabaf0]        # 0x3d5e60
  32a370:	48 8d 15 e9 a3 0c 00 	lea    rdx,[rip+0xca3e9]        # 0x3f4760
  32a377:	4d 8b c7             	mov    r8,r15
  32a37a:	e8 7d 16 fa ff       	call   0x2cb9fc
  32a37f:	48 8b c8             	mov    rcx,rax
  32a382:	48 8b d0             	mov    rdx,rax
  32a385:	e8 7e 0b fa ff       	call   0x2caf08
  32a38a:	84 c0                	test   al,al
  32a38c:	74 17                	je     0x32a3a5
  32a38e:	48 8b ca             	mov    rcx,rdx
  32a391:	e8 be b6 fb ff       	call   0x2e5a54
  32a396:	48 8b c8             	mov    rcx,rax
  32a399:	48 8b d0             	mov    rdx,rax
  32a39c:	e8 67 0b fa ff       	call   0x2caf08
  32a3a1:	84 c0                	test   al,al
  32a3a3:	75 3b                	jne    0x32a3e0
  32a3a5:	4c 8b 7d 5f          	mov    r15,QWORD PTR [rbp+0x5f]
  32a3a9:	ff c6                	inc    esi
  32a3ab:	41 3b f4             	cmp    esi,r12d
  32a3ae:	0f 8c 1d fe ff ff    	jl     0x32a1d1
  32a3b4:	f2 0f 11 3f          	movsd  QWORD PTR [rdi],xmm7
  32a3b8:	89 5f 08             	mov    DWORD PTR [rdi+0x8],ebx
  32a3bb:	4c 8d 9c 24 f8 00 00 00 	lea    r11,[rsp+0xf8]
  32a3c3:	48 8b c7             	mov    rax,rdi
  32a3c6:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  32a3cb:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  32a3d0:	49 8b e3             	mov    rsp,r11
  32a3d3:	41 5f                	pop    r15
  32a3d5:	41 5e                	pop    r14
  32a3d7:	41 5d                	pop    r13
  32a3d9:	41 5c                	pop    r12
  32a3db:	5f                   	pop    rdi
  32a3dc:	5e                   	pop    rsi
  32a3dd:	5b                   	pop    rbx
  32a3de:	5d                   	pop    rbp
  32a3df:	c3                   	ret
  32a3e0:	48 8b ca             	mov    rcx,rdx
  32a3e3:	e8 6c bf fa ff       	call   0x2d6354
  32a3e8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32a3ed:	48 8b d8             	mov    rbx,rax
  32a3f0:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  32a3f4:	e8 8b 94 ff ff       	call   0x323884
  32a3f9:	48 8b c8             	mov    rcx,rax
  32a3fc:	e8 cb e1 fa ff       	call   0x2d85cc
  32a401:	48 8b c8             	mov    rcx,rax
  32a404:	48 ba 25 23 22 84 e4 9c f2 cb 	movabs rdx,0xcbf29ce484222325
  32a40e:	e8 39 b7 fb ff       	call   0x2e5b4c
  32a413:	48 3b d8             	cmp    rbx,rax
  32a416:	75 2d                	jne    0x32a445
  32a418:	0f 10 4c 24 60       	movups xmm1,XMMWORD PTR [rsp+0x60]
  32a41d:	66 0f 6e c6          	movd   xmm0,esi
  32a421:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  32a424:	f3 0f 59 05 b0 36 f6 ff 	mulss  xmm0,DWORD PTR [rip+0xfffffffffff636b0]        # 0x28dadc
  32a42c:	f3 41 0f 11 45 00    	movss  DWORD PTR [r13+0x0],xmm0
  32a432:	f2 0f 11 0f          	movsd  QWORD PTR [rdi],xmm1
  32a436:	66 0f 73 d9 08       	psrldq xmm1,0x8
  32a43b:	66 0f 7e 4f 08       	movd   DWORD PTR [rdi+0x8],xmm1
  32a440:	e9 76 ff ff ff       	jmp    0x32a3bb
  32a445:	48 8b cf             	mov    rcx,rdi
  32a448:	e8 6f d7 09 00       	call   0x3c7bbc
  32a44d:	e9 69 ff ff ff       	jmp    0x32a3bb


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000329b50 <.data+0x329b50>:
  329b50:	48 8b c4             	mov    rax,rsp
  329b53:	55                   	push   rbp
  329b54:	53                   	push   rbx
  329b55:	56                   	push   rsi
  329b56:	57                   	push   rdi
  329b57:	41 54                	push   r12
  329b59:	41 55                	push   r13
  329b5b:	41 56                	push   r14
  329b5d:	41 57                	push   r15
  329b5f:	48 8d a8 38 fe ff ff 	lea    rbp,[rax-0x1c8]
  329b66:	48 81 ec 88 02 00 00 	sub    rsp,0x288
  329b6d:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  329b71:	48 8b f1             	mov    rsi,rcx
  329b74:	0f 29 78 98          	movaps XMMWORD PTR [rax-0x68],xmm7
  329b78:	49 8b c9             	mov    rcx,r9
  329b7b:	44 0f 29 40 88       	movaps XMMWORD PTR [rax-0x78],xmm8
  329b80:	49 8b f9             	mov    rdi,r9
  329b83:	44 0f 29 88 78 ff ff ff 	movaps XMMWORD PTR [rax-0x88],xmm9
  329b8b:	4d 8b e8             	mov    r13,r8
  329b8e:	44 0f 29 90 68 ff ff ff 	movaps XMMWORD PTR [rax-0x98],xmm10
  329b96:	48 8b da             	mov    rbx,rdx
  329b99:	44 0f 29 98 58 ff ff ff 	movaps XMMWORD PTR [rax-0xa8],xmm11
  329ba1:	44 0f 29 a0 48 ff ff ff 	movaps XMMWORD PTR [rax-0xb8],xmm12
  329ba9:	44 0f 29 a8 38 ff ff ff 	movaps XMMWORD PTR [rax-0xc8],xmm13
  329bb1:	44 0f 29 b0 28 ff ff ff 	movaps XMMWORD PTR [rax-0xd8],xmm14
  329bb9:	44 0f 29 b8 18 ff ff ff 	movaps XMMWORD PTR [rax-0xe8],xmm15
  329bc1:	e8 92 9f fb ff       	call   0x2e3b58
  329bc6:	84 c0                	test   al,al
  329bc8:	0f 85 ef 03 00 00    	jne    0x329fbd
  329bce:	48 8b 85 f0 01 00 00 	mov    rax,QWORD PTR [rbp+0x1f0]
  329bd5:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  329bd9:	48 8b cf             	mov    rcx,rdi
  329bdc:	f3 0f 10 10          	movss  xmm2,DWORD PTR [rax]
  329be0:	e8 87 5a fb ff       	call   0x2df66c
  329be5:	0f 57 ff             	xorps  xmm7,xmm7
  329be8:	45 0f 57 e4          	xorps  xmm12,xmm12
  329bec:	e8 7b ce fb ff       	call   0x2e6a6c
  329bf1:	f3 44 0f 10 2d 5a 3f f6 ff 	movss  xmm13,DWORD PTR [rip+0xfffffffffff63f5a]        # 0x28db54
  329bfa:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  329bff:	89 85 d0 01 00 00    	mov    DWORD PTR [rbp+0x1d0],eax
  329c05:	e8 b2 df 09 00       	call   0x3c7bbc
  329c0a:	f2 44 0f 10 0e       	movsd  xmm9,QWORD PTR [rsi]
  329c0f:	45 33 e4             	xor    r12d,r12d
  329c12:	8b 7e 08             	mov    edi,DWORD PTR [rsi+0x8]
  329c15:	45 33 ff             	xor    r15d,r15d
  329c18:	f3 0f 10 35 e0 39 f6 ff 	movss  xmm6,DWORD PTR [rip+0xfffffffffff639e0]        # 0x28d600
  329c20:	45 0f 57 c0          	xorps  xmm8,xmm8
  329c24:	f3 44 0f 10 35 b3 45 f6 ff 	movss  xmm14,DWORD PTR [rip+0xfffffffffff645b3]        # 0x28e1e0
  329c2d:	45 8d 74 24 01       	lea    r14d,[r12+0x1]
  329c32:	f2 44 0f 11 4c 24 70 	movsd  QWORD PTR [rsp+0x70],xmm9
  329c39:	89 7c 24 78          	mov    DWORD PTR [rsp+0x78],edi
  329c3d:	45 85 e4             	test   r12d,r12d
  329c40:	75 0b                	jne    0x329c4d
  329c42:	f3 44 0f 10 15 75 45 f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff64575]        # 0x28e1c0
  329c4b:	eb 09                	jmp    0x329c56
  329c4d:	f3 44 0f 10 15 86 3e f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff63e86]        # 0x28dadc
  329c56:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  329c5a:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  329c5e:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  329c61:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  329c65:	41 0f 28 d2          	movaps xmm2,xmm10
  329c69:	f2 0f 11 45 a0       	movsd  QWORD PTR [rbp-0x60],xmm0
  329c6e:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
  329c71:	e8 f6 59 fb ff       	call   0x2df66c
  329c76:	4c 8b c0             	mov    r8,rax
  329c79:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  329c7e:	48 8b ce             	mov    rcx,rsi
  329c81:	e8 82 5a fb ff       	call   0x2df708
  329c86:	4c 8d 45 a0          	lea    r8,[rbp-0x60]
  329c8a:	48 8d 55 5c          	lea    rdx,[rbp+0x5c]
  329c8e:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  329c93:	e8 34 5a fb ff       	call   0x2df6cc
  329c98:	48 8b c8             	mov    rcx,rax
  329c9b:	e8 48 72 fb ff       	call   0x2e0ee8
  329ca0:	f2 0f 10 4c 24 30    	movsd  xmm1,QWORD PTR [rsp+0x30]
  329ca6:	4c 8d 45 b0          	lea    r8,[rbp-0x50]
  329caa:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  329cae:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  329cb2:	f2 0f 11 4d b0       	movsd  QWORD PTR [rbp-0x50],xmm1
  329cb7:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  329cbe:	f2 0f 10 0e          	movsd  xmm1,QWORD PTR [rsi]
  329cc2:	44 0f 28 d8          	movaps xmm11,xmm0
  329cc6:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  329cc9:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  329ccc:	f2 0f 11 4d c0       	movsd  QWORD PTR [rbp-0x40],xmm1
  329cd1:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  329cd4:	e8 c3 55 fb ff       	call   0x2df29c
  329cd9:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  329cdd:	4c 8d 45 d0          	lea    r8,[rbp-0x30]
  329ce1:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  329ce4:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  329ce8:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  329cef:	f2 0f 11 45 d0       	movsd  QWORD PTR [rbp-0x30],xmm0
  329cf4:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
  329cf7:	e8 84 bd fb ff       	call   0x2e5a80
  329cfc:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  329d00:	48 8b cb             	mov    rcx,rbx
  329d03:	e8 28 62 fb ff       	call   0x2dff30
  329d08:	44 0f 28 f8          	movaps xmm15,xmm0
  329d0c:	44 0f 2f fe          	comiss xmm15,xmm6
  329d10:	76 0d                	jbe    0x329d1f
  329d12:	41 ff c7             	inc    r15d
  329d15:	41 83 ff 02          	cmp    r15d,0x2
  329d19:	0f 8d ef 01 00 00    	jge    0x329f0e
  329d1f:	f3 45 0f 58 c3       	addss  xmm8,xmm11
  329d24:	45 85 e4             	test   r12d,r12d
  329d27:	75 05                	jne    0x329d2e
  329d29:	0f 57 c0             	xorps  xmm0,xmm0
  329d2c:	eb 08                	jmp    0x329d36
  329d2e:	f3 0f 10 05 ae 44 f6 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff644ae]        # 0x28e1e4
  329d36:	44 0f 2f c0          	comiss xmm8,xmm0
  329d3a:	0f 82 2a 01 00 00    	jb     0x329e6a
  329d40:	0f 57 c0             	xorps  xmm0,xmm0
  329d43:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  329d47:	0f 11 45 30          	movups XMMWORD PTR [rbp+0x30],xmm0
  329d4b:	0f 11 45 3c          	movups XMMWORD PTR [rbp+0x3c],xmm0
  329d4f:	0f 11 45 20          	movups XMMWORD PTR [rbp+0x20],xmm0
  329d53:	e8 ac b1 fb ff       	call   0x2e4f04
  329d58:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  329d5d:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  329d62:	e8 c9 61 fb ff       	call   0x2dff30
  329d67:	4c 8d 44 24 70       	lea    r8,[rsp+0x70]
  329d6c:	0f 28 f0             	movaps xmm6,xmm0
  329d6f:	48 8d 55 68          	lea    rdx,[rbp+0x68]
  329d73:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  329d78:	e8 4f 59 fb ff       	call   0x2df6cc
  329d7d:	44 8b 8d d0 01 00 00 	mov    r9d,DWORD PTR [rbp+0x1d0]
  329d84:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  329d88:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [rsp+0x28],0x0
  329d90:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  329d94:	0f 28 d6             	movaps xmm2,xmm6
  329d97:	f2 44 0f 11 4d f0    	movsd  QWORD PTR [rbp-0x10],xmm9
  329d9d:	f2 0f 10 08          	movsd  xmm1,QWORD PTR [rax]
  329da1:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  329da4:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  329da7:	48 8d 45 20          	lea    rax,[rbp+0x20]
  329dab:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  329db0:	f2 0f 11 4d e0       	movsd  QWORD PTR [rbp-0x20],xmm1
  329db5:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
  329db8:	e8 ef f1 fb ff       	call   0x2e8fac
  329dbd:	84 c0                	test   al,al
  329dbf:	0f 85 f8 01 00 00    	jne    0x329fbd
  329dc5:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  329dcb:	4c 8d 45 00          	lea    r8,[rbp+0x0]
  329dcf:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  329dd3:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  329dd8:	48 8d 8d c0 00 00 00 	lea    rcx,[rbp+0xc0]
  329ddf:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  329de4:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  329de7:	f2 44 0f 11 4c 24 40 	movsd  QWORD PTR [rsp+0x40],xmm9
  329dee:	89 7c 24 48          	mov    DWORD PTR [rsp+0x48],edi
  329df2:	e8 a5 54 fb ff       	call   0x2df29c
  329df7:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  329dfb:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
  329e00:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  329e03:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  329e07:	48 8d 8d c0 00 00 00 	lea    rcx,[rbp+0xc0]
  329e0e:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  329e14:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  329e18:	e8 63 bc fb ff       	call   0x2e5a80
  329e1d:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  329e21:	48 8b cb             	mov    rcx,rbx
  329e24:	e8 07 61 fb ff       	call   0x2dff30
  329e29:	44 0f 2f e8          	comiss xmm13,xmm0
  329e2d:	76 1b                	jbe    0x329e4a
  329e2f:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
  329e32:	44 0f 28 e8          	movaps xmm13,xmm0
  329e36:	f2 0f 10 45 90       	movsd  xmm0,QWORD PTR [rbp-0x70]
  329e3b:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  329e41:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  329e45:	e9 b6 00 00 00       	jmp    0x329f00
  329e4a:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  329e50:	45 0f 57 c0          	xorps  xmm8,xmm8
  329e54:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  329e58:	44 0f 28 c8          	movaps xmm9,xmm0
  329e5c:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  329e62:	8b f8                	mov    edi,eax
  329e64:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  329e68:	eb 0a                	jmp    0x329e74
  329e6a:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  329e6e:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  329e74:	f2 0f 11 06          	movsd  QWORD PTR [rsi],xmm0
  329e78:	48 8d 4d 74          	lea    rcx,[rbp+0x74]
  329e7c:	89 46 08             	mov    DWORD PTR [rsi+0x8],eax
  329e7f:	0f 57 db             	xorps  xmm3,xmm3
  329e82:	48 8b 85 f0 01 00 00 	mov    rax,QWORD PTR [rbp+0x1f0]
  329e89:	0f 57 c9             	xorps  xmm1,xmm1
  329e8c:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [rax+0x8]
  329e91:	f3 0f 59 15 53 43 f6 ff 	mulss  xmm2,DWORD PTR [rip+0xfffffffffff64353]        # 0x28e1ec
  329e99:	e8 0a dd 09 00       	call   0x3c7ba8
  329e9e:	48 8b c8             	mov    rcx,rax
  329ea1:	48 8d 95 80 00 00 00 	lea    rdx,[rbp+0x80]
  329ea8:	41 0f 28 d2          	movaps xmm2,xmm10
  329eac:	e8 bb 57 fb ff       	call   0x2df66c
  329eb1:	48 8b d0             	mov    rdx,rax
  329eb4:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  329eb8:	e8 0b dd 09 00       	call   0x3c7bc8
  329ebd:	48 8b 85 f0 01 00 00 	mov    rax,QWORD PTR [rbp+0x1f0]
  329ec4:	48 8d 95 8c 00 00 00 	lea    rdx,[rbp+0x8c]
  329ecb:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  329ecf:	f3 0f 10 50 04       	movss  xmm2,DWORD PTR [rax+0x4]
  329ed4:	e8 93 57 fb ff       	call   0x2df66c
  329ed9:	48 8b c8             	mov    rcx,rax
  329edc:	48 8d 95 98 00 00 00 	lea    rdx,[rbp+0x98]
  329ee3:	41 0f 28 d2          	movaps xmm2,xmm10
  329ee7:	e8 80 57 fb ff       	call   0x2df66c
  329eec:	48 8b d0             	mov    rdx,rax
  329eef:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  329ef3:	e8 00 dd 09 00       	call   0x3c7bf8
  329ef8:	45 03 e6             	add    r12d,r14d
  329efb:	f3 45 0f 58 e2       	addss  xmm12,xmm10
  329f00:	45 0f 2f f4          	comiss xmm14,xmm12
  329f04:	41 0f 28 f7          	movaps xmm6,xmm15
  329f08:	0f 87 2f fd ff ff    	ja     0x329c3d
  329f0e:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  329f13:	e8 40 9c fb ff       	call   0x2e3b58
  329f18:	84 c0                	test   al,al
  329f1a:	0f 85 9d 00 00 00    	jne    0x329fbd
  329f20:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  329f24:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  329f27:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  329f2d:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  329f33:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  329f37:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  329f3b:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  329f41:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  329f45:	e8 22 cb fb ff       	call   0x2e6a6c
  329f4a:	44 8b c0             	mov    r8d,eax
  329f4d:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  329f53:	0f 57 db             	xorps  xmm3,xmm3
  329f56:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  329f5b:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  329f60:	e8 bb 83 fb ff       	call   0x2e2320
  329f65:	84 c0                	test   al,al
  329f67:	74 4c                	je     0x329fb5
  329f69:	f2 41 0f 10 45 00    	movsd  xmm0,QWORD PTR [r13+0x0]
  329f6f:	41 8b 45 08          	mov    eax,DWORD PTR [r13+0x8]
  329f73:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  329f79:	f2 0f 10 44 24 60    	movsd  xmm0,QWORD PTR [rsp+0x60]
  329f7f:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  329f83:	8b 44 24 68          	mov    eax,DWORD PTR [rsp+0x68]
  329f87:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  329f8d:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  329f91:	e8 d6 ca fb ff       	call   0x2e6a6c
  329f96:	44 8b c0             	mov    r8d,eax
  329f99:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  329f9f:	0f 57 db             	xorps  xmm3,xmm3
  329fa2:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  329fa7:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  329fac:	e8 6f 83 fb ff       	call   0x2e2320
  329fb1:	84 c0                	test   al,al
  329fb3:	75 03                	jne    0x329fb8
  329fb5:	45 32 f6             	xor    r14b,r14b
  329fb8:	41 8a c6             	mov    al,r14b
  329fbb:	eb 02                	jmp    0x329fbf
  329fbd:	32 c0                	xor    al,al
  329fbf:	4c 8d 9c 24 88 02 00 00 	lea    r11,[rsp+0x288]
  329fc7:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  329fcc:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  329fd1:	45 0f 28 43 c8       	movaps xmm8,XMMWORD PTR [r11-0x38]
  329fd6:	45 0f 28 4b b8       	movaps xmm9,XMMWORD PTR [r11-0x48]
  329fdb:	45 0f 28 53 a8       	movaps xmm10,XMMWORD PTR [r11-0x58]
  329fe0:	45 0f 28 5b 98       	movaps xmm11,XMMWORD PTR [r11-0x68]
  329fe5:	45 0f 28 63 88       	movaps xmm12,XMMWORD PTR [r11-0x78]
  329fea:	45 0f 28 ab 78 ff ff ff 	movaps xmm13,XMMWORD PTR [r11-0x88]
  329ff2:	45 0f 28 b3 68 ff ff ff 	movaps xmm14,XMMWORD PTR [r11-0x98]
  329ffa:	45 0f 28 bb 58 ff ff ff 	movaps xmm15,XMMWORD PTR [r11-0xa8]
  32a002:	49 8b e3             	mov    rsp,r11
  32a005:	41 5f                	pop    r15
  32a007:	41 5e                	pop    r14
  32a009:	41 5d                	pop    r13
  32a00b:	41 5c                	pop    r12
  32a00d:	5f                   	pop    rdi
  32a00e:	5e                   	pop    rsi
  32a00f:	5b                   	pop    rbx
  32a010:	5d                   	pop    rbp
  32a011:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032a4f0 <.data+0x32a4f0>:
  32a4f0:	48 8b c4             	mov    rax,rsp
  32a4f3:	55                   	push   rbp
  32a4f4:	53                   	push   rbx
  32a4f5:	56                   	push   rsi
  32a4f6:	57                   	push   rdi
  32a4f7:	41 56                	push   r14
  32a4f9:	48 8d a8 28 ff ff ff 	lea    rbp,[rax-0xd8]
  32a500:	48 81 ec b0 01 00 00 	sub    rsp,0x1b0
  32a507:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  32a50b:	48 8b d9             	mov    rbx,rcx
  32a50e:	44 0f 29 40 b8       	movaps XMMWORD PTR [rax-0x48],xmm8
  32a513:	49 8b c8             	mov    rcx,r8
  32a516:	44 0f 29 48 a8       	movaps XMMWORD PTR [rax-0x58],xmm9
  32a51b:	49 8b f9             	mov    rdi,r9
  32a51e:	44 0f 29 50 98       	movaps XMMWORD PTR [rax-0x68],xmm10
  32a523:	49 8b f0             	mov    rsi,r8
  32a526:	44 0f 29 58 88       	movaps XMMWORD PTR [rax-0x78],xmm11
  32a52b:	e8 28 96 fb ff       	call   0x2e3b58
  32a530:	84 c0                	test   al,al
  32a532:	0f 85 06 02 00 00    	jne    0x32a73e
  32a538:	f3 0f 10 17          	movss  xmm2,DWORD PTR [rdi]
  32a53c:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  32a541:	f2 44 0f 10 0b       	movsd  xmm9,QWORD PTR [rbx]
  32a546:	48 8b ce             	mov    rcx,rsi
  32a549:	44 8b 73 08          	mov    r14d,DWORD PTR [rbx+0x8]
  32a54d:	e8 1a 51 fb ff       	call   0x2df66c
  32a552:	f3 0f 10 57 08       	movss  xmm2,DWORD PTR [rdi+0x8]
  32a557:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32a55b:	f3 0f 59 15 89 3c f6 ff 	mulss  xmm2,DWORD PTR [rip+0xfffffffffff63c89]        # 0x28e1ec
  32a563:	0f 57 db             	xorps  xmm3,xmm3
  32a566:	0f 57 c9             	xorps  xmm1,xmm1
  32a569:	0f 57 f6             	xorps  xmm6,xmm6
  32a56c:	45 0f 57 c0          	xorps  xmm8,xmm8
  32a570:	e8 33 d6 09 00       	call   0x3c7ba8
  32a575:	f3 44 0f 10 57 04    	movss  xmm10,DWORD PTR [rdi+0x4]
  32a57b:	48 8b bd 00 01 00 00 	mov    rdi,QWORD PTR [rbp+0x100]
  32a582:	f3 44 0f 10 1d 55 3c f6 ff 	movss  xmm11,DWORD PTR [rip+0xfffffffffff63c55]        # 0x28e1e0
  32a58b:	f3 0f 10 15 49 35 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff63549]        # 0x28dadc
  32a593:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  32a597:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32a59c:	e8 cb 50 fb ff       	call   0x2df66c
  32a5a1:	4c 8b c0             	mov    r8,rax
  32a5a4:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  32a5a9:	48 8b cb             	mov    rcx,rbx
  32a5ac:	e8 57 51 fb ff       	call   0x2df708
  32a5b1:	0f 57 c0             	xorps  xmm0,xmm0
  32a5b4:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  32a5b8:	0f 11 45 f0          	movups XMMWORD PTR [rbp-0x10],xmm0
  32a5bc:	0f 11 45 fc          	movups XMMWORD PTR [rbp-0x4],xmm0
  32a5c0:	0f 11 45 e0          	movups XMMWORD PTR [rbp-0x20],xmm0
  32a5c4:	e8 3b a9 fb ff       	call   0x2e4f04
  32a5c9:	f2 0f 10 44 24 40    	movsd  xmm0,QWORD PTR [rsp+0x40]
  32a5cf:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
  32a5d4:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  32a5d8:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  32a5dd:	f2 0f 11 44 24 60    	movsd  QWORD PTR [rsp+0x60],xmm0
  32a5e3:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  32a5e7:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  32a5eb:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  32a5ef:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  32a5f2:	f2 0f 11 44 24 70    	movsd  QWORD PTR [rsp+0x70],xmm0
  32a5f8:	89 44 24 78          	mov    DWORD PTR [rsp+0x78],eax
  32a5fc:	e8 9b 4c fb ff       	call   0x2df29c
  32a601:	f2 0f 10 07          	movsd  xmm0,QWORD PTR [rdi]
  32a605:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  32a609:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
  32a60c:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32a611:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  32a615:	f2 0f 11 45 80       	movsd  QWORD PTR [rbp-0x80],xmm0
  32a61a:	89 45 88             	mov    DWORD PTR [rbp-0x78],eax
  32a61d:	e8 5e b4 fb ff       	call   0x2e5a80
  32a622:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32a627:	48 8b cf             	mov    rcx,rdi
  32a62a:	e8 01 59 fb ff       	call   0x2dff30
  32a62f:	f3 0f 10 0d a1 97 0c 00 	movss  xmm1,DWORD PTR [rip+0xc97a1]        # 0x3f3dd8
  32a637:	0f 2f c8             	comiss xmm1,xmm0
  32a63a:	0f 82 85 00 00 00    	jb     0x32a6c5
  32a640:	f2 0f 10 07          	movsd  xmm0,QWORD PTR [rdi]
  32a644:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
  32a647:	f2 0f 11 45 90       	movsd  QWORD PTR [rbp-0x70],xmm0
  32a64c:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  32a652:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
  32a655:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  32a659:	f2 0f 11 45 a0       	movsd  QWORD PTR [rbp-0x60],xmm0
  32a65e:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
  32a661:	e8 06 c4 fb ff       	call   0x2e6a6c
  32a666:	44 8b c0             	mov    r8d,eax
  32a669:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  32a66f:	0f 57 db             	xorps  xmm3,xmm3
  32a672:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  32a676:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  32a67a:	e8 a1 7c fb ff       	call   0x2e2320
  32a67f:	84 c0                	test   al,al
  32a681:	74 42                	je     0x32a6c5
  32a683:	f2 0f 10 44 24 30    	movsd  xmm0,QWORD PTR [rsp+0x30]
  32a689:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  32a68d:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
  32a692:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  32a695:	f2 44 0f 11 4d c0    	movsd  QWORD PTR [rbp-0x40],xmm9
  32a69b:	44 89 75 c8          	mov    DWORD PTR [rbp-0x38],r14d
  32a69f:	e8 c8 c3 fb ff       	call   0x2e6a6c
  32a6a4:	44 8b c0             	mov    r8d,eax
  32a6a7:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  32a6ad:	0f 57 db             	xorps  xmm3,xmm3
  32a6b0:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  32a6b4:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  32a6b8:	e8 63 7c fb ff       	call   0x2e2320
  32a6bd:	84 c0                	test   al,al
  32a6bf:	0f 85 a6 00 00 00    	jne    0x32a76b
  32a6c5:	f2 0f 10 44 24 40    	movsd  xmm0,QWORD PTR [rsp+0x40]
  32a6cb:	48 8d 55 1c          	lea    rdx,[rbp+0x1c]
  32a6cf:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  32a6d3:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  32a6d7:	f3 0f 10 15 fd 33 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff633fd]        # 0x28dadc
  32a6df:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  32a6e3:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  32a6e6:	e8 81 4f fb ff       	call   0x2df66c
  32a6eb:	48 8b d0             	mov    rdx,rax
  32a6ee:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32a6f3:	e8 d0 d4 09 00       	call   0x3c7bc8
  32a6f8:	41 0f 28 d2          	movaps xmm2,xmm10
  32a6fc:	48 8d 55 28          	lea    rdx,[rbp+0x28]
  32a700:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32a705:	e8 62 4f fb ff       	call   0x2df66c
  32a70a:	f3 0f 10 15 ca 33 f6 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff633ca]        # 0x28dadc
  32a712:	48 8d 55 34          	lea    rdx,[rbp+0x34]
  32a716:	48 8b c8             	mov    rcx,rax
  32a719:	e8 4e 4f fb ff       	call   0x2df66c
  32a71e:	48 8b d0             	mov    rdx,rax
  32a721:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  32a726:	e8 cd d4 09 00       	call   0x3c7bf8
  32a72b:	f3 44 0f 58 05 a8 33 f6 ff 	addss  xmm8,DWORD PTR [rip+0xfffffffffff633a8]        # 0x28dadc
  32a734:	45 0f 2f d8          	comiss xmm11,xmm8
  32a738:	0f 87 4d fe ff ff    	ja     0x32a58b
  32a73e:	32 c0                	xor    al,al
  32a740:	4c 8d 9c 24 b0 01 00 00 	lea    r11,[rsp+0x1b0]
  32a748:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  32a74d:	45 0f 28 43 e0       	movaps xmm8,XMMWORD PTR [r11-0x20]
  32a752:	45 0f 28 4b d0       	movaps xmm9,XMMWORD PTR [r11-0x30]
  32a757:	45 0f 28 53 c0       	movaps xmm10,XMMWORD PTR [r11-0x40]
  32a75c:	45 0f 28 5b b0       	movaps xmm11,XMMWORD PTR [r11-0x50]
  32a761:	49 8b e3             	mov    rsp,r11
  32a764:	41 5e                	pop    r14
  32a766:	5f                   	pop    rdi
  32a767:	5e                   	pop    rsi
  32a768:	5b                   	pop    rbx
  32a769:	5d                   	pop    rbp
  32a76a:	c3                   	ret
  32a76b:	b0 01                	mov    al,0x1
  32a76d:	eb d1                	jmp    0x32a740


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000329754 <.data+0x329754>:
  329754:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  329759:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  32975e:	57                   	push   rdi
  32975f:	48 83 ec 20          	sub    rsp,0x20
  329763:	41 8a f0             	mov    sil,r8b
  329766:	40 8a fa             	mov    dil,dl
  329769:	48 8b d9             	mov    rbx,rcx
  32976c:	e8 d3 cf fb ff       	call   0x2e6744
  329771:	84 c0                	test   al,al
  329773:	74 09                	je     0x32977e
  329775:	40 84 f6             	test   sil,sil
  329778:	74 04                	je     0x32977e
  32977a:	32 c0                	xor    al,al
  32977c:	eb 60                	jmp    0x3297de
  32977e:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  329780:	33 d2                	xor    edx,edx
  329782:	e8 c5 c6 fb ff       	call   0x2e5e4c
  329787:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
  32978a:	b9 01 00 00 00       	mov    ecx,0x1
  32978f:	83 fa 02             	cmp    edx,0x2
  329792:	75 05                	jne    0x329799
  329794:	40 84 ff             	test   dil,dil
  329797:	75 22                	jne    0x3297bb
  329799:	84 c0                	test   al,al
  32979b:	74 23                	je     0x3297c0
  32979d:	40 84 ff             	test   dil,dil
  3297a0:	74 1e                	je     0x3297c0
  3297a2:	3b d1                	cmp    edx,ecx
  3297a4:	75 15                	jne    0x3297bb
  3297a6:	80 7b 08 00          	cmp    BYTE PTR [rbx+0x8],0x0
  3297aa:	75 28                	jne    0x3297d4
  3297ac:	80 7b 09 00          	cmp    BYTE PTR [rbx+0x9],0x0
  3297b0:	88 4b 08             	mov    BYTE PTR [rbx+0x8],cl
  3297b3:	0f 94 c0             	sete   al
  3297b6:	88 43 09             	mov    BYTE PTR [rbx+0x9],al
  3297b9:	eb 21                	jmp    0x3297dc
  3297bb:	88 4b 09             	mov    BYTE PTR [rbx+0x9],cl
  3297be:	eb 1c                	jmp    0x3297dc
  3297c0:	85 d2                	test   edx,edx
  3297c2:	75 03                	jne    0x3297c7
  3297c4:	88 53 09             	mov    BYTE PTR [rbx+0x9],dl
  3297c7:	40 84 ff             	test   dil,dil
  3297ca:	75 04                	jne    0x3297d0
  3297cc:	40 88 7b 09          	mov    BYTE PTR [rbx+0x9],dil
  3297d0:	c6 43 08 00          	mov    BYTE PTR [rbx+0x8],0x0
  3297d4:	80 7b 09 00          	cmp    BYTE PTR [rbx+0x9],0x0
  3297d8:	75 02                	jne    0x3297dc
  3297da:	32 c9                	xor    cl,cl
  3297dc:	8a c1                	mov    al,cl
  3297de:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3297e3:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  3297e8:	48 83 c4 20          	add    rsp,0x20
  3297ec:	5f                   	pop    rdi
  3297ed:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000324904 <.data+0x324904>:
  324904:	40 55                	rex push rbp
  324906:	53                   	push   rbx
  324907:	56                   	push   rsi
  324908:	57                   	push   rdi
  324909:	41 54                	push   r12
  32490b:	41 56                	push   r14
  32490d:	41 57                	push   r15
  32490f:	48 8d 6c 24 d9       	lea    rbp,[rsp-0x27]
  324914:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  32491b:	48 8b 05 de 25 0b 00 	mov    rax,QWORD PTR [rip+0xb25de]        # 0x3d6f00
  324922:	48 8b 90 98 c0 1f 0f 	mov    rdx,QWORD PTR [rax+0xf1fc098]
  324929:	48 8b ca             	mov    rcx,rdx
  32492c:	e8 d7 65 fa ff       	call   0x2caf08
  324931:	84 c0                	test   al,al
  324933:	0f 84 e5 01 00 00    	je     0x324b1e
  324939:	4c 8b 82 b8 00 00 00 	mov    r8,QWORD PTR [rdx+0xb8]
  324940:	49 8b c8             	mov    rcx,r8
  324943:	e8 c0 65 fa ff       	call   0x2caf08
  324948:	84 c0                	test   al,al
  32494a:	0f 84 ce 01 00 00    	je     0x324b1e
  324950:	4d 8b 78 20          	mov    r15,QWORD PTR [r8+0x20]
  324954:	49 8b cf             	mov    rcx,r15
  324957:	e8 ac 65 fa ff       	call   0x2caf08
  32495c:	84 c0                	test   al,al
  32495e:	0f 84 ba 01 00 00    	je     0x324b1e
  324964:	4d 8b 7f 30          	mov    r15,QWORD PTR [r15+0x30]
  324968:	49 8b cf             	mov    rcx,r15
  32496b:	e8 98 65 fa ff       	call   0x2caf08
  324970:	84 c0                	test   al,al
  324972:	0f 84 a6 01 00 00    	je     0x324b1e
  324978:	45 8b 67 18          	mov    r12d,DWORD PTR [r15+0x18]
  32497c:	45 33 f6             	xor    r14d,r14d
  32497f:	45 85 e4             	test   r12d,r12d
  324982:	0f 8e 96 01 00 00    	jle    0x324b1e
  324988:	49 8b 57 10          	mov    rdx,QWORD PTR [r15+0x10]
  32498c:	48 8b ca             	mov    rcx,rdx
  32498f:	e8 74 65 fa ff       	call   0x2caf08
  324994:	84 c0                	test   al,al
  324996:	0f 84 76 01 00 00    	je     0x324b12
  32499c:	42 8d 04 f5 00 00 00 00 	lea    eax,[r14*8+0x0]
  3249a4:	48 63 c8             	movsxd rcx,eax
  3249a7:	48 8b 54 0a 20       	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  3249ac:	48 8b ca             	mov    rcx,rdx
  3249af:	e8 54 65 fa ff       	call   0x2caf08
  3249b4:	84 c0                	test   al,al
  3249b6:	0f 84 56 01 00 00    	je     0x324b12
  3249bc:	48 83 3d 7c f8 0b 00 00 	cmp    QWORD PTR [rip+0xbf87c],0x0        # 0x3e4240
  3249c4:	0f 84 48 01 00 00    	je     0x324b12
  3249ca:	8b 52 58             	mov    edx,DWORD PTR [rdx+0x58]
  3249cd:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  3249d1:	e8 3a 4b fb ff       	call   0x2d9510
  3249d6:	48 8d 55 d1          	lea    rdx,[rbp-0x2f]
  3249da:	48 8b d8             	mov    rbx,rax
  3249dd:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3249e1:	e8 5e ef ff ff       	call   0x323944
  3249e6:	48 8b c8             	mov    rcx,rax
  3249e9:	e8 8e 3b fb ff       	call   0x2d857c
  3249ee:	48 8b d0             	mov    rdx,rax
  3249f1:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  3249f5:	4c 8b c3             	mov    r8,rbx
  3249f8:	e8 df 5c fc ff       	call   0x2ea6dc
  3249fd:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  324a01:	e8 ee 7a fa ff       	call   0x2cc4f4
  324a06:	8b 05 34 fe 0c 00    	mov    eax,DWORD PTR [rip+0xcfe34]        # 0x3f4840
  324a0c:	a8 01                	test   al,0x1
  324a0e:	0f 85 9d 00 00 00    	jne    0x324ab1
  324a14:	83 c8 01             	or     eax,0x1
  324a17:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  324a1b:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  324a1f:	89 05 1b fe 0c 00    	mov    DWORD PTR [rip+0xcfe1b],eax        # 0x3f4840
  324a25:	e8 06 7d fa ff       	call   0x2cc730
  324a2a:	48 8b c8             	mov    rcx,rax
  324a2d:	e8 72 92 fa ff       	call   0x2cdca4
  324a32:	48 8d 55 c7          	lea    rdx,[rbp-0x39]
  324a36:	48 8b f0             	mov    rsi,rax
  324a39:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  324a3d:	e8 9e f3 ff ff       	call   0x323de0
  324a42:	48 8b c8             	mov    rcx,rax
  324a45:	e8 d2 92 fa ff       	call   0x2cdd1c
  324a4a:	48 8d 55 77          	lea    rdx,[rbp+0x77]
  324a4e:	48 8b f8             	mov    rdi,rax
  324a51:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  324a55:	e8 d6 7c fa ff       	call   0x2cc730
  324a5a:	48 8b c8             	mov    rcx,rax
  324a5d:	e8 42 92 fa ff       	call   0x2cdca4
  324a62:	48 8d 55 d1          	lea    rdx,[rbp-0x2f]
  324a66:	48 8b d8             	mov    rbx,rax
  324a69:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  324a6d:	e8 02 f1 ff ff       	call   0x323b74
  324a72:	48 8b c8             	mov    rcx,rax
  324a75:	e8 02 3b fb ff       	call   0x2d857c
  324a7a:	48 8b c8             	mov    rcx,rax
  324a7d:	48 8b d3             	mov    rdx,rbx
  324a80:	e8 9f f7 00 00       	call   0x334224
  324a85:	48 8b c8             	mov    rcx,rax
  324a88:	c7 44 24 20 ff ff ff ff 	mov    DWORD PTR [rsp+0x20],0xffffffff
  324a90:	4c 8b ce             	mov    r9,rsi
  324a93:	41 83 c8 ff          	or     r8d,0xffffffff
  324a97:	48 8b d7             	mov    rdx,rdi
  324a9a:	e8 0d ff 00 00       	call   0x3349ac
  324a9f:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  324aa2:	8b 05 98 fd 0c 00    	mov    eax,DWORD PTR [rip+0xcfd98]        # 0x3f4840
  324aa8:	4c 89 05 89 fd 0c 00 	mov    QWORD PTR [rip+0xcfd89],r8        # 0x3f4838
  324aaf:	eb 07                	jmp    0x324ab8
  324ab1:	4c 8b 05 80 fd 0c 00 	mov    r8,QWORD PTR [rip+0xcfd80]        # 0x3f4838
  324ab8:	a8 02                	test   al,0x2
  324aba:	75 1f                	jne    0x324adb
  324abc:	48 8b 0d 9d 13 0b 00 	mov    rcx,QWORD PTR [rip+0xb139d]        # 0x3d5e60
  324ac3:	48 8d 15 86 fd 0c 00 	lea    rdx,[rip+0xcfd86]        # 0x3f4850
  324aca:	83 c8 02             	or     eax,0x2
  324acd:	45 33 c9             	xor    r9d,r9d
  324ad0:	89 05 6a fd 0c 00    	mov    DWORD PTR [rip+0xcfd6a],eax        # 0x3f4840
  324ad6:	e8 49 72 fa ff       	call   0x2cbd24
  324adb:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  324adf:	e8 08 8d fa ff       	call   0x2cd7ec
  324ae4:	48 8b c8             	mov    rcx,rax
  324ae7:	e8 f0 9a fa ff       	call   0x2ce5dc
  324aec:	4c 8b 05 4d f7 0b 00 	mov    r8,QWORD PTR [rip+0xbf74d]        # 0x3e4240
  324af3:	48 8d 15 56 fd 0c 00 	lea    rdx,[rip+0xcfd56]        # 0x3f4850
  324afa:	48 8b 0d 5f 13 0b 00 	mov    rcx,QWORD PTR [rip+0xb135f]        # 0x3d5e60
  324b01:	4c 8b c8             	mov    r9,rax
  324b04:	e8 8b d5 fa ff       	call   0x2d2094
  324b09:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  324b0d:	e8 e2 79 fa ff       	call   0x2cc4f4
  324b12:	41 ff c6             	inc    r14d
  324b15:	45 3b f4             	cmp    r14d,r12d
  324b18:	0f 8c 6a fe ff ff    	jl     0x324988
  324b1e:	48 81 c4 90 00 00 00 	add    rsp,0x90
  324b25:	41 5f                	pop    r15
  324b27:	41 5e                	pop    r14
  324b29:	41 5c                	pop    r12
  324b2b:	5f                   	pop    rdi
  324b2c:	5e                   	pop    rsi
  324b2d:	5b                   	pop    rbx
  324b2e:	5d                   	pop    rbp
  324b2f:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000329328 <.data+0x329328>:
  329328:	40 55                	rex push rbp
  32932a:	53                   	push   rbx
  32932b:	56                   	push   rsi
  32932c:	57                   	push   rdi
  32932d:	41 54                	push   r12
  32932f:	41 56                	push   r14
  329331:	41 57                	push   r15
  329333:	48 8d 6c 24 d9       	lea    rbp,[rsp-0x27]
  329338:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  32933f:	f3 0f 10 0d a9 9d f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff69da9]        # 0x2930f0
  329347:	48 8d 0d da b5 0c 00 	lea    rcx,[rip+0xcb5da]        # 0x3f4928
  32934e:	e8 29 c8 fb ff       	call   0x2e5b7c
  329353:	84 c0                	test   al,al
  329355:	0f 84 0e 02 00 00    	je     0x329569
  32935b:	48 8b 05 9e db 0a 00 	mov    rax,QWORD PTR [rip+0xadb9e]        # 0x3d6f00
  329362:	48 8b 90 98 c0 1f 0f 	mov    rdx,QWORD PTR [rax+0xf1fc098]
  329369:	48 8b ca             	mov    rcx,rdx
  32936c:	e8 97 1b fa ff       	call   0x2caf08
  329371:	84 c0                	test   al,al
  329373:	0f 84 f0 01 00 00    	je     0x329569
  329379:	4c 8b 82 b8 00 00 00 	mov    r8,QWORD PTR [rdx+0xb8]
  329380:	49 8b c8             	mov    rcx,r8
  329383:	e8 80 1b fa ff       	call   0x2caf08
  329388:	84 c0                	test   al,al
  32938a:	0f 84 d9 01 00 00    	je     0x329569
  329390:	4d 8b 78 20          	mov    r15,QWORD PTR [r8+0x20]
  329394:	49 8b cf             	mov    rcx,r15
  329397:	e8 6c 1b fa ff       	call   0x2caf08
  32939c:	84 c0                	test   al,al
  32939e:	0f 84 c5 01 00 00    	je     0x329569
  3293a4:	4d 8b 7f 30          	mov    r15,QWORD PTR [r15+0x30]
  3293a8:	49 8b cf             	mov    rcx,r15
  3293ab:	e8 58 1b fa ff       	call   0x2caf08
  3293b0:	84 c0                	test   al,al
  3293b2:	0f 84 b1 01 00 00    	je     0x329569
  3293b8:	45 8b 67 18          	mov    r12d,DWORD PTR [r15+0x18]
  3293bc:	45 33 f6             	xor    r14d,r14d
  3293bf:	45 85 e4             	test   r12d,r12d
  3293c2:	0f 8e a1 01 00 00    	jle    0x329569
  3293c8:	49 8b 57 10          	mov    rdx,QWORD PTR [r15+0x10]
  3293cc:	48 8b ca             	mov    rcx,rdx
  3293cf:	e8 34 1b fa ff       	call   0x2caf08
  3293d4:	84 c0                	test   al,al
  3293d6:	0f 84 81 01 00 00    	je     0x32955d
  3293dc:	42 8d 04 f5 00 00 00 00 	lea    eax,[r14*8+0x0]
  3293e4:	48 63 c8             	movsxd rcx,eax
  3293e7:	48 8b 54 0a 20       	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  3293ec:	48 8b ca             	mov    rcx,rdx
  3293ef:	e8 14 1b fa ff       	call   0x2caf08
  3293f4:	84 c0                	test   al,al
  3293f6:	0f 84 61 01 00 00    	je     0x32955d
  3293fc:	41 83 fe 01          	cmp    r14d,0x1
  329400:	0f 85 57 01 00 00    	jne    0x32955d
  329406:	48 83 3d 32 ae 0b 00 00 	cmp    QWORD PTR [rip+0xbae32],0x0        # 0x3e4240
  32940e:	0f 84 49 01 00 00    	je     0x32955d
  329414:	8b 52 58             	mov    edx,DWORD PTR [rdx+0x58]
  329417:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  32941b:	e8 f0 00 fb ff       	call   0x2d9510
  329420:	48 8d 55 d1          	lea    rdx,[rbp-0x2f]
  329424:	48 8b d8             	mov    rbx,rax
  329427:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  32942b:	e8 30 a5 ff ff       	call   0x323960
  329430:	48 8b c8             	mov    rcx,rax
  329433:	e8 04 a2 fb ff       	call   0x2e363c
  329438:	48 8b d0             	mov    rdx,rax
  32943b:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  32943f:	4c 8b c3             	mov    r8,rbx
  329442:	e8 95 12 fc ff       	call   0x2ea6dc
  329447:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  32944b:	e8 a4 30 fa ff       	call   0x2cc4f4
  329450:	8b 05 e2 b4 0c 00    	mov    eax,DWORD PTR [rip+0xcb4e2]        # 0x3f4938
  329456:	41 84 c6             	test   r14b,al
  329459:	0f 85 9d 00 00 00    	jne    0x3294fc
  32945f:	41 0b c6             	or     eax,r14d
  329462:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  329466:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  32946a:	89 05 c8 b4 0c 00    	mov    DWORD PTR [rip+0xcb4c8],eax        # 0x3f4938
  329470:	e8 bb 32 fa ff       	call   0x2cc730
  329475:	48 8b c8             	mov    rcx,rax
  329478:	e8 27 48 fa ff       	call   0x2cdca4
  32947d:	48 8d 55 c7          	lea    rdx,[rbp-0x39]
  329481:	48 8b f0             	mov    rsi,rax
  329484:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  329488:	e8 6f a9 ff ff       	call   0x323dfc
  32948d:	48 8b c8             	mov    rcx,rax
  329490:	e8 87 48 fa ff       	call   0x2cdd1c
  329495:	48 8d 55 77          	lea    rdx,[rbp+0x77]
  329499:	48 8b f8             	mov    rdi,rax
  32949c:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3294a0:	e8 8b 32 fa ff       	call   0x2cc730
  3294a5:	48 8b c8             	mov    rcx,rax
  3294a8:	e8 f7 47 fa ff       	call   0x2cdca4
  3294ad:	48 8d 55 d1          	lea    rdx,[rbp-0x2f]
  3294b1:	48 8b d8             	mov    rbx,rax
  3294b4:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3294b8:	e8 d3 a6 ff ff       	call   0x323b90
  3294bd:	48 8b c8             	mov    rcx,rax
  3294c0:	e8 b7 f0 fa ff       	call   0x2d857c
  3294c5:	48 8b c8             	mov    rcx,rax
  3294c8:	48 8b d3             	mov    rdx,rbx
  3294cb:	e8 54 ad 00 00       	call   0x334224
  3294d0:	48 8b c8             	mov    rcx,rax
  3294d3:	c7 44 24 20 ff ff ff ff 	mov    DWORD PTR [rsp+0x20],0xffffffff
  3294db:	4c 8b ce             	mov    r9,rsi
  3294de:	41 83 c8 ff          	or     r8d,0xffffffff
  3294e2:	48 8b d7             	mov    rdx,rdi
  3294e5:	e8 c2 b4 00 00       	call   0x3349ac
  3294ea:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3294ed:	8b 05 45 b4 0c 00    	mov    eax,DWORD PTR [rip+0xcb445]        # 0x3f4938
  3294f3:	4c 89 05 36 b4 0c 00 	mov    QWORD PTR [rip+0xcb436],r8        # 0x3f4930
  3294fa:	eb 07                	jmp    0x329503
  3294fc:	4c 8b 05 2d b4 0c 00 	mov    r8,QWORD PTR [rip+0xcb42d]        # 0x3f4930
  329503:	a8 02                	test   al,0x2
  329505:	75 1f                	jne    0x329526
  329507:	48 8b 0d 52 c9 0a 00 	mov    rcx,QWORD PTR [rip+0xac952]        # 0x3d5e60
  32950e:	48 8d 15 2b b4 0c 00 	lea    rdx,[rip+0xcb42b]        # 0x3f4940
  329515:	83 c8 02             	or     eax,0x2
  329518:	45 33 c9             	xor    r9d,r9d
  32951b:	89 05 17 b4 0c 00    	mov    DWORD PTR [rip+0xcb417],eax        # 0x3f4938
  329521:	e8 fe 27 fa ff       	call   0x2cbd24
  329526:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  32952a:	e8 bd 42 fa ff       	call   0x2cd7ec
  32952f:	48 8b c8             	mov    rcx,rax
  329532:	e8 a5 50 fa ff       	call   0x2ce5dc
  329537:	4c 8b 05 02 ad 0b 00 	mov    r8,QWORD PTR [rip+0xbad02]        # 0x3e4240
  32953e:	48 8d 15 fb b3 0c 00 	lea    rdx,[rip+0xcb3fb]        # 0x3f4940
  329545:	48 8b 0d 14 c9 0a 00 	mov    rcx,QWORD PTR [rip+0xac914]        # 0x3d5e60
  32954c:	4c 8b c8             	mov    r9,rax
  32954f:	e8 40 8b fa ff       	call   0x2d2094
  329554:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  329558:	e8 97 2f fa ff       	call   0x2cc4f4
  32955d:	41 ff c6             	inc    r14d
  329560:	45 3b f4             	cmp    r14d,r12d
  329563:	0f 8c 5f fe ff ff    	jl     0x3293c8
  329569:	48 81 c4 90 00 00 00 	add    rsp,0x90
  329570:	41 5f                	pop    r15
  329572:	41 5e                	pop    r14
  329574:	41 5c                	pop    r12
  329576:	5f                   	pop    rdi
  329577:	5e                   	pop    rsi
  329578:	5b                   	pop    rbx
  329579:	5d                   	pop    rbp
  32957a:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000329120 <.data+0x329120>:
  329120:	40 53                	rex push rbx
  329122:	55                   	push   rbp
  329123:	56                   	push   rsi
  329124:	57                   	push   rdi
  329125:	41 54                	push   r12
  329127:	41 55                	push   r13
  329129:	41 56                	push   r14
  32912b:	41 57                	push   r15
  32912d:	48 81 ec 98 00 00 00 	sub    rsp,0x98
  329134:	33 f6                	xor    esi,esi
  329136:	40 38 35 bb a5 0c 00 	cmp    BYTE PTR [rip+0xca5bb],sil        # 0x3f36f8
  32913d:	89 b4 24 e0 00 00 00 	mov    DWORD PTR [rsp+0xe0],esi
  329144:	0f 84 c5 01 00 00    	je     0x32930f
  32914a:	e8 4d 49 fb ff       	call   0x2dda9c
  32914f:	48 8b c8             	mov    rcx,rax
  329152:	4c 8b f8             	mov    r15,rax
  329155:	e8 ae 1d fa ff       	call   0x2caf08
  32915a:	84 c0                	test   al,al
  32915c:	0f 84 ad 01 00 00    	je     0x32930f
  329162:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  329167:	45 33 f6             	xor    r14d,r14d
  32916a:	48 8d 0d 5f f6 ee ff 	lea    rcx,[rip+0xffffffffffeef65f]        # 0x2187d0
  329171:	e8 86 a9 fb ff       	call   0x2e3afc
  329176:	48 8b c8             	mov    rcx,rax
  329179:	48 8b d8             	mov    rbx,rax
  32917c:	e8 f7 87 fa ff       	call   0x2d1978
  329181:	48 8b cb             	mov    rcx,rbx
  329184:	48 8b f8             	mov    rdi,rax
  329187:	e8 34 e8 fa ff       	call   0x2d79c0
  32918c:	4c 8b e8             	mov    r13,rax
  32918f:	48 3b f8             	cmp    rdi,rax
  329192:	0f 84 68 01 00 00    	je     0x329300
  329198:	44 8b a4 24 e0 00 00 00 	mov    r12d,DWORD PTR [rsp+0xe0]
  3291a0:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
  3291a3:	48 8b cb             	mov    rcx,rbx
  3291a6:	e8 5d 1d fa ff       	call   0x2caf08
  3291ab:	84 c0                	test   al,al
  3291ad:	0f 84 40 01 00 00    	je     0x3292f3
  3291b3:	80 7f 08 00          	cmp    BYTE PTR [rdi+0x8],0x0
  3291b7:	0f 85 36 01 00 00    	jne    0x3292f3
  3291bd:	48 8b cb             	mov    rcx,rbx
  3291c0:	e8 d7 7c fb ff       	call   0x2e0e9c
  3291c5:	84 c0                	test   al,al
  3291c7:	0f 84 26 01 00 00    	je     0x3292f3
  3291cd:	41 b8 35 00 00 00    	mov    r8d,0x35
  3291d3:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3291d8:	48 8b cb             	mov    rcx,rbx
  3291db:	e8 08 fa 03 00       	call   0x368be8
  3291e0:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3291e5:	e8 d2 e9 09 00       	call   0x3c7bbc
  3291ea:	48 8b d0             	mov    rdx,rax
  3291ed:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3291f2:	e8 b9 63 fb ff       	call   0x2df5b0
  3291f7:	84 c0                	test   al,al
  3291f9:	0f 85 f4 00 00 00    	jne    0x3292f3
  3291ff:	48 8b cb             	mov    rcx,rbx
  329202:	e8 5d 05 04 00       	call   0x369764
  329207:	48 8b c8             	mov    rcx,rax
  32920a:	e8 f9 1c fa ff       	call   0x2caf08
  32920f:	84 c0                	test   al,al
  329211:	0f 84 dc 00 00 00    	je     0x3292f3
  329217:	33 d2                	xor    edx,edx
  329219:	48 8b cb             	mov    rcx,rbx
  32921c:	e8 eb 0f 04 00       	call   0x36a20c
  329221:	84 c0                	test   al,al
  329223:	0f 85 ca 00 00 00    	jne    0x3292f3
  329229:	48 8b cb             	mov    rcx,rbx
  32922c:	e8 7f 01 04 00       	call   0x3693b0
  329231:	84 c0                	test   al,al
  329233:	0f 85 ba 00 00 00    	jne    0x3292f3
  329239:	33 d2                	xor    edx,edx
  32923b:	49 8b cf             	mov    rcx,r15
  32923e:	e8 e9 40 fa ff       	call   0x2cd32c
  329243:	33 d2                	xor    edx,edx
  329245:	48 8b cb             	mov    rcx,rbx
  329248:	48 8b e8             	mov    rbp,rax
  32924b:	e8 dc 40 fa ff       	call   0x2cd32c
  329250:	48 85 c0             	test   rax,rax
  329253:	74 0a                	je     0x32925f
  329255:	48 3b c5             	cmp    rax,rbp
  329258:	75 05                	jne    0x32925f
  32925a:	40 b5 01             	mov    bpl,0x1
  32925d:	eb 03                	jmp    0x329262
  32925f:	40 32 ed             	xor    bpl,bpl
  329262:	45 33 c0             	xor    r8d,r8d
  329265:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  32926a:	48 8b cb             	mov    rcx,rbx
  32926d:	83 ce 01             	or     esi,0x1
  329270:	e8 fb 0b 04 00       	call   0x369e70
  329275:	48 8b d0             	mov    rdx,rax
  329278:	48 8d 0d e1 df 0a 00 	lea    rcx,[rip+0xadfe1]        # 0x3d7260
  32927f:	e8 84 63 fb ff       	call   0x2df608
  329284:	83 78 24 01          	cmp    DWORD PTR [rax+0x24],0x1
  329288:	74 05                	je     0x32928f
  32928a:	40 84 ed             	test   bpl,bpl
  32928d:	74 03                	je     0x329292
  32928f:	40 b5 01             	mov    bpl,0x1
  329292:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  329297:	83 e6 fe             	and    esi,0xfffffffe
  32929a:	e8 55 32 fa ff       	call   0x2cc4f4
  32929f:	40 84 ed             	test   bpl,bpl
  3292a2:	75 4f                	jne    0x3292f3
  3292a4:	49 8b cf             	mov    rcx,r15
  3292a7:	4d 85 f6             	test   r14,r14
  3292aa:	75 21                	jne    0x3292cd
  3292ac:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  3292b1:	4c 8b f3             	mov    r14,rbx
  3292b4:	e8 ab fe 03 00       	call   0x369164
  3292b9:	48 8b c8             	mov    rcx,rax
  3292bc:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3292c1:	e8 6a 6c fb ff       	call   0x2dff30
  3292c6:	f3 44 0f 2c e0       	cvttss2si r12d,xmm0
  3292cb:	eb 26                	jmp    0x3292f3
  3292cd:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
  3292d2:	e8 8d fe 03 00       	call   0x369164
  3292d7:	48 8b c8             	mov    rcx,rax
  3292da:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3292df:	e8 4c 6c fb ff       	call   0x2dff30
  3292e4:	f3 0f 2c c0          	cvttss2si eax,xmm0
  3292e8:	41 3b c4             	cmp    eax,r12d
  3292eb:	7f 06                	jg     0x3292f3
  3292ed:	4c 8b f3             	mov    r14,rbx
  3292f0:	44 8b e0             	mov    r12d,eax
  3292f3:	48 83 c7 10          	add    rdi,0x10
  3292f7:	49 3b fd             	cmp    rdi,r13
  3292fa:	0f 85 a0 fe ff ff    	jne    0x3291a0
  329300:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  329305:	e8 76 61 fb ff       	call   0x2df480
  32930a:	49 8b c6             	mov    rax,r14
  32930d:	eb 02                	jmp    0x329311
  32930f:	33 c0                	xor    eax,eax
  329311:	48 81 c4 98 00 00 00 	add    rsp,0x98
  329318:	41 5f                	pop    r15
  32931a:	41 5e                	pop    r14
  32931c:	41 5d                	pop    r13
  32931e:	41 5c                	pop    r12
  329320:	5f                   	pop    rdi
  329321:	5e                   	pop    rsi
  329322:	5d                   	pop    rbp
  329323:	5b                   	pop    rbx
  329324:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000318724 <.data+0x318724>:
  318724:	48 8b c4             	mov    rax,rsp
  318727:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  31872b:	55                   	push   rbp
  31872c:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  318730:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  318737:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  31873b:	e8 70 7b fc ff       	call   0x2e02b0
  318740:	48 8b c8             	mov    rcx,rax
  318743:	48 8b d8             	mov    rbx,rax
  318746:	e8 bd 27 fb ff       	call   0x2caf08
  31874b:	84 c0                	test   al,al
  31874d:	0f 84 f2 00 00 00    	je     0x318845
  318753:	48 8b cb             	mov    rcx,rbx
  318756:	e8 41 87 fc ff       	call   0x2e0e9c
  31875b:	84 c0                	test   al,al
  31875d:	0f 84 e2 00 00 00    	je     0x318845
  318763:	e8 b4 7f fc ff       	call   0x2e071c
  318768:	0f 28 f0             	movaps xmm6,xmm0
  31876b:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  31876f:	f3 0f 59 35 a5 53 f7 ff 	mulss  xmm6,DWORD PTR [rip+0xfffffffffff753a5]        # 0x28db1c
  318777:	48 8b cb             	mov    rcx,rbx
  31877a:	e8 9d 14 05 00       	call   0x369c1c
  31877f:	f3 0f 10 15 cd 4a f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff74acd]        # 0x28d254
  318787:	48 8d 55 07          	lea    rdx,[rbp+0x7]
  31878b:	f3 0f 5c d6          	subss  xmm2,xmm6
  31878f:	48 8d 0d 42 d6 0c 00 	lea    rcx,[rip+0xcd642]        # 0x3e5dd8
  318796:	e8 d1 6e fc ff       	call   0x2df66c
  31879b:	f3 0f 10 5d ef       	movss  xmm3,DWORD PTR [rbp-0x11]
  3187a0:	48 8d 4d 17          	lea    rcx,[rbp+0x17]
  3187a4:	f3 0f 10 55 eb       	movss  xmm2,DWORD PTR [rbp-0x15]
  3187a9:	48 8b d8             	mov    rbx,rax
  3187ac:	f3 0f 10 4d e7       	movss  xmm1,DWORD PTR [rbp-0x19]
  3187b1:	e8 f2 f3 0a 00       	call   0x3c7ba8
  3187b6:	48 8b c8             	mov    rcx,rax
  3187b9:	48 8d 55 23          	lea    rdx,[rbp+0x23]
  3187bd:	0f 28 d6             	movaps xmm2,xmm6
  3187c0:	e8 a7 6e fc ff       	call   0x2df66c
  3187c5:	4c 8b c0             	mov    r8,rax
  3187c8:	48 8d 55 2f          	lea    rdx,[rbp+0x2f]
  3187cc:	48 8b cb             	mov    rcx,rbx
  3187cf:	e8 34 6f fc ff       	call   0x2df708
  3187d4:	0f 28 de             	movaps xmm3,xmm6
  3187d7:	4c 8d 45 f7          	lea    r8,[rbp-0x9]
  3187db:	48 8d 55 07          	lea    rdx,[rbp+0x7]
  3187df:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3187e3:	f2 0f 11 05 ed d5 0c 00 	movsd  QWORD PTR [rip+0xcd5ed],xmm0        # 0x3e5dd8
  3187eb:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  3187ee:	89 0d ec d5 0c 00    	mov    DWORD PTR [rip+0xcd5ec],ecx        # 0x3e5de0
  3187f4:	48 8d 4d 2f          	lea    rcx,[rbp+0x2f]
  3187f8:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3187fc:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3187ff:	f2 0f 11 45 f7       	movsd  QWORD PTR [rbp-0x9],xmm0
  318804:	f2 0f 10 05 bc d5 0c 00 	movsd  xmm0,QWORD PTR [rip+0xcd5bc]        # 0x3e5dc8
  31880c:	89 45 ff             	mov    DWORD PTR [rbp-0x1],eax
  31880f:	8b 05 bb d5 0c 00    	mov    eax,DWORD PTR [rip+0xcd5bb]        # 0x3e5dd0
  318815:	f2 0f 11 45 07       	movsd  QWORD PTR [rbp+0x7],xmm0
  31881a:	89 45 0f             	mov    DWORD PTR [rbp+0xf],eax
  31881d:	e8 0a c1 ff ff       	call   0x31492c
  318822:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  318826:	f2 0f 11 05 1a ea 0b 00 	movsd  QWORD PTR [rip+0xbea1a],xmm0        # 0x3d7248
  31882e:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  318831:	89 0d 19 ea 0b 00    	mov    DWORD PTR [rip+0xbea19],ecx        # 0x3d7250
  318837:	f2 0f 11 05 89 d5 0c 00 	movsd  QWORD PTR [rip+0xcd589],xmm0        # 0x3e5dc8
  31883f:	89 0d 8b d5 0c 00    	mov    DWORD PTR [rip+0xcd58b],ecx        # 0x3e5dd0
  318845:	4c 8d 9c 24 90 00 00 00 	lea    r11,[rsp+0x90]
  31884d:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  318851:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  318856:	49 8b e3             	mov    rsp,r11
  318859:	5d                   	pop    rbp
  31885a:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003295bc <.data+0x3295bc>:
  3295bc:	48 8b c4             	mov    rax,rsp
  3295bf:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  3295c3:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  3295c7:	57                   	push   rdi
  3295c8:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
  3295cf:	f3 0f 10 05 a9 9b f6 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff69ba9]        # 0x293180
  3295d7:	8b da                	mov    ebx,edx
  3295d9:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  3295dd:	48 8b f1             	mov    rsi,rcx
  3295e0:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  3295e4:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  3295e9:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  3295ee:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  3295f3:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  3295f8:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  3295fd:	e8 32 f9 09 00       	call   0x3c8f34
  329602:	f3 44 0f 10 15 4d 9b f6 ff 	movss  xmm10,DWORD PTR [rip+0xfffffffffff69b4d]        # 0x293158
  32960b:	33 ff                	xor    edi,edi
  32960d:	f3 44 0f 10 1d 1e 9b f6 ff 	movss  xmm11,DWORD PTR [rip+0xfffffffffff69b1e]        # 0x293134
  329616:	f3 44 0f 5c d0       	subss  xmm10,xmm0
  32961b:	66 0f 6e c3          	movd   xmm0,ebx
  32961f:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  329622:	f3 44 0f 59 15 31 9b f6 ff 	mulss  xmm10,DWORD PTR [rip+0xfffffffffff69b31]        # 0x29315c
  32962b:	f3 44 0f 5e d8       	divss  xmm11,xmm0
  329630:	85 db                	test   ebx,ebx
  329632:	0f 8e a3 00 00 00    	jle    0x3296db
  329638:	45 0f 28 e3          	movaps xmm12,xmm11
  32963c:	f3 44 0f 59 25 0b 3c f6 ff 	mulss  xmm12,DWORD PTR [rip+0xfffffffffff63c0b]        # 0x28d250
  329645:	f3 44 0f 10 05 06 3c f6 ff 	movss  xmm8,DWORD PTR [rip+0xfffffffffff63c06]        # 0x28d254
  32964e:	66 44 0f 6e cf       	movd   xmm9,edi
  329653:	45 0f 5b c9          	cvtdq2ps xmm9,xmm9
  329657:	41 0f 28 c1          	movaps xmm0,xmm9
  32965b:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  329660:	f3 41 0f 58 c4       	addss  xmm0,xmm12
  329665:	f3 44 0f 5c c0       	subss  xmm8,xmm0
  32966a:	f3 0f 10 05 e2 3b f6 ff 	movss  xmm0,DWORD PTR [rip+0xfffffffffff63be2]        # 0x28d254
  329672:	41 0f 28 c8          	movaps xmm1,xmm8
  329676:	f3 41 0f 59 c8       	mulss  xmm1,xmm8
  32967b:	f3 0f 5c c1          	subss  xmm0,xmm1
  32967f:	e8 b0 f8 09 00       	call   0x3c8f34
  329684:	f3 45 0f 59 ca       	mulss  xmm9,xmm10
  329689:	0f 28 f8             	movaps xmm7,xmm0
  32968c:	41 0f 28 c1          	movaps xmm0,xmm9
  329690:	e8 d3 68 fb ff       	call   0x2dff68
  329695:	0f 28 f0             	movaps xmm6,xmm0
  329698:	41 0f 28 c1          	movaps xmm0,xmm9
  32969c:	f3 0f 59 f7          	mulss  xmm6,xmm7
  3296a0:	e8 f3 6a fb ff       	call   0x2e0198
  3296a5:	f3 0f 59 c7          	mulss  xmm0,xmm7
  3296a9:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3296ae:	41 0f 28 d0          	movaps xmm2,xmm8
  3296b2:	0f 28 ce             	movaps xmm1,xmm6
  3296b5:	0f 28 d8             	movaps xmm3,xmm0
  3296b8:	e8 eb e4 09 00       	call   0x3c7ba8
  3296bd:	48 8d 14 7f          	lea    rdx,[rdi+rdi*2]
  3296c1:	ff c7                	inc    edi
  3296c3:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3296c7:	f2 0f 11 04 96       	movsd  QWORD PTR [rsi+rdx*4],xmm0
  3296cc:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3296cf:	89 44 96 08          	mov    DWORD PTR [rsi+rdx*4+0x8],eax
  3296d3:	3b fb                	cmp    edi,ebx
  3296d5:	0f 8c 6a ff ff ff    	jl     0x329645
  3296db:	4c 8d 9c 24 a0 00 00 00 	lea    r11,[rsp+0xa0]
  3296e3:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3296e7:	49 8b 73 18          	mov    rsi,QWORD PTR [r11+0x18]
  3296eb:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3296f0:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3296f5:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3296fa:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3296ff:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  329704:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  329709:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  32970e:	49 8b e3             	mov    rsp,r11
  329711:	5f                   	pop    rdi
  329712:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000318a14 <.data+0x318a14>:
  318a14:	48 8b c4             	mov    rax,rsp
  318a17:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  318a1b:	57                   	push   rdi
  318a1c:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  318a23:	f3 0f 10 02          	movss  xmm0,DWORD PTR [rdx]
  318a27:	48 8b da             	mov    rbx,rdx
  318a2a:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  318a2e:	48 8b f9             	mov    rdi,rcx
  318a31:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  318a35:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  318a3a:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  318a3f:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  318a44:	0f 5a c0             	cvtps2pd xmm0,xmm0
  318a47:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  318a4c:	e8 5b 01 00 00       	call   0x318bac
  318a51:	f2 0f 10 3d bf a6 f7 ff 	movsd  xmm7,QWORD PTR [rip+0xfffffffffff7a6bf]        # 0x293118
  318a59:	0f 57 f6             	xorps  xmm6,xmm6
  318a5c:	f2 0f 59 c7          	mulsd  xmm0,xmm7
  318a60:	f2 0f 5a f0          	cvtsd2ss xmm6,xmm0
  318a64:	0f 28 c6             	movaps xmm0,xmm6
  318a67:	e8 fc 74 fc ff       	call   0x2dff68
  318a6c:	45 0f 57 c9          	xorps  xmm9,xmm9
  318a70:	f3 44 0f 5a c8       	cvtss2sd xmm9,xmm0
  318a75:	0f 28 c6             	movaps xmm0,xmm6
  318a78:	e8 1b 77 fc ff       	call   0x2e0198
  318a7d:	45 0f 57 c0          	xorps  xmm8,xmm8
  318a81:	f3 44 0f 5a c0       	cvtss2sd xmm8,xmm0
  318a86:	f3 0f 10 43 04       	movss  xmm0,DWORD PTR [rbx+0x4]
  318a8b:	0f 5a c0             	cvtps2pd xmm0,xmm0
  318a8e:	e8 19 01 00 00       	call   0x318bac
  318a93:	f2 0f 59 c7          	mulsd  xmm0,xmm7
  318a97:	0f 57 f6             	xorps  xmm6,xmm6
  318a9a:	f2 0f 5a f0          	cvtsd2ss xmm6,xmm0
  318a9e:	0f 28 c6             	movaps xmm0,xmm6
  318aa1:	e8 c2 74 fc ff       	call   0x2dff68
  318aa6:	45 0f 57 db          	xorps  xmm11,xmm11
  318aaa:	f3 44 0f 5a d8       	cvtss2sd xmm11,xmm0
  318aaf:	0f 28 c6             	movaps xmm0,xmm6
  318ab2:	e8 e1 76 fc ff       	call   0x2e0198
  318ab7:	45 0f 57 d2          	xorps  xmm10,xmm10
  318abb:	f3 44 0f 5a d0       	cvtss2sd xmm10,xmm0
  318ac0:	f3 0f 10 43 08       	movss  xmm0,DWORD PTR [rbx+0x8]
  318ac5:	0f 5a c0             	cvtps2pd xmm0,xmm0
  318ac8:	e8 df 00 00 00       	call   0x318bac
  318acd:	f2 0f 59 c7          	mulsd  xmm0,xmm7
  318ad1:	0f 57 f6             	xorps  xmm6,xmm6
  318ad4:	f2 0f 5a f0          	cvtsd2ss xmm6,xmm0
  318ad8:	0f 28 c6             	movaps xmm0,xmm6
  318adb:	e8 88 74 fc ff       	call   0x2dff68
  318ae0:	0f 57 ff             	xorps  xmm7,xmm7
  318ae3:	f3 0f 5a f8          	cvtss2sd xmm7,xmm0
  318ae7:	0f 28 c6             	movaps xmm0,xmm6
  318aea:	e8 a9 76 fc ff       	call   0x2e0198
  318aef:	41 0f 28 d2          	movaps xmm2,xmm10
  318af3:	41 0f 28 db          	movaps xmm3,xmm11
  318af7:	f2 41 0f 59 d9       	mulsd  xmm3,xmm9
  318afc:	0f 57 ed             	xorps  xmm5,xmm5
  318aff:	48 8b cf             	mov    rcx,rdi
  318b02:	f3 0f 5a e8          	cvtss2sd xmm5,xmm0
  318b06:	0f 28 c3             	movaps xmm0,xmm3
  318b09:	f2 45 0f 59 d1       	mulsd  xmm10,xmm9
  318b0e:	f2 0f 59 c7          	mulsd  xmm0,xmm7
  318b12:	f2 41 0f 59 d0       	mulsd  xmm2,xmm8
  318b17:	f2 0f 59 dd          	mulsd  xmm3,xmm5
  318b1b:	f2 45 0f 59 d8       	mulsd  xmm11,xmm8
  318b20:	0f 28 ca             	movaps xmm1,xmm2
  318b23:	f2 0f 59 d7          	mulsd  xmm2,xmm7
  318b27:	f2 0f 59 cd          	mulsd  xmm1,xmm5
  318b2b:	f2 0f 58 da          	addsd  xmm3,xmm2
  318b2f:	f2 0f 5c c1          	subsd  xmm0,xmm1
  318b33:	41 0f 28 cb          	movaps xmm1,xmm11
  318b37:	f2 0f 59 cd          	mulsd  xmm1,xmm5
  318b3b:	f2 44 0f 59 df       	mulsd  xmm11,xmm7
  318b40:	66 0f 5a e0          	cvtpd2ps xmm4,xmm0
  318b44:	41 0f 28 c2          	movaps xmm0,xmm10
  318b48:	f2 44 0f 59 d5       	mulsd  xmm10,xmm5
  318b4d:	f2 0f 59 c7          	mulsd  xmm0,xmm7
  318b51:	66 0f 5a db          	cvtpd2ps xmm3,xmm3
  318b55:	f2 45 0f 58 d3       	addsd  xmm10,xmm11
  318b5a:	f3 0f 11 64 24 20    	movss  DWORD PTR [rsp+0x20],xmm4
  318b60:	f3 0f 59 1d f8 a6 f7 ff 	mulss  xmm3,DWORD PTR [rip+0xfffffffffff7a6f8]        # 0x293260
  318b68:	f2 0f 5c c1          	subsd  xmm0,xmm1
  318b6c:	66 41 0f 5a ca       	cvtpd2ps xmm1,xmm10
  318b71:	66 0f 5a d0          	cvtpd2ps xmm2,xmm0
  318b75:	e8 d6 37 fb ff       	call   0x2cc350
  318b7a:	0f 28 7c 24 70       	movaps xmm7,XMMWORD PTR [rsp+0x70]
  318b7f:	4c 8d 9c 24 90 00 00 00 	lea    r11,[rsp+0x90]
  318b87:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  318b8b:	48 8b c7             	mov    rax,rdi
  318b8e:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  318b93:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  318b98:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  318b9d:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  318ba2:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  318ba7:	49 8b e3             	mov    rsp,r11
  318baa:	5f                   	pop    rdi
  318bab:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000031530c <.data+0x31530c>:
  31530c:	48 8b c4             	mov    rax,rsp
  31530f:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  315313:	55                   	push   rbp
  315314:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  315318:	48 81 ec e0 00 00 00 	sub    rsp,0xe0
  31531f:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  315323:	48 8b d9             	mov    rbx,rcx
  315326:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  31532a:	48 8d 4d 97          	lea    rcx,[rbp-0x69]
  31532e:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  315333:	f3 44 0f 10 02       	movss  xmm8,DWORD PTR [rdx]
  315338:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  31533d:	41 0f 28 f8          	movaps xmm7,xmm8
  315341:	f3 44 0f 10 4a 04    	movss  xmm9,DWORD PTR [rdx+0x4]
  315347:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  31534c:	45 0f 28 d1          	movaps xmm10,xmm9
  315350:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  315355:	f3 44 0f 10 5a 0c    	movss  xmm11,DWORD PTR [rdx+0xc]
  31535b:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  315360:	41 0f 28 c3          	movaps xmm0,xmm11
  315364:	44 0f 29 6c 24 60    	movaps XMMWORD PTR [rsp+0x60],xmm13
  31536a:	f3 44 0f 10 6a 08    	movss  xmm13,DWORD PTR [rdx+0x8]
  315370:	44 0f 29 74 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm14
  315376:	45 0f 28 e5          	movaps xmm12,xmm13
  31537a:	f3 45 0f 59 d1       	mulss  xmm10,xmm9
  31537f:	45 0f 28 f0          	movaps xmm14,xmm8
  315383:	f3 45 0f 59 f0       	mulss  xmm14,xmm8
  315388:	41 0f 28 cd          	movaps xmm1,xmm13
  31538c:	f3 45 0f 59 e5       	mulss  xmm12,xmm13
  315391:	f3 45 0f 58 d6       	addss  xmm10,xmm14
  315396:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  31539b:	f3 41 0f 59 fb       	mulss  xmm7,xmm11
  3153a0:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
  3153a5:	41 0f 28 f2          	movaps xmm6,xmm10
  3153a9:	f3 41 0f 58 f4       	addss  xmm6,xmm12
  3153ae:	f3 0f 5c f9          	subss  xmm7,xmm1
  3153b2:	f3 0f 58 f0          	addss  xmm6,xmm0
  3153b6:	e8 01 28 0b 00       	call   0x3c7bbc
  3153bb:	0f 28 ce             	movaps xmm1,xmm6
  3153be:	f3 0f 59 0d fa dc f7 ff 	mulss  xmm1,DWORD PTR [rip+0xfffffffffff7dcfa]        # 0x2930c0
  3153c6:	0f 2f f9             	comiss xmm7,xmm1
  3153c9:	76 29                	jbe    0x3153f4
  3153cb:	41 0f 28 c8          	movaps xmm1,xmm8
  3153cf:	41 0f 28 c1          	movaps xmm0,xmm9
  3153d3:	e8 d4 32 0b 00       	call   0x3c86ac
  3153d8:	f3 0f 58 c0          	addss  xmm0,xmm0
  3153dc:	c7 45 97 db 0f c9 3f 	mov    DWORD PTR [rbp-0x69],0x3fc90fdb
  3153e3:	f3 0f 11 45 9b       	movss  DWORD PTR [rbp-0x65],xmm0
  3153e8:	c7 45 9f 00 00 00 00 	mov    DWORD PTR [rbp-0x61],0x0
  3153ef:	e9 af 00 00 00       	jmp    0x3154a3
  3153f4:	f3 0f 59 35 5c de f7 ff 	mulss  xmm6,DWORD PTR [rip+0xfffffffffff7de5c]        # 0x293258
  3153fc:	0f 2f f7             	comiss xmm6,xmm7
  3153ff:	76 1e                	jbe    0x31541f
  315401:	41 0f 28 c8          	movaps xmm1,xmm8
  315405:	41 0f 28 c1          	movaps xmm0,xmm9
  315409:	e8 9e 32 0b 00       	call   0x3c86ac
  31540e:	f3 0f 59 05 4e de f7 ff 	mulss  xmm0,DWORD PTR [rip+0xfffffffffff7de4e]        # 0x293264
  315416:	c7 45 97 db 0f c9 bf 	mov    DWORD PTR [rbp-0x69],0xbfc90fdb
  31541d:	eb c4                	jmp    0x3153e3
  31541f:	f3 0f 10 35 2d 7e f7 ff 	movss  xmm6,DWORD PTR [rip+0xfffffffffff77e2d]        # 0x28d254
  315427:	f3 45 0f 58 db       	addss  xmm11,xmm11
  31542c:	41 0f 28 c5          	movaps xmm0,xmm13
  315430:	f3 45 0f 58 d2       	addss  xmm10,xmm10
  315435:	f3 41 0f 58 c5       	addss  xmm0,xmm13
  31543a:	41 0f 28 cb          	movaps xmm1,xmm11
  31543e:	f3 41 0f 59 c9       	mulss  xmm1,xmm9
  315443:	f3 41 0f 59 c0       	mulss  xmm0,xmm8
  315448:	f3 0f 58 c1          	addss  xmm0,xmm1
  31544c:	0f 28 ce             	movaps xmm1,xmm6
  31544f:	f3 41 0f 5c ca       	subss  xmm1,xmm10
  315454:	e8 53 32 0b 00       	call   0x3c86ac
  315459:	f3 0f 58 ff          	addss  xmm7,xmm7
  31545d:	f3 0f 11 45 9b       	movss  DWORD PTR [rbp-0x65],xmm0
  315462:	0f 28 c7             	movaps xmm0,xmm7
  315465:	e8 7a 54 00 00       	call   0x31a8e4
  31546a:	f3 45 0f 58 c0       	addss  xmm8,xmm8
  31546f:	f3 45 0f 59 dd       	mulss  xmm11,xmm13
  315474:	f3 45 0f 58 e6       	addss  xmm12,xmm14
  315479:	f3 0f 11 45 97       	movss  DWORD PTR [rbp-0x69],xmm0
  31547e:	f3 45 0f 59 c1       	mulss  xmm8,xmm9
  315483:	f3 45 0f 58 e4       	addss  xmm12,xmm12
  315488:	f3 45 0f 58 c3       	addss  xmm8,xmm11
  31548d:	f3 41 0f 5c f4       	subss  xmm6,xmm12
  315492:	41 0f 28 c0          	movaps xmm0,xmm8
  315496:	0f 28 ce             	movaps xmm1,xmm6
  315499:	e8 0e 32 0b 00       	call   0x3c86ac
  31549e:	f3 0f 11 45 9f       	movss  DWORD PTR [rbp-0x61],xmm0
  3154a3:	f3 0f 10 15 51 dd f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff7dd51]        # 0x2931fc
  3154ab:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  3154af:	48 8d 4d 97          	lea    rcx,[rbp-0x69]
  3154b3:	e8 b4 a1 fc ff       	call   0x2df66c
  3154b8:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  3154bc:	48 8b cb             	mov    rcx,rbx
  3154bf:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3154c3:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3154c6:	f2 0f 11 45 a7       	movsd  QWORD PTR [rbp-0x59],xmm0
  3154cb:	89 45 af             	mov    DWORD PTR [rbp-0x51],eax
  3154ce:	e8 69 1b 00 00       	call   0x31703c
  3154d3:	44 0f 28 74 24 50    	movaps xmm14,XMMWORD PTR [rsp+0x50]
  3154d9:	4c 8d 9c 24 e0 00 00 00 	lea    r11,[rsp+0xe0]
  3154e1:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3154e6:	48 8b c3             	mov    rax,rbx
  3154e9:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3154ed:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3154f2:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3154f7:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  3154fc:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  315501:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  315506:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  31550b:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  315510:	49 8b e3             	mov    rsp,r11
  315513:	5d                   	pop    rbp
  315514:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000315690 <.data+0x315690>:
  315690:	40 53                	rex push rbx
  315692:	55                   	push   rbp
  315693:	56                   	push   rsi
  315694:	57                   	push   rdi
  315695:	48 83 ec 48          	sub    rsp,0x48
  315699:	49 8b f0             	mov    rsi,r8
  31569c:	48 8b ea             	mov    rbp,rdx
  31569f:	48 8b f9             	mov    rdi,rcx
  3156a2:	e8 f5 83 fc ff       	call   0x2dda9c
  3156a7:	48 8b c8             	mov    rcx,rax
  3156aa:	48 8b d8             	mov    rbx,rax
  3156ad:	e8 56 58 fb ff       	call   0x2caf08
  3156b2:	84 c0                	test   al,al
  3156b4:	0f 84 b2 00 00 00    	je     0x31576c
  3156ba:	48 8b cb             	mov    rcx,rbx
  3156bd:	e8 da b7 fc ff       	call   0x2e0e9c
  3156c2:	84 c0                	test   al,al
  3156c4:	0f 84 a2 00 00 00    	je     0x31576c
  3156ca:	48 8b cb             	mov    rcx,rbx
  3156cd:	e8 b2 33 05 00       	call   0x368a84
  3156d2:	48 8b c8             	mov    rcx,rax
  3156d5:	48 8b d0             	mov    rdx,rax
  3156d8:	e8 2b 58 fb ff       	call   0x2caf08
  3156dd:	84 c0                	test   al,al
  3156df:	0f 84 87 00 00 00    	je     0x31576c
  3156e5:	48 8b ca             	mov    rcx,rdx
  3156e8:	e8 f3 bf 05 00       	call   0x3716e0
  3156ed:	48 8b c8             	mov    rcx,rax
  3156f0:	48 8b d0             	mov    rdx,rax
  3156f3:	e8 10 58 fb ff       	call   0x2caf08
  3156f8:	84 c0                	test   al,al
  3156fa:	74 70                	je     0x31576c
  3156fc:	48 85 f6             	test   rsi,rsi
  3156ff:	74 1b                	je     0x31571c
  315701:	f3 0f 10 82 f8 03 00 00 	movss  xmm0,DWORD PTR [rdx+0x3f8]
  315709:	0f 5a c0             	cvtps2pd xmm0,xmm0
  31570c:	f2 0f 5c 05 fc d9 f7 ff 	subsd  xmm0,QWORD PTR [rip+0xfffffffffff7d9fc]        # 0x293110
  315714:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  315718:	f3 0f 11 06          	movss  DWORD PTR [rsi],xmm0
  31571c:	48 85 ff             	test   rdi,rdi
  31571f:	74 06                	je     0x315727
  315721:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
  315727:	48 85 ed             	test   rbp,rbp
  31572a:	74 3c                	je     0x315768
  31572c:	f3 0f 10 15 b8 8a f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff78ab8]        # 0x28e1ec
  315734:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  315739:	0f 57 db             	xorps  xmm3,xmm3
  31573c:	0f 57 c9             	xorps  xmm1,xmm1
  31573f:	e8 64 24 0b 00       	call   0x3c7ba8
  315744:	f3 0f 10 15 08 7b f7 ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffff77b08]        # 0x28d254
  31574c:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
  315751:	48 8b c8             	mov    rcx,rax
  315754:	e8 13 9f fc ff       	call   0x2df66c
  315759:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  31575d:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  315762:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  315765:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  315768:	b0 01                	mov    al,0x1
  31576a:	eb 02                	jmp    0x31576e
  31576c:	32 c0                	xor    al,al
  31576e:	48 83 c4 48          	add    rsp,0x48
  315772:	5f                   	pop    rdi
  315773:	5e                   	pop    rsi
  315774:	5d                   	pop    rbp
  315775:	5b                   	pop    rbx
  315776:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df2e8 <.data+0x2df2e8>:
  2df2e8:	40 53                	rex push rbx
  2df2ea:	48 83 ec 50          	sub    rsp,0x50
  2df2ee:	0f 29 74 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm6
  2df2f3:	48 8b d9             	mov    rbx,rcx
  2df2f6:	0f 29 7c 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm7
  2df2fb:	48 83 c1 10          	add    rcx,0x10
  2df2ff:	44 0f 29 44 24 20    	movaps XMMWORD PTR [rsp+0x20],xmm8
  2df305:	0f 28 fb             	movaps xmm7,xmm3
  2df308:	44 0f 28 c2          	movaps xmm8,xmm2
  2df30c:	0f 28 f1             	movaps xmm6,xmm1
  2df30f:	e8 44 54 ff ff       	call   0x2d4758
  2df314:	f3 0f 10 84 24 80 00 00 00 	movss  xmm0,DWORD PTR [rsp+0x80]
  2df31d:	48 8b c3             	mov    rax,rbx
  2df320:	f3 0f 11 33          	movss  DWORD PTR [rbx],xmm6
  2df324:	0f 28 74 24 40       	movaps xmm6,XMMWORD PTR [rsp+0x40]
  2df329:	f3 0f 11 7b 04       	movss  DWORD PTR [rbx+0x4],xmm7
  2df32e:	0f 28 7c 24 30       	movaps xmm7,XMMWORD PTR [rsp+0x30]
  2df333:	f3 44 0f 11 43 08    	movss  DWORD PTR [rbx+0x8],xmm8
  2df339:	44 0f 28 44 24 20    	movaps xmm8,XMMWORD PTR [rsp+0x20]
  2df33f:	f3 0f 11 43 0c       	movss  DWORD PTR [rbx+0xc],xmm0
  2df344:	48 83 c4 50          	add    rsp,0x50
  2df348:	5b                   	pop    rbx
  2df349:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dfe64 <.data+0x2dfe64>:
  2dfe64:	40 53                	rex push rbx
  2dfe66:	48 83 ec 60          	sub    rsp,0x60
  2dfe6a:	33 d2                	xor    edx,edx
  2dfe6c:	4c 8d 0d 9d 84 0f 00 	lea    r9,[rip+0xf849d]        # 0x3d8310
  2dfe73:	4c 8d 04 52          	lea    r8,[rdx+rdx*2]
  2dfe77:	4d 03 c0             	add    r8,r8
  2dfe7a:	4b 83 3c c1 00       	cmp    QWORD PTR [r9+r8*8],0x0
  2dfe7f:	74 0e                	je     0x2dfe8f
  2dfe81:	ff c2                	inc    edx
  2dfe83:	81 fa e8 03 00 00    	cmp    edx,0x3e8
  2dfe89:	7c e8                	jl     0x2dfe73
  2dfe8b:	33 c0                	xor    eax,eax
  2dfe8d:	eb 3b                	jmp    0x2dfeca
  2dfe8f:	f3 0f 10 84 24 90 00 00 00 	movss  xmm0,DWORD PTR [rsp+0x90]
  2dfe98:	4b 8d 1c c1          	lea    rbx,[r9+r8*8]
  2dfe9c:	4b 89 0c c1          	mov    QWORD PTR [r9+r8*8],rcx
  2dfea0:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2dfea5:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  2dfeab:	e8 38 f4 ff ff       	call   0x2df2e8
  2dfeb0:	48 8b d0             	mov    rdx,rax
  2dfeb3:	48 8d 4b 08          	lea    rcx,[rbx+0x8]
  2dfeb7:	e8 bc f6 ff ff       	call   0x2df578
  2dfebc:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2dfec1:	e8 ce f5 ff ff       	call   0x2df494
  2dfec6:	48 8d 43 08          	lea    rax,[rbx+0x8]
  2dfeca:	48 83 c4 60          	add    rsp,0x60
  2dfece:	5b                   	pop    rbx
  2dfecf:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2374 <.data+0x2e2374>:
  2e2374:	48 8b c4             	mov    rax,rsp
  2e2377:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  2e237b:	55                   	push   rbp
  2e237c:	48 8d a8 68 f6 ff ff 	lea    rbp,[rax-0x998]
  2e2383:	48 81 ec 90 0a 00 00 	sub    rsp,0xa90
  2e238a:	f2 41 0f 10 01       	movsd  xmm0,QWORD PTR [r9]
  2e238f:	4d 8b d0             	mov    r10,r8
  2e2392:	4c 8b c2             	mov    r8,rdx
  2e2395:	0f 29 78 e8          	movaps XMMWORD PTR [rax-0x18],xmm7
  2e2399:	41 8b 41 08          	mov    eax,DWORD PTR [r9+0x8]
  2e239d:	48 8d 54 24 60       	lea    rdx,[rsp+0x60]
  2e23a2:	48 8b d9             	mov    rbx,rcx
  2e23a5:	f2 0f 11 44 24 40    	movsd  QWORD PTR [rsp+0x40],xmm0
  2e23ab:	49 8b ca             	mov    rcx,r10
  2e23ae:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  2e23b2:	e8 15 d3 ff ff       	call   0x2df6cc
  2e23b7:	4c 8d 4c 24 40       	lea    r9,[rsp+0x40]
  2e23bc:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
  2e23c1:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e23c6:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  2e23ca:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e23cf:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  2e23d2:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  2e23d6:	48 8b 85 c0 09 00 00 	mov    rax,QWORD PTR [rbp+0x9c0]
  2e23dd:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  2e23e2:	c6 44 24 20 00       	mov    BYTE PTR [rsp+0x20],0x0
  2e23e7:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  2e23ed:	e8 82 00 00 00       	call   0x2e2474
  2e23f2:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [rsp+0x30]
  2e23f8:	f3 0f 5c 05 4c ae fa ff 	subss  xmm0,DWORD PTR [rip+0xfffffffffffaae4c]        # 0x28d24c
  2e2400:	e8 27 13 00 00       	call   0x2e372c
  2e2405:	f3 0f 10 3d c7 b6 fa ff 	movss  xmm7,DWORD PTR [rip+0xfffffffffffab6c7]        # 0x28dad4
  2e240d:	0f 2f f8             	comiss xmm7,xmm0
  2e2410:	76 3a                	jbe    0x2e244c
  2e2412:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [rsp+0x34]
  2e2418:	f3 0f 5c 05 2c ae fa ff 	subss  xmm0,DWORD PTR [rip+0xfffffffffffaae2c]        # 0x28d24c
  2e2420:	e8 07 13 00 00       	call   0x2e372c
  2e2425:	0f 2f f8             	comiss xmm7,xmm0
  2e2428:	76 22                	jbe    0x2e244c
  2e242a:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [rsp+0x38]
  2e2430:	f3 0f 5c 05 14 ae fa ff 	subss  xmm0,DWORD PTR [rip+0xfffffffffffaae14]        # 0x28d24c
  2e2438:	e8 ef 12 00 00       	call   0x2e372c
  2e243d:	0f 2f f8             	comiss xmm7,xmm0
  2e2440:	76 0a                	jbe    0x2e244c
  2e2442:	48 8b cb             	mov    rcx,rbx
  2e2445:	e8 72 57 0e 00       	call   0x3c7bbc
  2e244a:	eb 0d                	jmp    0x2e2459
  2e244c:	48 8b d3             	mov    rdx,rbx
  2e244f:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2e2454:	e8 1f ee ff ff       	call   0x2e1278
  2e2459:	4c 8d 9c 24 90 0a 00 00 	lea    r11,[rsp+0xa90]
  2e2461:	48 8b c3             	mov    rax,rbx
  2e2464:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  2e2468:	41 0f 28 7b f0       	movaps xmm7,XMMWORD PTR [r11-0x10]
  2e246d:	49 8b e3             	mov    rsp,r11
  2e2470:	5d                   	pop    rbp
  2e2471:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5a80 <.data+0x2e5a80>:
  2e5a80:	48 8b c4             	mov    rax,rsp
  2e5a83:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  2e5a87:	48 89 70 10          	mov    QWORD PTR [rax+0x10],rsi
  2e5a8b:	57                   	push   rdi
  2e5a8c:	48 83 ec 70          	sub    rsp,0x70
  2e5a90:	48 8b d9             	mov    rbx,rcx
  2e5a93:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  2e5a97:	49 8b f0             	mov    rsi,r8
  2e5a9a:	48 8b fa             	mov    rdi,rdx
  2e5a9d:	4c 8b c3             	mov    r8,rbx
  2e5aa0:	48 8d 50 a8          	lea    rdx,[rax-0x58]
  2e5aa4:	48 83 c1 0c          	add    rcx,0xc
  2e5aa8:	e8 1f 9c ff ff       	call   0x2df6cc
  2e5aad:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2e5ab2:	e8 31 b4 ff ff       	call   0x2e0ee8
  2e5ab7:	0f 28 f0             	movaps xmm6,xmm0
  2e5aba:	0f 2e 35 8b 77 fa ff 	ucomiss xmm6,DWORD PTR [rip+0xfffffffffffa778b]        # 0x28d24c
  2e5ac1:	7a 12                	jp     0x2e5ad5
  2e5ac3:	75 10                	jne    0x2e5ad5
  2e5ac5:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  2e5ac9:	f2 0f 11 07          	movsd  QWORD PTR [rdi],xmm0
  2e5acd:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  2e5ad0:	89 47 08             	mov    DWORD PTR [rdi+0x8],eax
  2e5ad3:	eb 5a                	jmp    0x2e5b2f
  2e5ad5:	0f 28 d6             	movaps xmm2,xmm6
  2e5ad8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e5add:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2e5ae2:	e8 5d 9c ff ff       	call   0x2df744
  2e5ae7:	4c 8b c3             	mov    r8,rbx
  2e5aea:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  2e5aef:	48 8b ce             	mov    rcx,rsi
  2e5af2:	e8 d5 9b ff ff       	call   0x2df6cc
  2e5af7:	48 8b c8             	mov    rcx,rax
  2e5afa:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e5aff:	e8 c0 00 00 00       	call   0x2e5bc4
  2e5b04:	0f 28 d6             	movaps xmm2,xmm6
  2e5b07:	0f 57 c9             	xorps  xmm1,xmm1
  2e5b0a:	e8 35 ff ff ff       	call   0x2e5a44
  2e5b0f:	0f 28 d0             	movaps xmm2,xmm0
  2e5b12:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
  2e5b17:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  2e5b1c:	e8 4b 9b ff ff       	call   0x2df66c
  2e5b21:	4c 8b c0             	mov    r8,rax
  2e5b24:	48 8b d7             	mov    rdx,rdi
  2e5b27:	48 8b cb             	mov    rcx,rbx
  2e5b2a:	e8 d9 9b ff ff       	call   0x2df708
  2e5b2f:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  2e5b34:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  2e5b39:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  2e5b3d:	48 8b c7             	mov    rax,rdi
  2e5b40:	49 8b 73 18          	mov    rsi,QWORD PTR [r11+0x18]
  2e5b44:	49 8b e3             	mov    rsp,r11
  2e5b47:	5f                   	pop    rdi
  2e5b48:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5b7c <.data+0x2e5b7c>:
  2e5b7c:	40 53                	rex push rbx
  2e5b7e:	48 83 ec 40          	sub    rsp,0x40
  2e5b82:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  2e5b87:	48 8b d9             	mov    rbx,rcx
  2e5b8a:	f3 0f 10 31          	movss  xmm6,DWORD PTR [rcx]
  2e5b8e:	0f 29 7c 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm7
  2e5b93:	0f 28 f9             	movaps xmm7,xmm1
  2e5b96:	e8 a5 06 00 00       	call   0x2e6240
  2e5b9b:	0f 2f c6             	comiss xmm0,xmm6
  2e5b9e:	76 11                	jbe    0x2e5bb1
  2e5ba0:	e8 9b 06 00 00       	call   0x2e6240
  2e5ba5:	f3 0f 58 c7          	addss  xmm0,xmm7
  2e5ba9:	b0 01                	mov    al,0x1
  2e5bab:	f3 0f 11 03          	movss  DWORD PTR [rbx],xmm0
  2e5baf:	eb 02                	jmp    0x2e5bb3
  2e5bb1:	32 c0                	xor    al,al
  2e5bb3:	0f 28 74 24 30       	movaps xmm6,XMMWORD PTR [rsp+0x30]
  2e5bb8:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
  2e5bbd:	48 83 c4 40          	add    rsp,0x40
  2e5bc1:	5b                   	pop    rbx
  2e5bc2:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e0ff0 <.data+0x2e0ff0>:
  2e0ff0:	48 8b c4             	mov    rax,rsp
  2e0ff3:	55                   	push   rbp
  2e0ff4:	53                   	push   rbx
  2e0ff5:	56                   	push   rsi
  2e0ff6:	57                   	push   rdi
  2e0ff7:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  2e0ffb:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  2e1002:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  2e1006:	48 8b da             	mov    rbx,rdx
  2e1009:	0f 29 78 b8          	movaps XMMWORD PTR [rax-0x48],xmm7
  2e100d:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  2e1011:	44 0f 29 40 a8       	movaps XMMWORD PTR [rax-0x58],xmm8
  2e1016:	48 8b f1             	mov    rsi,rcx
  2e1019:	44 0f 29 48 98       	movaps XMMWORD PTR [rax-0x68],xmm9
  2e101e:	48 8b cb             	mov    rcx,rbx
  2e1021:	44 0f 29 50 88       	movaps XMMWORD PTR [rax-0x78],xmm10
  2e1026:	49 8b f8             	mov    rdi,r8
  2e1029:	e8 4a 02 00 00       	call   0x2e1278
  2e102e:	f2 0f 10 33          	movsd  xmm6,QWORD PTR [rbx]
  2e1032:	4c 8d 45 b7          	lea    r8,[rbp-0x49]
  2e1036:	8b 5b 08             	mov    ebx,DWORD PTR [rbx+0x8]
  2e1039:	48 8d 55 d7          	lea    rdx,[rbp-0x29]
  2e103d:	48 8b cf             	mov    rcx,rdi
  2e1040:	f2 0f 11 75 b7       	movsd  QWORD PTR [rbp-0x49],xmm6
  2e1045:	89 5d bf             	mov    DWORD PTR [rbp-0x41],ebx
  2e1048:	e8 83 ee ff ff       	call   0x2dfed0
  2e104d:	48 8b c8             	mov    rcx,rax
  2e1050:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  2e1054:	e8 1f 02 00 00       	call   0x2e1278
  2e1059:	4c 8d 45 a7          	lea    r8,[rbp-0x59]
  2e105d:	48 8d 55 c7          	lea    rdx,[rbp-0x39]
  2e1061:	48 8d 4d b7          	lea    rcx,[rbp-0x49]
  2e1065:	e8 66 ee ff ff       	call   0x2dfed0
  2e106a:	f3 0f 10 4d cb       	movss  xmm1,DWORD PTR [rbp-0x35]
  2e106f:	f3 0f 10 45 a7       	movss  xmm0,DWORD PTR [rbp-0x59]
  2e1074:	0f 28 d9             	movaps xmm3,xmm1
  2e1077:	f3 44 0f 10 45 ab    	movss  xmm8,DWORD PTR [rbp-0x55]
  2e107d:	f3 0f 58 d8          	addss  xmm3,xmm0
  2e1081:	f3 44 0f 10 4d c7    	movss  xmm9,DWORD PTR [rbp-0x39]
  2e1087:	f3 0f 10 7d cf       	movss  xmm7,DWORD PTR [rbp-0x31]
  2e108c:	f3 44 0f 10 55 bb    	movss  xmm10,DWORD PTR [rbp-0x45]
  2e1092:	66 0f 6e d3          	movd   xmm2,ebx
  2e1096:	f3 0f 58 da          	addss  xmm3,xmm2
  2e109a:	0f 2f 1d ab c1 fa ff 	comiss xmm3,DWORD PTR [rip+0xfffffffffffac1ab]        # 0x28d24c
  2e10a1:	76 58                	jbe    0x2e10fb
  2e10a3:	f3 0f 58 1d a9 c1 fa ff 	addss  xmm3,DWORD PTR [rip+0xfffffffffffac1a9]        # 0x28d254
  2e10ab:	0f 28 c3             	movaps xmm0,xmm3
  2e10ae:	e8 d5 2b 00 00       	call   0x2e3c88
  2e10b3:	f3 0f 10 15 95 c1 fa ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffffac195]        # 0x28d250
  2e10bb:	f3 41 0f 5c fa       	subss  xmm7,xmm10
  2e10c0:	f3 0f 5c 75 af       	subss  xmm6,DWORD PTR [rbp-0x51]
  2e10c5:	0f 28 c8             	movaps xmm1,xmm0
  2e10c8:	f3 45 0f 5c c1       	subss  xmm8,xmm9
  2e10cd:	f3 0f 59 c2          	mulss  xmm0,xmm2
  2e10d1:	f3 0f 5e d1          	divss  xmm2,xmm1
  2e10d5:	f3 0f 11 46 0c       	movss  DWORD PTR [rsi+0xc],xmm0
  2e10da:	f3 0f 59 fa          	mulss  xmm7,xmm2
  2e10de:	f3 0f 59 f2          	mulss  xmm6,xmm2
  2e10e2:	f3 44 0f 59 c2       	mulss  xmm8,xmm2
  2e10e7:	f3 0f 11 3e          	movss  DWORD PTR [rsi],xmm7
  2e10eb:	f3 0f 11 76 04       	movss  DWORD PTR [rsi+0x4],xmm6
  2e10f0:	f3 44 0f 11 46 08    	movss  DWORD PTR [rsi+0x8],xmm8
  2e10f6:	e9 23 01 00 00       	jmp    0x2e121e
  2e10fb:	0f 2f c1             	comiss xmm0,xmm1
  2e10fe:	72 62                	jb     0x2e1162
  2e1100:	0f 2f c2             	comiss xmm0,xmm2
  2e1103:	72 5d                	jb     0x2e1162
  2e1105:	f3 0f 58 05 47 c1 fa ff 	addss  xmm0,DWORD PTR [rip+0xfffffffffffac147]        # 0x28d254
  2e110d:	f3 0f 5c c1          	subss  xmm0,xmm1
  2e1111:	f3 0f 5c c2          	subss  xmm0,xmm2
  2e1115:	e8 6e 2b 00 00       	call   0x2e3c88
  2e111a:	f3 0f 10 0d 2e c1 fa ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffffac12e]        # 0x28d250
  2e1122:	f3 45 0f 58 c8       	addss  xmm9,xmm8
  2e1127:	f3 0f 58 75 af       	addss  xmm6,DWORD PTR [rbp-0x51]
  2e112c:	0f 28 d1             	movaps xmm2,xmm1
  2e112f:	f3 41 0f 5c fa       	subss  xmm7,xmm10
  2e1134:	f3 0f 5e d0          	divss  xmm2,xmm0
  2e1138:	f3 0f 59 c1          	mulss  xmm0,xmm1
  2e113c:	f3 44 0f 59 ca       	mulss  xmm9,xmm2
  2e1141:	f3 0f 59 f2          	mulss  xmm6,xmm2
  2e1145:	f3 0f 59 fa          	mulss  xmm7,xmm2
  2e1149:	f3 44 0f 11 4e 04    	movss  DWORD PTR [rsi+0x4],xmm9
  2e114f:	f3 0f 11 76 08       	movss  DWORD PTR [rsi+0x8],xmm6
  2e1154:	f3 0f 11 7e 0c       	movss  DWORD PTR [rsi+0xc],xmm7
  2e1159:	f3 0f 11 06          	movss  DWORD PTR [rsi],xmm0
  2e115d:	e9 bc 00 00 00       	jmp    0x2e121e
  2e1162:	0f 2f ca             	comiss xmm1,xmm2
  2e1165:	f3 44 0f 58 d7       	addss  xmm10,xmm7
  2e116a:	76 5a                	jbe    0x2e11c6
  2e116c:	f3 0f 58 0d e0 c0 fa ff 	addss  xmm1,DWORD PTR [rip+0xfffffffffffac0e0]        # 0x28d254
  2e1174:	f3 0f 5c c8          	subss  xmm1,xmm0
  2e1178:	f3 0f 5c ca          	subss  xmm1,xmm2
  2e117c:	0f 28 c1             	movaps xmm0,xmm1
  2e117f:	e8 04 2b 00 00       	call   0x2e3c88
  2e1184:	f3 0f 10 0d c4 c0 fa ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffffac0c4]        # 0x28d250
  2e118c:	f3 45 0f 58 c8       	addss  xmm9,xmm8
  2e1191:	f3 0f 5c 75 af       	subss  xmm6,DWORD PTR [rbp-0x51]
  2e1196:	0f 28 d1             	movaps xmm2,xmm1
  2e1199:	f3 0f 5e d0          	divss  xmm2,xmm0
  2e119d:	f3 0f 59 c1          	mulss  xmm0,xmm1
  2e11a1:	f3 44 0f 59 ca       	mulss  xmm9,xmm2
  2e11a6:	f3 44 0f 59 d2       	mulss  xmm10,xmm2
  2e11ab:	f3 0f 59 f2          	mulss  xmm6,xmm2
  2e11af:	f3 44 0f 11 0e       	movss  DWORD PTR [rsi],xmm9
  2e11b4:	f3 44 0f 11 56 08    	movss  DWORD PTR [rsi+0x8],xmm10
  2e11ba:	f3 0f 11 76 0c       	movss  DWORD PTR [rsi+0xc],xmm6
  2e11bf:	f3 0f 11 46 04       	movss  DWORD PTR [rsi+0x4],xmm0
  2e11c4:	eb 58                	jmp    0x2e121e
  2e11c6:	f3 0f 58 15 86 c0 fa ff 	addss  xmm2,DWORD PTR [rip+0xfffffffffffac086]        # 0x28d254
  2e11ce:	f3 0f 5c d0          	subss  xmm2,xmm0
  2e11d2:	f3 0f 5c d1          	subss  xmm2,xmm1
  2e11d6:	0f 28 c2             	movaps xmm0,xmm2
  2e11d9:	e8 aa 2a 00 00       	call   0x2e3c88
  2e11de:	f3 0f 10 0d 6a c0 fa ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffffac06a]        # 0x28d250
  2e11e6:	f3 45 0f 5c c1       	subss  xmm8,xmm9
  2e11eb:	f3 0f 58 75 af       	addss  xmm6,DWORD PTR [rbp-0x51]
  2e11f0:	0f 28 d1             	movaps xmm2,xmm1
  2e11f3:	f3 0f 5e d0          	divss  xmm2,xmm0
  2e11f7:	f3 0f 59 c1          	mulss  xmm0,xmm1
  2e11fb:	f3 0f 59 f2          	mulss  xmm6,xmm2
  2e11ff:	f3 44 0f 59 d2       	mulss  xmm10,xmm2
  2e1204:	f3 44 0f 59 c2       	mulss  xmm8,xmm2
  2e1209:	f3 0f 11 36          	movss  DWORD PTR [rsi],xmm6
  2e120d:	f3 44 0f 11 56 04    	movss  DWORD PTR [rsi+0x4],xmm10
  2e1213:	f3 44 0f 11 46 0c    	movss  DWORD PTR [rsi+0xc],xmm8
  2e1219:	f3 0f 11 46 08       	movss  DWORD PTR [rsi+0x8],xmm0
  2e121e:	4c 8d 9c 24 b8 00 00 00 	lea    r11,[rsp+0xb8]
  2e1226:	48 8b c6             	mov    rax,rsi
  2e1229:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e122e:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e1233:	45 0f 28 43 c8       	movaps xmm8,XMMWORD PTR [r11-0x38]
  2e1238:	45 0f 28 4b b8       	movaps xmm9,XMMWORD PTR [r11-0x48]
  2e123d:	45 0f 28 53 a8       	movaps xmm10,XMMWORD PTR [r11-0x58]
  2e1242:	49 8b e3             	mov    rsp,r11
  2e1245:	5f                   	pop    rdi
  2e1246:	5e                   	pop    rsi
  2e1247:	5b                   	pop    rbx
  2e1248:	5d                   	pop    rbp
  2e1249:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e1278 <.data+0x2e1278>:
  2e1278:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2e127d:	57                   	push   rdi
  2e127e:	48 83 ec 20          	sub    rsp,0x20
  2e1282:	48 8b f9             	mov    rdi,rcx
  2e1285:	48 8b da             	mov    rbx,rdx
  2e1288:	48 8b ca             	mov    rcx,rdx
  2e128b:	e8 2c 69 0e 00       	call   0x3c7bbc
  2e1290:	48 8b cf             	mov    rcx,rdi
  2e1293:	e8 50 fc ff ff       	call   0x2e0ee8
  2e1298:	0f 57 c9             	xorps  xmm1,xmm1
  2e129b:	0f 2f c1             	comiss xmm0,xmm1
  2e129e:	76 25                	jbe    0x2e12c5
  2e12a0:	f3 0f 10 0f          	movss  xmm1,DWORD PTR [rdi]
  2e12a4:	f3 0f 5e c8          	divss  xmm1,xmm0
  2e12a8:	f3 0f 11 0b          	movss  DWORD PTR [rbx],xmm1
  2e12ac:	f3 0f 10 57 04       	movss  xmm2,DWORD PTR [rdi+0x4]
  2e12b1:	f3 0f 5e d0          	divss  xmm2,xmm0
  2e12b5:	f3 0f 11 53 04       	movss  DWORD PTR [rbx+0x4],xmm2
  2e12ba:	f3 0f 10 4f 08       	movss  xmm1,DWORD PTR [rdi+0x8]
  2e12bf:	f3 0f 5e c8          	divss  xmm1,xmm0
  2e12c3:	eb 07                	jmp    0x2e12cc
  2e12c5:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  2e12cc:	f3 0f 11 4b 08       	movss  DWORD PTR [rbx+0x8],xmm1
  2e12d1:	48 8b c3             	mov    rax,rbx
  2e12d4:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  2e12d9:	48 83 c4 20          	add    rsp,0x20
  2e12dd:	5f                   	pop    rdi
  2e12de:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320db4 <.data+0x320db4>:
  320db4:	48 8b c4             	mov    rax,rsp
  320db7:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  320dbb:	57                   	push   rdi
  320dbc:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  320dc3:	f3 41 0f 10 40 04    	movss  xmm0,DWORD PTR [r8+0x4]
  320dc9:	48 8b da             	mov    rbx,rdx
  320dcc:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  320dd0:	48 8b f9             	mov    rdi,rcx
  320dd3:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  320dd7:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  320ddc:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  320de1:	f3 45 0f 10 48 08    	movss  xmm9,DWORD PTR [r8+0x8]
  320de7:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  320dec:	f3 45 0f 58 c9       	addss  xmm9,xmm9
  320df1:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  320df6:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  320dfb:	44 0f 29 6c 24 30    	movaps XMMWORD PTR [rsp+0x30],xmm13
  320e01:	44 0f 28 e8          	movaps xmm13,xmm0
  320e05:	44 0f 29 74 24 20    	movaps XMMWORD PTR [rsp+0x20],xmm14
  320e0b:	f3 44 0f 58 e8       	addss  xmm13,xmm0
  320e10:	f3 45 0f 10 30       	movss  xmm14,DWORD PTR [r8]
  320e15:	41 0f 28 f1          	movaps xmm6,xmm9
  320e19:	f3 41 0f 59 70 08    	mulss  xmm6,DWORD PTR [r8+0x8]
  320e1f:	f3 45 0f 58 f6       	addss  xmm14,xmm14
  320e24:	45 0f 28 d1          	movaps xmm10,xmm9
  320e28:	45 0f 28 c1          	movaps xmm8,xmm9
  320e2c:	f3 45 0f 59 10       	mulss  xmm10,DWORD PTR [r8]
  320e31:	45 0f 28 dd          	movaps xmm11,xmm13
  320e35:	f3 45 0f 59 48 0c    	mulss  xmm9,DWORD PTR [r8+0xc]
  320e3b:	41 0f 28 fd          	movaps xmm7,xmm13
  320e3f:	f3 41 0f 59 38       	mulss  xmm7,DWORD PTR [r8]
  320e44:	45 0f 28 e6          	movaps xmm12,xmm14
  320e48:	f3 45 0f 59 20       	mulss  xmm12,DWORD PTR [r8]
  320e4d:	f3 45 0f 59 70 0c    	mulss  xmm14,DWORD PTR [r8+0xc]
  320e53:	f3 45 0f 59 68 0c    	mulss  xmm13,DWORD PTR [r8+0xc]
  320e59:	f3 44 0f 59 d8       	mulss  xmm11,xmm0
  320e5e:	f3 44 0f 59 c0       	mulss  xmm8,xmm0
  320e63:	e8 54 6d 0a 00       	call   0x3c7bbc
  320e68:	f3 0f 10 25 e4 c3 f6 ff 	movss  xmm4,DWORD PTR [rip+0xfffffffffff6c3e4]        # 0x28d254
  320e70:	4c 8d 9c 24 b0 00 00 00 	lea    r11,[rsp+0xb0]
  320e78:	0f 28 c6             	movaps xmm0,xmm6
  320e7b:	0f 28 cc             	movaps xmm1,xmm4
  320e7e:	f3 41 0f 58 c3       	addss  xmm0,xmm11
  320e83:	0f 28 d7             	movaps xmm2,xmm7
  320e86:	f3 41 0f 5c d1       	subss  xmm2,xmm9
  320e8b:	41 0f 28 dd          	movaps xmm3,xmm13
  320e8f:	f3 41 0f 58 da       	addss  xmm3,xmm10
  320e94:	48 8b c7             	mov    rax,rdi
  320e97:	f3 41 0f 58 f4       	addss  xmm6,xmm12
  320e9c:	f3 44 0f 58 cf       	addss  xmm9,xmm7
  320ea1:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  320ea6:	f3 0f 5c c8          	subss  xmm1,xmm0
  320eaa:	41 0f 28 c0          	movaps xmm0,xmm8
  320eae:	f3 0f 59 53 04       	mulss  xmm2,DWORD PTR [rbx+0x4]
  320eb3:	f3 41 0f 5c c6       	subss  xmm0,xmm14
  320eb8:	f3 0f 59 5b 08       	mulss  xmm3,DWORD PTR [rbx+0x8]
  320ebd:	f3 45 0f 58 f0       	addss  xmm14,xmm8
  320ec2:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  320ec7:	f3 45 0f 58 dc       	addss  xmm11,xmm12
  320ecc:	f3 0f 59 0b          	mulss  xmm1,DWORD PTR [rbx]
  320ed0:	f3 45 0f 5c d5       	subss  xmm10,xmm13
  320ed5:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  320eda:	f3 0f 58 ca          	addss  xmm1,xmm2
  320ede:	f3 0f 58 cb          	addss  xmm1,xmm3
  320ee2:	f3 0f 11 0f          	movss  DWORD PTR [rdi],xmm1
  320ee6:	0f 28 cc             	movaps xmm1,xmm4
  320ee9:	f3 44 0f 59 0b       	mulss  xmm9,DWORD PTR [rbx]
  320eee:	f3 0f 5c ce          	subss  xmm1,xmm6
  320ef2:	f3 0f 59 43 08       	mulss  xmm0,DWORD PTR [rbx+0x8]
  320ef7:	f3 41 0f 5c e3       	subss  xmm4,xmm11
  320efc:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  320f01:	f3 0f 59 4b 04       	mulss  xmm1,DWORD PTR [rbx+0x4]
  320f06:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  320f0b:	f3 41 0f 58 c9       	addss  xmm1,xmm9
  320f10:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  320f15:	f3 0f 58 c8          	addss  xmm1,xmm0
  320f19:	f3 0f 11 4f 04       	movss  DWORD PTR [rdi+0x4],xmm1
  320f1e:	f3 44 0f 59 73 04    	mulss  xmm14,DWORD PTR [rbx+0x4]
  320f24:	f3 44 0f 59 13       	mulss  xmm10,DWORD PTR [rbx]
  320f29:	f3 0f 59 63 08       	mulss  xmm4,DWORD PTR [rbx+0x8]
  320f2e:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  320f32:	f3 45 0f 58 f2       	addss  xmm14,xmm10
  320f37:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  320f3c:	f3 44 0f 58 f4       	addss  xmm14,xmm4
  320f41:	f3 44 0f 11 77 08    	movss  DWORD PTR [rdi+0x8],xmm14
  320f47:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  320f4c:	44 0f 28 74 24 20    	movaps xmm14,XMMWORD PTR [rsp+0x20]
  320f52:	49 8b e3             	mov    rsp,r11
  320f55:	5f                   	pop    rdi
  320f56:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002dfed0 <.data+0x2dfed0>:
  2dfed0:	40 53                	rex push rbx
  2dfed2:	48 83 ec 20          	sub    rsp,0x20
  2dfed6:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2dfedb:	48 8b da             	mov    rbx,rdx
  2dfede:	f3 41 0f 59 00       	mulss  xmm0,DWORD PTR [r8]
  2dfee3:	f3 0f 10 61 08       	movss  xmm4,DWORD PTR [rcx+0x8]
  2dfee8:	f3 0f 10 19          	movss  xmm3,DWORD PTR [rcx]
  2dfeec:	0f 28 d4             	movaps xmm2,xmm4
  2dfeef:	f3 41 0f 10 48 08    	movss  xmm1,DWORD PTR [r8+0x8]
  2dfef5:	f3 41 0f 59 58 04    	mulss  xmm3,DWORD PTR [r8+0x4]
  2dfefb:	f3 41 0f 59 10       	mulss  xmm2,DWORD PTR [r8]
  2dff00:	f3 41 0f 59 60 04    	mulss  xmm4,DWORD PTR [r8+0x4]
  2dff06:	f3 0f 5c d8          	subss  xmm3,xmm0
  2dff0a:	0f 28 c1             	movaps xmm0,xmm1
  2dff0d:	f3 0f 59 49 04       	mulss  xmm1,DWORD PTR [rcx+0x4]
  2dff12:	f3 0f 59 01          	mulss  xmm0,DWORD PTR [rcx]
  2dff16:	48 8b ca             	mov    rcx,rdx
  2dff19:	f3 0f 5c cc          	subss  xmm1,xmm4
  2dff1d:	f3 0f 5c d0          	subss  xmm2,xmm0
  2dff21:	e8 82 7c 0e 00       	call   0x3c7ba8
  2dff26:	48 8b c3             	mov    rax,rbx
  2dff29:	48 83 c4 20          	add    rsp,0x20
  2dff2d:	5b                   	pop    rbx
  2dff2e:	c3                   	ret
  2dff2f:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e5a44 <.data+0x2e5a44>:
  2e5a44:	0f 2f c8             	comiss xmm1,xmm0
  2e5a47:	77 07                	ja     0x2e5a50
  2e5a49:	0f 28 ca             	movaps xmm1,xmm2
  2e5a4c:	f3 0f 5d c8          	minss  xmm1,xmm0
  2e5a50:	0f 28 c1             	movaps xmm0,xmm1
  2e5a53:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032a454 <.data+0x32a454>:
  32a454:	45 85 c0             	test   r8d,r8d
  32a457:	0f 8e 90 00 00 00    	jle    0x32a4ed
  32a45d:	53                   	push   rbx
  32a45e:	55                   	push   rbp
  32a45f:	56                   	push   rsi
  32a460:	57                   	push   rdi
  32a461:	41 56                	push   r14
  32a463:	41 57                	push   r15
  32a465:	48 83 ec 38          	sub    rsp,0x38
  32a469:	49 8b f9             	mov    rdi,r9
  32a46c:	41 8b f0             	mov    esi,r8d
  32a46f:	4c 8b fa             	mov    r15,rdx
  32a472:	4c 8b f1             	mov    r14,rcx
  32a475:	33 ed                	xor    ebp,ebp
  32a477:	f3 0f 10 9c 24 90 00 00 00 	movss  xmm3,DWORD PTR [rsp+0x90]
  32a480:	48 8d 1c 6d 00 00 00 00 	lea    rbx,[rbp*2+0x0]
  32a488:	f3 0f 10 94 24 90 00 00 00 	movss  xmm2,DWORD PTR [rsp+0x90]
  32a491:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  32a496:	f3 0f 10 8c 24 90 00 00 00 	movss  xmm1,DWORD PTR [rsp+0x90]
  32a49f:	48 03 dd             	add    rbx,rbp
  32a4a2:	f3 41 0f 59 5c 9e 08 	mulss  xmm3,DWORD PTR [r14+rbx*4+0x8]
  32a4a9:	f3 41 0f 59 54 9e 04 	mulss  xmm2,DWORD PTR [r14+rbx*4+0x4]
  32a4b0:	f3 41 0f 59 0c 9e    	mulss  xmm1,DWORD PTR [r14+rbx*4]
  32a4b6:	f3 0f 58 5f 08       	addss  xmm3,DWORD PTR [rdi+0x8]
  32a4bb:	f3 0f 58 57 04       	addss  xmm2,DWORD PTR [rdi+0x4]
  32a4c0:	f3 0f 58 0f          	addss  xmm1,DWORD PTR [rdi]
  32a4c4:	e8 df d6 09 00       	call   0x3c7ba8
  32a4c9:	ff c5                	inc    ebp
  32a4cb:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  32a4cf:	f2 41 0f 11 04 9f    	movsd  QWORD PTR [r15+rbx*4],xmm0
  32a4d5:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  32a4d8:	41 89 44 9f 08       	mov    DWORD PTR [r15+rbx*4+0x8],eax
  32a4dd:	3b ee                	cmp    ebp,esi
  32a4df:	7c 96                	jl     0x32a477
  32a4e1:	48 83 c4 38          	add    rsp,0x38
  32a4e5:	41 5f                	pop    r15
  32a4e7:	41 5e                	pop    r14
  32a4e9:	5f                   	pop    rdi
  32a4ea:	5e                   	pop    rsi
  32a4eb:	5d                   	pop    rbp
  32a4ec:	5b                   	pop    rbx
  32a4ed:	c3                   	ret
  32a4ee:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032a770 <.data+0x32a770>:
  32a770:	40 55                	rex push rbp
  32a772:	53                   	push   rbx
  32a773:	56                   	push   rsi
  32a774:	57                   	push   rdi
  32a775:	48 8d 6c 24 c1       	lea    rbp,[rsp-0x3f]
  32a77a:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  32a781:	8b 05 c9 ca 0a 00    	mov    eax,DWORD PTR [rip+0xacac9]        # 0x3d7250
  32a787:	4c 8d 4d f7          	lea    r9,[rbp-0x9]
  32a78b:	f2 0f 10 05 b5 ca 0a 00 	movsd  xmm0,QWORD PTR [rip+0xacab5]        # 0x3d7248
  32a793:	49 8b f0             	mov    rsi,r8
  32a796:	89 45 ff             	mov    DWORD PTR [rbp-0x1],eax
  32a799:	4c 8d 45 07          	lea    r8,[rbp+0x7]
  32a79d:	8b 42 08             	mov    eax,DWORD PTR [rdx+0x8]
  32a7a0:	48 8b da             	mov    rbx,rdx
  32a7a3:	f2 0f 11 45 f7       	movsd  QWORD PTR [rbp-0x9],xmm0
  32a7a8:	48 8b f9             	mov    rdi,rcx
  32a7ab:	f2 0f 10 02          	movsd  xmm0,QWORD PTR [rdx]
  32a7af:	48 8d 55 17          	lea    rdx,[rbp+0x17]
  32a7b3:	89 45 0f             	mov    DWORD PTR [rbp+0xf],eax
  32a7b6:	8b 41 08             	mov    eax,DWORD PTR [rcx+0x8]
  32a7b9:	f2 0f 11 45 07       	movsd  QWORD PTR [rbp+0x7],xmm0
  32a7be:	f2 0f 10 01          	movsd  xmm0,QWORD PTR [rcx]
  32a7c2:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  32a7c6:	89 45 1f             	mov    DWORD PTR [rbp+0x1f],eax
  32a7c9:	48 8b 05 48 af 0b 00 	mov    rax,QWORD PTR [rip+0xbaf48]        # 0x3e5718
  32a7d0:	f2 0f 11 45 17       	movsd  QWORD PTR [rbp+0x17],xmm0
  32a7d5:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  32a7da:	e8 95 7b fb ff       	call   0x2e2374
  32a7df:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  32a7e3:	e8 70 93 fb ff       	call   0x2e3b58
  32a7e8:	84 c0                	test   al,al
  32a7ea:	74 07                	je     0x32a7f3
  32a7ec:	b8 02 00 00 00       	mov    eax,0x2
  32a7f1:	eb 67                	jmp    0x32a85a
  32a7f3:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  32a7f7:	4c 8d 45 07          	lea    r8,[rbp+0x7]
  32a7fb:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  32a7fe:	48 8d 55 f7          	lea    rdx,[rbp-0x9]
  32a802:	4c 8b 0d 0f af 0b 00 	mov    r9,QWORD PTR [rip+0xbaf0f]        # 0x3e5718
  32a809:	48 8d 4d 27          	lea    rcx,[rbp+0x27]
  32a80d:	89 45 1f             	mov    DWORD PTR [rbp+0x1f],eax
  32a810:	8b 45 ef             	mov    eax,DWORD PTR [rbp-0x11]
  32a813:	f2 0f 11 45 17       	movsd  QWORD PTR [rbp+0x17],xmm0
  32a818:	f2 0f 10 45 e7       	movsd  xmm0,QWORD PTR [rbp-0x19]
  32a81d:	89 45 0f             	mov    DWORD PTR [rbp+0xf],eax
  32a820:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  32a823:	f2 0f 11 45 07       	movsd  QWORD PTR [rbp+0x7],xmm0
  32a828:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  32a82c:	89 45 ff             	mov    DWORD PTR [rbp-0x1],eax
  32a82f:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
  32a832:	f2 0f 11 45 f7       	movsd  QWORD PTR [rbp-0x9],xmm0
  32a837:	f2 0f 10 07          	movsd  xmm0,QWORD PTR [rdi]
  32a83b:	89 45 2f             	mov    DWORD PTR [rbp+0x2f],eax
  32a83e:	48 8d 45 17          	lea    rax,[rbp+0x17]
  32a842:	f2 0f 11 45 27       	movsd  QWORD PTR [rbp+0x27],xmm0
  32a847:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  32a84c:	e8 9f fc ff ff       	call   0x32a4f0
  32a851:	33 c9                	xor    ecx,ecx
  32a853:	84 c0                	test   al,al
  32a855:	0f 94 c1             	sete   cl
  32a858:	8b c1                	mov    eax,ecx
  32a85a:	48 81 c4 88 00 00 00 	add    rsp,0x88
  32a861:	5f                   	pop    rdi
  32a862:	5e                   	pop    rsi
  32a863:	5b                   	pop    rbx
  32a864:	5d                   	pop    rbp
  32a865:	c3                   	ret
  32a866:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000329a68 <.data+0x329a68>:
  329a68:	66 0f 7e c8          	movd   eax,xmm1
  329a6c:	05 6e 54 63 e5       	add    eax,0xe563546e
  329a71:	35 ae b1 ba c6       	xor    eax,0xc6bab1ae
  329a76:	c1 c8 04             	ror    eax,0x4
  329a79:	35 f6 58 bc 76       	xor    eax,0x76bc58f6
  329a7e:	89 81 18 01 00 00    	mov    DWORD PTR [rcx+0x118],eax
  329a84:	c3                   	ret
  329a85:	cc                   	int3
  329a86:	cc                   	int3
  329a87:	cc                   	int3
  329a88:	66 0f 7e c8          	movd   eax,xmm1
  329a8c:	c1 c8 19             	ror    eax,0x19
  329a8f:	35 1f 33 74 6f       	xor    eax,0x6f74331f
  329a94:	c1 c8 06             	ror    eax,0x6
  329a97:	89 81 20 01 00 00    	mov    DWORD PTR [rcx+0x120],eax
  329a9d:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000320c2c <.data+0x320c2c>:
  320c2c:	0f 28 c8             	movaps xmm1,xmm0
  320c2f:	0f 57 c0             	xorps  xmm0,xmm0
  320c32:	0f 2e c8             	ucomiss xmm1,xmm0
  320c35:	7a 06                	jp     0x320c3d
  320c37:	0f 84 91 00 00 00    	je     0x320cce
  320c3d:	f3 0f 11 4c 24 08    	movss  DWORD PTR [rsp+0x8],xmm1
  320c43:	41 b9 01 00 00 00    	mov    r9d,0x1
  320c49:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
  320c4d:	8b c8                	mov    ecx,eax
  320c4f:	c1 f9 17             	sar    ecx,0x17
  320c52:	44 8b c0             	mov    r8d,eax
  320c55:	41 81 e0 ff ff 7f 00 	and    r8d,0x7fffff
  320c5c:	44 0f b6 d1          	movzx  r10d,cl
  320c60:	41 8d 4a 81          	lea    ecx,[r10-0x7f]
  320c64:	8b d1                	mov    edx,ecx
  320c66:	f7 da                	neg    edx
  320c68:	0f 48 d1             	cmovs  edx,ecx
  320c6b:	85 d2                	test   edx,edx
  320c6d:	74 08                	je     0x320c77
  320c6f:	45 03 c9             	add    r9d,r9d
  320c72:	83 ea 01             	sub    edx,0x1
  320c75:	75 f8                	jne    0x320c6f
  320c77:	41 bb 00 00 80 00    	mov    r11d,0x800000
  320c7d:	c1 f8 1f             	sar    eax,0x1f
  320c80:	4d 0b c3             	or     r8,r11
  320c83:	49 63 d1             	movsxd rdx,r9d
  320c86:	41 83 fa 7f          	cmp    r10d,0x7f
  320c8a:	72 09                	jb     0x320c95
  320c8c:	48 8b ca             	mov    rcx,rdx
  320c8f:	49 0f af c8          	imul   rcx,r8
  320c93:	eb 03                	jmp    0x320c98
  320c95:	49 8b c8             	mov    rcx,r8
  320c98:	f3 0f 10 0d b4 c5 f6 ff 	movss  xmm1,DWORD PTR [rip+0xfffffffffff6c5b4]        # 0x28d254
  320ca0:	48 c1 e2 17          	shl    rdx,0x17
  320ca4:	41 83 fa 7f          	cmp    r10d,0x7f
  320ca8:	49 0f 43 d3          	cmovae rdx,r11
  320cac:	eb 07                	jmp    0x320cb5
  320cae:	f3 0f 58 c1          	addss  xmm0,xmm1
  320cb2:	48 2b ca             	sub    rcx,rdx
  320cb5:	48 3b ca             	cmp    rcx,rdx
  320cb8:	73 f4                	jae    0x320cae
  320cba:	85 c0                	test   eax,eax
  320cbc:	74 10                	je     0x320cce
  320cbe:	0f 57 05 db 25 f7 ff 	xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff725db]        # 0x2932a0
  320cc5:	48 85 c9             	test   rcx,rcx
  320cc8:	74 04                	je     0x320cce
  320cca:	f3 0f 5c c1          	subss  xmm0,xmm1
  320cce:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8f34 <.data+0x3c8f34>:
  3c8f34:	e9 4f ad f1 ff       	jmp    0x2e3c88


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002df578 <.data+0x2df578>:
  2df578:	40 53                	rex push rbx
  2df57a:	48 83 ec 20          	sub    rsp,0x20
  2df57e:	8b 02                	mov    eax,DWORD PTR [rdx]
  2df580:	48 8b d9             	mov    rbx,rcx
  2df583:	89 01                	mov    DWORD PTR [rcx],eax
  2df585:	8b 42 04             	mov    eax,DWORD PTR [rdx+0x4]
  2df588:	89 41 04             	mov    DWORD PTR [rcx+0x4],eax
  2df58b:	8b 42 08             	mov    eax,DWORD PTR [rdx+0x8]
  2df58e:	89 41 08             	mov    DWORD PTR [rcx+0x8],eax
  2df591:	8b 42 0c             	mov    eax,DWORD PTR [rdx+0xc]
  2df594:	48 83 c2 10          	add    rdx,0x10
  2df598:	89 41 0c             	mov    DWORD PTR [rcx+0xc],eax
  2df59b:	48 83 c1 10          	add    rcx,0x10
  2df59f:	e8 50 ff ff ff       	call   0x2df4f4
  2df5a4:	48 8b c3             	mov    rax,rbx
  2df5a7:	48 83 c4 20          	add    rsp,0x20
  2df5ab:	5b                   	pop    rbx
  2df5ac:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e3734 <.data+0x2e3734>:
  2e3734:	40 55                	rex push rbp
  2e3736:	53                   	push   rbx
  2e3737:	56                   	push   rsi
  2e3738:	57                   	push   rdi
  2e3739:	48 8b ec             	mov    rbp,rsp
  2e373c:	48 83 ec 68          	sub    rsp,0x68
  2e3740:	0f 29 74 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm6
  2e3745:	48 8b da             	mov    rbx,rdx
  2e3748:	0f 57 f6             	xorps  xmm6,xmm6
  2e374b:	0f 29 7c 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm7
  2e3750:	f2 0f 5a f2          	cvtsd2ss xmm6,xmm2
  2e3754:	48 8b f1             	mov    rsi,rcx
  2e3757:	44 0f 29 4c 24 30    	movaps XMMWORD PTR [rsp+0x30],xmm9
  2e375d:	0f 28 c6             	movaps xmm0,xmm6
  2e3760:	e8 33 ca ff ff       	call   0x2e0198
  2e3765:	0f 28 f8             	movaps xmm7,xmm0
  2e3768:	0f 28 c6             	movaps xmm0,xmm6
  2e376b:	e8 f8 c7 ff ff       	call   0x2dff68
  2e3770:	0f 28 c8             	movaps xmm1,xmm0
  2e3773:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2e3777:	0f 28 d7             	movaps xmm2,xmm7
  2e377a:	e8 c1 8b fe ff       	call   0x2cc340
  2e377f:	f3 0f 10 16          	movss  xmm2,DWORD PTR [rsi]
  2e3783:	48 8d 55 28          	lea    rdx,[rbp+0x28]
  2e3787:	48 8b c8             	mov    rcx,rax
  2e378a:	e8 b5 be ff ff       	call   0x2df644
  2e378f:	0f 57 f6             	xorps  xmm6,xmm6
  2e3792:	0f 2f 75 28          	comiss xmm6,DWORD PTR [rbp+0x28]
  2e3796:	76 26                	jbe    0x2e37be
  2e3798:	f3 0f 10 4d 2c       	movss  xmm1,DWORD PTR [rbp+0x2c]
  2e379d:	f3 0f 10 06          	movss  xmm0,DWORD PTR [rsi]
  2e37a1:	e8 1a fc ff ff       	call   0x2e33c0
  2e37a6:	0f 28 d0             	movaps xmm2,xmm0
  2e37a9:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  2e37ad:	0f 57 c9             	xorps  xmm1,xmm1
  2e37b0:	e8 8b 8b fe ff       	call   0x2cc340
  2e37b5:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  2e37b9:	f2 0f 11 45 28       	movsd  QWORD PTR [rbp+0x28],xmm0
  2e37be:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2e37c2:	e8 a9 10 ff ff       	call   0x2d4870
  2e37c7:	f3 0f 10 7e 08       	movss  xmm7,DWORD PTR [rsi+0x8]
  2e37cc:	45 0f 57 c9          	xorps  xmm9,xmm9
  2e37d0:	f3 0f 59 3d 40 a3 fa ff 	mulss  xmm7,DWORD PTR [rip+0xfffffffffffaa340]        # 0x28db18
  2e37d8:	33 ff                	xor    edi,edi
  2e37da:	48 c7 83 00 0a 00 00 00 00 00 00 	mov    QWORD PTR [rbx+0xa00],0x0
  2e37e5:	f3 0f 59 3d ef a2 fa ff 	mulss  xmm7,DWORD PTR [rip+0xfffffffffffaa2ef]        # 0x28dadc
  2e37ed:	f3 0f 10 15 e7 a2 fa ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffffaa2e7]        # 0x28dadc
  2e37f5:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  2e37f9:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  2e37fd:	e8 42 be ff ff       	call   0x2df644
  2e3802:	83 bb 04 0a 00 00 00 	cmp    DWORD PTR [rbx+0xa04],0x0
  2e3809:	75 2f                	jne    0x2e383a
  2e380b:	f3 0f 58 35 c9 a2 fa ff 	addss  xmm6,DWORD PTR [rip+0xfffffffffffaa2c9]        # 0x28dadc
  2e3813:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2e3817:	e8 b0 d6 ff ff       	call   0x2e0ecc
  2e381c:	0f 2f 35 c1 a2 fa ff 	comiss xmm6,DWORD PTR [rip+0xfffffffffffaa2c1]        # 0x28dae4
  2e3823:	f3 44 0f 58 c8       	addss  xmm9,xmm0
  2e3828:	72 10                	jb     0x2e383a
  2e382a:	44 0f 2f 4e 0c       	comiss xmm9,DWORD PTR [rsi+0xc]
  2e382f:	72 09                	jb     0x2e383a
  2e3831:	8d 47 01             	lea    eax,[rdi+0x1]
  2e3834:	89 83 04 0a 00 00    	mov    DWORD PTR [rbx+0xa04],eax
  2e383a:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  2e383e:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2e3842:	e8 65 c5 ff ff       	call   0x2dfdac
  2e3847:	f3 0f 10 45 2c       	movss  xmm0,DWORD PTR [rbp+0x2c]
  2e384c:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  2e3850:	f3 0f 10 56 04       	movss  xmm2,DWORD PTR [rsi+0x4]
  2e3855:	f3 0f 5c c7          	subss  xmm0,xmm7
  2e3859:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  2e385d:	f3 0f 11 45 2c       	movss  DWORD PTR [rbp+0x2c],xmm0
  2e3862:	e8 dd bd ff ff       	call   0x2df644
  2e3867:	f3 0f 10 15 6d a2 fa ff 	movss  xmm2,DWORD PTR [rip+0xfffffffffffaa26d]        # 0x28dadc
  2e386f:	48 8d 55 b8          	lea    rdx,[rbp-0x48]
  2e3873:	48 8b c8             	mov    rcx,rax
  2e3876:	e8 c9 bd ff ff       	call   0x2df644
  2e387b:	4c 8b c0             	mov    r8,rax
  2e387e:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  2e3882:	48 8d 4d 28          	lea    rcx,[rbp+0x28]
  2e3886:	e8 11 be ff ff       	call   0x2df69c
  2e388b:	f3 0f 10 4d 30       	movss  xmm1,DWORD PTR [rbp+0x30]
  2e3890:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  2e3894:	f2 0f 11 45 28       	movsd  QWORD PTR [rbp+0x28],xmm0
  2e3899:	f3 0f 10 45 34       	movss  xmm0,DWORD PTR [rbp+0x34]
  2e389e:	f3 0f 11 84 bb 00 05 00 00 	movss  DWORD PTR [rbx+rdi*4+0x500],xmm0
  2e38a7:	f3 0f 11 0c bb       	movss  DWORD PTR [rbx+rdi*4],xmm1
  2e38ac:	0f 2f 8b 00 0a 00 00 	comiss xmm1,DWORD PTR [rbx+0xa00]
  2e38b3:	76 08                	jbe    0x2e38bd
  2e38b5:	f3 0f 11 8b 00 0a 00 00 	movss  DWORD PTR [rbx+0xa00],xmm1
  2e38bd:	ff c7                	inc    edi
  2e38bf:	81 ff 40 01 00 00    	cmp    edi,0x140
  2e38c5:	0f 8c 22 ff ff ff    	jl     0x2e37ed
  2e38cb:	0f 28 74 24 50       	movaps xmm6,XMMWORD PTR [rsp+0x50]
  2e38d0:	0f 28 7c 24 40       	movaps xmm7,XMMWORD PTR [rsp+0x40]
  2e38d5:	44 0f 28 4c 24 30    	movaps xmm9,XMMWORD PTR [rsp+0x30]
  2e38db:	48 83 c4 68          	add    rsp,0x68
  2e38df:	5f                   	pop    rdi
  2e38e0:	5e                   	pop    rsi
  2e38e1:	5b                   	pop    rbx
  2e38e2:	5d                   	pop    rbp
  2e38e3:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000318bac <.data+0x318bac>:
  318bac:	f2 0f 59 05 2c a5 f7 ff 	mulsd  xmm0,QWORD PTR [rip+0xfffffffffff7a52c]        # 0x2930e0
  318bb4:	c3                   	ret
