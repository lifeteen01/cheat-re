
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/31581c.bin:     file format binary


Disassembly of section .data:

000000000031581c <.data>:
  31581c:	4c 8b dc             	mov    r11,rsp
  31581f:	53                   	push   rbx
  315820:	56                   	push   rsi
  315821:	57                   	push   rdi
  315822:	48 83 ec 60          	sub    rsp,0x60
  315826:	8b 05 0c 0a 0d 00    	mov    eax,DWORD PTR [rip+0xd0a0c]        # 0x3e6238
  31582c:	a8 01                	test   al,0x1
  31582e:	0f 85 ac 00 00 00    	jne    0x3158e0
  315834:	83 c8 01             	or     eax,0x1
  315837:	49 8d 53 08          	lea    rdx,[r11+0x8]
  31583b:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  31583f:	89 05 f3 09 0d 00    	mov    DWORD PTR [rip+0xd09f3],eax        # 0x3e6238
  315845:	e8 e6 6e fb ff       	call   0x2cc730
  31584a:	48 8b c8             	mov    rcx,rax
  31584d:	e8 52 84 fb ff       	call   0x2cdca4
  315852:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  315857:	48 8b f0             	mov    rsi,rax
  31585a:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  315861:	00 
  315862:	e8 cd e9 fd ff       	call   0x2f4234
  315867:	48 8b c8             	mov    rcx,rax
  31586a:	e8 6d de fc ff       	call   0x2e36dc
  31586f:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  315874:	48 8b f8             	mov    rdi,rax
  315877:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  31587e:	00 
  31587f:	e8 2c de fd ff       	call   0x2f36b0
  315884:	48 8b c8             	mov    rcx,rax
  315887:	e8 80 85 fb ff       	call   0x2cde0c
  31588c:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  315893:	00 
  315894:	48 8b d8             	mov    rbx,rax
  315897:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  31589e:	00 
  31589f:	e8 58 c9 fd ff       	call   0x2f21fc
  3158a4:	48 8b c8             	mov    rcx,rax
  3158a7:	e8 40 dd fc ff       	call   0x2e35ec
  3158ac:	48 8b c8             	mov    rcx,rax
  3158af:	48 8b d3             	mov    rdx,rbx
  3158b2:	e8 6d e9 01 00       	call   0x334224
  3158b7:	41 83 c8 ff          	or     r8d,0xffffffff
  3158bb:	48 8b c8             	mov    rcx,rax
  3158be:	4c 8b ce             	mov    r9,rsi
  3158c1:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3158c6:	48 8b d7             	mov    rdx,rdi
  3158c9:	e8 de f0 01 00       	call   0x3349ac
  3158ce:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3158d1:	8b 05 61 09 0d 00    	mov    eax,DWORD PTR [rip+0xd0961]        # 0x3e6238
  3158d7:	4c 89 05 52 09 0d 00 	mov    QWORD PTR [rip+0xd0952],r8        # 0x3e6230
  3158de:	eb 07                	jmp    0x3158e7
  3158e0:	4c 8b 05 49 09 0d 00 	mov    r8,QWORD PTR [rip+0xd0949]        # 0x3e6230
  3158e7:	a8 02                	test   al,0x2
  3158e9:	75 1f                	jne    0x31590a
  3158eb:	48 8b 0d 6e 05 0c 00 	mov    rcx,QWORD PTR [rip+0xc056e]        # 0x3d5e60
  3158f2:	48 8d 15 47 09 0d 00 	lea    rdx,[rip+0xd0947]        # 0x3e6240
  3158f9:	83 c8 02             	or     eax,0x2
  3158fc:	45 33 c9             	xor    r9d,r9d
  3158ff:	89 05 33 09 0d 00    	mov    DWORD PTR [rip+0xd0933],eax        # 0x3e6238
  315905:	e8 1a 64 fb ff       	call   0x2cbd24
  31590a:	48 8b 0d 4f 05 0c 00 	mov    rcx,QWORD PTR [rip+0xc054f]        # 0x3d5e60
  315911:	48 8d 15 28 09 0d 00 	lea    rdx,[rip+0xd0928]        # 0x3e6240
  315918:	48 83 c4 60          	add    rsp,0x60
  31591c:	5f                   	pop    rdi
  31591d:	5e                   	pop    rsi
  31591e:	5b                   	pop    rbx
  31591f:	e9 2c 90 fc ff       	jmp    0x2de950
