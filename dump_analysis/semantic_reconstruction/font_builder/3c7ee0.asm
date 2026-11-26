
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c7ee0 <.data+0x3c7ee0>:
  3c7ee0:	40 55                                           	rex push rbp
  3c7ee2:	56                                              	push   rsi
  3c7ee3:	57                                              	push   rdi
  3c7ee4:	41 54                                           	push   r12
  3c7ee6:	41 55                                           	push   r13
  3c7ee8:	41 56                                           	push   r14
  3c7eea:	41 57                                           	push   r15
  3c7eec:	48 83 ec 50                                     	sub    rsp,0x50
  3c7ef0:	48 8d 6c 24 20                                  	lea    rbp,[rsp+0x20]
  3c7ef5:	48 89 5d 70                                     	mov    QWORD PTR [rbp+0x70],rbx
  3c7ef9:	49 8b d8                                        	mov    rbx,r8
  3c7efc:	4d 8b f1                                        	mov    r14,r9
  3c7eff:	48 8b f2                                        	mov    rsi,rdx
  3c7f02:	4c 8b f9                                        	mov    r15,rcx
  3c7f05:	48 8b fa                                        	mov    rdi,rdx
  3c7f08:	49 83 f8 20                                     	cmp    r8,0x20
  3c7f0c:	76 0a                                           	jbe    0x3c7f18
  3c7f0e:	48 c1 e7 04                                     	shl    rdi,0x4
  3c7f12:	4a 8d 0c 07                                     	lea    rcx,[rdi+r8*1]
  3c7f16:	eb 0b                                           	jmp    0x3c7f23
  3c7f18:	48 8b ce                                        	mov    rcx,rsi
  3c7f1b:	48 0f af cb                                     	imul   rcx,rbx
  3c7f1f:	48 c1 e7 04                                     	shl    rdi,0x4
  3c7f23:	48 81 f9 00 04 00 00                            	cmp    rcx,0x400
  3c7f2a:	73 2d                                           	jae    0x3c7f59
  3c7f2c:	45 33 e4                                        	xor    r12d,r12d
  3c7f2f:	48 8d 41 0f                                     	lea    rax,[rcx+0xf]
  3c7f33:	4c 89 65 78                                     	mov    QWORD PTR [rbp+0x78],r12
  3c7f37:	48 3b c1                                        	cmp    rax,rcx
  3c7f3a:	77 0a                                           	ja     0x3c7f46
  3c7f3c:	48 b8 f0 ff ff ff ff ff ff 0f                   	movabs rax,0xffffffffffffff0
  3c7f46:	48 83 e0 f0                                     	and    rax,0xfffffffffffffff0
  3c7f4a:	e8 01 51 f0 ff                                  	call   0x2cd050
  3c7f4f:	48 2b e0                                        	sub    rsp,rax
  3c7f52:	48 8d 44 24 20                                  	lea    rax,[rsp+0x20]
  3c7f57:	eb 0c                                           	jmp    0x3c7f65
  3c7f59:	e8 12 0d 00 00                                  	call   0x3c8c70
  3c7f5e:	4c 8b e0                                        	mov    r12,rax
  3c7f61:	48 89 45 78                                     	mov    QWORD PTR [rbp+0x78],rax
  3c7f65:	48 8b 8d 90 00 00 00                            	mov    rcx,QWORD PTR [rbp+0x90]
  3c7f6c:	48 89 4d 20                                     	mov    QWORD PTR [rbp+0x20],rcx
  3c7f70:	48 89 45 28                                     	mov    QWORD PTR [rbp+0x28],rax
  3c7f74:	48 89 5d 08                                     	mov    QWORD PTR [rbp+0x8],rbx
  3c7f78:	48 c7 45 10 04 00 00 00                         	mov    QWORD PTR [rbp+0x10],0x4
  3c7f80:	4c 89 75 18                                     	mov    QWORD PTR [rbp+0x18],r14
  3c7f84:	48 83 fb 20                                     	cmp    rbx,0x20
  3c7f88:	0f 86 f4 00 00 00                               	jbe    0x3c8082
  3c7f8e:	4c 8d 2c f0                                     	lea    r13,[rax+rsi*8]
  3c7f92:	49 8b d7                                        	mov    rdx,r15
  3c7f95:	4c 8d 04 07                                     	lea    r8,[rdi+rax*1]
  3c7f99:	49 8b cd                                        	mov    rcx,r13
  3c7f9c:	4c 89 85 90 00 00 00                            	mov    QWORD PTR [rbp+0x90],r8
  3c7fa3:	4d 3b e8                                        	cmp    r13,r8
  3c7fa6:	73 13                                           	jae    0x3c7fbb
  3c7fa8:	48 89 11                                        	mov    QWORD PTR [rcx],rdx
  3c7fab:	48 03 d3                                        	add    rdx,rbx
  3c7fae:	48 83 c1 08                                     	add    rcx,0x8
  3c7fb2:	49 3b c8                                        	cmp    rcx,r8
  3c7fb5:	72 f1                                           	jb     0x3c7fa8
  3c7fb7:	48 8b 45 28                                     	mov    rax,QWORD PTR [rbp+0x28]
  3c7fbb:	48 8d 14 f0                                     	lea    rdx,[rax+rsi*8]
  3c7fbf:	48 c7 45 08 08 00 00 00                         	mov    QWORD PTR [rbp+0x8],0x8
  3c7fc7:	4c 8b c6                                        	mov    r8,rsi
  3c7fca:	48 c7 45 10 03 00 00 00                         	mov    QWORD PTR [rbp+0x10],0x3
  3c7fd2:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3c7fd6:	e8 41 02 00 00                                  	call   0x3c821c
  3c7fdb:	45 33 f6                                        	xor    r14d,r14d
  3c7fde:	49 8b ff                                        	mov    rdi,r15
  3c7fe1:	48 85 f6                                        	test   rsi,rsi
  3c7fe4:	0f 84 dc 00 00 00                               	je     0x3c80c6
  3c7fea:	4c 8b a5 90 00 00 00                            	mov    r12,QWORD PTR [rbp+0x90]
  3c7ff1:	4b 8b 44 f5 00                                  	mov    rax,QWORD PTR [r13+r14*8+0x0]
  3c7ff6:	48 89 85 80 00 00 00                            	mov    QWORD PTR [rbp+0x80],rax
  3c7ffd:	48 3b c7                                        	cmp    rax,rdi
  3c8000:	74 6b                                           	je     0x3c806d
  3c8002:	4c 8b c3                                        	mov    r8,rbx
  3c8005:	48 8b d7                                        	mov    rdx,rdi
  3c8008:	49 8b cc                                        	mov    rcx,r12
  3c800b:	e8 3c 0d 00 00                                  	call   0x3c8d4c
  3c8010:	4c 8b a5 80 00 00 00                            	mov    r12,QWORD PTR [rbp+0x80]
  3c8017:	48 8b cf                                        	mov    rcx,rdi
  3c801a:	4d 8b c6                                        	mov    r8,r14
  3c801d:	33 d2                                           	xor    edx,edx
  3c801f:	4b 89 4c c5 00                                  	mov    QWORD PTR [r13+r8*8+0x0],rcx
  3c8024:	49 8b c4                                        	mov    rax,r12
  3c8027:	4c 8b c3                                        	mov    r8,rbx
  3c802a:	49 2b c7                                        	sub    rax,r15
  3c802d:	48 f7 f3                                        	div    rbx
  3c8030:	49 8b d4                                        	mov    rdx,r12
  3c8033:	48 89 85 80 00 00 00                            	mov    QWORD PTR [rbp+0x80],rax
  3c803a:	e8 0d 0d 00 00                                  	call   0x3c8d4c
  3c803f:	48 8b 85 80 00 00 00                            	mov    rax,QWORD PTR [rbp+0x80]
  3c8046:	49 8b cc                                        	mov    rcx,r12
  3c8049:	4c 8b c0                                        	mov    r8,rax
  3c804c:	4d 8b 64 c5 00                                  	mov    r12,QWORD PTR [r13+rax*8+0x0]
  3c8051:	4c 3b e7                                        	cmp    r12,rdi
  3c8054:	75 c7                                           	jne    0x3c801d
  3c8056:	4c 8b a5 90 00 00 00                            	mov    r12,QWORD PTR [rbp+0x90]
  3c805d:	4c 8b c3                                        	mov    r8,rbx
  3c8060:	49 8b d4                                        	mov    rdx,r12
  3c8063:	49 89 4c c5 00                                  	mov    QWORD PTR [r13+rax*8+0x0],rcx
  3c8068:	e8 df 0c 00 00                                  	call   0x3c8d4c
  3c806d:	49 ff c6                                        	inc    r14
  3c8070:	48 03 fb                                        	add    rdi,rbx
  3c8073:	4c 3b f6                                        	cmp    r14,rsi
  3c8076:	0f 82 75 ff ff ff                               	jb     0x3c7ff1
  3c807c:	4c 8b 65 78                                     	mov    r12,QWORD PTR [rbp+0x78]
  3c8080:	eb 44                                           	jmp    0x3c80c6
  3c8082:	41 8a c7                                        	mov    al,r15b
  3c8085:	0a c3                                           	or     al,bl
  3c8087:	a8 03                                           	test   al,0x3
  3c8089:	75 2c                                           	jne    0x3c80b7
  3c808b:	48 83 fb 04                                     	cmp    rbx,0x4
  3c808f:	75 0a                                           	jne    0x3c809b
  3c8091:	48 c7 45 10 00 00 00 00                         	mov    QWORD PTR [rbp+0x10],0x0
  3c8099:	eb 1c                                           	jmp    0x3c80b7
  3c809b:	48 83 fb 08                                     	cmp    rbx,0x8
  3c809f:	75 0e                                           	jne    0x3c80af
  3c80a1:	48 c7 45 10 01 00 00 00                         	mov    QWORD PTR [rbp+0x10],0x1
  3c80a9:	41 f6 c7 07                                     	test   r15b,0x7
  3c80ad:	74 08                                           	je     0x3c80b7
  3c80af:	48 c7 45 10 02 00 00 00                         	mov    QWORD PTR [rbp+0x10],0x2
  3c80b7:	4c 8b c6                                        	mov    r8,rsi
  3c80ba:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3c80be:	49 8b d7                                        	mov    rdx,r15
  3c80c1:	e8 56 01 00 00                                  	call   0x3c821c
  3c80c6:	4d 85 e4                                        	test   r12,r12
  3c80c9:	74 08                                           	je     0x3c80d3
  3c80cb:	49 8b cc                                        	mov    rcx,r12
  3c80ce:	e8 fd 0a 00 00                                  	call   0x3c8bd0
  3c80d3:	48 8b 5d 70                                     	mov    rbx,QWORD PTR [rbp+0x70]
  3c80d7:	48 8d 65 30                                     	lea    rsp,[rbp+0x30]
  3c80db:	41 5f                                           	pop    r15
  3c80dd:	41 5e                                           	pop    r14
  3c80df:	41 5d                                           	pop    r13
  3c80e1:	41 5c                                           	pop    r12
  3c80e3:	5f                                              	pop    rdi
  3c80e4:	5e                                              	pop    rsi
  3c80e5:	5d                                              	pop    rbp
  3c80e6:	c3                                              	ret
