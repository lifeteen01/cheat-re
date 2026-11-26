
dump_analysis/semantic_reconstruction/movement_main_helpers/329120.bin:     file format binary


Disassembly of section .data:

0000000000329120 <.data>:
  329120:	40 53                                           	rex push rbx
  329122:	55                                              	push   rbp
  329123:	56                                              	push   rsi
  329124:	57                                              	push   rdi
  329125:	41 54                                           	push   r12
  329127:	41 55                                           	push   r13
  329129:	41 56                                           	push   r14
  32912b:	41 57                                           	push   r15
  32912d:	48 81 ec 98 00 00 00                            	sub    rsp,0x98
  329134:	33 f6                                           	xor    esi,esi
  329136:	40 38 35 bb a5 0c 00                            	cmp    BYTE PTR [rip+0xca5bb],sil        # 0x3f36f8
  32913d:	89 b4 24 e0 00 00 00                            	mov    DWORD PTR [rsp+0xe0],esi
  329144:	0f 84 c5 01 00 00                               	je     0x32930f
  32914a:	e8 4d 49 fb ff                                  	call   0x2dda9c
  32914f:	48 8b c8                                        	mov    rcx,rax
  329152:	4c 8b f8                                        	mov    r15,rax
  329155:	e8 ae 1d fa ff                                  	call   0x2caf08
  32915a:	84 c0                                           	test   al,al
  32915c:	0f 84 ad 01 00 00                               	je     0x32930f
  329162:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  329167:	45 33 f6                                        	xor    r14d,r14d
  32916a:	48 8d 0d 5f f6 ee ff                            	lea    rcx,[rip+0xffffffffffeef65f]        # 0x2187d0
  329171:	e8 86 a9 fb ff                                  	call   0x2e3afc
  329176:	48 8b c8                                        	mov    rcx,rax
  329179:	48 8b d8                                        	mov    rbx,rax
  32917c:	e8 f7 87 fa ff                                  	call   0x2d1978
  329181:	48 8b cb                                        	mov    rcx,rbx
  329184:	48 8b f8                                        	mov    rdi,rax
  329187:	e8 34 e8 fa ff                                  	call   0x2d79c0
  32918c:	4c 8b e8                                        	mov    r13,rax
  32918f:	48 3b f8                                        	cmp    rdi,rax
  329192:	0f 84 68 01 00 00                               	je     0x329300
  329198:	44 8b a4 24 e0 00 00 00                         	mov    r12d,DWORD PTR [rsp+0xe0]
  3291a0:	48 8b 1f                                        	mov    rbx,QWORD PTR [rdi]
  3291a3:	48 8b cb                                        	mov    rcx,rbx
  3291a6:	e8 5d 1d fa ff                                  	call   0x2caf08
  3291ab:	84 c0                                           	test   al,al
  3291ad:	0f 84 40 01 00 00                               	je     0x3292f3
  3291b3:	80 7f 08 00                                     	cmp    BYTE PTR [rdi+0x8],0x0
  3291b7:	0f 85 36 01 00 00                               	jne    0x3292f3
  3291bd:	48 8b cb                                        	mov    rcx,rbx
  3291c0:	e8 d7 7c fb ff                                  	call   0x2e0e9c
  3291c5:	84 c0                                           	test   al,al
  3291c7:	0f 84 26 01 00 00                               	je     0x3292f3
  3291cd:	41 b8 35 00 00 00                               	mov    r8d,0x35
  3291d3:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3291d8:	48 8b cb                                        	mov    rcx,rbx
  3291db:	e8 08 fa 03 00                                  	call   0x368be8
  3291e0:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3291e5:	e8 d2 e9 09 00                                  	call   0x3c7bbc
  3291ea:	48 8b d0                                        	mov    rdx,rax
  3291ed:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3291f2:	e8 b9 63 fb ff                                  	call   0x2df5b0
  3291f7:	84 c0                                           	test   al,al
  3291f9:	0f 85 f4 00 00 00                               	jne    0x3292f3
  3291ff:	48 8b cb                                        	mov    rcx,rbx
  329202:	e8 5d 05 04 00                                  	call   0x369764
  329207:	48 8b c8                                        	mov    rcx,rax
  32920a:	e8 f9 1c fa ff                                  	call   0x2caf08
  32920f:	84 c0                                           	test   al,al
  329211:	0f 84 dc 00 00 00                               	je     0x3292f3
  329217:	33 d2                                           	xor    edx,edx
  329219:	48 8b cb                                        	mov    rcx,rbx
  32921c:	e8 eb 0f 04 00                                  	call   0x36a20c
  329221:	84 c0                                           	test   al,al
  329223:	0f 85 ca 00 00 00                               	jne    0x3292f3
  329229:	48 8b cb                                        	mov    rcx,rbx
  32922c:	e8 7f 01 04 00                                  	call   0x3693b0
  329231:	84 c0                                           	test   al,al
  329233:	0f 85 ba 00 00 00                               	jne    0x3292f3
  329239:	33 d2                                           	xor    edx,edx
  32923b:	49 8b cf                                        	mov    rcx,r15
  32923e:	e8 e9 40 fa ff                                  	call   0x2cd32c
  329243:	33 d2                                           	xor    edx,edx
  329245:	48 8b cb                                        	mov    rcx,rbx
  329248:	48 8b e8                                        	mov    rbp,rax
  32924b:	e8 dc 40 fa ff                                  	call   0x2cd32c
  329250:	48 85 c0                                        	test   rax,rax
  329253:	74 0a                                           	je     0x32925f
  329255:	48 3b c5                                        	cmp    rax,rbp
  329258:	75 05                                           	jne    0x32925f
  32925a:	40 b5 01                                        	mov    bpl,0x1
  32925d:	eb 03                                           	jmp    0x329262
  32925f:	40 32 ed                                        	xor    bpl,bpl
  329262:	45 33 c0                                        	xor    r8d,r8d
  329265:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  32926a:	48 8b cb                                        	mov    rcx,rbx
  32926d:	83 ce 01                                        	or     esi,0x1
  329270:	e8 fb 0b 04 00                                  	call   0x369e70
  329275:	48 8b d0                                        	mov    rdx,rax
  329278:	48 8d 0d e1 df 0a 00                            	lea    rcx,[rip+0xadfe1]        # 0x3d7260
  32927f:	e8 84 63 fb ff                                  	call   0x2df608
  329284:	83 78 24 01                                     	cmp    DWORD PTR [rax+0x24],0x1
  329288:	74 05                                           	je     0x32928f
  32928a:	40 84 ed                                        	test   bpl,bpl
  32928d:	74 03                                           	je     0x329292
  32928f:	40 b5 01                                        	mov    bpl,0x1
  329292:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  329297:	83 e6 fe                                        	and    esi,0xfffffffe
  32929a:	e8 55 32 fa ff                                  	call   0x2cc4f4
  32929f:	40 84 ed                                        	test   bpl,bpl
  3292a2:	75 4f                                           	jne    0x3292f3
  3292a4:	49 8b cf                                        	mov    rcx,r15
  3292a7:	4d 85 f6                                        	test   r14,r14
  3292aa:	75 21                                           	jne    0x3292cd
  3292ac:	48 8d 54 24 3c                                  	lea    rdx,[rsp+0x3c]
  3292b1:	4c 8b f3                                        	mov    r14,rbx
  3292b4:	e8 ab fe 03 00                                  	call   0x369164
  3292b9:	48 8b c8                                        	mov    rcx,rax
  3292bc:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3292c1:	e8 6a 6c fb ff                                  	call   0x2dff30
  3292c6:	f3 44 0f 2c e0                                  	cvttss2si r12d,xmm0
  3292cb:	eb 26                                           	jmp    0x3292f3
  3292cd:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  3292d2:	e8 8d fe 03 00                                  	call   0x369164
  3292d7:	48 8b c8                                        	mov    rcx,rax
  3292da:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3292df:	e8 4c 6c fb ff                                  	call   0x2dff30
  3292e4:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3292e8:	41 3b c4                                        	cmp    eax,r12d
  3292eb:	7f 06                                           	jg     0x3292f3
  3292ed:	4c 8b f3                                        	mov    r14,rbx
  3292f0:	44 8b e0                                        	mov    r12d,eax
  3292f3:	48 83 c7 10                                     	add    rdi,0x10
  3292f7:	49 3b fd                                        	cmp    rdi,r13
  3292fa:	0f 85 a0 fe ff ff                               	jne    0x3291a0
  329300:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  329305:	e8 76 61 fb ff                                  	call   0x2df480
  32930a:	49 8b c6                                        	mov    rax,r14
  32930d:	eb 02                                           	jmp    0x329311
  32930f:	33 c0                                           	xor    eax,eax
  329311:	48 81 c4 98 00 00 00                            	add    rsp,0x98
  329318:	41 5f                                           	pop    r15
  32931a:	41 5e                                           	pop    r14
  32931c:	41 5d                                           	pop    r13
  32931e:	41 5c                                           	pop    r12
  329320:	5f                                              	pop    rdi
  329321:	5e                                              	pop    rsi
  329322:	5d                                              	pop    rbp
  329323:	5b                                              	pop    rbx
  329324:	c3                                              	ret
