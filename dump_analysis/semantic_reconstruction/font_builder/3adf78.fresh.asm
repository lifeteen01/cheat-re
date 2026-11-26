
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003adf78 <.data+0x3adf78>:
  3adf78:	40 53                                           	rex push rbx
  3adf7a:	55                                              	push   rbp
  3adf7b:	56                                              	push   rsi
  3adf7c:	57                                              	push   rdi
  3adf7d:	41 54                                           	push   r12
  3adf7f:	41 55                                           	push   r13
  3adf81:	41 56                                           	push   r14
  3adf83:	41 57                                           	push   r15
  3adf85:	48 83 ec 28                                     	sub    rsp,0x28
  3adf89:	4c 8b 59 08                                     	mov    r11,QWORD PTR [rcx+0x8]
  3adf8d:	8b 59 38                                        	mov    ebx,DWORD PTR [rcx+0x38]
  3adf90:	4c 63 ca                                        	movsxd r9,edx
  3adf93:	4e 8d 04 1b                                     	lea    r8,[rbx+r11*1]
  3adf97:	49 8b c8                                        	mov    rcx,r8
  3adf9a:	e8 f5 fd ff ff                                  	call   0x3add94
  3adf9f:	45 33 e4                                        	xor    r12d,r12d
  3adfa2:	44 0f b7 d0                                     	movzx  r10d,ax
  3adfa6:	66 85 c0                                        	test   ax,ax
  3adfa9:	75 27                                           	jne    0x3adfd2
  3adfab:	49 8d 48 02                                     	lea    rcx,[r8+0x2]
  3adfaf:	e8 e0 fd ff ff                                  	call   0x3add94
  3adfb4:	0f b7 d0                                        	movzx  edx,ax
  3adfb7:	83 ea 06                                        	sub    edx,0x6
  3adfba:	44 3b ca                                        	cmp    r9d,edx
  3adfbd:	0f 8d 53 02 00 00                               	jge    0x3ae216
  3adfc3:	4a 8d 04 0b                                     	lea    rax,[rbx+r9*1]
  3adfc7:	42 0f b6 44 18 06                               	movzx  eax,BYTE PTR [rax+r11*1+0x6]
  3adfcd:	e9 46 02 00 00                                  	jmp    0x3ae218
  3adfd2:	b8 06 00 00 00                                  	mov    eax,0x6
  3adfd7:	66 44 3b d0                                     	cmp    r10w,ax
  3adfdb:	75 4c                                           	jne    0x3ae029
  3adfdd:	49 8d 48 06                                     	lea    rcx,[r8+0x6]
  3adfe1:	e8 ae fd ff ff                                  	call   0x3add94
  3adfe6:	44 0f b7 d0                                     	movzx  r10d,ax
  3adfea:	45 3b ca                                        	cmp    r9d,r10d
  3adfed:	0f 82 23 02 00 00                               	jb     0x3ae216
  3adff3:	49 8d 48 08                                     	lea    rcx,[r8+0x8]
  3adff7:	e8 98 fd ff ff                                  	call   0x3add94
  3adffc:	0f b7 d0                                        	movzx  edx,ax
  3adfff:	41 03 d2                                        	add    edx,r10d
  3ae002:	44 3b ca                                        	cmp    r9d,edx
  3ae005:	0f 83 0b 02 00 00                               	jae    0x3ae216
  3ae00b:	45 2b ca                                        	sub    r9d,r10d
  3ae00e:	43 8d 0c 09                                     	lea    ecx,[r9+r9*1]
  3ae012:	48 83 c1 0a                                     	add    rcx,0xa
  3ae016:	48 03 cb                                        	add    rcx,rbx
  3ae019:	49 03 cb                                        	add    rcx,r11
  3ae01c:	e8 73 fd ff ff                                  	call   0x3add94
  3ae021:	0f b7 c0                                        	movzx  eax,ax
  3ae024:	e9 ef 01 00 00                                  	jmp    0x3ae218
  3ae029:	41 bd 02 00 00 00                               	mov    r13d,0x2
  3ae02f:	66 45 3b d5                                     	cmp    r10w,r13w
  3ae033:	0f 84 dd 01 00 00                               	je     0x3ae216
  3ae039:	66 41 83 fa 04                                  	cmp    r10w,0x4
  3ae03e:	0f 85 6b 01 00 00                               	jne    0x3ae1af
  3ae044:	49 8d 48 06                                     	lea    rcx,[r8+0x6]
  3ae048:	e8 47 fd ff ff                                  	call   0x3add94
  3ae04d:	49 8d 48 08                                     	lea    rcx,[r8+0x8]
  3ae051:	44 0f b7 f0                                     	movzx  r14d,ax
  3ae055:	e8 3a fd ff ff                                  	call   0x3add94
  3ae05a:	49 8d 48 0a                                     	lea    rcx,[r8+0xa]
  3ae05e:	0f b7 f0                                        	movzx  esi,ax
  3ae061:	e8 2e fd ff ff                                  	call   0x3add94
  3ae066:	0f b7 f8                                        	movzx  edi,ax
  3ae069:	41 81 f9 ff ff 00 00                            	cmp    r9d,0xffff
  3ae070:	0f 8f a0 01 00 00                               	jg     0x3ae216
  3ae076:	8d 6b 0e                                        	lea    ebp,[rbx+0xe]
  3ae079:	66 41 d1 ee                                     	shr    r14w,1
  3ae07d:	49 8d 48 0c                                     	lea    rcx,[r8+0xc]
  3ae081:	44 8b fd                                        	mov    r15d,ebp
  3ae084:	66 d1 ee                                        	shr    si,1
  3ae087:	e8 08 fd ff ff                                  	call   0x3add94
  3ae08c:	0f b7 d0                                        	movzx  edx,ax
  3ae08f:	d1 ea                                           	shr    edx,1
  3ae091:	44 8d 04 12                                     	lea    r8d,[rdx+rdx*1]
  3ae095:	41 8b c8                                        	mov    ecx,r8d
  3ae098:	49 03 cf                                        	add    rcx,r15
  3ae09b:	49 03 cb                                        	add    rcx,r11
  3ae09e:	e8 f1 fc ff ff                                  	call   0x3add94
  3ae0a3:	0f b7 d0                                        	movzx  edx,ax
  3ae0a6:	44 3b ca                                        	cmp    r9d,edx
  3ae0a9:	7c 09                                           	jl     0x3ae0b4
  3ae0ab:	44 8d 53 0e                                     	lea    r10d,[rbx+0xe]
  3ae0af:	45 03 d0                                        	add    r10d,r8d
  3ae0b2:	eb 03                                           	jmp    0x3ae0b7
  3ae0b4:	44 8b d5                                        	mov    r10d,ebp
  3ae0b7:	41 83 c2 fe                                     	add    r10d,0xfffffffe
  3ae0bb:	66 85 ff                                        	test   di,di
  3ae0be:	74 3e                                           	je     0x3ae0fe
  3ae0c0:	41 bd ff ff 00 00                               	mov    r13d,0xffff
  3ae0c6:	66 d1 ee                                        	shr    si,1
  3ae0c9:	0f b7 c6                                        	movzx  eax,si
  3ae0cc:	41 8b ca                                        	mov    ecx,r10d
  3ae0cf:	44 8d 04 00                                     	lea    r8d,[rax+rax*1]
  3ae0d3:	41 8b c0                                        	mov    eax,r8d
  3ae0d6:	49 03 c3                                        	add    rax,r11
  3ae0d9:	48 03 c8                                        	add    rcx,rax
  3ae0dc:	e8 b3 fc ff ff                                  	call   0x3add94
  3ae0e1:	0f b7 d0                                        	movzx  edx,ax
  3ae0e4:	43 8d 04 10                                     	lea    eax,[r8+r10*1]
  3ae0e8:	44 3b ca                                        	cmp    r9d,edx
  3ae0eb:	41 0f 4e c2                                     	cmovle eax,r10d
  3ae0ef:	44 8b d0                                        	mov    r10d,eax
  3ae0f2:	66 41 03 fd                                     	add    di,r13w
  3ae0f6:	75 ce                                           	jne    0x3ae0c6
  3ae0f8:	41 bd 02 00 00 00                               	mov    r13d,0x2
  3ae0fe:	44 2b d5                                        	sub    r10d,ebp
  3ae101:	41 0f b7 fe                                     	movzx  edi,r14w
  3ae105:	45 03 d5                                        	add    r10d,r13d
  3ae108:	41 d1 ea                                        	shr    r10d,1
  3ae10b:	41 0f b7 c2                                     	movzx  eax,r10w
  3ae10f:	8d 0c 3f                                        	lea    ecx,[rdi+rdi*1]
  3ae112:	48 83 c1 10                                     	add    rcx,0x10
  3ae116:	48 03 cb                                        	add    rcx,rbx
  3ae119:	4c 8d 04 00                                     	lea    r8,[rax+rax*1]
  3ae11d:	49 03 c8                                        	add    rcx,r8
  3ae120:	49 03 cb                                        	add    rcx,r11
  3ae123:	e8 6c fc ff ff                                  	call   0x3add94
  3ae128:	0f b7 f0                                        	movzx  esi,ax
  3ae12b:	44 3b ce                                        	cmp    r9d,esi
  3ae12e:	0f 8c e2 00 00 00                               	jl     0x3ae216
  3ae134:	49 8d 0c 28                                     	lea    rcx,[r8+rbp*1]
  3ae138:	49 03 cb                                        	add    rcx,r11
  3ae13b:	e8 54 fc ff ff                                  	call   0x3add94
  3ae140:	0f b7 d0                                        	movzx  edx,ax
  3ae143:	44 3b ca                                        	cmp    r9d,edx
  3ae146:	0f 8f ca 00 00 00                               	jg     0x3ae216
  3ae14c:	8d 04 7f                                        	lea    eax,[rdi+rdi*2]
  3ae14f:	8d 14 00                                        	lea    edx,[rax+rax*1]
  3ae152:	48 8d 4b 10                                     	lea    rcx,[rbx+0x10]
  3ae156:	49 03 c8                                        	add    rcx,r8
  3ae159:	48 03 ca                                        	add    rcx,rdx
  3ae15c:	49 03 cb                                        	add    rcx,r11
  3ae15f:	e8 30 fc ff ff                                  	call   0x3add94
  3ae164:	44 0f b7 d0                                     	movzx  r10d,ax
  3ae168:	66 45 85 d2                                     	test   r10w,r10w
  3ae16c:	75 22                                           	jne    0x3ae190
  3ae16e:	8d 0c bd 00 00 00 00                            	lea    ecx,[rdi*4+0x0]
  3ae175:	48 83 c1 10                                     	add    rcx,0x10
  3ae179:	48 03 cb                                        	add    rcx,rbx
  3ae17c:	49 03 c8                                        	add    rcx,r8
  3ae17f:	49 03 cb                                        	add    rcx,r11
  3ae182:	e8 0d fc ff ff                                  	call   0x3add94
  3ae187:	66 41 03 c1                                     	add    ax,r9w
  3ae18b:	e9 91 fe ff ff                                  	jmp    0x3ae021
  3ae190:	44 2b ce                                        	sub    r9d,esi
  3ae193:	43 8d 04 09                                     	lea    eax,[r9+r9*1]
  3ae197:	48 63 c8                                        	movsxd rcx,eax
  3ae19a:	48 83 c1 10                                     	add    rcx,0x10
  3ae19e:	48 03 cb                                        	add    rcx,rbx
  3ae1a1:	49 03 ca                                        	add    rcx,r10
  3ae1a4:	49 03 c8                                        	add    rcx,r8
  3ae1a7:	48 03 ca                                        	add    rcx,rdx
  3ae1aa:	e9 6a fe ff ff                                  	jmp    0x3ae019
  3ae1af:	41 8d 42 f4                                     	lea    eax,[r10-0xc]
  3ae1b3:	66 83 f8 01                                     	cmp    ax,0x1
  3ae1b7:	77 5d                                           	ja     0x3ae216
  3ae1b9:	49 8d 48 0c                                     	lea    rcx,[r8+0xc]
  3ae1bd:	41 8b fc                                        	mov    edi,r12d
  3ae1c0:	e8 af fb ff ff                                  	call   0x3add74
  3ae1c5:	8b f0                                           	mov    esi,eax
  3ae1c7:	85 c0                                           	test   eax,eax
  3ae1c9:	7e 4b                                           	jle    0x3ae216
  3ae1cb:	4d 8d 73 10                                     	lea    r14,[r11+0x10]
  3ae1cf:	4c 03 f3                                        	add    r14,rbx
  3ae1d2:	44 8b de                                        	mov    r11d,esi
  3ae1d5:	44 2b df                                        	sub    r11d,edi
  3ae1d8:	41 d1 fb                                        	sar    r11d,1
  3ae1db:	44 03 df                                        	add    r11d,edi
  3ae1de:	43 8d 0c 5b                                     	lea    ecx,[r11+r11*2]
  3ae1e2:	c1 e1 02                                        	shl    ecx,0x2
  3ae1e5:	48 63 d9                                        	movsxd rbx,ecx
  3ae1e8:	4a 8d 0c 33                                     	lea    rcx,[rbx+r14*1]
  3ae1ec:	e8 83 fb ff ff                                  	call   0x3add74
  3ae1f1:	8b e8                                           	mov    ebp,eax
  3ae1f3:	44 3b c8                                        	cmp    r9d,eax
  3ae1f6:	73 05                                           	jae    0x3ae1fd
  3ae1f8:	41 8b f3                                        	mov    esi,r11d
  3ae1fb:	eb 15                                           	jmp    0x3ae212
  3ae1fd:	49 8d 48 14                                     	lea    rcx,[r8+0x14]
  3ae201:	48 03 cb                                        	add    rcx,rbx
  3ae204:	e8 6b fb ff ff                                  	call   0x3add74
  3ae209:	44 3b c8                                        	cmp    r9d,eax
  3ae20c:	76 1b                                           	jbe    0x3ae229
  3ae20e:	41 8d 7b 01                                     	lea    edi,[r11+0x1]
  3ae212:	3b fe                                           	cmp    edi,esi
  3ae214:	7c bc                                           	jl     0x3ae1d2
  3ae216:	33 c0                                           	xor    eax,eax
  3ae218:	48 83 c4 28                                     	add    rsp,0x28
  3ae21c:	41 5f                                           	pop    r15
  3ae21e:	41 5e                                           	pop    r14
  3ae220:	41 5d                                           	pop    r13
  3ae222:	41 5c                                           	pop    r12
  3ae224:	5f                                              	pop    rdi
  3ae225:	5e                                              	pop    rsi
  3ae226:	5d                                              	pop    rbp
  3ae227:	5b                                              	pop    rbx
  3ae228:	c3                                              	ret
  3ae229:	49 8d 48 18                                     	lea    rcx,[r8+0x18]
  3ae22d:	48 03 cb                                        	add    rcx,rbx
  3ae230:	e8 3f fb ff ff                                  	call   0x3add74
  3ae235:	66 41 83 fa 0c                                  	cmp    r10w,0xc
  3ae23a:	75 dc                                           	jne    0x3ae218
  3ae23c:	2b c5                                           	sub    eax,ebp
  3ae23e:	41 03 c1                                        	add    eax,r9d
  3ae241:	eb d5                                           	jmp    0x3ae218
  3ae243:	cc                                              	int3
