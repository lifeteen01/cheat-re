
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/329920.bin:     file format binary


Disassembly of section .data:

0000000000329920 <.data>:
  329920:	4c 8b dc             	mov    r11,rsp
  329923:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  329927:	55                   	push   rbp
  329928:	56                   	push   rsi
  329929:	57                   	push   rdi
  32992a:	48 83 ec 60          	sub    rsp,0x60
  32992e:	8b 05 ec 90 0c 00    	mov    eax,DWORD PTR [rip+0xc90ec]        # 0x3f2a20
  329934:	48 8b e9             	mov    rbp,rcx
  329937:	a8 01                	test   al,0x1
  329939:	0f 85 a9 00 00 00    	jne    0x3299e8
  32993f:	83 c8 01             	or     eax,0x1
  329942:	49 8d 53 10          	lea    rdx,[r11+0x10]
  329946:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  32994a:	89 05 d0 90 0c 00    	mov    DWORD PTR [rip+0xc90d0],eax        # 0x3f2a20
  329950:	e8 db 2d fa ff       	call   0x2cc730
  329955:	48 8b c8             	mov    rcx,rax
  329958:	e8 47 43 fa ff       	call   0x2cdca4
  32995d:	48 8d 54 24 47       	lea    rdx,[rsp+0x47]
  329962:	48 8b f0             	mov    rsi,rax
  329965:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  32996c:	00 
  32996d:	e8 2e a4 ff ff       	call   0x323da0
  329972:	48 8b c8             	mov    rcx,rax
  329975:	e8 a2 ec fa ff       	call   0x2d861c
  32997a:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  32997f:	48 8b f8             	mov    rdi,rax
  329982:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  329989:	00 
  32998a:	e8 91 a1 ff ff       	call   0x323b20
  32998f:	48 8b c8             	mov    rcx,rax
  329992:	e8 75 44 fa ff       	call   0x2cde0c
  329997:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  32999c:	48 8b d8             	mov    rbx,rax
  32999f:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3299a6:	00 
  3299a7:	e8 2c 9f ff ff       	call   0x3238d8
  3299ac:	48 8b c8             	mov    rcx,rax
  3299af:	e8 18 ec fa ff       	call   0x2d85cc
  3299b4:	48 8b c8             	mov    rcx,rax
  3299b7:	48 8b d3             	mov    rdx,rbx
  3299ba:	e8 65 a8 00 00       	call   0x334224
  3299bf:	41 83 c8 ff          	or     r8d,0xffffffff
  3299c3:	48 8b c8             	mov    rcx,rax
  3299c6:	4c 8b ce             	mov    r9,rsi
  3299c9:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3299ce:	48 8b d7             	mov    rdx,rdi
  3299d1:	e8 d6 af 00 00       	call   0x3349ac
  3299d6:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3299d9:	8b 05 41 90 0c 00    	mov    eax,DWORD PTR [rip+0xc9041]        # 0x3f2a20
  3299df:	4c 89 05 32 90 0c 00 	mov    QWORD PTR [rip+0xc9032],r8        # 0x3f2a18
  3299e6:	eb 07                	jmp    0x3299ef
  3299e8:	4c 8b 05 29 90 0c 00 	mov    r8,QWORD PTR [rip+0xc9029]        # 0x3f2a18
  3299ef:	a8 02                	test   al,0x2
  3299f1:	75 1f                	jne    0x329a12
  3299f3:	48 8b 0d 66 c4 0a 00 	mov    rcx,QWORD PTR [rip+0xac466]        # 0x3d5e60
  3299fa:	48 8d 15 2f 90 0c 00 	lea    rdx,[rip+0xc902f]        # 0x3f2a30
  329a01:	83 c8 02             	or     eax,0x2
  329a04:	45 33 c9             	xor    r9d,r9d
  329a07:	89 05 13 90 0c 00    	mov    DWORD PTR [rip+0xc9013],eax        # 0x3f2a20
  329a0d:	e8 12 23 fa ff       	call   0x2cbd24
  329a12:	48 8b 0d 47 c4 0a 00 	mov    rcx,QWORD PTR [rip+0xac447]        # 0x3d5e60
  329a19:	48 8d 15 10 90 0c 00 	lea    rdx,[rip+0xc9010]        # 0x3f2a30
  329a20:	4c 8b c5             	mov    r8,rbp
  329a23:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  329a2a:	00 
  329a2b:	48 83 c4 60          	add    rsp,0x60
  329a2f:	5f                   	pop    rdi
  329a30:	5e                   	pop    rsi
  329a31:	5d                   	pop    rbp
  329a32:	e9 c5 1f fa ff       	jmp    0x2cb9fc
