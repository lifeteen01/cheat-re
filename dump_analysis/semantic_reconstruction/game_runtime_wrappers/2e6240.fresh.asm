
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/2e6240.bin:     file format binary


Disassembly of section .data:

00000000002e6240 <.data>:
  2e6240:	40 53                	rex push rbx
  2e6242:	56                   	push   rsi
  2e6243:	57                   	push   rdi
  2e6244:	48 83 ec 50          	sub    rsp,0x50
  2e6248:	8b 05 b2 e5 0f 00    	mov    eax,DWORD PTR [rip+0xfe5b2]        # 0x3e4800
  2e624e:	a8 01                	test   al,0x1
  2e6250:	0f 85 a5 00 00 00    	jne    0x2e62fb
  2e6256:	83 c8 01             	or     eax,0x1
  2e6259:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e625e:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e6263:	89 05 97 e5 0f 00    	mov    DWORD PTR [rip+0xfe597],eax        # 0x3e4800
  2e6269:	e8 c2 64 fe ff       	call   0x2cc730
  2e626e:	48 8b c8             	mov    rcx,rax
  2e6271:	e8 2e 7a fe ff       	call   0x2cdca4
  2e6276:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e627b:	48 8b f0             	mov    rsi,rax
  2e627e:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e6283:	e8 8c f4 ff ff       	call   0x2e5714
  2e6288:	48 8b c8             	mov    rcx,rax
  2e628b:	e8 74 22 ff ff       	call   0x2d8504
  2e6290:	48 8d 54 24 39       	lea    rdx,[rsp+0x39]
  2e6295:	48 8b f8             	mov    rdi,rax
  2e6298:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e629d:	e8 b6 f2 ff ff       	call   0x2e5558
  2e62a2:	48 8b c8             	mov    rcx,rax
  2e62a5:	e8 62 7b fe ff       	call   0x2cde0c
  2e62aa:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e62b1:	00 
  2e62b2:	48 8b d8             	mov    rbx,rax
  2e62b5:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e62ba:	e8 21 f1 ff ff       	call   0x2e53e0
  2e62bf:	48 8b c8             	mov    rcx,rax
  2e62c2:	e8 25 d3 ff ff       	call   0x2e35ec
  2e62c7:	48 8b c8             	mov    rcx,rax
  2e62ca:	48 8b d3             	mov    rdx,rbx
  2e62cd:	e8 52 df 04 00       	call   0x334224
  2e62d2:	41 83 c8 ff          	or     r8d,0xffffffff
  2e62d6:	48 8b c8             	mov    rcx,rax
  2e62d9:	4c 8b ce             	mov    r9,rsi
  2e62dc:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e62e1:	48 8b d7             	mov    rdx,rdi
  2e62e4:	e8 c3 e6 04 00       	call   0x3349ac
  2e62e9:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e62ec:	8b 05 0e e5 0f 00    	mov    eax,DWORD PTR [rip+0xfe50e]        # 0x3e4800
  2e62f2:	4c 89 05 ff e4 0f 00 	mov    QWORD PTR [rip+0xfe4ff],r8        # 0x3e47f8
  2e62f9:	eb 07                	jmp    0x2e6302
  2e62fb:	4c 8b 05 f6 e4 0f 00 	mov    r8,QWORD PTR [rip+0xfe4f6]        # 0x3e47f8
  2e6302:	a8 02                	test   al,0x2
  2e6304:	75 1f                	jne    0x2e6325
  2e6306:	48 8b 0d 53 fb 0e 00 	mov    rcx,QWORD PTR [rip+0xefb53]        # 0x3d5e60
  2e630d:	48 8d 15 fc e4 0f 00 	lea    rdx,[rip+0xfe4fc]        # 0x3e4810
  2e6314:	83 c8 02             	or     eax,0x2
  2e6317:	45 33 c9             	xor    r9d,r9d
  2e631a:	89 05 e0 e4 0f 00    	mov    DWORD PTR [rip+0xfe4e0],eax        # 0x3e4800
  2e6320:	e8 ff 59 fe ff       	call   0x2cbd24
  2e6325:	48 8b 0d 34 fb 0e 00 	mov    rcx,QWORD PTR [rip+0xefb34]        # 0x3d5e60
  2e632c:	48 8d 15 dd e4 0f 00 	lea    rdx,[rip+0xfe4dd]        # 0x3e4810
  2e6333:	48 83 c4 50          	add    rsp,0x50
  2e6337:	5f                   	pop    rdi
  2e6338:	5e                   	pop    rsi
  2e6339:	5b                   	pop    rbx
  2e633a:	e9 11 86 ff ff       	jmp    0x2de950
