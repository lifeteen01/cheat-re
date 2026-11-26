
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/2e081c.bin:     file format binary


Disassembly of section .data:

00000000002e081c <.data>:
  2e081c:	40 53                	rex push rbx
  2e081e:	56                   	push   rsi
  2e081f:	57                   	push   rdi
  2e0820:	48 83 ec 50          	sub    rsp,0x50
  2e0824:	8b 05 b6 6b 0f 00    	mov    eax,DWORD PTR [rip+0xf6bb6]        # 0x3d73e0
  2e082a:	a8 01                	test   al,0x1
  2e082c:	0f 85 a5 00 00 00    	jne    0x2e08d7
  2e0832:	83 c8 01             	or     eax,0x1
  2e0835:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e083a:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e083f:	89 05 9b 6b 0f 00    	mov    DWORD PTR [rip+0xf6b9b],eax        # 0x3d73e0
  2e0845:	e8 e6 be fe ff       	call   0x2cc730
  2e084a:	48 8b c8             	mov    rcx,rax
  2e084d:	e8 52 d4 fe ff       	call   0x2cdca4
  2e0852:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  2e0857:	48 8b f0             	mov    rsi,rax
  2e085a:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e085f:	e8 c4 f2 ff ff       	call   0x2dfb28
  2e0864:	48 8b c8             	mov    rcx,rax
  2e0867:	e8 00 d5 fe ff       	call   0x2cdd6c
  2e086c:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e0871:	48 8b f8             	mov    rdi,rax
  2e0874:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0879:	e8 4e f1 ff ff       	call   0x2df9cc
  2e087e:	48 8b c8             	mov    rcx,rax
  2e0881:	e8 86 d5 fe ff       	call   0x2cde0c
  2e0886:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e088d:	00 
  2e088e:	48 8b d8             	mov    rbx,rax
  2e0891:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0896:	e8 15 f0 ff ff       	call   0x2df8b0
  2e089b:	48 8b c8             	mov    rcx,rax
  2e089e:	e8 49 2d 00 00       	call   0x2e35ec
  2e08a3:	48 8b c8             	mov    rcx,rax
  2e08a6:	48 8b d3             	mov    rdx,rbx
  2e08a9:	e8 76 39 05 00       	call   0x334224
  2e08ae:	41 83 c8 ff          	or     r8d,0xffffffff
  2e08b2:	48 8b c8             	mov    rcx,rax
  2e08b5:	4c 8b ce             	mov    r9,rsi
  2e08b8:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e08bd:	48 8b d7             	mov    rdx,rdi
  2e08c0:	e8 e7 40 05 00       	call   0x3349ac
  2e08c5:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e08c8:	8b 05 12 6b 0f 00    	mov    eax,DWORD PTR [rip+0xf6b12]        # 0x3d73e0
  2e08ce:	4c 89 05 03 6b 0f 00 	mov    QWORD PTR [rip+0xf6b03],r8        # 0x3d73d8
  2e08d5:	eb 07                	jmp    0x2e08de
  2e08d7:	4c 8b 05 fa 6a 0f 00 	mov    r8,QWORD PTR [rip+0xf6afa]        # 0x3d73d8
  2e08de:	a8 02                	test   al,0x2
  2e08e0:	75 1f                	jne    0x2e0901
  2e08e2:	48 8b 0d 77 55 0f 00 	mov    rcx,QWORD PTR [rip+0xf5577]        # 0x3d5e60
  2e08e9:	48 8d 15 00 6b 0f 00 	lea    rdx,[rip+0xf6b00]        # 0x3d73f0
  2e08f0:	83 c8 02             	or     eax,0x2
  2e08f3:	45 33 c9             	xor    r9d,r9d
  2e08f6:	89 05 e4 6a 0f 00    	mov    DWORD PTR [rip+0xf6ae4],eax        # 0x3d73e0
  2e08fc:	e8 23 b4 fe ff       	call   0x2cbd24
  2e0901:	48 8b 0d 58 55 0f 00 	mov    rcx,QWORD PTR [rip+0xf5558]        # 0x3d5e60
  2e0908:	48 8d 15 e1 6a 0f 00 	lea    rdx,[rip+0xf6ae1]        # 0x3d73f0
  2e090f:	48 83 c4 50          	add    rsp,0x50
  2e0913:	5f                   	pop    rdi
  2e0914:	5e                   	pop    rsi
  2e0915:	5b                   	pop    rbx
  2e0916:	e9 35 e0 ff ff       	jmp    0x2de950
