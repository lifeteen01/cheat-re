
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003adda4 <.data+0x3adda4>:
  3adda4:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3adda9:	57                                              	push   rdi
  3addaa:	48 83 ec 20                                     	sub    rsp,0x20
  3addae:	8b da                                           	mov    ebx,edx
  3addb0:	4c 8b d1                                        	mov    r10,rcx
  3addb3:	8b 54 24 50                                     	mov    edx,DWORD PTR [rsp+0x50]
  3addb7:	33 c0                                           	xor    eax,eax
  3addb9:	4d 8b d9                                        	mov    r11,r9
  3addbc:	41 8b f8                                        	mov    edi,r8d
  3addbf:	8d 4a ff                                        	lea    ecx,[rdx-0x1]
  3addc2:	85 c9                                           	test   ecx,ecx
  3addc4:	7e 1e                                           	jle    0x3adde4
  3addc6:	44 8d 48 01                                     	lea    r9d,[rax+0x1]
  3addca:	48 03 c0                                        	add    rax,rax
  3addcd:	4d 63 c1                                        	movsxd r8,r9d
  3addd0:	49 c1 e0 04                                     	shl    r8,0x4
  3addd4:	4d 03 c3                                        	add    r8,r11
  3addd7:	4d 89 44 c3 08                                  	mov    QWORD PTR [r11+rax*8+0x8],r8
  3adddc:	41 8b c1                                        	mov    eax,r9d
  3adddf:	44 3b c9                                        	cmp    r9d,ecx
  3adde2:	7c e2                                           	jl     0x3addc6
  3adde4:	48 98                                           	cdqe
  3adde6:	4d 8d 4a 28                                     	lea    r9,[r10+0x28]
  3addea:	48 03 c0                                        	add    rax,rax
  3added:	49 8b ca                                        	mov    rcx,r10
  3addf0:	49 c7 44 c3 08 00 00 00 00                      	mov    QWORD PTR [r11+rax*8+0x8],0x0
  3addf9:	41 89 52 14                                     	mov    DWORD PTR [r10+0x14],edx
  3addfd:	33 d2                                           	xor    edx,edx
  3addff:	49 c7 42 0c 01 00 00 00                         	mov    QWORD PTR [r10+0xc],0x1
  3ade07:	4d 89 5a 20                                     	mov    QWORD PTR [r10+0x20],r11
  3ade0b:	4d 89 4a 18                                     	mov    QWORD PTR [r10+0x18],r9
  3ade0f:	41 89 1a                                        	mov    DWORD PTR [r10],ebx
  3ade12:	41 89 7a 04                                     	mov    DWORD PTR [r10+0x4],edi
  3ade16:	e8 3d 01 00 00                                  	call   0x3adf58
  3ade1b:	49 8d 42 38                                     	lea    rax,[r10+0x38]
  3ade1f:	41 c7 01 00 00 00 00                            	mov    DWORD PTR [r9],0x0
  3ade26:	89 18                                           	mov    DWORD PTR [rax],ebx
  3ade28:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3ade2d:	41 c7 42 2c 00 00 00 00                         	mov    DWORD PTR [r10+0x2c],0x0
  3ade35:	49 89 42 30                                     	mov    QWORD PTR [r10+0x30],rax
  3ade39:	41 c7 42 3c 00 00 00 40                         	mov    DWORD PTR [r10+0x3c],0x40000000
  3ade41:	49 c7 42 40 00 00 00 00                         	mov    QWORD PTR [r10+0x40],0x0
  3ade49:	48 83 c4 20                                     	add    rsp,0x20
  3ade4d:	5f                                              	pop    rdi
  3ade4e:	c3                                              	ret
  3ade4f:	cc                                              	int3
