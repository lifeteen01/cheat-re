
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d9328.bin:     file format binary


Disassembly of section .data:

00000000002d9328 <.data>:
  2d9328:	89 54 24 10          	mov    DWORD PTR [rsp+0x10],edx
  2d932c:	53                   	push   rbx
  2d932d:	56                   	push   rsi
  2d932e:	57                   	push   rdi
  2d932f:	48 83 ec 30          	sub    rsp,0x30
  2d9333:	48 8d 79 40          	lea    rdi,[rcx+0x40]
  2d9337:	49 8b d8             	mov    rbx,r8
  2d933a:	48 8b f1             	mov    rsi,rcx
  2d933d:	4c 8d 44 24 58       	lea    r8,[rsp+0x58]
  2d9342:	48 8b cf             	mov    rcx,rdi
  2d9345:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  2d934a:	e8 31 f5 ff ff       	call   0x2d8880
  2d934f:	48 8d 54 24 68       	lea    rdx,[rsp+0x68]
  2d9354:	48 8b cf             	mov    rcx,rdi
  2d9357:	e8 5c f3 ff ff       	call   0x2d86b8
  2d935c:	48 8b d0             	mov    rdx,rax
  2d935f:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d9364:	e8 cb 31 ff ff       	call   0x2cc534
  2d9369:	84 c0                	test   al,al
  2d936b:	75 2a                	jne    0x2d9397
  2d936d:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d9372:	e8 29 ba ff ff       	call   0x2d4da0
  2d9377:	48 8b d3             	mov    rdx,rbx
  2d937a:	48 8d 78 08          	lea    rdi,[rax+0x8]
  2d937e:	48 8b cf             	mov    rcx,rdi
  2d9381:	e8 aa 5b ff ff       	call   0x2cef30
  2d9386:	84 c0                	test   al,al
  2d9388:	75 29                	jne    0x2d93b3
  2d938a:	48 8b d3             	mov    rdx,rbx
  2d938d:	48 8b cf             	mov    rcx,rdi
  2d9390:	e8 8f b8 ff ff       	call   0x2d4c24
  2d9395:	eb 15                	jmp    0x2d93ac
  2d9397:	4c 8b cb             	mov    r9,rbx
  2d939a:	4c 8d 44 24 58       	lea    r8,[rsp+0x58]
  2d939f:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d93a4:	48 8b cf             	mov    rcx,rdi
  2d93a7:	e8 7c 93 ff ff       	call   0x2d2728
  2d93ac:	c6 86 84 00 00 00 01 	mov    BYTE PTR [rsi+0x84],0x1
  2d93b3:	48 83 c4 30          	add    rsp,0x30
  2d93b7:	5f                   	pop    rdi
  2d93b8:	5e                   	pop    rsi
  2d93b9:	5b                   	pop    rbx
  2d93ba:	c3                   	ret
