
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2fabf8.bin:     file format binary


Disassembly of section .data:

00000000002fabf8 <.data>:
  2fabf8:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
  2fabfd:	55                   	push   rbp
  2fabfe:	53                   	push   rbx
  2fabff:	56                   	push   rsi
  2fac00:	57                   	push   rdi
  2fac01:	41 54                	push   r12
  2fac03:	41 55                	push   r13
  2fac05:	41 56                	push   r14
  2fac07:	41 57                	push   r15
  2fac09:	48 8d 6c 24 a8       	lea    rbp,[rsp-0x58]
  2fac0e:	48 81 ec 58 01 00 00 	sub    rsp,0x158
  2fac15:	33 f6                	xor    esi,esi
  2fac17:	4c 8b f1             	mov    r14,rcx
  2fac1a:	89 b5 a8 00 00 00    	mov    DWORD PTR [rbp+0xa8],esi
  2fac20:	40 38 35 41 ec 0e 00 	cmp    BYTE PTR [rip+0xeec41],sil        # 0x3e9868
  2fac27:	0f 84 b3 06 00 00    	je     0x2fb2e0
  2fac2d:	e8 d6 02 fd ff       	call   0x2caf08
  2fac32:	84 c0                	test   al,al
  2fac34:	0f 84 a6 06 00 00    	je     0x2fb2e0
  2fac3a:	e8 f5 d3 ff ff       	call   0x2f8034
  2fac3f:	48 8b c8             	mov    rcx,rax
  2fac42:	48 8b d8             	mov    rbx,rax
  2fac45:	e8 be 02 fd ff       	call   0x2caf08
  2fac4a:	84 c0                	test   al,al
  2fac4c:	0f 84 8e 06 00 00    	je     0x2fb2e0
  2fac52:	48 8b cb             	mov    rcx,rbx
  2fac55:	e8 ca b8 01 00       	call   0x316524
  2fac5a:	48 8b cb             	mov    rcx,rbx
  2fac5d:	89 44 24 34          	mov    DWORD PTR [rsp+0x34],eax
  2fac61:	44 8b e0             	mov    r12d,eax
  2fac64:	e8 9b b8 01 00       	call   0x316504
  2fac69:	48 8b c8             	mov    rcx,rax
  2fac6c:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
  2fac71:	48 8b d8             	mov    rbx,rax
  2fac74:	e8 8f 02 fd ff       	call   0x2caf08
  2fac79:	84 c0                	test   al,al
  2fac7b:	0f 84 5f 06 00 00    	je     0x2fb2e0
  2fac81:	f3 0f 10 0d bb 84 f9 	movss  xmm1,DWORD PTR [rip+0xfffffffffff984bb]        # 0x293144
  2fac88:	ff 
  2fac89:	48 8d 0d e4 5c 0f 00 	lea    rcx,[rip+0xf5ce4]        # 0x3f0974
  2fac90:	e8 e7 ae fe ff       	call   0x2e5b7c
  2fac95:	84 c0                	test   al,al
  2fac97:	0f 84 43 06 00 00    	je     0x2fb2e0
  2fac9d:	33 c0                	xor    eax,eax
  2fac9f:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  2faca3:	45 85 e4             	test   r12d,r12d
  2faca6:	0f 8e 34 06 00 00    	jle    0x2fb2e0
  2facac:	8d 7e 06             	lea    edi,[rsi+0x6]
  2facaf:	c1 e0 03             	shl    eax,0x3
  2facb2:	48 63 c8             	movsxd rcx,eax
  2facb5:	48 8b 5c 0b 20       	mov    rbx,QWORD PTR [rbx+rcx*1+0x20]
  2facba:	48 8b cb             	mov    rcx,rbx
  2facbd:	e8 46 02 fd ff       	call   0x2caf08
  2facc2:	84 c0                	test   al,al
  2facc4:	0f 84 fe 05 00 00    	je     0x2fb2c8
  2facca:	48 8b cb             	mov    rcx,rbx
  2faccd:	e8 ca 61 fe ff       	call   0x2e0e9c
  2facd2:	84 c0                	test   al,al
  2facd4:	0f 84 ee 05 00 00    	je     0x2fb2c8
  2facda:	49 3b de             	cmp    rbx,r14
  2facdd:	0f 84 e5 05 00 00    	je     0x2fb2c8
  2face3:	48 8b 53 10          	mov    rdx,QWORD PTR [rbx+0x10]
  2face7:	48 8b ca             	mov    rcx,rdx
  2facea:	e8 19 02 fd ff       	call   0x2caf08
  2facef:	84 c0                	test   al,al
  2facf1:	0f 84 d1 05 00 00    	je     0x2fb2c8
  2facf7:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  2facfb:	e8 08 02 fd ff       	call   0x2caf08
  2fad00:	84 c0                	test   al,al
  2fad02:	0f 84 c0 05 00 00    	je     0x2fb2c8
  2fad08:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  2fad0c:	e8 f7 01 fd ff       	call   0x2caf08
  2fad11:	84 c0                	test   al,al
  2fad13:	0f 84 af 05 00 00    	je     0x2fb2c8
  2fad19:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  2fad1d:	e8 ce 88 07 00       	call   0x3735f0
  2fad22:	66 3b c7             	cmp    ax,di
  2fad25:	0f 85 9d 05 00 00    	jne    0x2fb2c8
  2fad2b:	48 8b cb             	mov    rcx,rbx
  2fad2e:	e8 6d 04 07 00       	call   0x36b1a0
  2fad33:	84 c0                	test   al,al
  2fad35:	0f 84 8d 05 00 00    	je     0x2fb2c8
  2fad3b:	33 d2                	xor    edx,edx
  2fad3d:	48 8b cb             	mov    rcx,rbx
  2fad40:	e8 e7 25 fd ff       	call   0x2cd32c
  2fad45:	33 d2                	xor    edx,edx
  2fad47:	49 8b ce             	mov    rcx,r14
  2fad4a:	48 8b f8             	mov    rdi,rax
  2fad4d:	e8 da 25 fd ff       	call   0x2cd32c
  2fad52:	48 85 ff             	test   rdi,rdi
  2fad55:	74 0a                	je     0x2fad61
  2fad57:	48 3b f8             	cmp    rdi,rax
  2fad5a:	75 05                	jne    0x2fad61
  2fad5c:	40 b7 01             	mov    dil,0x1
  2fad5f:	eb 03                	jmp    0x2fad64
  2fad61:	40 32 ff             	xor    dil,dil
  2fad64:	45 33 c0             	xor    r8d,r8d
  2fad67:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  2fad6c:	48 8b cb             	mov    rcx,rbx
  2fad6f:	83 ce 01             	or     esi,0x1
  2fad72:	e8 f9 f0 06 00       	call   0x369e70
  2fad77:	48 8b d0             	mov    rdx,rax
  2fad7a:	48 8d 0d df c4 0d 00 	lea    rcx,[rip+0xdc4df]        # 0x3d7260
  2fad81:	e8 82 48 fe ff       	call   0x2df608
  2fad86:	83 78 24 01          	cmp    DWORD PTR [rax+0x24],0x1
  2fad8a:	74 05                	je     0x2fad91
  2fad8c:	40 84 ff             	test   dil,dil
  2fad8f:	74 03                	je     0x2fad94
  2fad91:	40 b7 01             	mov    dil,0x1
  2fad94:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2fad99:	83 e6 fe             	and    esi,0xfffffffe
  2fad9c:	e8 53 17 fd ff       	call   0x2cc4f4
  2fada1:	40 84 ff             	test   dil,dil
  2fada4:	74 23                	je     0x2fadc9
  2fada6:	45 33 c0             	xor    r8d,r8d
  2fada9:	48 8d 55 00          	lea    rdx,[rbp+0x0]
  2fadad:	48 8d 0d 94 53 0f 00 	lea    rcx,[rip+0xf5394]        # 0x3f0148
  2fadb4:	e8 37 eb fe ff       	call   0x2e98f0
  2fadb9:	48 8b c8             	mov    rcx,rax
  2fadbc:	e8 af 9f fd ff       	call   0x2d4d70
  2fadc1:	84 c0                	test   al,al
  2fadc3:	0f 84 fa 04 00 00    	je     0x2fb2c3
  2fadc9:	48 8b cb             	mov    rcx,rbx
  2fadcc:	e8 93 e9 06 00       	call   0x369764
  2fadd1:	48 8b c8             	mov    rcx,rax
  2fadd4:	48 8b d0             	mov    rdx,rax
  2fadd7:	e8 2c 01 fd ff       	call   0x2caf08
  2faddc:	84 c0                	test   al,al
  2fadde:	0f 84 df 04 00 00    	je     0x2fb2c3
  2fade4:	48 8b 92 00 06 00 00 	mov    rdx,QWORD PTR [rdx+0x600]
  2fadeb:	48 8b ca             	mov    rcx,rdx
  2fadee:	e8 15 01 fd ff       	call   0x2caf08
  2fadf3:	84 c0                	test   al,al
  2fadf5:	0f 84 c8 04 00 00    	je     0x2fb2c3
  2fadfb:	48 8b 52 58          	mov    rdx,QWORD PTR [rdx+0x58]
  2fadff:	48 8b ca             	mov    rcx,rdx
  2fae02:	e8 01 01 fd ff       	call   0x2caf08
  2fae07:	84 c0                	test   al,al
  2fae09:	0f 84 b4 04 00 00    	je     0x2fb2c3
  2fae0f:	8b 42 18             	mov    eax,DWORD PTR [rdx+0x18]
  2fae12:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  2fae16:	85 c0                	test   eax,eax
  2fae18:	0f 84 a5 04 00 00    	je     0x2fb2c3
  2fae1e:	48 8b 52 10          	mov    rdx,QWORD PTR [rdx+0x10]
  2fae22:	48 8b ca             	mov    rcx,rdx
  2fae25:	48 89 54 24 40       	mov    QWORD PTR [rsp+0x40],rdx
  2fae2a:	e8 d9 00 fd ff       	call   0x2caf08
  2fae2f:	84 c0                	test   al,al
  2fae31:	0f 84 8c 04 00 00    	je     0x2fb2c3
  2fae37:	45 33 ff             	xor    r15d,r15d
  2fae3a:	44 39 7c 24 20       	cmp    DWORD PTR [rsp+0x20],r15d
  2fae3f:	0f 8e 7e 04 00 00    	jle    0x2fb2c3
  2fae45:	42 8d 04 fd 00 00 00 	lea    eax,[r15*8+0x0]
  2fae4c:	00 
  2fae4d:	48 63 c8             	movsxd rcx,eax
  2fae50:	48 8b 54 0a 20       	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  2fae55:	48 8b ca             	mov    rcx,rdx
  2fae58:	e8 ab 00 fd ff       	call   0x2caf08
  2fae5d:	84 c0                	test   al,al
  2fae5f:	0f 84 3f 04 00 00    	je     0x2fb2a4
  2fae65:	48 8b ca             	mov    rcx,rdx
  2fae68:	e8 3f 61 07 00       	call   0x370fac
  2fae6d:	48 8b c8             	mov    rcx,rax
  2fae70:	4c 8b e8             	mov    r13,rax
  2fae73:	e8 90 00 fd ff       	call   0x2caf08
  2fae78:	84 c0                	test   al,al
  2fae7a:	0f 84 24 04 00 00    	je     0x2fb2a4
  2fae80:	49 8b cd             	mov    rcx,r13
  2fae83:	e8 fc 5f 07 00       	call   0x370e84
  2fae88:	48 8b c8             	mov    rcx,rax
  2fae8b:	e8 78 00 fd ff       	call   0x2caf08
  2fae90:	84 c0                	test   al,al
  2fae92:	0f 84 0c 04 00 00    	je     0x2fb2a4
  2fae98:	49 8b cd             	mov    rcx,r13
  2fae9b:	e8 7c 87 07 00       	call   0x37361c
  2faea0:	48 8b c8             	mov    rcx,rax
  2faea3:	48 8b f8             	mov    rdi,rax
  2faea6:	e8 5d 00 fd ff       	call   0x2caf08
  2faeab:	84 c0                	test   al,al
  2faead:	0f 84 f1 03 00 00    	je     0x2fb2a4
  2faeb3:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  2faeb8:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2faebf:	e8 58 70 ff ff       	call   0x2f1f1c
  2faec4:	48 8b c8             	mov    rcx,rax
  2faec7:	e8 f0 55 02 00       	call   0x3204bc
  2faecc:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  2faed0:	48 8b cf             	mov    rcx,rdi
  2faed3:	48 8b d8             	mov    rbx,rax
  2faed6:	e8 3d cf fd ff       	call   0x2d7e18
  2faedb:	48 8b c8             	mov    rcx,rax
  2faede:	e8 09 29 fd ff       	call   0x2cd7ec
  2faee3:	48 8b c8             	mov    rcx,rax
  2faee6:	48 8b d3             	mov    rdx,rbx
  2faee9:	e8 72 fa 0c 00       	call   0x3ca960
  2faeee:	48 85 c0             	test   rax,rax
  2faef1:	75 48                	jne    0x2faf3b
  2faef3:	48 8d 55 a1          	lea    rdx,[rbp-0x5f]
  2faef7:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2faefe:	e8 21 87 ff ff       	call   0x2f3624
  2faf03:	48 8b c8             	mov    rcx,rax
  2faf06:	e8 39 2e fd ff       	call   0x2cdd44
  2faf0b:	48 8d 55 10          	lea    rdx,[rbp+0x10]
  2faf0f:	48 8b cf             	mov    rcx,rdi
  2faf12:	48 8b d8             	mov    rbx,rax
  2faf15:	e8 fe ce fd ff       	call   0x2d7e18
  2faf1a:	48 8b c8             	mov    rcx,rax
  2faf1d:	e8 ca 28 fd ff       	call   0x2cd7ec
  2faf22:	48 8b c8             	mov    rcx,rax
  2faf25:	48 8b d3             	mov    rdx,rbx
  2faf28:	e8 33 fa 0c 00       	call   0x3ca960
  2faf2d:	48 85 c0             	test   rax,rax
  2faf30:	b8 06 00 00 00       	mov    eax,0x6
  2faf35:	75 09                	jne    0x2faf40
  2faf37:	32 db                	xor    bl,bl
  2faf39:	eb 07                	jmp    0x2faf42
  2faf3b:	b8 02 00 00 00       	mov    eax,0x2
  2faf40:	b3 01                	mov    bl,0x1
  2faf42:	0b c6                	or     eax,esi
  2faf44:	8b f0                	mov    esi,eax
  2faf46:	a8 04                	test   al,0x4
  2faf48:	74 0c                	je     0x2faf56
  2faf4a:	83 e6 fb             	and    esi,0xfffffffb
  2faf4d:	48 8d 4d 10          	lea    rcx,[rbp+0x10]
  2faf51:	e8 9e 15 fd ff       	call   0x2cc4f4
  2faf56:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  2faf5a:	83 e6 fd             	and    esi,0xfffffffd
  2faf5d:	e8 92 15 fd ff       	call   0x2cc4f4
  2faf62:	84 db                	test   bl,bl
  2faf64:	0f 85 3a 03 00 00    	jne    0x2fb2a4
  2faf6a:	48 63 0d 17 3e 0f 00 	movsxd rcx,DWORD PTR [rip+0xf3e17]        # 0x3eed88
  2faf71:	4c 8d 05 88 50 d0 ff 	lea    r8,[rip+0xffffffffffd05088]        # 0x0
  2faf78:	4d 8b a4 c8 88 5e 3e 	mov    r12,QWORD PTR [r8+rcx*8+0x3e5e88]
  2faf7f:	00 
  2faf80:	4d 85 e4             	test   r12,r12
  2faf83:	0f 84 1b 03 00 00    	je     0x2fb2a4
  2faf89:	4c 8d 34 cd c0 5e 3e 	lea    r14,[rcx*8+0x3e5ec0]
  2faf90:	00 
  2faf91:	4d 03 f0             	add    r14,r8
  2faf94:	49 8b 06             	mov    rax,QWORD PTR [r14]
  2faf97:	48 85 c0             	test   rax,rax
  2faf9a:	0f 85 7d 02 00 00    	jne    0x2fb21d
  2fafa0:	85 c9                	test   ecx,ecx
  2fafa2:	0f 84 fe 01 00 00    	je     0x2fb1a6
  2fafa8:	83 e9 01             	sub    ecx,0x1
  2fafab:	0f 84 ac 01 00 00    	je     0x2fb15d
  2fafb1:	83 e9 01             	sub    ecx,0x1
  2fafb4:	0f 84 57 01 00 00    	je     0x2fb111
  2fafba:	83 e9 01             	sub    ecx,0x1
  2fafbd:	0f 84 02 01 00 00    	je     0x2fb0c5
  2fafc3:	83 e9 01             	sub    ecx,0x1
  2fafc6:	0f 84 ac 00 00 00    	je     0x2fb078
  2fafcc:	83 e9 01             	sub    ecx,0x1
  2fafcf:	74 58                	je     0x2fb029
  2fafd1:	83 f9 01             	cmp    ecx,0x1
  2fafd4:	0f 85 ca 02 00 00    	jne    0x2fb2a4
  2fafda:	48 8d 55 ab          	lea    rdx,[rbp-0x55]
  2fafde:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fafe5:	e8 3a 7a ff ff       	call   0x2f2a24
  2fafea:	48 8b c8             	mov    rcx,rax
  2fafed:	e8 42 2e fd ff       	call   0x2cde34
  2faff2:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2faff7:	48 8b f8             	mov    rdi,rax
  2faffa:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb001:	e8 5a 78 ff ff       	call   0x2f2860
  2fb006:	48 8b c8             	mov    rcx,rax
  2fb009:	e8 e6 2c fd ff       	call   0x2cdcf4
  2fb00e:	48 8d 95 b0 00 00 00 	lea    rdx,[rbp+0xb0]
  2fb015:	48 8b d8             	mov    rbx,rax
  2fb018:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb01f:	e8 20 66 ff ff       	call   0x2f1644
  2fb024:	e9 c4 01 00 00       	jmp    0x2fb1ed
  2fb029:	48 8d 55 b7          	lea    rdx,[rbp-0x49]
  2fb02d:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb034:	e8 bb 74 ff ff       	call   0x2f24f4
  2fb039:	48 8b c8             	mov    rcx,rax
  2fb03c:	e8 f3 2d fd ff       	call   0x2cde34
  2fb041:	48 8d 54 24 77       	lea    rdx,[rsp+0x77]
  2fb046:	48 8b f8             	mov    rdi,rax
  2fb049:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb050:	e8 8b 6e ff ff       	call   0x2f1ee0
  2fb055:	48 8b c8             	mov    rcx,rax
  2fb058:	e8 97 2c fd ff       	call   0x2cdcf4
  2fb05d:	48 8d 95 b8 00 00 00 	lea    rdx,[rbp+0xb8]
  2fb064:	48 8b d8             	mov    rbx,rax
  2fb067:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb06e:	e8 65 64 ff ff       	call   0x2f14d8
  2fb073:	e9 75 01 00 00       	jmp    0x2fb1ed
  2fb078:	48 8d 55 c3          	lea    rdx,[rbp-0x3d]
  2fb07c:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb083:	e8 98 6a ff ff       	call   0x2f1b20
  2fb088:	48 8b c8             	mov    rcx,rax
  2fb08b:	e8 a4 2d fd ff       	call   0x2cde34
  2fb090:	48 8d 54 24 7e       	lea    rdx,[rsp+0x7e]
  2fb095:	48 8b f8             	mov    rdi,rax
  2fb098:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb09f:	e8 f4 67 ff ff       	call   0x2f1898
  2fb0a4:	48 8b c8             	mov    rcx,rax
  2fb0a7:	e8 48 2c fd ff       	call   0x2cdcf4
  2fb0ac:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  2fb0b1:	48 8b d8             	mov    rbx,rax
  2fb0b4:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb0bb:	e8 28 63 ff ff       	call   0x2f13e8
  2fb0c0:	e9 28 01 00 00       	jmp    0x2fb1ed
  2fb0c5:	48 8d 55 cf          	lea    rdx,[rbp-0x31]
  2fb0c9:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb0d0:	e8 03 61 ff ff       	call   0x2f11d8
  2fb0d5:	48 8b c8             	mov    rcx,rax
  2fb0d8:	e8 57 2d fd ff       	call   0x2cde34
  2fb0dd:	48 8d 55 85          	lea    rdx,[rbp-0x7b]
  2fb0e1:	48 8b f8             	mov    rdi,rax
  2fb0e4:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb0eb:	e8 b4 5d ff ff       	call   0x2f0ea4
  2fb0f0:	48 8b c8             	mov    rcx,rax
  2fb0f3:	e8 fc 2b fd ff       	call   0x2cdcf4
  2fb0f8:	48 8d 54 24 2a       	lea    rdx,[rsp+0x2a]
  2fb0fd:	48 8b d8             	mov    rbx,rax
  2fb100:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb107:	e8 c8 5a ff ff       	call   0x2f0bd4
  2fb10c:	e9 dc 00 00 00       	jmp    0x2fb1ed
  2fb111:	48 8d 55 db          	lea    rdx,[rbp-0x25]
  2fb115:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb11c:	e8 a3 57 ff ff       	call   0x2f08c4
  2fb121:	48 8b c8             	mov    rcx,rax
  2fb124:	e8 0b 2d fd ff       	call   0x2cde34
  2fb129:	48 8d 55 8c          	lea    rdx,[rbp-0x74]
  2fb12d:	48 8b f8             	mov    rdi,rax
  2fb130:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb137:	e8 3c 52 ff ff       	call   0x2f0378
  2fb13c:	48 8b c8             	mov    rcx,rax
  2fb13f:	e8 b0 2b fd ff       	call   0x2cdcf4
  2fb144:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
  2fb149:	48 8b d8             	mov    rbx,rax
  2fb14c:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb153:	e8 f8 60 ff ff       	call   0x2f1250
  2fb158:	e9 90 00 00 00       	jmp    0x2fb1ed
  2fb15d:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  2fb161:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb168:	e8 c7 c1 ff ff       	call   0x2f7334
  2fb16d:	48 8b c8             	mov    rcx,rax
  2fb170:	e8 bf 2c fd ff       	call   0x2cde34
  2fb175:	48 8d 55 93          	lea    rdx,[rbp-0x6d]
  2fb179:	48 8b f8             	mov    rdi,rax
  2fb17c:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb183:	e8 4c ba ff ff       	call   0x2f6bd4
  2fb188:	48 8b c8             	mov    rcx,rax
  2fb18b:	e8 64 2b fd ff       	call   0x2cdcf4
  2fb190:	48 8d 54 24 2e       	lea    rdx,[rsp+0x2e]
  2fb195:	48 8b d8             	mov    rbx,rax
  2fb198:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb19f:	e8 28 5f ff ff       	call   0x2f10cc
  2fb1a4:	eb 47                	jmp    0x2fb1ed
  2fb1a6:	48 8d 55 f3          	lea    rdx,[rbp-0xd]
  2fb1aa:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb1b1:	e8 da a0 ff ff       	call   0x2f5290
  2fb1b6:	48 8b c8             	mov    rcx,rax
  2fb1b9:	e8 76 2c fd ff       	call   0x2cde34
  2fb1be:	48 8d 55 9a          	lea    rdx,[rbp-0x66]
  2fb1c2:	48 8b f8             	mov    rdi,rax
  2fb1c5:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb1cc:	e8 b7 98 ff ff       	call   0x2f4a88
  2fb1d1:	48 8b c8             	mov    rcx,rax
  2fb1d4:	e8 1b 2b fd ff       	call   0x2cdcf4
  2fb1d9:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2fb1de:	48 8b d8             	mov    rbx,rax
  2fb1e1:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb1e8:	e8 17 5e ff ff       	call   0x2f1004
  2fb1ed:	48 8b c8             	mov    rcx,rax
  2fb1f0:	e8 6f d2 fd ff       	call   0x2d8464
  2fb1f5:	48 8b c8             	mov    rcx,rax
  2fb1f8:	e8 df 33 fd ff       	call   0x2ce5dc
  2fb1fd:	4c 8b cf             	mov    r9,rdi
  2fb200:	4c 8b c3             	mov    r8,rbx
  2fb203:	48 8b d0             	mov    rdx,rax
  2fb206:	49 8b cc             	mov    rcx,r12
  2fb209:	e8 ae a8 07 00       	call   0x375abc
  2fb20e:	49 89 06             	mov    QWORD PTR [r14],rax
  2fb211:	48 8b c8             	mov    rcx,rax
  2fb214:	48 85 c0             	test   rax,rax
  2fb217:	0f 84 87 00 00 00    	je     0x2fb2a4
  2fb21d:	48 8b d0             	mov    rdx,rax
  2fb220:	49 8b cd             	mov    rcx,r13
  2fb223:	e8 b4 5e 07 00       	call   0x3710dc
  2fb228:	0f 10 05 09 1a 0f 00 	movups xmm0,XMMWORD PTR [rip+0xf1a09]        # 0x3ecc38
  2fb22f:	48 8d 54 24 38       	lea    rdx,[rsp+0x38]
  2fb234:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb23b:	66 0f 7f 44 24 50    	movdqa XMMWORD PTR [rsp+0x50],xmm0
  2fb241:	e8 22 7a ff ff       	call   0x2f2c68
  2fb246:	48 8b c8             	mov    rcx,rax
  2fb249:	e8 a6 51 02 00       	call   0x3203f4
  2fb24e:	48 8b c8             	mov    rcx,rax
  2fb251:	e8 86 33 fd ff       	call   0x2ce5dc
  2fb256:	48 8b d0             	mov    rdx,rax
  2fb259:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
  2fb25e:	49 8b cd             	mov    rcx,r13
  2fb261:	e8 fe 5a 07 00       	call   0x370d64
  2fb266:	0f 10 05 6b 19 0f 00 	movups xmm0,XMMWORD PTR [rip+0xf196b]        # 0x3ecbd8
  2fb26d:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  2fb272:	48 8d 8d a8 00 00 00 	lea    rcx,[rbp+0xa8]
  2fb279:	66 0f 7f 44 24 50    	movdqa XMMWORD PTR [rsp+0x50],xmm0
  2fb27f:	e8 98 7c ff ff       	call   0x2f2f1c
  2fb284:	48 8b c8             	mov    rcx,rax
  2fb287:	e8 68 51 02 00       	call   0x3203f4
  2fb28c:	48 8b c8             	mov    rcx,rax
  2fb28f:	e8 48 33 fd ff       	call   0x2ce5dc
  2fb294:	48 8b d0             	mov    rdx,rax
  2fb297:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
  2fb29c:	49 8b cd             	mov    rcx,r13
  2fb29f:	e8 c0 5a 07 00       	call   0x370d64
  2fb2a4:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
  2fb2a9:	41 ff c7             	inc    r15d
  2fb2ac:	44 3b 7c 24 20       	cmp    r15d,DWORD PTR [rsp+0x20]
  2fb2b1:	0f 8c 8e fb ff ff    	jl     0x2fae45
  2fb2b7:	4c 8b b5 a0 00 00 00 	mov    r14,QWORD PTR [rbp+0xa0]
  2fb2be:	44 8b 64 24 34       	mov    r12d,DWORD PTR [rsp+0x34]
  2fb2c3:	bf 06 00 00 00       	mov    edi,0x6
  2fb2c8:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  2fb2cc:	48 8b 5c 24 48       	mov    rbx,QWORD PTR [rsp+0x48]
  2fb2d1:	ff c0                	inc    eax
  2fb2d3:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  2fb2d7:	41 3b c4             	cmp    eax,r12d
  2fb2da:	0f 8c cf f9 ff ff    	jl     0x2facaf
  2fb2e0:	48 81 c4 58 01 00 00 	add    rsp,0x158
  2fb2e7:	41 5f                	pop    r15
  2fb2e9:	41 5e                	pop    r14
  2fb2eb:	41 5d                	pop    r13
  2fb2ed:	41 5c                	pop    r12
  2fb2ef:	5f                   	pop    rdi
  2fb2f0:	5e                   	pop    rsi
  2fb2f1:	5b                   	pop    rbx
  2fb2f2:	5d                   	pop    rbp
  2fb2f3:	c3                   	ret
