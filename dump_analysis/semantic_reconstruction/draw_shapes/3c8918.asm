
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c8918 <.data+0x3c8918>:
  3c8918:	66 0f 7e c2                                     	movd   edx,xmm0
  3c891c:	8b c2                                           	mov    eax,edx
  3c891e:	0f ba f0 1f                                     	btr    eax,0x1f
  3c8922:	3b d0                                           	cmp    edx,eax
  3c8924:	41 0f 95 c0                                     	setne  r8b
  3c8928:	3d 00 00 80 4b                                  	cmp    eax,0x4b800000
  3c892d:	73 5b                                           	jae    0x3c898a
  3c892f:	3d 00 00 80 3f                                  	cmp    eax,0x3f800000
  3c8934:	72 3a                                           	jb     0x3c8970
  3c8936:	8b c2                                           	mov    eax,edx
  3c8938:	b9 96 ff ff ff                                  	mov    ecx,0xffffff96
  3c893d:	c1 e8 17                                        	shr    eax,0x17
  3c8940:	2b c8                                           	sub    ecx,eax
  3c8942:	83 c8 ff                                        	or     eax,0xffffffff
  3c8945:	d3 e0                                           	shl    eax,cl
  3c8947:	23 d0                                           	and    edx,eax
  3c8949:	89 54 24 08                                     	mov    DWORD PTR [rsp+0x8],edx
  3c894d:	45 84 c0                                        	test   r8b,r8b
  3c8950:	75 17                                           	jne    0x3c8969
  3c8952:	66 0f 7e c0                                     	movd   eax,xmm0
  3c8956:	3b c2                                           	cmp    eax,edx
  3c8958:	74 0f                                           	je     0x3c8969
  3c895a:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [rsp+0x8]
  3c8960:	f3 0f 58 05 ec 48 ec ff                         	addss  xmm0,DWORD PTR [rip+0xffffffffffec48ec]        # 0x28d254
  3c8968:	c3                                              	ret
  3c8969:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [rsp+0x8]
  3c896f:	c3                                              	ret
  3c8970:	85 c0                                           	test   eax,eax
  3c8972:	74 25                                           	je     0x3c8999
  3c8974:	3b d0                                           	cmp    edx,eax
  3c8976:	74 09                                           	je     0x3c8981
  3c8978:	f3 0f 10 05 4c 52 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee524c]        # 0x2adbcc
  3c8980:	c3                                              	ret
  3c8981:	f3 0f 10 05 cb 48 ec ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffec48cb]        # 0x28d254
  3c8989:	c3                                              	ret
  3c898a:	3d 00 00 80 7f                                  	cmp    eax,0x7f800000
  3c898f:	76 08                                           	jbe    0x3c8999
  3c8991:	0f ba ea 16                                     	bts    edx,0x16
  3c8995:	66 0f 6e c2                                     	movd   xmm0,edx
  3c8999:	c3                                              	ret
