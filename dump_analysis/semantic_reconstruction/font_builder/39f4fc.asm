
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039f4fc <.data+0x39f4fc>:
  39f4fc:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  39f501:	57                   	push   rdi
  39f502:	48 83 ec 20          	sub    rsp,0x20
  39f506:	48 8b f9             	mov    rdi,rcx
  39f509:	48 83 c1 10          	add    rcx,0x10
  39f50d:	e8 5e 53 f3 ff       	call   0x2d4870
  39f512:	33 c0                	xor    eax,eax
  39f514:	c7 47 04 ff ff ff ff 	mov    DWORD PTR [rdi+0x4],0xffffffff
  39f51b:	0f 57 d2             	xorps  xmm2,xmm2
  39f51e:	89 07                	mov    DWORD PTR [rdi],eax
  39f520:	0f 57 c9             	xorps  xmm1,xmm1
  39f523:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  39f527:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  39f52c:	e8 0f ce f2 ff       	call   0x2cc340
  39f531:	48 8b 5c 24 38       	mov    rbx,QWORD PTR [rsp+0x38]
  39f536:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  39f53a:	48 8b c7             	mov    rax,rdi
  39f53d:	f2 0f 11 47 10       	movsd  QWORD PTR [rdi+0x10],xmm0
  39f542:	48 c7 47 18 00 00 00 	mov    QWORD PTR [rdi+0x18],0x0
  39f549:	00 
  39f54a:	48 83 c4 20          	add    rsp,0x20
  39f54e:	5f                   	pop    rdi
  39f54f:	c3                   	ret
