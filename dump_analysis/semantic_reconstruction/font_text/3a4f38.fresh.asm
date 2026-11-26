
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a4f38 <.data+0x3a4f38>:
  3a4f38:	40 53                                           	rex push rbx
  3a4f3a:	48 83 ec 20                                     	sub    rsp,0x20
  3a4f3e:	8b 91 94 04 00 00                               	mov    edx,DWORD PTR [rcx+0x494]
  3a4f44:	48 8b d9                                        	mov    rbx,rcx
  3a4f47:	e8 f0 f7 ff ff                                  	call   0x3a473c
  3a4f4c:	44 8b 53 40                                     	mov    r10d,DWORD PTR [rbx+0x40]
  3a4f50:	4c 8b d8                                        	mov    r11,rax
  3a4f53:	44 0f b7 48 06                                  	movzx  r9d,WORD PTR [rax+0x6]
  3a4f58:	44 0f b7 40 04                                  	movzx  r8d,WORD PTR [rax+0x4]
  3a4f5d:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
  3a4f61:	45 0f af ca                                     	imul   r9d,r10d
  3a4f65:	45 03 c8                                        	add    r9d,r8d
  3a4f68:	43 8d 0c 11                                     	lea    ecx,[r9+r10*1]
  3a4f6c:	48 63 d1                                        	movsxd rdx,ecx
  3a4f6f:	49 63 c9                                        	movsxd rcx,r9d
  3a4f72:	48 85 c0                                        	test   rax,rax
  3a4f75:	74 20                                           	je     0x3a4f97
  3a4f77:	c6 44 02 01 ff                                  	mov    BYTE PTR [rdx+rax*1+0x1],0xff
  3a4f7c:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
  3a4f80:	c6 04 02 ff                                     	mov    BYTE PTR [rdx+rax*1],0xff
  3a4f84:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
  3a4f88:	c6 44 08 01 ff                                  	mov    BYTE PTR [rax+rcx*1+0x1],0xff
  3a4f8d:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
  3a4f91:	c6 04 01 ff                                     	mov    BYTE PTR [rcx+rax*1],0xff
  3a4f95:	eb 26                                           	jmp    0x3a4fbd
  3a4f97:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a4f9b:	41 83 c8 ff                                     	or     r8d,0xffffffff
  3a4f9f:	44 89 44 90 04                                  	mov    DWORD PTR [rax+rdx*4+0x4],r8d
  3a4fa4:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a4fa8:	44 89 04 90                                     	mov    DWORD PTR [rax+rdx*4],r8d
  3a4fac:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a4fb0:	44 89 44 88 04                                  	mov    DWORD PTR [rax+rcx*4+0x4],r8d
  3a4fb5:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
  3a4fb9:	44 89 04 88                                     	mov    DWORD PTR [rax+rcx*4],r8d
  3a4fbd:	41 0f b7 43 06                                  	movzx  eax,WORD PTR [r11+0x6]
  3a4fc2:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a4fc7:	f3 0f 10 05 81 82 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee8281]        # 0x28d250
  3a4fcf:	66 0f 6e d0                                     	movd   xmm2,eax
  3a4fd3:	41 0f b7 43 04                                  	movzx  eax,WORD PTR [r11+0x4]
  3a4fd8:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  3a4fdb:	66 0f 6e c8                                     	movd   xmm1,eax
  3a4fdf:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a4fe2:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a4fe6:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3a4fea:	f3 0f 59 53 4c                                  	mulss  xmm2,DWORD PTR [rbx+0x4c]
  3a4fef:	f3 0f 59 4b 48                                  	mulss  xmm1,DWORD PTR [rbx+0x48]
  3a4ff4:	e8 47 73 f2 ff                                  	call   0x2cc340
  3a4ff9:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a4ffd:	f2 0f 11 43 50                                  	movsd  QWORD PTR [rbx+0x50],xmm0
  3a5002:	48 83 c4 20                                     	add    rsp,0x20
  3a5006:	5b                                              	pop    rbx
  3a5007:	c3                                              	ret
