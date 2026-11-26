
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f928 <.data+0x39f928>:
  39f928:	41 83 f8 03                                     	cmp    r8d,0x3
  39f92c:	0f 8c 95 03 00 00                               	jl     0x39fcc7
  39f932:	53                                              	push   rbx
  39f933:	55                                              	push   rbp
  39f934:	56                                              	push   rsi
  39f935:	57                                              	push   rdi
  39f936:	41 54                                           	push   r12
  39f938:	41 55                                           	push   r13
  39f93a:	41 56                                           	push   r14
  39f93c:	41 57                                           	push   r15
  39f93e:	48 83 ec 68                                     	sub    rsp,0x68
  39f942:	0f 29 74 24 50                                  	movaps XMMWORD PTR [rsp+0x50],xmm6
  39f947:	45 8b f9                                        	mov    r15d,r9d
  39f94a:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm7
  39f94f:	41 8b f8                                        	mov    edi,r8d
  39f952:	44 0f 29 44 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm8
  39f958:	4c 8b f2                                        	mov    r14,rdx
  39f95b:	48 8b d9                                        	mov    rbx,rcx
  39f95e:	41 f7 c1 00 00 00 ff                            	test   r9d,0xff000000
  39f965:	0f 84 3c 03 00 00                               	je     0x39fca7
  39f96b:	f6 41 30 04                                     	test   BYTE PTR [rcx+0x30],0x4
  39f96f:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  39f973:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  39f977:	f3 0f 10 78 04                                  	movss  xmm7,DWORD PTR [rax+0x4]
  39f97c:	0f 84 a1 02 00 00                               	je     0x39fc23
  39f982:	f3 44 0f 10 81 c0 00 00 00                      	movss  xmm8,DWORD PTR [rcx+0xc0]
  39f98b:	42 8d 14 c5 fa ff ff ff                         	lea    edx,[r8*8-0x6]
  39f993:	47 8d 24 00                                     	lea    r12d,[r8+r8*1]
  39f997:	41 8b c1                                        	mov    eax,r9d
  39f99a:	25 ff ff ff 00                                  	and    eax,0xffffff
  39f99f:	44 89 64 24 20                                  	mov    DWORD PTR [rsp+0x20],r12d
  39f9a4:	41 03 d0                                        	add    edx,r8d
  39f9a7:	89 84 24 c0 00 00 00                            	mov    DWORD PTR [rsp+0xc0],eax
  39f9ae:	45 8b c4                                        	mov    r8d,r12d
  39f9b1:	e8 e6 77 00 00                                  	call   0x3a719c
  39f9b6:	44 8b 6b 34                                     	mov    r13d,DWORD PTR [rbx+0x34]
  39f9ba:	be 02 00 00 00                                  	mov    esi,0x2
  39f9bf:	44 8b c6                                        	mov    r8d,esi
  39f9c2:	8d 6e ff                                        	lea    ebp,[rsi-0x1]
  39f9c5:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39f9c9:	41 0f b7 d0                                     	movzx  edx,r8w
  39f9cd:	66 03 d2                                        	add    dx,dx
  39f9d0:	44 03 c5                                        	add    r8d,ebp
  39f9d3:	66 41 03 d5                                     	add    dx,r13w
  39f9d7:	0f b7 ca                                        	movzx  ecx,dx
  39f9da:	66 44 89 28                                     	mov    WORD PTR [rax],r13w
  39f9de:	66 2b ce                                        	sub    cx,si
  39f9e1:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39f9e5:	66 89 48 02                                     	mov    WORD PTR [rax+0x2],cx
  39f9e9:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39f9ed:	66 89 50 04                                     	mov    WORD PTR [rax+0x4],dx
  39f9f1:	48 83 43 50 06                                  	add    QWORD PTR [rbx+0x50],0x6
  39f9f6:	44 3b c7                                        	cmp    r8d,edi
  39f9f9:	7c ca                                           	jl     0x39f9c5
  39f9fb:	48 8b 4b 38                                     	mov    rcx,QWORD PTR [rbx+0x38]
  39f9ff:	8b d7                                           	mov    edx,edi
  39fa01:	48 83 c1 30                                     	add    rcx,0x30
  39fa05:	e8 7e 9c 00 00                                  	call   0x3a9688
  39fa0a:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  39fa0e:	44 8d 57 ff                                     	lea    r10d,[rdi-0x1]
  39fa12:	33 d2                                           	xor    edx,edx
  39fa14:	45 8b c2                                        	mov    r8d,r10d
  39fa17:	8b ca                                           	mov    ecx,edx
  39fa19:	4c 8b 48 38                                     	mov    r9,QWORD PTR [rax+0x38]
  39fa1d:	8b c1                                           	mov    eax,ecx
  39fa1f:	4d 63 c0                                        	movsxd r8,r8d
  39fa22:	f3 41 0f 10 14 c6                               	movss  xmm2,DWORD PTR [r14+rax*8]
  39fa28:	f3 41 0f 10 5c c6 04                            	movss  xmm3,DWORD PTR [r14+rax*8+0x4]
  39fa2f:	f3 43 0f 5c 14 c6                               	subss  xmm2,DWORD PTR [r14+r8*8]
  39fa35:	f3 43 0f 5c 5c c6 04                            	subss  xmm3,DWORD PTR [r14+r8*8+0x4]
  39fa3c:	0f 28 ca                                        	movaps xmm1,xmm2
  39fa3f:	0f 28 c3                                        	movaps xmm0,xmm3
  39fa42:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  39fa46:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  39fa4a:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  39fa4e:	0f 2f 05 f7 d7 ee ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffeed7f7]        # 0x28d24c
  39fa55:	76 12                                           	jbe    0x39fa69
  39fa57:	e8 38 6b 00 00                                  	call   0x3a6594
  39fa5c:	0f 28 c8                                        	movaps xmm1,xmm0
  39fa5f:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  39fa63:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  39fa67:	eb 06                                           	jmp    0x39fa6f
  39fa69:	0f 28 c3                                        	movaps xmm0,xmm3
  39fa6c:	0f 28 ca                                        	movaps xmm1,xmm2
  39fa6f:	0f 57 0d 2a 38 ef ff                            	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffef382a]        # 0x2932a0
  39fa76:	f3 43 0f 11 4c c1 04                            	movss  DWORD PTR [r9+r8*8+0x4],xmm1
  39fa7d:	f3 43 0f 11 04 c1                               	movss  DWORD PTR [r9+r8*8],xmm0
  39fa83:	44 8b c1                                        	mov    r8d,ecx
  39fa86:	03 cd                                           	add    ecx,ebp
  39fa88:	3b cf                                           	cmp    ecx,edi
  39fa8a:	7c 91                                           	jl     0x39fa1d
  39fa8c:	f3 0f 10 2d bc d7 ee ff                         	movss  xmm5,DWORD PTR [rip+0xffffffffffeed7bc]        # 0x28d250
  39fa94:	44 8b c2                                        	mov    r8d,edx
  39fa97:	44 8b a4 24 c0 00 00 00                         	mov    r12d,DWORD PTR [rsp+0xc0]
  39fa9f:	f3 44 0f 59 c5                                  	mulss  xmm8,xmm5
  39faa4:	49 63 c2                                        	movsxd rax,r10d
  39faa7:	49 63 c8                                        	movsxd rcx,r8d
  39faaa:	f3 41 0f 10 0c c1                               	movss  xmm1,DWORD PTR [r9+rax*8]
  39fab0:	f3 41 0f 10 54 c9 04                            	movss  xmm2,DWORD PTR [r9+rcx*8+0x4]
  39fab7:	f3 41 0f 58 0c c9                               	addss  xmm1,DWORD PTR [r9+rcx*8]
  39fabd:	f3 41 0f 58 54 c1 04                            	addss  xmm2,DWORD PTR [r9+rax*8+0x4]
  39fac4:	f3 0f 59 cd                                     	mulss  xmm1,xmm5
  39fac8:	f3 0f 59 d5                                     	mulss  xmm2,xmm5
  39facc:	0f 28 c1                                        	movaps xmm0,xmm1
  39facf:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  39fad3:	0f 28 da                                        	movaps xmm3,xmm2
  39fad6:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  39fada:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  39fade:	0f 2f 1d e7 df ee ff                            	comiss xmm3,DWORD PTR [rip+0xffffffffffeedfe7]        # 0x28dacc
  39fae5:	76 25                                           	jbe    0x39fb0c
  39fae7:	f3 0f 10 05 65 d7 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffeed765]        # 0x28d254
  39faef:	f3 0f 10 25 4d e0 ee ff                         	movss  xmm4,DWORD PTR [rip+0xffffffffffeee04d]        # 0x28db44
  39faf7:	f3 0f 5e c3                                     	divss  xmm0,xmm3
  39fafb:	f3 0f 5d e0                                     	minss  xmm4,xmm0
  39faff:	0f 28 dc                                        	movaps xmm3,xmm4
  39fb02:	f3 0f 59 e2                                     	mulss  xmm4,xmm2
  39fb06:	f3 0f 59 d9                                     	mulss  xmm3,xmm1
  39fb0a:	eb 06                                           	jmp    0x39fb12
  39fb0c:	0f 28 e2                                        	movaps xmm4,xmm2
  39fb0f:	0f 28 d9                                        	movaps xmm3,xmm1
  39fb12:	f3 41 0f 10 04 ce                               	movss  xmm0,DWORD PTR [r14+rcx*8]
  39fb18:	41 0f 28 d0                                     	movaps xmm2,xmm8
  39fb1c:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb20:	45 0f b7 d8                                     	movzx  r11d,r8w
  39fb24:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  39fb28:	66 45 03 db                                     	add    r11w,r11w
  39fb2c:	66 45 03 d2                                     	add    r10w,r10w
  39fb30:	41 0f 28 d8                                     	movaps xmm3,xmm8
  39fb34:	f3 0f 59 dc                                     	mulss  xmm3,xmm4
  39fb38:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  39fb3c:	f3 0f 11 00                                     	movss  DWORD PTR [rax],xmm0
  39fb40:	f3 41 0f 10 4c ce 04                            	movss  xmm1,DWORD PTR [r14+rcx*8+0x4]
  39fb47:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb4b:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  39fb4f:	f3 0f 11 48 04                                  	movss  DWORD PTR [rax+0x4],xmm1
  39fb54:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb58:	f3 0f 11 70 08                                  	movss  DWORD PTR [rax+0x8],xmm6
  39fb5d:	f3 0f 11 78 0c                                  	movss  DWORD PTR [rax+0xc],xmm7
  39fb62:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb66:	44 89 78 10                                     	mov    DWORD PTR [rax+0x10],r15d
  39fb6a:	f3 41 0f 58 14 ce                               	addss  xmm2,DWORD PTR [r14+rcx*8]
  39fb70:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb74:	f3 0f 11 50 14                                  	movss  DWORD PTR [rax+0x14],xmm2
  39fb79:	f3 41 0f 58 5c ce 04                            	addss  xmm3,DWORD PTR [r14+rcx*8+0x4]
  39fb80:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb84:	43 8d 0c 2b                                     	lea    ecx,[r11+r13*1]
  39fb88:	66 89 8c 24 c0 00 00 00                         	mov    WORD PTR [rsp+0xc0],cx
  39fb90:	f3 0f 11 58 18                                  	movss  DWORD PTR [rax+0x18],xmm3
  39fb95:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fb99:	f3 0f 11 70 1c                                  	movss  DWORD PTR [rax+0x1c],xmm6
  39fb9e:	f3 0f 11 78 20                                  	movss  DWORD PTR [rax+0x20],xmm7
  39fba3:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fba7:	44 89 60 24                                     	mov    DWORD PTR [rax+0x24],r12d
  39fbab:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fbaf:	48 83 43 48 28                                  	add    QWORD PTR [rbx+0x48],0x28
  39fbb4:	66 89 08                                        	mov    WORD PTR [rax],cx
  39fbb7:	43 8d 0c 2a                                     	lea    ecx,[r10+r13*1]
  39fbbb:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fbbf:	66 89 48 02                                     	mov    WORD PTR [rax+0x2],cx
  39fbc3:	41 8d 45 01                                     	lea    eax,[r13+0x1]
  39fbc7:	66 44 03 d0                                     	add    r10w,ax
  39fbcb:	48 8b ca                                        	mov    rcx,rdx
  39fbce:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fbd2:	66 44 89 54 48 04                               	mov    WORD PTR [rax+rcx*2+0x4],r10w
  39fbd8:	48 03 cd                                        	add    rcx,rbp
  39fbdb:	48 3b ce                                        	cmp    rcx,rsi
  39fbde:	75 ee                                           	jne    0x39fbce
  39fbe0:	0f b7 8c 24 c0 00 00 00                         	movzx  ecx,WORD PTR [rsp+0xc0]
  39fbe8:	41 8d 45 01                                     	lea    eax,[r13+0x1]
  39fbec:	66 44 03 d8                                     	add    r11w,ax
  39fbf0:	45 8b d0                                        	mov    r10d,r8d
  39fbf3:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fbf7:	44 03 c5                                        	add    r8d,ebp
  39fbfa:	66 44 89 58 08                                  	mov    WORD PTR [rax+0x8],r11w
  39fbff:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fc03:	66 89 48 0a                                     	mov    WORD PTR [rax+0xa],cx
  39fc07:	48 83 43 50 0c                                  	add    QWORD PTR [rbx+0x50],0xc
  39fc0c:	44 3b c7                                        	cmp    r8d,edi
  39fc0f:	0f 8c 8f fe ff ff                               	jl     0x39faa4
  39fc15:	44 8b 64 24 20                                  	mov    r12d,DWORD PTR [rsp+0x20]
  39fc1a:	41 0f b7 c4                                     	movzx  eax,r12w
  39fc1e:	e9 81 00 00 00                                  	jmp    0x39fca4
  39fc23:	41 8d 50 fe                                     	lea    edx,[r8-0x2]
  39fc27:	8d 14 52                                        	lea    edx,[rdx+rdx*2]
  39fc2a:	e8 6d 75 00 00                                  	call   0x3a719c
  39fc2f:	33 d2                                           	xor    edx,edx
  39fc31:	8d 6a 01                                        	lea    ebp,[rdx+0x1]
  39fc34:	48 8b 4b 48                                     	mov    rcx,QWORD PTR [rbx+0x48]
  39fc38:	8b c2                                           	mov    eax,edx
  39fc3a:	03 d5                                           	add    edx,ebp
  39fc3c:	f2 41 0f 10 04 c6                               	movsd  xmm0,QWORD PTR [r14+rax*8]
  39fc42:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  39fc46:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fc4a:	f3 0f 11 70 08                                  	movss  DWORD PTR [rax+0x8],xmm6
  39fc4f:	f3 0f 11 78 0c                                  	movss  DWORD PTR [rax+0xc],xmm7
  39fc54:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  39fc58:	44 89 78 10                                     	mov    DWORD PTR [rax+0x10],r15d
  39fc5c:	48 83 43 48 14                                  	add    QWORD PTR [rbx+0x48],0x14
  39fc61:	3b d7                                           	cmp    edx,edi
  39fc63:	7c cf                                           	jl     0x39fc34
  39fc65:	be 02 00 00 00                                  	mov    esi,0x2
  39fc6a:	48 8b 4b 50                                     	mov    rcx,QWORD PTR [rbx+0x50]
  39fc6e:	0f b7 43 34                                     	movzx  eax,WORD PTR [rbx+0x34]
  39fc72:	66 89 01                                        	mov    WORD PTR [rcx],ax
  39fc75:	0f b7 ce                                        	movzx  ecx,si
  39fc78:	66 03 4b 34                                     	add    cx,WORD PTR [rbx+0x34]
  39fc7c:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fc80:	66 2b cd                                        	sub    cx,bp
  39fc83:	66 89 48 02                                     	mov    WORD PTR [rax+0x2],cx
  39fc87:	0f b7 ce                                        	movzx  ecx,si
  39fc8a:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  39fc8e:	03 f5                                           	add    esi,ebp
  39fc90:	66 03 4b 34                                     	add    cx,WORD PTR [rbx+0x34]
  39fc94:	66 89 48 04                                     	mov    WORD PTR [rax+0x4],cx
  39fc98:	48 83 43 50 06                                  	add    QWORD PTR [rbx+0x50],0x6
  39fc9d:	3b f7                                           	cmp    esi,edi
  39fc9f:	7c c9                                           	jl     0x39fc6a
  39fca1:	0f b7 c7                                        	movzx  eax,di
  39fca4:	01 43 34                                        	add    DWORD PTR [rbx+0x34],eax
  39fca7:	0f 28 74 24 50                                  	movaps xmm6,XMMWORD PTR [rsp+0x50]
  39fcac:	0f 28 7c 24 40                                  	movaps xmm7,XMMWORD PTR [rsp+0x40]
  39fcb1:	44 0f 28 44 24 30                               	movaps xmm8,XMMWORD PTR [rsp+0x30]
  39fcb7:	48 83 c4 68                                     	add    rsp,0x68
  39fcbb:	41 5f                                           	pop    r15
  39fcbd:	41 5e                                           	pop    r14
  39fcbf:	41 5d                                           	pop    r13
  39fcc1:	41 5c                                           	pop    r12
  39fcc3:	5f                                              	pop    rdi
  39fcc4:	5e                                              	pop    rsi
  39fcc5:	5d                                              	pop    rbp
  39fcc6:	5b                                              	pop    rbx
  39fcc7:	c3                                              	ret
