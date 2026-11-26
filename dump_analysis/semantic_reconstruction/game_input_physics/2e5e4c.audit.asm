
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e5e4c.audit.bin:     file format binary


Disassembly of section .data:

00000000002e5e4c <.data>:
  2e5e4c:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  2e5e51:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  2e5e56:	57                                              	push   rdi
  2e5e57:	48 83 ec 20                                     	sub    rsp,0x20
  2e5e5b:	40 8a f2                                        	mov    sil,dl
  2e5e5e:	8b d9                                           	mov    ebx,ecx
  2e5e60:	e8 47 c8 0a 00                                  	call   0x3926ac
  2e5e65:	48 8b f8                                        	mov    rdi,rax
  2e5e68:	e8 d7 08 00 00                                  	call   0x2e6744
  2e5e6d:	33 c9                                           	xor    ecx,ecx
  2e5e6f:	84 c0                                           	test   al,al
  2e5e71:	74 09                                           	je     0x2e5e7c
  2e5e73:	40 84 f6                                        	test   sil,sil
  2e5e76:	74 04                                           	je     0x2e5e7c
  2e5e78:	32 c0                                           	xor    al,al
  2e5e7a:	eb 4c                                           	jmp    0x2e5ec8
  2e5e7c:	81 fb 2b 02 00 00                               	cmp    ebx,0x22b
  2e5e82:	75 08                                           	jne    0x2e5e8c
  2e5e84:	38 8f 08 0e 00 00                               	cmp    BYTE PTR [rdi+0xe08],cl
  2e5e8a:	eb 2e                                           	jmp    0x2e5eba
  2e5e8c:	81 fb 2c 02 00 00                               	cmp    ebx,0x22c
  2e5e92:	75 08                                           	jne    0x2e5e9c
  2e5e94:	38 8f 09 0e 00 00                               	cmp    BYTE PTR [rdi+0xe09],cl
  2e5e9a:	eb 1e                                           	jmp    0x2e5eba
  2e5e9c:	81 fb 2d 02 00 00                               	cmp    ebx,0x22d
  2e5ea2:	75 08                                           	jne    0x2e5eac
  2e5ea4:	38 8f 0a 0e 00 00                               	cmp    BYTE PTR [rdi+0xe0a],cl
  2e5eaa:	eb 0e                                           	jmp    0x2e5eba
  2e5eac:	81 fb 2e 02 00 00                               	cmp    ebx,0x22e
  2e5eb2:	75 24                                           	jne    0x2e5ed8
  2e5eb4:	38 8f 0b 0e 00 00                               	cmp    BYTE PTR [rdi+0xe0b],cl
  2e5eba:	75 2c                                           	jne    0x2e5ee8
  2e5ebc:	ba 02 00 00 00                                  	mov    edx,0x2
  2e5ec1:	8b cb                                           	mov    ecx,ebx
  2e5ec3:	e8 b4 3d 00 00                                  	call   0x2e9c7c
  2e5ec8:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  2e5ecd:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  2e5ed2:	48 83 c4 20                                     	add    rsp,0x20
  2e5ed6:	5f                                              	pop    rdi
  2e5ed7:	c3                                              	ret
  2e5ed8:	81 fb 2f 02 00 00                               	cmp    ebx,0x22f
  2e5ede:	75 dc                                           	jne    0x2e5ebc
  2e5ee0:	38 8f 0c 0e 00 00                               	cmp    BYTE PTR [rdi+0xe0c],cl
  2e5ee6:	74 d4                                           	je     0x2e5ebc
  2e5ee8:	b0 01                                           	mov    al,0x1
  2e5eea:	eb dc                                           	jmp    0x2e5ec8
