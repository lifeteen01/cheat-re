
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a7020 <.data+0x3a7020>:
  3a7020:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  3a7025:	55                                              	push   rbp
  3a7026:	56                                              	push   rsi
  3a7027:	57                                              	push   rdi
  3a7028:	41 56                                           	push   r14
  3a702a:	41 57                                           	push   r15
  3a702c:	48 83 ec 20                                     	sub    rsp,0x20
  3a7030:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  3a7035:	48 8b d9                                        	mov    rbx,rcx
  3a7038:	f3 41 0f 10 08                                  	movss  xmm1,DWORD PTR [r8]
  3a703d:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a7042:	49 8b f9                                        	mov    rdi,r9
  3a7045:	49 8b f0                                        	mov    rsi,r8
  3a7048:	48 8b ea                                        	mov    rbp,rdx
  3a704b:	e8 f0 52 f2 ff                                  	call   0x2cc340
  3a7050:	f3 0f 10 56 04                                  	movss  xmm2,DWORD PTR [rsi+0x4]
  3a7055:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3a705a:	f3 0f 10 4d 00                                  	movss  xmm1,DWORD PTR [rbp+0x0]
  3a705f:	e8 dc 52 f2 ff                                  	call   0x2cc340
  3a7064:	4c 8b 74 24 70                                  	mov    r14,QWORD PTR [rsp+0x70]
  3a7069:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3a706e:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [rdi+0x4]
  3a7073:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  3a7078:	e8 c3 52 f2 ff                                  	call   0x2cc340
  3a707d:	f3 41 0f 10 56 04                               	movss  xmm2,DWORD PTR [r14+0x4]
  3a7083:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3a7088:	f3 0f 10 0f                                     	movss  xmm1,DWORD PTR [rdi]
  3a708c:	e8 af 52 f2 ff                                  	call   0x2cc340
  3a7091:	44 0f b7 4b 34                                  	movzx  r9d,WORD PTR [rbx+0x34]
  3a7096:	45 33 c0                                        	xor    r8d,r8d
  3a7099:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a709d:	45 8d 78 01                                     	lea    r15d,[r8+0x1]
  3a70a1:	47 8d 14 0f                                     	lea    r10d,[r15+r9*1]
  3a70a5:	66 44 89 08                                     	mov    WORD PTR [rax],r9w
  3a70a9:	45 8d 58 02                                     	lea    r11d,[r8+0x2]
  3a70ad:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a70b1:	43 8d 14 02                                     	lea    edx,[r10+r8*1]
  3a70b5:	66 42 89 54 40 02                               	mov    WORD PTR [rax+r8*2+0x2],dx
  3a70bb:	45 03 c7                                        	add    r8d,r15d
  3a70be:	45 3b c3                                        	cmp    r8d,r11d
  3a70c1:	7c ea                                           	jl     0x3a70ad
  3a70c3:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a70c7:	45 33 c0                                        	xor    r8d,r8d
  3a70ca:	66 44 89 48 06                                  	mov    WORD PTR [rax+0x6],r9w
  3a70cf:	66 45 03 cb                                     	add    r9w,r11w
  3a70d3:	48 8b 43 50                                     	mov    rax,QWORD PTR [rbx+0x50]
  3a70d7:	43 8d 14 01                                     	lea    edx,[r9+r8*1]
  3a70db:	66 42 89 54 40 08                               	mov    WORD PTR [rax+r8*2+0x8],dx
  3a70e1:	45 03 c7                                        	add    r8d,r15d
  3a70e4:	45 3b c3                                        	cmp    r8d,r11d
  3a70e7:	7c ea                                           	jl     0x3a70d3
  3a70e9:	f2 0f 10 45 00                                  	movsd  xmm0,QWORD PTR [rbp+0x0]
  3a70ee:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a70f2:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [rsp+0x78]
  3a70f6:	f2 0f 11 00                                     	movsd  QWORD PTR [rax],xmm0
  3a70fa:	f2 0f 10 0f                                     	movsd  xmm1,QWORD PTR [rdi]
  3a70fe:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7102:	f2 0f 10 44 24 50                               	movsd  xmm0,QWORD PTR [rsp+0x50]
  3a7108:	f2 0f 11 48 08                                  	movsd  QWORD PTR [rax+0x8],xmm1
  3a710d:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7111:	f2 0f 10 4c 24 70                               	movsd  xmm1,QWORD PTR [rsp+0x70]
  3a7117:	89 48 10                                        	mov    DWORD PTR [rax+0x10],ecx
  3a711a:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a711e:	f2 0f 11 40 14                                  	movsd  QWORD PTR [rax+0x14],xmm0
  3a7123:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7127:	f2 0f 11 48 1c                                  	movsd  QWORD PTR [rax+0x1c],xmm1
  3a712c:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7130:	89 48 24                                        	mov    DWORD PTR [rax+0x24],ecx
  3a7133:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  3a7137:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a713b:	f2 0f 11 40 28                                  	movsd  QWORD PTR [rax+0x28],xmm0
  3a7140:	f2 41 0f 10 0e                                  	movsd  xmm1,QWORD PTR [r14]
  3a7145:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7149:	f2 0f 10 44 24 58                               	movsd  xmm0,QWORD PTR [rsp+0x58]
  3a714f:	f2 0f 11 48 30                                  	movsd  QWORD PTR [rax+0x30],xmm1
  3a7154:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7158:	f2 0f 10 4c 24 60                               	movsd  xmm1,QWORD PTR [rsp+0x60]
  3a715e:	89 48 38                                        	mov    DWORD PTR [rax+0x38],ecx
  3a7161:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7165:	f2 0f 11 40 3c                                  	movsd  QWORD PTR [rax+0x3c],xmm0
  3a716a:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a716e:	f2 0f 11 48 44                                  	movsd  QWORD PTR [rax+0x44],xmm1
  3a7173:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
  3a7177:	89 48 4c                                        	mov    DWORD PTR [rax+0x4c],ecx
  3a717a:	48 83 43 48 50                                  	add    QWORD PTR [rbx+0x48],0x50
  3a717f:	83 43 34 04                                     	add    DWORD PTR [rbx+0x34],0x4
  3a7183:	48 83 43 50 0c                                  	add    QWORD PTR [rbx+0x50],0xc
  3a7188:	48 8b 5c 24 68                                  	mov    rbx,QWORD PTR [rsp+0x68]
  3a718d:	48 83 c4 20                                     	add    rsp,0x20
  3a7191:	41 5f                                           	pop    r15
  3a7193:	41 5e                                           	pop    r14
  3a7195:	5f                                              	pop    rdi
  3a7196:	5e                                              	pop    rsi
  3a7197:	5d                                              	pop    rbp
  3a7198:	c3                                              	ret
