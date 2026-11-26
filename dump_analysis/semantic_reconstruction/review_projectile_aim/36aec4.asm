
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036aec4 <.data+0x36aec4>:
  36aec4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  36aec9:	57                                              	push   rdi
  36aeca:	48 83 ec 20                                     	sub    rsp,0x20
  36aece:	40 8a fa                                        	mov    dil,dl
  36aed1:	48 8b d9                                        	mov    rbx,rcx
  36aed4:	e8 2f 00 f6 ff                                  	call   0x2caf08
  36aed9:	84 c0                                           	test   al,al
  36aedb:	74 6e                                           	je     0x36af4b
  36aedd:	84 d2                                           	test   dl,dl
  36aedf:	75 0c                                           	jne    0x36aeed
  36aee1:	48 8b cb                                        	mov    rcx,rbx
  36aee4:	e8 8f f2 ff ff                                  	call   0x36a178
  36aee9:	84 c0                                           	test   al,al
  36aeeb:	74 02                                           	je     0x36aeef
  36aeed:	b0 01                                           	mov    al,0x1
  36aeef:	80 3d 32 c5 07 00 00                            	cmp    BYTE PTR [rip+0x7c532],0x0        # 0x3e7428
  36aef6:	75 04                                           	jne    0x36aefc
  36aef8:	84 c0                                           	test   al,al
  36aefa:	75 4f                                           	jne    0x36af4b
  36aefc:	48 8b cb                                        	mov    rcx,rbx
  36aeff:	e8 ac e4 ff ff                                  	call   0x3693b0
  36af04:	84 c0                                           	test   al,al
  36af06:	75 43                                           	jne    0x36af4b
  36af08:	40 84 ff                                        	test   dil,dil
  36af0b:	75 3a                                           	jne    0x36af47
  36af0d:	48 8b cb                                        	mov    rcx,rbx
  36af10:	e8 a3 fd ff ff                                  	call   0x36acb8
  36af15:	84 c0                                           	test   al,al
  36af17:	75 32                                           	jne    0x36af4b
  36af19:	38 05 99 36 09 00                               	cmp    BYTE PTR [rip+0x93699],al        # 0x3fe5b8
  36af1f:	75 0c                                           	jne    0x36af2d
  36af21:	48 8b cb                                        	mov    rcx,rbx
  36af24:	e8 5f 03 00 00                                  	call   0x36b288
  36af29:	84 c0                                           	test   al,al
  36af2b:	75 1e                                           	jne    0x36af4b
  36af2d:	33 d2                                           	xor    edx,edx
  36af2f:	48 8b cb                                        	mov    rcx,rbx
  36af32:	e8 d5 f2 ff ff                                  	call   0x36a20c
  36af37:	84 c0                                           	test   al,al
  36af39:	74 0c                                           	je     0x36af47
  36af3b:	80 3d f6 c3 07 00 00                            	cmp    BYTE PTR [rip+0x7c3f6],0x0        # 0x3e7338
  36af42:	0f 95 c0                                        	setne  al
  36af45:	eb 06                                           	jmp    0x36af4d
  36af47:	b0 01                                           	mov    al,0x1
  36af49:	eb 02                                           	jmp    0x36af4d
  36af4b:	32 c0                                           	xor    al,al
  36af4d:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  36af52:	48 83 c4 20                                     	add    rsp,0x20
  36af56:	5f                                              	pop    rdi
  36af57:	c3                                              	ret
