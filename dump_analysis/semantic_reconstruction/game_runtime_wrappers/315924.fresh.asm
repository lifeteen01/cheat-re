
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/315924.bin:     file format binary


Disassembly of section .data:

0000000000315924 <.data>:
  315924:	40 53                	rex push rbx
  315926:	56                   	push   rsi
  315927:	57                   	push   rdi
  315928:	48 83 ec 50          	sub    rsp,0x50
  31592c:	8b 05 de 0a 0d 00    	mov    eax,DWORD PTR [rip+0xd0ade]        # 0x3e6410
  315932:	a8 01                	test   al,0x1
  315934:	0f 85 a5 00 00 00    	jne    0x3159df
  31593a:	83 c8 01             	or     eax,0x1
  31593d:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  315942:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  315947:	89 05 c3 0a 0d 00    	mov    DWORD PTR [rip+0xd0ac3],eax        # 0x3e6410
  31594d:	e8 de 6d fb ff       	call   0x2cc730
  315952:	48 8b c8             	mov    rcx,rax
  315955:	e8 4a 83 fb ff       	call   0x2cdca4
  31595a:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  31595f:	48 8b f0             	mov    rsi,rax
  315962:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  315967:	e8 e4 e8 fd ff       	call   0x2f4250
  31596c:	48 8b c8             	mov    rcx,rax
  31596f:	e8 90 2b fc ff       	call   0x2d8504
  315974:	48 8d 54 24 39       	lea    rdx,[rsp+0x39]
  315979:	48 8b f8             	mov    rdi,rax
  31597c:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  315981:	e8 46 dd fd ff       	call   0x2f36cc
  315986:	48 8b c8             	mov    rcx,rax
  315989:	e8 7e 84 fb ff       	call   0x2cde0c
  31598e:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  315995:	00 
  315996:	48 8b d8             	mov    rbx,rax
  315999:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  31599e:	e8 71 c8 fd ff       	call   0x2f2214
  3159a3:	48 8b c8             	mov    rcx,rax
  3159a6:	e8 65 77 fc ff       	call   0x2dd110
  3159ab:	48 8b c8             	mov    rcx,rax
  3159ae:	48 8b d3             	mov    rdx,rbx
  3159b1:	e8 6e e8 01 00       	call   0x334224
  3159b6:	41 83 c8 ff          	or     r8d,0xffffffff
  3159ba:	48 8b c8             	mov    rcx,rax
  3159bd:	4c 8b ce             	mov    r9,rsi
  3159c0:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3159c5:	48 8b d7             	mov    rdx,rdi
  3159c8:	e8 df ef 01 00       	call   0x3349ac
  3159cd:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3159d0:	8b 05 3a 0a 0d 00    	mov    eax,DWORD PTR [rip+0xd0a3a]        # 0x3e6410
  3159d6:	4c 89 05 2b 0a 0d 00 	mov    QWORD PTR [rip+0xd0a2b],r8        # 0x3e6408
  3159dd:	eb 07                	jmp    0x3159e6
  3159df:	4c 8b 05 22 0a 0d 00 	mov    r8,QWORD PTR [rip+0xd0a22]        # 0x3e6408
  3159e6:	a8 02                	test   al,0x2
  3159e8:	75 1f                	jne    0x315a09
  3159ea:	48 8b 0d 6f 04 0c 00 	mov    rcx,QWORD PTR [rip+0xc046f]        # 0x3d5e60
  3159f1:	48 8d 15 28 0a 0d 00 	lea    rdx,[rip+0xd0a28]        # 0x3e6420
  3159f8:	83 c8 02             	or     eax,0x2
  3159fb:	45 33 c9             	xor    r9d,r9d
  3159fe:	89 05 0c 0a 0d 00    	mov    DWORD PTR [rip+0xd0a0c],eax        # 0x3e6410
  315a04:	e8 1b 63 fb ff       	call   0x2cbd24
  315a09:	48 8b 0d 50 04 0c 00 	mov    rcx,QWORD PTR [rip+0xc0450]        # 0x3d5e60
  315a10:	48 8d 15 09 0a 0d 00 	lea    rdx,[rip+0xd0a09]        # 0x3e6420
  315a17:	48 83 c4 50          	add    rsp,0x50
  315a1b:	5f                   	pop    rdi
  315a1c:	5e                   	pop    rsi
  315a1d:	5b                   	pop    rbx
  315a1e:	e9 f5 7f fc ff       	jmp    0x2dda18
