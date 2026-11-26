; pdata 0x2cd7f4..0x2cd86c
  2cd7f4:	40 53                	rex push rbx
  2cd7f6:	48 83 ec 20          	sub    rsp,0x20
  2cd7fa:	8b 05 50 88 10 00    	mov    eax,DWORD PTR [rip+0x108850]        # 0x3d6050
  2cd800:	48 8b d9             	mov    rbx,rcx
  2cd803:	a8 01                	test   al,0x1
  2cd805:	75 20                	jne    0x2cd827
  2cd807:	83 c8 01             	or     eax,0x1
  2cd80a:	89 05 40 88 10 00    	mov    DWORD PTR [rip+0x108840],eax        # 0x3d6050
  2cd810:	e8 5f e9 ff ff       	call   0x2cc174
  2cd815:	4c 8b c0             	mov    r8,rax
  2cd818:	48 89 05 29 88 10 00 	mov    QWORD PTR [rip+0x108829],rax        # 0x3d6048
  2cd81f:	8b 05 2b 88 10 00    	mov    eax,DWORD PTR [rip+0x10882b]        # 0x3d6050
  2cd825:	eb 07                	jmp    0x2cd82e
  2cd827:	4c 8b 05 1a 88 10 00 	mov    r8,QWORD PTR [rip+0x10881a]        # 0x3d6048
  2cd82e:	a8 02                	test   al,0x2
  2cd830:	75 1f                	jne    0x2cd851
  2cd832:	48 8b 0d 27 86 10 00 	mov    rcx,QWORD PTR [rip+0x108627]        # 0x3d5e60
  2cd839:	48 8d 15 20 88 10 00 	lea    rdx,[rip+0x108820]        # 0x3d6060
  2cd840:	83 c8 02             	or     eax,0x2
  2cd843:	45 33 c9             	xor    r9d,r9d
  2cd846:	89 05 04 88 10 00    	mov    DWORD PTR [rip+0x108804],eax        # 0x3d6050
  2cd84c:	e8 d3 e4 ff ff       	call   0x2cbd24
  2cd851:	48 8b 0d 08 86 10 00 	mov    rcx,QWORD PTR [rip+0x108608]        # 0x3d5e60
  2cd858:	48 8d 15 01 88 10 00 	lea    rdx,[rip+0x108801]        # 0x3d6060
  2cd85f:	4c 8b c3             	mov    r8,rbx
  2cd862:	48 83 c4 20          	add    rsp,0x20
  2cd866:	5b                   	pop    rbx
  2cd867:	e9 90 e1 ff ff       	jmp    0x2cb9fc
; pdata 0x2ce718..0x2ce790
  2ce718:	40 53                	rex push rbx
  2ce71a:	48 83 ec 20          	sub    rsp,0x20
  2ce71e:	8b 05 4c 77 10 00    	mov    eax,DWORD PTR [rip+0x10774c]        # 0x3d5e70
  2ce724:	48 8b d9             	mov    rbx,rcx
  2ce727:	a8 01                	test   al,0x1
  2ce729:	75 20                	jne    0x2ce74b
  2ce72b:	83 c8 01             	or     eax,0x1
  2ce72e:	89 05 3c 77 10 00    	mov    DWORD PTR [rip+0x10773c],eax        # 0x3d5e70
  2ce734:	e8 2b da ff ff       	call   0x2cc164
  2ce739:	4c 8b c0             	mov    r8,rax
  2ce73c:	48 89 05 25 77 10 00 	mov    QWORD PTR [rip+0x107725],rax        # 0x3d5e68
  2ce743:	8b 05 27 77 10 00    	mov    eax,DWORD PTR [rip+0x107727]        # 0x3d5e70
  2ce749:	eb 07                	jmp    0x2ce752
  2ce74b:	4c 8b 05 16 77 10 00 	mov    r8,QWORD PTR [rip+0x107716]        # 0x3d5e68
  2ce752:	a8 02                	test   al,0x2
  2ce754:	75 1f                	jne    0x2ce775
  2ce756:	48 8b 0d 03 77 10 00 	mov    rcx,QWORD PTR [rip+0x107703]        # 0x3d5e60
  2ce75d:	48 8d 15 1c 77 10 00 	lea    rdx,[rip+0x10771c]        # 0x3d5e80
  2ce764:	83 c8 02             	or     eax,0x2
  2ce767:	45 33 c9             	xor    r9d,r9d
  2ce76a:	89 05 00 77 10 00    	mov    DWORD PTR [rip+0x107700],eax        # 0x3d5e70
  2ce770:	e8 af d5 ff ff       	call   0x2cbd24
  2ce775:	48 8b 0d e4 76 10 00 	mov    rcx,QWORD PTR [rip+0x1076e4]        # 0x3d5e60
  2ce77c:	48 8d 15 fd 76 10 00 	lea    rdx,[rip+0x1076fd]        # 0x3d5e80
  2ce783:	4c 8b c3             	mov    r8,rbx
  2ce786:	48 83 c4 20          	add    rsp,0x20
  2ce78a:	5b                   	pop    rbx
  2ce78b:	e9 6c d2 ff ff       	jmp    0x2cb9fc
; pdata 0x2cea84..0x2ceafc
  2cea84:	40 53                	rex push rbx
  2cea86:	48 83 ec 20          	sub    rsp,0x20
  2cea8a:	8b 05 d0 74 10 00    	mov    eax,DWORD PTR [rip+0x1074d0]        # 0x3d5f60
  2cea90:	48 8b d9             	mov    rbx,rcx
  2cea93:	a8 01                	test   al,0x1
  2cea95:	75 20                	jne    0x2ceab7
  2cea97:	83 c8 01             	or     eax,0x1
  2cea9a:	89 05 c0 74 10 00    	mov    DWORD PTR [rip+0x1074c0],eax        # 0x3d5f60
  2ceaa0:	e8 c7 d6 ff ff       	call   0x2cc16c
  2ceaa5:	4c 8b c0             	mov    r8,rax
  2ceaa8:	48 89 05 a9 74 10 00 	mov    QWORD PTR [rip+0x1074a9],rax        # 0x3d5f58
  2ceaaf:	8b 05 ab 74 10 00    	mov    eax,DWORD PTR [rip+0x1074ab]        # 0x3d5f60
  2ceab5:	eb 07                	jmp    0x2ceabe
  2ceab7:	4c 8b 05 9a 74 10 00 	mov    r8,QWORD PTR [rip+0x10749a]        # 0x3d5f58
  2ceabe:	a8 02                	test   al,0x2
  2ceac0:	75 1f                	jne    0x2ceae1
  2ceac2:	48 8b 0d 97 73 10 00 	mov    rcx,QWORD PTR [rip+0x107397]        # 0x3d5e60
  2ceac9:	48 8d 15 a0 74 10 00 	lea    rdx,[rip+0x1074a0]        # 0x3d5f70
  2cead0:	83 c8 02             	or     eax,0x2
  2cead3:	45 33 c9             	xor    r9d,r9d
  2cead6:	89 05 84 74 10 00    	mov    DWORD PTR [rip+0x107484],eax        # 0x3d5f60
  2ceadc:	e8 43 d2 ff ff       	call   0x2cbd24
  2ceae1:	48 8b 0d 78 73 10 00 	mov    rcx,QWORD PTR [rip+0x107378]        # 0x3d5e60
  2ceae8:	48 8d 15 81 74 10 00 	lea    rdx,[rip+0x107481]        # 0x3d5f70
  2ceaef:	4c 8b c3             	mov    r8,rbx
  2ceaf2:	48 83 c4 20          	add    rsp,0x20
  2ceaf6:	5b                   	pop    rbx
  2ceaf7:	e9 00 cf ff ff       	jmp    0x2cb9fc
; pdata 0x2e071c..0x2e081b
  2e071c:	40 53                	rex push rbx
  2e071e:	56                   	push   rsi
  2e071f:	57                   	push   rdi
  2e0720:	48 83 ec 50          	sub    rsp,0x50
  2e0724:	8b 05 a6 6d 0f 00    	mov    eax,DWORD PTR [rip+0xf6da6]        # 0x3d74d0
  2e072a:	a8 01                	test   al,0x1
  2e072c:	0f 85 a5 00 00 00    	jne    0x2e07d7
  2e0732:	83 c8 01             	or     eax,0x1
  2e0735:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e073a:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e073f:	89 05 8b 6d 0f 00    	mov    DWORD PTR [rip+0xf6d8b],eax        # 0x3d74d0
  2e0745:	e8 e6 bf fe ff       	call   0x2cc730
  2e074a:	48 8b c8             	mov    rcx,rax
  2e074d:	e8 52 d5 fe ff       	call   0x2cdca4
  2e0752:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  2e0757:	48 8b f0             	mov    rsi,rax
  2e075a:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e075f:	e8 a0 f3 ff ff       	call   0x2dfb04
  2e0764:	48 8b c8             	mov    rcx,rax
  2e0767:	e8 b0 7e ff ff       	call   0x2d861c
  2e076c:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e0771:	48 8b f8             	mov    rdi,rax
  2e0774:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0779:	e8 32 f2 ff ff       	call   0x2df9b0
  2e077e:	48 8b c8             	mov    rcx,rax
  2e0781:	e8 86 d6 fe ff       	call   0x2cde0c
  2e0786:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e078d:	00 
  2e078e:	48 8b d8             	mov    rbx,rax
  2e0791:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0796:	e8 fd f0 ff ff       	call   0x2df898
  2e079b:	48 8b c8             	mov    rcx,rax
  2e079e:	e8 49 2e 00 00       	call   0x2e35ec
  2e07a3:	48 8b c8             	mov    rcx,rax
  2e07a6:	48 8b d3             	mov    rdx,rbx
  2e07a9:	e8 76 3a 05 00       	call   0x334224
  2e07ae:	41 83 c8 ff          	or     r8d,0xffffffff
  2e07b2:	48 8b c8             	mov    rcx,rax
  2e07b5:	4c 8b ce             	mov    r9,rsi
  2e07b8:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e07bd:	48 8b d7             	mov    rdx,rdi
  2e07c0:	e8 e7 41 05 00       	call   0x3349ac
  2e07c5:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e07c8:	8b 05 02 6d 0f 00    	mov    eax,DWORD PTR [rip+0xf6d02]        # 0x3d74d0
  2e07ce:	4c 89 05 f3 6c 0f 00 	mov    QWORD PTR [rip+0xf6cf3],r8        # 0x3d74c8
  2e07d5:	eb 07                	jmp    0x2e07de
  2e07d7:	4c 8b 05 ea 6c 0f 00 	mov    r8,QWORD PTR [rip+0xf6cea]        # 0x3d74c8
  2e07de:	a8 02                	test   al,0x2
  2e07e0:	75 1f                	jne    0x2e0801
  2e07e2:	48 8b 0d 77 56 0f 00 	mov    rcx,QWORD PTR [rip+0xf5677]        # 0x3d5e60
  2e07e9:	48 8d 15 f0 6c 0f 00 	lea    rdx,[rip+0xf6cf0]        # 0x3d74e0
  2e07f0:	83 c8 02             	or     eax,0x2
  2e07f3:	45 33 c9             	xor    r9d,r9d
  2e07f6:	89 05 d4 6c 0f 00    	mov    DWORD PTR [rip+0xf6cd4],eax        # 0x3d74d0
  2e07fc:	e8 23 b5 fe ff       	call   0x2cbd24
  2e0801:	48 8b 0d 58 56 0f 00 	mov    rcx,QWORD PTR [rip+0xf5658]        # 0x3d5e60
  2e0808:	48 8d 15 d1 6c 0f 00 	lea    rdx,[rip+0xf6cd1]        # 0x3d74e0
  2e080f:	48 83 c4 50          	add    rsp,0x50
  2e0813:	5f                   	pop    rdi
  2e0814:	5e                   	pop    rsi
  2e0815:	5b                   	pop    rbx
  2e0816:	e9 35 e1 ff ff       	jmp    0x2de950
; pdata 0x2e09f0..0x2e0aef
  2e09f0:	40 53                	rex push rbx
  2e09f2:	56                   	push   rsi
  2e09f3:	57                   	push   rdi
  2e09f4:	48 83 ec 50          	sub    rsp,0x50
  2e09f8:	8b 05 b2 6c 0f 00    	mov    eax,DWORD PTR [rip+0xf6cb2]        # 0x3d76b0
  2e09fe:	a8 01                	test   al,0x1
  2e0a00:	0f 85 a5 00 00 00    	jne    0x2e0aab
  2e0a06:	83 c8 01             	or     eax,0x1
  2e0a09:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e0a0e:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e0a13:	89 05 97 6c 0f 00    	mov    DWORD PTR [rip+0xf6c97],eax        # 0x3d76b0
  2e0a19:	e8 12 bd fe ff       	call   0x2cc730
  2e0a1e:	48 8b c8             	mov    rcx,rax
  2e0a21:	e8 7e d2 fe ff       	call   0x2cdca4
  2e0a26:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e0a2b:	48 8b f0             	mov    rsi,rax
  2e0a2e:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0a33:	e8 08 f1 ff ff       	call   0x2dfb40
  2e0a38:	48 8b c8             	mov    rcx,rax
  2e0a3b:	e8 8c 7b ff ff       	call   0x2d85cc
  2e0a40:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  2e0a45:	48 8b f8             	mov    rdi,rax
  2e0a48:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0a4d:	e8 96 ef ff ff       	call   0x2df9e8
  2e0a52:	48 8b c8             	mov    rcx,rax
  2e0a55:	e8 b2 d3 fe ff       	call   0x2cde0c
  2e0a5a:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e0a61:	00 
  2e0a62:	48 8b d8             	mov    rbx,rax
  2e0a65:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0a6a:	e8 59 ee ff ff       	call   0x2df8c8
  2e0a6f:	48 8b c8             	mov    rcx,rax
  2e0a72:	e8 99 c6 ff ff       	call   0x2dd110
  2e0a77:	48 8b c8             	mov    rcx,rax
  2e0a7a:	48 8b d3             	mov    rdx,rbx
  2e0a7d:	e8 a2 37 05 00       	call   0x334224
  2e0a82:	41 83 c8 ff          	or     r8d,0xffffffff
  2e0a86:	48 8b c8             	mov    rcx,rax
  2e0a89:	4c 8b ce             	mov    r9,rsi
  2e0a8c:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e0a91:	48 8b d7             	mov    rdx,rdi
  2e0a94:	e8 13 3f 05 00       	call   0x3349ac
  2e0a99:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e0a9c:	8b 05 0e 6c 0f 00    	mov    eax,DWORD PTR [rip+0xf6c0e]        # 0x3d76b0
  2e0aa2:	4c 89 05 ff 6b 0f 00 	mov    QWORD PTR [rip+0xf6bff],r8        # 0x3d76a8
  2e0aa9:	eb 07                	jmp    0x2e0ab2
  2e0aab:	4c 8b 05 f6 6b 0f 00 	mov    r8,QWORD PTR [rip+0xf6bf6]        # 0x3d76a8
  2e0ab2:	a8 02                	test   al,0x2
  2e0ab4:	75 1f                	jne    0x2e0ad5
  2e0ab6:	48 8b 0d a3 53 0f 00 	mov    rcx,QWORD PTR [rip+0xf53a3]        # 0x3d5e60
  2e0abd:	48 8d 15 fc 6b 0f 00 	lea    rdx,[rip+0xf6bfc]        # 0x3d76c0
  2e0ac4:	83 c8 02             	or     eax,0x2
  2e0ac7:	45 33 c9             	xor    r9d,r9d
  2e0aca:	89 05 e0 6b 0f 00    	mov    DWORD PTR [rip+0xf6be0],eax        # 0x3d76b0
  2e0ad0:	e8 4f b2 fe ff       	call   0x2cbd24
  2e0ad5:	48 8b 0d 84 53 0f 00 	mov    rcx,QWORD PTR [rip+0xf5384]        # 0x3d5e60
  2e0adc:	48 8d 15 dd 6b 0f 00 	lea    rdx,[rip+0xf6bdd]        # 0x3d76c0
  2e0ae3:	48 83 c4 50          	add    rsp,0x50
  2e0ae7:	5f                   	pop    rdi
  2e0ae8:	5e                   	pop    rsi
  2e0ae9:	5b                   	pop    rbx
  2e0aea:	e9 29 cf ff ff       	jmp    0x2dda18
; pdata 0x2e0af0..0x2e0bef
  2e0af0:	40 53                	rex push rbx
  2e0af2:	56                   	push   rsi
  2e0af3:	57                   	push   rdi
  2e0af4:	48 83 ec 50          	sub    rsp,0x50
  2e0af8:	8b 05 c2 6a 0f 00    	mov    eax,DWORD PTR [rip+0xf6ac2]        # 0x3d75c0
  2e0afe:	a8 01                	test   al,0x1
  2e0b00:	0f 85 a5 00 00 00    	jne    0x2e0bab
  2e0b06:	83 c8 01             	or     eax,0x1
  2e0b09:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  2e0b0e:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2e0b13:	89 05 a7 6a 0f 00    	mov    DWORD PTR [rip+0xf6aa7],eax        # 0x3d75c0
  2e0b19:	e8 12 bc fe ff       	call   0x2cc730
  2e0b1e:	48 8b c8             	mov    rcx,rax
  2e0b21:	e8 7e d1 fe ff       	call   0x2cdca4
  2e0b26:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e0b2b:	48 8b f0             	mov    rsi,rax
  2e0b2e:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0b33:	e8 24 f0 ff ff       	call   0x2dfb5c
  2e0b38:	48 8b c8             	mov    rcx,rax
  2e0b3b:	e8 dc d1 fe ff       	call   0x2cdd1c
  2e0b40:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  2e0b45:	48 8b f8             	mov    rdi,rax
  2e0b48:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0b4d:	e8 b2 ee ff ff       	call   0x2dfa04
  2e0b52:	48 8b c8             	mov    rcx,rax
  2e0b55:	e8 b2 d2 fe ff       	call   0x2cde0c
  2e0b5a:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  2e0b61:	00 
  2e0b62:	48 8b d8             	mov    rbx,rax
  2e0b65:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  2e0b6a:	e8 79 ed ff ff       	call   0x2df8e8
  2e0b6f:	48 8b c8             	mov    rcx,rax
  2e0b72:	e8 99 c5 ff ff       	call   0x2dd110
  2e0b77:	48 8b c8             	mov    rcx,rax
  2e0b7a:	48 8b d3             	mov    rdx,rbx
  2e0b7d:	e8 a2 36 05 00       	call   0x334224
  2e0b82:	41 83 c8 ff          	or     r8d,0xffffffff
  2e0b86:	48 8b c8             	mov    rcx,rax
  2e0b89:	4c 8b ce             	mov    r9,rsi
  2e0b8c:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e0b91:	48 8b d7             	mov    rdx,rdi
  2e0b94:	e8 13 3e 05 00       	call   0x3349ac
  2e0b99:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e0b9c:	8b 05 1e 6a 0f 00    	mov    eax,DWORD PTR [rip+0xf6a1e]        # 0x3d75c0
  2e0ba2:	4c 89 05 0f 6a 0f 00 	mov    QWORD PTR [rip+0xf6a0f],r8        # 0x3d75b8
  2e0ba9:	eb 07                	jmp    0x2e0bb2
  2e0bab:	4c 8b 05 06 6a 0f 00 	mov    r8,QWORD PTR [rip+0xf6a06]        # 0x3d75b8
  2e0bb2:	a8 02                	test   al,0x2
  2e0bb4:	75 1f                	jne    0x2e0bd5
  2e0bb6:	48 8b 0d a3 52 0f 00 	mov    rcx,QWORD PTR [rip+0xf52a3]        # 0x3d5e60
  2e0bbd:	48 8d 15 0c 6a 0f 00 	lea    rdx,[rip+0xf6a0c]        # 0x3d75d0
  2e0bc4:	83 c8 02             	or     eax,0x2
  2e0bc7:	45 33 c9             	xor    r9d,r9d
  2e0bca:	89 05 f0 69 0f 00    	mov    DWORD PTR [rip+0xf69f0],eax        # 0x3d75c0
  2e0bd0:	e8 4f b1 fe ff       	call   0x2cbd24
  2e0bd5:	48 8b 0d 84 52 0f 00 	mov    rcx,QWORD PTR [rip+0xf5284]        # 0x3d5e60
  2e0bdc:	48 8d 15 ed 69 0f 00 	lea    rdx,[rip+0xf69ed]        # 0x3d75d0
  2e0be3:	48 83 c4 50          	add    rsp,0x50
  2e0be7:	5f                   	pop    rdi
  2e0be8:	5e                   	pop    rsi
  2e0be9:	5b                   	pop    rbx
  2e0bea:	e9 29 ce ff ff       	jmp    0x2dda18
; pdata 0x2e68b8..0x2e69d5
  2e68b8:	4c 8b dc             	mov    r11,rsp
  2e68bb:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  2e68bf:	55                   	push   rbp
  2e68c0:	56                   	push   rsi
  2e68c1:	57                   	push   rdi
  2e68c2:	48 83 ec 70          	sub    rsp,0x70
  2e68c6:	8b 05 84 da 0f 00    	mov    eax,DWORD PTR [rip+0xfda84]        # 0x3e4350
  2e68cc:	48 8b e9             	mov    rbp,rcx
  2e68cf:	a8 01                	test   al,0x1
  2e68d1:	0f 85 a9 00 00 00    	jne    0x2e6980
  2e68d7:	83 c8 01             	or     eax,0x1
  2e68da:	49 8d 53 10          	lea    rdx,[r11+0x10]
  2e68de:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  2e68e2:	89 05 68 da 0f 00    	mov    DWORD PTR [rip+0xfda68],eax        # 0x3e4350
  2e68e8:	e8 43 5e fe ff       	call   0x2cc730
  2e68ed:	48 8b c8             	mov    rcx,rax
  2e68f0:	e8 af 73 fe ff       	call   0x2cdca4
  2e68f5:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  2e68fa:	48 8b f0             	mov    rsi,rax
  2e68fd:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  2e6904:	00 
  2e6905:	e8 42 ee ff ff       	call   0x2e574c
  2e690a:	48 8b c8             	mov    rcx,rax
  2e690d:	e8 0a 1d ff ff       	call   0x2d861c
  2e6912:	48 8d 54 24 4c       	lea    rdx,[rsp+0x4c]
  2e6917:	48 8b f8             	mov    rdi,rax
  2e691a:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  2e6921:	00 
  2e6922:	e8 69 ec ff ff       	call   0x2e5590
  2e6927:	48 8b c8             	mov    rcx,rax
  2e692a:	e8 fd 32 00 00       	call   0x2e9c2c
  2e692f:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  2e6934:	48 8b d8             	mov    rbx,rax
  2e6937:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  2e693e:	00 
  2e693f:	e8 f0 ea ff ff       	call   0x2e5434
  2e6944:	48 8b c8             	mov    rcx,rax
  2e6947:	e8 d0 1c ff ff       	call   0x2d861c
  2e694c:	48 8b c8             	mov    rcx,rax
  2e694f:	48 8b d3             	mov    rdx,rbx
  2e6952:	e8 cd d8 04 00       	call   0x334224
  2e6957:	41 83 c8 ff          	or     r8d,0xffffffff
  2e695b:	48 8b c8             	mov    rcx,rax
  2e695e:	4c 8b ce             	mov    r9,rsi
  2e6961:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  2e6966:	48 8b d7             	mov    rdx,rdi
  2e6969:	e8 3e e0 04 00       	call   0x3349ac
  2e696e:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2e6971:	8b 05 d9 d9 0f 00    	mov    eax,DWORD PTR [rip+0xfd9d9]        # 0x3e4350
  2e6977:	4c 89 05 ca d9 0f 00 	mov    QWORD PTR [rip+0xfd9ca],r8        # 0x3e4348
  2e697e:	eb 07                	jmp    0x2e6987
  2e6980:	4c 8b 05 c1 d9 0f 00 	mov    r8,QWORD PTR [rip+0xfd9c1]        # 0x3e4348
  2e6987:	a8 02                	test   al,0x2
  2e6989:	75 1f                	jne    0x2e69aa
  2e698b:	48 8b 0d ce f4 0e 00 	mov    rcx,QWORD PTR [rip+0xef4ce]        # 0x3d5e60
  2e6992:	48 8d 15 c7 d9 0f 00 	lea    rdx,[rip+0xfd9c7]        # 0x3e4360
  2e6999:	83 c8 02             	or     eax,0x2
  2e699c:	45 33 c9             	xor    r9d,r9d
  2e699f:	89 05 ab d9 0f 00    	mov    DWORD PTR [rip+0xfd9ab],eax        # 0x3e4350
  2e69a5:	e8 7a 53 fe ff       	call   0x2cbd24
  2e69aa:	48 8b 0d af f4 0e 00 	mov    rcx,QWORD PTR [rip+0xef4af]        # 0x3d5e60
  2e69b1:	48 8d 15 a8 d9 0f 00 	lea    rdx,[rip+0xfd9a8]        # 0x3e4360
  2e69b8:	4c 8b c5             	mov    r8,rbp
  2e69bb:	e8 3c 50 fe ff       	call   0x2cb9fc
  2e69c0:	48 8b 9c 24 90 00 00 	mov    rbx,QWORD PTR [rsp+0x90]
  2e69c7:	00 
  2e69c8:	84 c0                	test   al,al
  2e69ca:	0f 95 c0             	setne  al
  2e69cd:	48 83 c4 70          	add    rsp,0x70
  2e69d1:	5f                   	pop    rdi
  2e69d2:	5e                   	pop    rsi
  2e69d3:	5d                   	pop    rbp
  2e69d4:	c3                   	ret
; pdata 0x2f8574..0x2f8dae
  2f8574:	48 8b c4             	mov    rax,rsp
  2f8577:	55                   	push   rbp
  2f8578:	53                   	push   rbx
  2f8579:	56                   	push   rsi
  2f857a:	57                   	push   rdi
  2f857b:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  2f857f:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  2f8586:	33 f6                	xor    esi,esi
  2f8588:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  2f858c:	40 38 35 2d d7 0e 00 	cmp    BYTE PTR [rip+0xed72d],sil        # 0x3e5cc0
  2f8593:	48 8b f9             	mov    rdi,rcx
  2f8596:	75 16                	jne    0x2f85ae
  2f8598:	e8 e7 4c fe ff       	call   0x2dd284
  2f859d:	e8 22 0c fe ff       	call   0x2d91c4
  2f85a2:	e8 8d d6 01 00       	call   0x315c34
  2f85a7:	c6 05 12 d7 0e 00 01 	mov    BYTE PTR [rip+0xed712],0x1        # 0x3e5cc0
  2f85ae:	48 8d 0d f3 03 f2 ff 	lea    rcx,[rip+0xfffffffffff203f3]        # 0x2189a8
  2f85b5:	e8 16 db fd ff       	call   0x2d60d0
  2f85ba:	48 8d 0d 0f 02 f2 ff 	lea    rcx,[rip+0xfffffffffff2020f]        # 0x2187d0
  2f85c1:	e8 2a 8c 02 00       	call   0x3211f0
  2f85c6:	f3 0f 10 0d 1a 55 f9 	movss  xmm1,DWORD PTR [rip+0xfffffffffff9551a]        # 0x28dae8
  2f85cd:	ff 
  2f85ce:	48 8d 0d 3f 91 0f 00 	lea    rcx,[rip+0xf913f]        # 0x3f1714
  2f85d5:	e8 a2 d5 fe ff       	call   0x2e5b7c
  2f85da:	84 c0                	test   al,al
  2f85dc:	74 0c                	je     0x2f85ea
  2f85de:	48 8d 0d eb 01 f2 ff 	lea    rcx,[rip+0xfffffffffff201eb]        # 0x2187d0
  2f85e5:	e8 e6 26 02 00       	call   0x31acd0
  2f85ea:	48 39 35 07 d9 0e 00 	cmp    QWORD PTR [rip+0xed907],rsi        # 0x3e5ef8
  2f85f1:	75 20                	jne    0x2f8613
  2f85f3:	45 33 c9             	xor    r9d,r9d
  2f85f6:	48 8d 15 e3 f3 f3 ff 	lea    rdx,[rip+0xfffffffffff3f3e3]        # 0x2379e0
  2f85fd:	41 b8 46 2a 00 00    	mov    r8d,0x2a46
  2f8603:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8607:	e8 fc d5 07 00       	call   0x375c08
  2f860c:	48 89 05 e5 d8 0e 00 	mov    QWORD PTR [rip+0xed8e5],rax        # 0x3e5ef8
  2f8613:	48 39 35 6e d8 0e 00 	cmp    QWORD PTR [rip+0xed86e],rsi        # 0x3e5e88
  2f861a:	75 20                	jne    0x2f863c
  2f861c:	45 33 c9             	xor    r9d,r9d
  2f861f:	48 8d 15 9a 03 f2 ff 	lea    rdx,[rip+0xfffffffffff2039a]        # 0x2189c0
  2f8626:	41 b8 f4 45 00 00    	mov    r8d,0x45f4
  2f862c:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8630:	e8 d3 d5 07 00       	call   0x375c08
  2f8635:	48 89 05 4c d8 0e 00 	mov    QWORD PTR [rip+0xed84c],rax        # 0x3e5e88
  2f863c:	48 39 35 4d d8 0e 00 	cmp    QWORD PTR [rip+0xed84d],rsi        # 0x3e5e90
  2f8643:	75 20                	jne    0x2f8665
  2f8645:	45 33 c9             	xor    r9d,r9d
  2f8648:	48 8d 15 71 49 f2 ff 	lea    rdx,[rip+0xfffffffffff24971]        # 0x21cfc0
  2f864f:	41 b8 a4 4a 00 00    	mov    r8d,0x4aa4
  2f8655:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8659:	e8 aa d5 07 00       	call   0x375c08
  2f865e:	48 89 05 2b d8 0e 00 	mov    QWORD PTR [rip+0xed82b],rax        # 0x3e5e90
  2f8665:	48 39 35 2c d8 0e 00 	cmp    QWORD PTR [rip+0xed82c],rsi        # 0x3e5e98
  2f866c:	75 20                	jne    0x2f868e
  2f866e:	45 33 c9             	xor    r9d,r9d
  2f8671:	48 8d 15 f8 93 f2 ff 	lea    rdx,[rip+0xfffffffffff293f8]        # 0x221a70
  2f8678:	41 b8 db 44 00 00    	mov    r8d,0x44db
  2f867e:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8682:	e8 81 d5 07 00       	call   0x375c08
  2f8687:	48 89 05 0a d8 0e 00 	mov    QWORD PTR [rip+0xed80a],rax        # 0x3e5e98
  2f868e:	48 39 35 0b d8 0e 00 	cmp    QWORD PTR [rip+0xed80b],rsi        # 0x3e5ea0
  2f8695:	75 20                	jne    0x2f86b7
  2f8697:	45 33 c9             	xor    r9d,r9d
  2f869a:	48 8d 15 af d8 f2 ff 	lea    rdx,[rip+0xfffffffffff2d8af]        # 0x225f50
  2f86a1:	41 b8 ae 45 00 00    	mov    r8d,0x45ae
  2f86a7:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f86ab:	e8 58 d5 07 00       	call   0x375c08
  2f86b0:	48 89 05 e9 d7 0e 00 	mov    QWORD PTR [rip+0xed7e9],rax        # 0x3e5ea0
  2f86b7:	48 39 35 ea d7 0e 00 	cmp    QWORD PTR [rip+0xed7ea],rsi        # 0x3e5ea8
  2f86be:	75 20                	jne    0x2f86e0
  2f86c0:	45 33 c9             	xor    r9d,r9d
  2f86c3:	48 8d 15 36 1e f3 ff 	lea    rdx,[rip+0xfffffffffff31e36]        # 0x22a500
  2f86ca:	41 b8 94 47 00 00    	mov    r8d,0x4794
  2f86d0:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f86d4:	e8 2f d5 07 00       	call   0x375c08
  2f86d9:	48 89 05 c8 d7 0e 00 	mov    QWORD PTR [rip+0xed7c8],rax        # 0x3e5ea8
  2f86e0:	48 39 35 c9 d7 0e 00 	cmp    QWORD PTR [rip+0xed7c9],rsi        # 0x3e5eb0
  2f86e7:	75 20                	jne    0x2f8709
  2f86e9:	45 33 c9             	xor    r9d,r9d
  2f86ec:	48 8d 15 1d ab f3 ff 	lea    rdx,[rip+0xfffffffffff3ab1d]        # 0x233210
  2f86f3:	41 b8 c1 47 00 00    	mov    r8d,0x47c1
  2f86f9:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f86fd:	e8 06 d5 07 00       	call   0x375c08
  2f8702:	48 89 05 a7 d7 0e 00 	mov    QWORD PTR [rip+0xed7a7],rax        # 0x3e5eb0
  2f8709:	48 39 35 a8 d7 0e 00 	cmp    QWORD PTR [rip+0xed7a8],rsi        # 0x3e5eb8
  2f8710:	75 20                	jne    0x2f8732
  2f8712:	45 33 c9             	xor    r9d,r9d
  2f8715:	48 8d 15 84 65 f3 ff 	lea    rdx,[rip+0xfffffffffff36584]        # 0x22eca0
  2f871c:	41 b8 64 45 00 00    	mov    r8d,0x4564
  2f8722:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8726:	e8 dd d4 07 00       	call   0x375c08
  2f872b:	48 89 05 86 d7 0e 00 	mov    QWORD PTR [rip+0xed786],rax        # 0x3e5eb8
  2f8732:	e8 b9 83 fe ff       	call   0x2e0af0
  2f8737:	e8 b4 82 fe ff       	call   0x2e09f0
  2f873c:	8b 1d de 8f 0f 00    	mov    ebx,DWORD PTR [rip+0xf8fde]        # 0x3f1720
  2f8742:	f6 c3 01             	test   bl,0x1
  2f8745:	75 1e                	jne    0x2f8765
  2f8747:	83 cb 01             	or     ebx,0x1
  2f874a:	48 8d 0d ff e1 0e 00 	lea    rcx,[rip+0xee1ff]        # 0x3e6950
  2f8751:	89 1d c9 8f 0f 00    	mov    DWORD PTR [rip+0xf8fc9],ebx        # 0x3f1720
  2f8757:	e8 7c 5e fd ff       	call   0x2ce5d8
  2f875c:	48 89 05 b5 8f 0f 00 	mov    QWORD PTR [rip+0xf8fb5],rax        # 0x3f1718
  2f8763:	eb 07                	jmp    0x2f876c
  2f8765:	48 8b 05 ac 8f 0f 00 	mov    rax,QWORD PTR [rip+0xf8fac]        # 0x3f1718
  2f876c:	f6 c3 02             	test   bl,0x2
  2f876f:	75 22                	jne    0x2f8793
  2f8771:	48 8b 0d e8 d6 0d 00 	mov    rcx,QWORD PTR [rip+0xdd6e8]        # 0x3d5e60
  2f8778:	48 8d 15 b1 8f 0f 00 	lea    rdx,[rip+0xf8fb1]        # 0x3f1730
  2f877f:	83 cb 02             	or     ebx,0x2
  2f8782:	45 33 c9             	xor    r9d,r9d
  2f8785:	4c 8b c0             	mov    r8,rax
  2f8788:	89 1d 92 8f 0f 00    	mov    DWORD PTR [rip+0xf8f92],ebx        # 0x3f1720
  2f878e:	e8 91 35 fd ff       	call   0x2cbd24
  2f8793:	48 8b 0d c6 d6 0d 00 	mov    rcx,QWORD PTR [rip+0xdd6c6]        # 0x3d5e60
  2f879a:	48 8d 15 8f 8f 0f 00 	lea    rdx,[rip+0xf8f8f]        # 0x3f1730
  2f87a1:	4c 8b c7             	mov    r8,rdi
  2f87a4:	e8 53 32 fd ff       	call   0x2cb9fc
  2f87a9:	48 39 35 48 d7 0e 00 	cmp    QWORD PTR [rip+0xed748],rsi        # 0x3e5ef8
  2f87b0:	0f 84 e4 05 00 00    	je     0x2f8d9a
  2f87b6:	e8 e1 7e fe ff       	call   0x2e069c
  2f87bb:	48 8b d8             	mov    rbx,rax
  2f87be:	e8 89 86 fe ff       	call   0x2e0e4c
  2f87c3:	34 01                	xor    al,0x1
  2f87c5:	8a c8                	mov    cl,al
  2f87c7:	e8 ac 46 fd ff       	call   0x2cce78
  2f87cc:	48 8b cb             	mov    rcx,rbx
  2f87cf:	e8 34 27 fd ff       	call   0x2caf08
  2f87d4:	40 8a f8             	mov    dil,al
  2f87d7:	84 c0                	test   al,al
  2f87d9:	0f 85 f5 00 00 00    	jne    0x2f88d4
  2f87df:	48 8d 0d 3a 00 f2 ff 	lea    rcx,[rip+0xfffffffffff2003a]        # 0x218820
  2f87e6:	40 88 35 63 ba 0e 00 	mov    BYTE PTR [rip+0xeba63],sil        # 0x3e4250
  2f87ed:	e8 72 24 02 00       	call   0x31ac64
  2f87f2:	48 8d 0d f7 d9 0e 00 	lea    rcx,[rip+0xed9f7]        # 0x3e61f0
  2f87f9:	e8 62 23 02 00       	call   0x31ab60
  2f87fe:	48 8d 0d 6b d9 0e 00 	lea    rcx,[rip+0xed96b]        # 0x3e6170
  2f8805:	e8 56 23 02 00       	call   0x31ab60
  2f880a:	48 8d 0d 9f d9 0e 00 	lea    rcx,[rip+0xed99f]        # 0x3e61b0
  2f8811:	e8 4a 23 02 00       	call   0x31ab60
  2f8816:	48 8d 0d 93 d8 0e 00 	lea    rcx,[rip+0xed893]        # 0x3e60b0
  2f881d:	e8 3e 23 02 00       	call   0x31ab60
  2f8822:	48 8d 0d c7 d8 0e 00 	lea    rcx,[rip+0xed8c7]        # 0x3e60f0
  2f8829:	e8 32 23 02 00       	call   0x31ab60
  2f882e:	48 8d 0d fb d8 0e 00 	lea    rcx,[rip+0xed8fb]        # 0x3e6130
  2f8835:	e8 26 23 02 00       	call   0x31ab60
  2f883a:	48 8d 0d 8f ff f1 ff 	lea    rcx,[rip+0xfffffffffff1ff8f]        # 0x2187d0
  2f8841:	e8 6a 24 02 00       	call   0x31acb0
  2f8846:	48 8d 0d 2b 01 f2 ff 	lea    rcx,[rip+0xfffffffffff2012b]        # 0x218978
  2f884d:	e8 12 24 02 00       	call   0x31ac64
  2f8852:	48 8d 0d 37 01 f2 ff 	lea    rcx,[rip+0xfffffffffff20137]        # 0x218990
  2f8859:	e8 06 24 02 00       	call   0x31ac64
  2f885e:	48 8d 0d ab d7 0e 00 	lea    rcx,[rip+0xed7ab]        # 0x3e6010
  2f8865:	e8 26 22 02 00       	call   0x31aa90
  2f886a:	0f 57 c0             	xorps  xmm0,xmm0
  2f886d:	40 88 35 fd d5 0e 00 	mov    BYTE PTR [rip+0xed5fd],sil        # 0x3e5e71
  2f8874:	0f 57 c9             	xorps  xmm1,xmm1
  2f8877:	40 88 35 f2 d5 0e 00 	mov    BYTE PTR [rip+0xed5f2],sil        # 0x3e5e70
  2f887e:	f3 0f 7f 05 3a d6 0e 	movdqu XMMWORD PTR [rip+0xed63a],xmm0        # 0x3e5ec0
  2f8885:	00 
  2f8886:	89 35 10 d8 0e 00    	mov    DWORD PTR [rip+0xed810],esi        # 0x3e609c
  2f888c:	f3 0f 7f 0d 3c d6 0e 	movdqu XMMWORD PTR [rip+0xed63c],xmm1        # 0x3e5ed0
  2f8893:	00 
  2f8894:	48 89 35 e5 d5 0e 00 	mov    QWORD PTR [rip+0xed5e5],rsi        # 0x3e5e80
  2f889b:	f3 0f 7f 05 3d d6 0e 	movdqu XMMWORD PTR [rip+0xed63d],xmm0        # 0x3e5ee0
  2f88a2:	00 
  2f88a3:	48 89 35 0e ea 0d 00 	mov    QWORD PTR [rip+0xdea0e],rsi        # 0x3d72b8
  2f88aa:	48 89 35 0f ea 0d 00 	mov    QWORD PTR [rip+0xdea0f],rsi        # 0x3d72c0
  2f88b1:	48 89 35 90 b9 0e 00 	mov    QWORD PTR [rip+0xeb990],rsi        # 0x3e4248
  2f88b8:	48 89 35 09 ea 0d 00 	mov    QWORD PTR [rip+0xdea09],rsi        # 0x3d72c8
  2f88bf:	48 89 35 3a d6 0e 00 	mov    QWORD PTR [rip+0xed63a],rsi        # 0x3e5f00
  2f88c6:	48 89 35 3b d6 0e 00 	mov    QWORD PTR [rip+0xed63b],rsi        # 0x3e5f08
  2f88cd:	48 89 35 1c d6 0e 00 	mov    QWORD PTR [rip+0xed61c],rsi        # 0x3e5ef0
  2f88d4:	33 d2                	xor    edx,edx
  2f88d6:	48 8d 0d fb 6e 0f 00 	lea    rcx,[rip+0xf6efb]        # 0x3ef7d8
  2f88dd:	e8 02 01 ff ff       	call   0x2e89e4
  2f88e2:	84 c0                	test   al,al
  2f88e4:	74 0e                	je     0x2f88f4
  2f88e6:	40 38 35 2b ff f1 ff 	cmp    BYTE PTR [rip+0xfffffffffff1ff2b],sil        # 0x218818
  2f88ed:	0f 94 05 24 ff f1 ff 	sete   BYTE PTR [rip+0xfffffffffff1ff24]        # 0x218818
  2f88f4:	e8 53 85 fe ff       	call   0x2e0e4c
  2f88f9:	84 c0                	test   al,al
  2f88fb:	0f 84 d0 00 00 00    	je     0x2f89d1
  2f8901:	48 8d 0d e8 d8 0e 00 	lea    rcx,[rip+0xed8e8]        # 0x3e61f0
  2f8908:	40 88 35 41 b9 0e 00 	mov    BYTE PTR [rip+0xeb941],sil        # 0x3e4250
  2f890f:	e8 4c 22 02 00       	call   0x31ab60
  2f8914:	48 8d 0d 55 d8 0e 00 	lea    rcx,[rip+0xed855]        # 0x3e6170
  2f891b:	e8 40 22 02 00       	call   0x31ab60
  2f8920:	48 8d 0d 89 d8 0e 00 	lea    rcx,[rip+0xed889]        # 0x3e61b0
  2f8927:	e8 34 22 02 00       	call   0x31ab60
  2f892c:	48 8d 0d ed fe f1 ff 	lea    rcx,[rip+0xfffffffffff1feed]        # 0x218820
  2f8933:	e8 2c 23 02 00       	call   0x31ac64
  2f8938:	48 8d 0d 71 d7 0e 00 	lea    rcx,[rip+0xed771]        # 0x3e60b0
  2f893f:	e8 1c 22 02 00       	call   0x31ab60
  2f8944:	48 8d 0d a5 d7 0e 00 	lea    rcx,[rip+0xed7a5]        # 0x3e60f0
  2f894b:	e8 10 22 02 00       	call   0x31ab60
  2f8950:	48 8d 0d d9 d7 0e 00 	lea    rcx,[rip+0xed7d9]        # 0x3e6130
  2f8957:	e8 04 22 02 00       	call   0x31ab60
  2f895c:	48 8d 0d 6d fe f1 ff 	lea    rcx,[rip+0xfffffffffff1fe6d]        # 0x2187d0
  2f8963:	e8 48 23 02 00       	call   0x31acb0
  2f8968:	48 8d 0d 09 00 f2 ff 	lea    rcx,[rip+0xfffffffffff20009]        # 0x218978
  2f896f:	e8 f0 22 02 00       	call   0x31ac64
  2f8974:	48 8d 0d 15 00 f2 ff 	lea    rcx,[rip+0xfffffffffff20015]        # 0x218990
  2f897b:	e8 e4 22 02 00       	call   0x31ac64
  2f8980:	48 8d 0d 89 d6 0e 00 	lea    rcx,[rip+0xed689]        # 0x3e6010
  2f8987:	e8 04 21 02 00       	call   0x31aa90
  2f898c:	89 35 0a d7 0e 00    	mov    DWORD PTR [rip+0xed70a],esi        # 0x3e609c
  2f8992:	48 89 35 e7 d4 0e 00 	mov    QWORD PTR [rip+0xed4e7],rsi        # 0x3e5e80
  2f8999:	40 88 35 d1 d4 0e 00 	mov    BYTE PTR [rip+0xed4d1],sil        # 0x3e5e71
  2f89a0:	40 88 35 c9 d4 0e 00 	mov    BYTE PTR [rip+0xed4c9],sil        # 0x3e5e70
  2f89a7:	48 89 35 0a e9 0d 00 	mov    QWORD PTR [rip+0xde90a],rsi        # 0x3d72b8
  2f89ae:	48 89 35 0b e9 0d 00 	mov    QWORD PTR [rip+0xde90b],rsi        # 0x3d72c0
  2f89b5:	48 89 35 8c b8 0e 00 	mov    QWORD PTR [rip+0xeb88c],rsi        # 0x3e4248
  2f89bc:	48 89 35 05 e9 0d 00 	mov    QWORD PTR [rip+0xde905],rsi        # 0x3d72c8
  2f89c3:	48 89 35 36 d5 0e 00 	mov    QWORD PTR [rip+0xed536],rsi        # 0x3e5f00
  2f89ca:	48 89 35 37 d5 0e 00 	mov    QWORD PTR [rip+0xed537],rsi        # 0x3e5f08
  2f89d1:	e8 76 84 fe ff       	call   0x2e0e4c
  2f89d6:	84 c0                	test   al,al
  2f89d8:	0f 85 bc 03 00 00    	jne    0x2f8d9a
  2f89de:	e8 41 cf 01 00       	call   0x315924
  2f89e3:	48 8b c8             	mov    rcx,rax
  2f89e6:	e8 1d 25 fd ff       	call   0x2caf08
  2f89eb:	84 c0                	test   al,al
  2f89ed:	0f 84 a7 03 00 00    	je     0x2f8d9a
  2f89f3:	40 38 35 77 d4 0e 00 	cmp    BYTE PTR [rip+0xed477],sil        # 0x3e5e71
  2f89fa:	75 70                	jne    0x2f8a6c
  2f89fc:	40 38 35 45 10 0f 00 	cmp    BYTE PTR [rip+0xf1045],sil        # 0x3e9a48
  2f8a03:	8a 15 8f 10 0f 00    	mov    dl,BYTE PTR [rip+0xf108f]        # 0x3e9a98
  2f8a09:	75 04                	jne    0x2f8a0f
  2f8a0b:	84 d2                	test   dl,dl
  2f8a0d:	74 5d                	je     0x2f8a6c
  2f8a0f:	48 8b 05 ea e4 0d 00 	mov    rax,QWORD PTR [rip+0xde4ea]        # 0x3d6f00
  2f8a16:	4c 8b 80 a8 e0 0e 0f 	mov    r8,QWORD PTR [rax+0xf0ee0a8]
  2f8a1d:	49 8b c8             	mov    rcx,r8
  2f8a20:	e8 e3 24 fd ff       	call   0x2caf08
  2f8a25:	84 c0                	test   al,al
  2f8a27:	74 43                	je     0x2f8a6c
  2f8a29:	49 8b 98 b8 00 00 00 	mov    rbx,QWORD PTR [r8+0xb8]
  2f8a30:	48 8b cb             	mov    rcx,rbx
  2f8a33:	e8 d0 24 fd ff       	call   0x2caf08
  2f8a38:	84 c0                	test   al,al
  2f8a3a:	74 30                	je     0x2f8a6c
  2f8a3c:	f3 0f 10 35 04 4e 0f 	movss  xmm6,DWORD PTR [rip+0xf4e04]        # 0x3ed848
  2f8a43:	00 
  2f8a44:	84 d2                	test   dl,dl
  2f8a46:	74 19                	je     0x2f8a61
  2f8a48:	8b 0d 6a 6c 0f 00    	mov    ecx,DWORD PTR [rip+0xf6c6a]        # 0x3ef6b8
  2f8a4e:	b2 01                	mov    dl,0x1
  2f8a50:	e8 f7 d3 fe ff       	call   0x2e5e4c
  2f8a55:	84 c0                	test   al,al
  2f8a57:	74 08                	je     0x2f8a61
  2f8a59:	f3 0f 10 35 37 4e 0f 	movss  xmm6,DWORD PTR [rip+0xf4e37]        # 0x3ed898
  2f8a60:	00 
  2f8a61:	0f 28 ce             	movaps xmm1,xmm6
  2f8a64:	48 8b cb             	mov    rcx,rbx
  2f8a67:	e8 b0 f1 01 00       	call   0x317c1c
  2f8a6c:	e8 2b 50 fe ff       	call   0x2dda9c
  2f8a71:	40 38 35 d0 14 0f 00 	cmp    BYTE PTR [rip+0xf14d0],sil        # 0x3e9f48
  2f8a78:	48 8b d8             	mov    rbx,rax
  2f8a7b:	75 24                	jne    0x2f8aa1
  2f8a7d:	40 38 35 14 e8 0e 00 	cmp    BYTE PTR [rip+0xee814],sil        # 0x3e7298
  2f8a84:	75 1b                	jne    0x2f8aa1
  2f8a86:	40 38 35 9b f3 0d 00 	cmp    BYTE PTR [rip+0xdf39b],sil        # 0x3d7e28
  2f8a8d:	75 12                	jne    0x2f8aa1
  2f8a8f:	40 38 35 f2 f2 0d 00 	cmp    BYTE PTR [rip+0xdf2f2],sil        # 0x3d7d88
  2f8a96:	75 09                	jne    0x2f8aa1
  2f8a98:	40 38 35 a9 0a 0f 00 	cmp    BYTE PTR [rip+0xf0aa9],sil        # 0x3e9548
  2f8a9f:	74 20                	je     0x2f8ac1
  2f8aa1:	f3 0f 10 0d e3 a5 f9 	movss  xmm1,DWORD PTR [rip+0xfffffffffff9a5e3]        # 0x29308c
  2f8aa8:	ff 
  2f8aa9:	48 8d 0d 58 8d 0f 00 	lea    rcx,[rip+0xf8d58]        # 0x3f1808
  2f8ab0:	e8 c7 d0 fe ff       	call   0x2e5b7c
  2f8ab5:	84 c0                	test   al,al
  2f8ab7:	74 08                	je     0x2f8ac1
  2f8ab9:	48 8b cb             	mov    rcx,rbx
  2f8abc:	e8 1f fa 06 00       	call   0x3684e0
  2f8ac1:	40 84 ff             	test   dil,dil
  2f8ac4:	74 40                	je     0x2f8b06
  2f8ac6:	e8 51 48 06 00       	call   0x35d31c
  2f8acb:	48 8b c8             	mov    rcx,rax
  2f8ace:	48 8b d3             	mov    rdx,rbx
  2f8ad1:	e8 6a da 01 00       	call   0x316540
  2f8ad6:	e8 41 48 06 00       	call   0x35d31c
  2f8adb:	48 8b c8             	mov    rcx,rax
  2f8ade:	48 8b d3             	mov    rdx,rbx
  2f8ae1:	e8 3e 05 02 00       	call   0x319024
  2f8ae6:	e8 31 48 06 00       	call   0x35d31c
  2f8aeb:	48 8b c8             	mov    rcx,rax
  2f8aee:	48 8b d3             	mov    rdx,rbx
  2f8af1:	e8 3e 04 02 00       	call   0x318f34
  2f8af6:	e8 21 48 06 00       	call   0x35d31c
  2f8afb:	48 8b c8             	mov    rcx,rax
  2f8afe:	48 8b d3             	mov    rdx,rbx
  2f8b01:	e8 82 0e 00 00       	call   0x2f9988
  2f8b06:	40 38 35 ff 8c 0f 00 	cmp    BYTE PTR [rip+0xf8cff],sil        # 0x3f180c
  2f8b0d:	75 79                	jne    0x2f8b88
  2f8b0f:	e8 08 48 06 00       	call   0x35d31c
  2f8b14:	48 8b c8             	mov    rcx,rax
  2f8b17:	e8 d8 41 06 00       	call   0x35ccf4
  2f8b1c:	e8 17 a0 0b 00       	call   0x3b2b38
  2f8b21:	48 8d 0d 08 fe f1 ff 	lea    rcx,[rip+0xfffffffffff1fe08]        # 0x218930
  2f8b28:	e8 37 21 02 00       	call   0x31ac64
  2f8b2d:	48 8d 0d b4 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fdb4]        # 0x2188e8
  2f8b34:	e8 2b 21 02 00       	call   0x31ac64
  2f8b39:	48 8d 0d d8 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fdd8]        # 0x218918
  2f8b40:	e8 1f 21 02 00       	call   0x31ac64
  2f8b45:	48 8d 0d b4 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fdb4]        # 0x218900
  2f8b4c:	e8 13 21 02 00       	call   0x31ac64
  2f8b51:	48 8d 0d 78 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fd78]        # 0x2188d0
  2f8b58:	e8 07 21 02 00       	call   0x31ac64
  2f8b5d:	48 8d 0d 54 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fd54]        # 0x2188b8
  2f8b64:	e8 fb 20 02 00       	call   0x31ac64
  2f8b69:	48 8d 0d 30 fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fd30]        # 0x2188a0
  2f8b70:	e8 ef 20 02 00       	call   0x31ac64
  2f8b75:	48 8d 0d cc fd f1 ff 	lea    rcx,[rip+0xfffffffffff1fdcc]        # 0x218948
  2f8b7c:	e8 e3 20 02 00       	call   0x31ac64
  2f8b81:	c6 05 84 8c 0f 00 01 	mov    BYTE PTR [rip+0xf8c84],0x1        # 0x3f180c
  2f8b88:	e8 1f 9b 09 00       	call   0x3926ac
  2f8b8d:	48 8b c8             	mov    rcx,rax
  2f8b90:	48 8b d8             	mov    rbx,rax
  2f8b93:	e8 54 a3 0b 00       	call   0x3b2eec
  2f8b98:	e8 07 f2 09 00       	call   0x397da4
  2f8b9d:	40 38 35 f0 02 f5 ff 	cmp    BYTE PTR [rip+0xfffffffffff502f0],sil        # 0x248e94
  2f8ba4:	74 6d                	je     0x2f8c13
  2f8ba6:	f3 0f 10 0d 62 8c 0f 	movss  xmm1,DWORD PTR [rip+0xf8c62]        # 0x3f1810
  2f8bad:	00 
  2f8bae:	f3 0f 58 4b 10       	addss  xmm1,DWORD PTR [rbx+0x10]
  2f8bb3:	f3 0f 10 05 c5 a5 f9 	movss  xmm0,DWORD PTR [rip+0xfffffffffff9a5c5]        # 0x293180
  2f8bba:	ff 
  2f8bbb:	0f 2f c1             	comiss xmm0,xmm1
  2f8bbe:	f3 0f 11 0d 4a 8c 0f 	movss  DWORD PTR [rip+0xf8c4a],xmm1        # 0x3f1810
  2f8bc5:	00 
  2f8bc6:	72 3a                	jb     0x2f8c02
  2f8bc8:	f3 0f 10 05 a8 a5 f9 	movss  xmm0,DWORD PTR [rip+0xfffffffffff9a5a8]        # 0x293178
  2f8bcf:	ff 
  2f8bd0:	0f 2f c8             	comiss xmm1,xmm0
  2f8bd3:	76 12                	jbe    0x2f8be7
  2f8bd5:	f3 0f 5c c8          	subss  xmm1,xmm0
  2f8bd9:	f3 0f 10 05 73 46 f9 	movss  xmm0,DWORD PTR [rip+0xfffffffffff94673]        # 0x28d254
  2f8be0:	ff 
  2f8be1:	f3 0f 5c c1          	subss  xmm0,xmm1
  2f8be5:	eb 08                	jmp    0x2f8bef
  2f8be7:	f3 0f 10 05 65 46 f9 	movss  xmm0,DWORD PTR [rip+0xfffffffffff94665]        # 0x28d254
  2f8bee:	ff 
  2f8bef:	0f 28 c8             	movaps xmm1,xmm0
  2f8bf2:	48 8b cb             	mov    rcx,rbx
  2f8bf5:	e8 ca 0a 01 00       	call   0x3096c4
  2f8bfa:	8a 05 94 02 f5 ff    	mov    al,BYTE PTR [rip+0xfffffffffff50294]        # 0x248e94
  2f8c00:	eb 09                	jmp    0x2f8c0b
  2f8c02:	40 8a c6             	mov    al,sil
  2f8c05:	88 05 89 02 f5 ff    	mov    BYTE PTR [rip+0xfffffffffff50289],al        # 0x248e94
  2f8c0b:	84 c0                	test   al,al
  2f8c0d:	0f 85 6b 01 00 00    	jne    0x2f8d7e
  2f8c13:	40 38 35 fa 8b 0f 00 	cmp    BYTE PTR [rip+0xf8bfa],sil        # 0x3f1814
  2f8c1a:	0f 85 0b 01 00 00    	jne    0x2f8d2b
  2f8c20:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  2f8c24:	e8 47 2f fe ff       	call   0x2dbb70
  2f8c29:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  2f8c2d:	e8 ce 2e fe ff       	call   0x2dbb00
  2f8c32:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  2f8c36:	e8 b1 4b fd ff       	call   0x2cd7ec
  2f8c3b:	48 8b c8             	mov    rcx,rax
  2f8c3e:	e8 a1 cf fd ff       	call   0x2d5be4
  2f8c43:	84 c0                	test   al,al
  2f8c45:	74 2a                	je     0x2f8c71
  2f8c47:	e8 94 2f fe ff       	call   0x2dbbe0
  2f8c4c:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  2f8c50:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8c54:	e8 1f 97 ff ff       	call   0x2f2378
  2f8c59:	48 8b c8             	mov    rcx,rax
  2f8c5c:	e8 ff 44 fe ff       	call   0x2dd160
  2f8c61:	48 8b d0             	mov    rdx,rax
  2f8c64:	48 8d 4d c7          	lea    rcx,[rbp-0x39]
  2f8c68:	e8 5f 36 fd ff       	call   0x2cc2cc
  2f8c6d:	33 d2                	xor    edx,edx
  2f8c6f:	eb 26                	jmp    0x2f8c97
  2f8c71:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  2f8c75:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8c79:	e8 72 a9 ff ff       	call   0x2f35f0
  2f8c7e:	48 8b c8             	mov    rcx,rax
  2f8c81:	e8 76 79 02 00       	call   0x3205fc
  2f8c86:	48 8b d0             	mov    rdx,rax
  2f8c89:	48 8d 4d c7          	lea    rcx,[rbp-0x39]
  2f8c8d:	e8 3a 36 fd ff       	call   0x2cc2cc
  2f8c92:	ba 01 00 00 00       	mov    edx,0x1
  2f8c97:	45 33 c0             	xor    r8d,r8d
  2f8c9a:	48 8b c8             	mov    rcx,rax
  2f8c9d:	e8 76 6c 08 00       	call   0x37f918
  2f8ca2:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  2f8ca6:	e8 41 4b fd ff       	call   0x2cd7ec
  2f8cab:	48 8b c8             	mov    rcx,rax
  2f8cae:	e8 31 cf fd ff       	call   0x2d5be4
  2f8cb3:	84 c0                	test   al,al
  2f8cb5:	74 2a                	je     0x2f8ce1
  2f8cb7:	e8 04 32 fe ff       	call   0x2dbec0
  2f8cbc:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  2f8cc0:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8cc4:	e8 5b b6 ff ff       	call   0x2f4324
  2f8cc9:	48 8b c8             	mov    rcx,rax
  2f8ccc:	e8 9b f9 fd ff       	call   0x2d866c
  2f8cd1:	48 8b d0             	mov    rdx,rax
  2f8cd4:	48 8d 4d c7          	lea    rcx,[rbp-0x39]
  2f8cd8:	e8 ef 35 fd ff       	call   0x2cc2cc
  2f8cdd:	33 d2                	xor    edx,edx
  2f8cdf:	eb 26                	jmp    0x2f8d07
  2f8ce1:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  2f8ce5:	48 8d 4d 6f          	lea    rcx,[rbp+0x6f]
  2f8ce9:	e8 5a bc ff ff       	call   0x2f4948
  2f8cee:	48 8b c8             	mov    rcx,rax
  2f8cf1:	e8 8e 78 02 00       	call   0x320584
  2f8cf6:	48 8b d0             	mov    rdx,rax
  2f8cf9:	48 8d 4d c7          	lea    rcx,[rbp-0x39]
  2f8cfd:	e8 ca 35 fd ff       	call   0x2cc2cc
  2f8d02:	ba 01 00 00 00       	mov    edx,0x1
  2f8d07:	45 33 c0             	xor    r8d,r8d
  2f8d0a:	48 8b c8             	mov    rcx,rax
  2f8d0d:	e8 06 6c 08 00       	call   0x37f918
  2f8d12:	48 8d 4d e7          	lea    rcx,[rbp-0x19]
  2f8d16:	c6 05 f7 8a 0f 00 01 	mov    BYTE PTR [rip+0xf8af7],0x1        # 0x3f1814
  2f8d1d:	e8 d2 37 fd ff       	call   0x2cc4f4
  2f8d22:	48 8d 4d 07          	lea    rcx,[rbp+0x7]
  2f8d26:	e8 c9 37 fd ff       	call   0x2cc4f4
  2f8d2b:	e8 ec 45 06 00       	call   0x35d31c
  2f8d30:	48 8b c8             	mov    rcx,rax
  2f8d33:	e8 a0 1d 06 00       	call   0x35aad8
  2f8d38:	e8 df 45 06 00       	call   0x35d31c
  2f8d3d:	48 8b c8             	mov    rcx,rax
  2f8d40:	e8 5f 0b 01 00       	call   0x3098a4
  2f8d45:	e8 d2 45 06 00       	call   0x35d31c
  2f8d4a:	48 8b c8             	mov    rcx,rax
  2f8d4d:	e8 da 29 00 00       	call   0x2fb72c
  2f8d52:	e8 31 6a 07 00       	call   0x36f788
  2f8d57:	e8 c0 45 06 00       	call   0x35d31c
  2f8d5c:	48 8b c8             	mov    rcx,rax
  2f8d5f:	e8 b4 3d 06 00       	call   0x35cb18
  2f8d64:	e8 b3 45 06 00       	call   0x35d31c
  2f8d69:	48 8b c8             	mov    rcx,rax
  2f8d6c:	e8 c7 e8 00 00       	call   0x307638
  2f8d71:	e8 a6 45 06 00       	call   0x35d31c
  2f8d76:	48 8b c8             	mov    rcx,rax
  2f8d79:	e8 2e 48 06 00       	call   0x35d5ac
  2f8d7e:	e8 11 7c 09 00       	call   0x390994
  2f8d83:	e8 64 7f 09 00       	call   0x390cec
  2f8d88:	e8 f7 ff 09 00       	call   0x398d84
  2f8d8d:	e8 2a 97 09 00       	call   0x3924bc
  2f8d92:	48 8b c8             	mov    rcx,rax
  2f8d95:	e8 8e a2 0b 00       	call   0x3b3028
  2f8d9a:	0f 28 b4 24 a0 00 00 	movaps xmm6,XMMWORD PTR [rsp+0xa0]
  2f8da1:	00 
  2f8da2:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  2f8da9:	5f                   	pop    rdi
  2f8daa:	5e                   	pop    rsi
  2f8dab:	5b                   	pop    rbx
  2f8dac:	5d                   	pop    rbp
  2f8dad:	c3                   	ret
; pdata 0x333bf4..0x333d0f
  333bf4:	40 53                	rex push rbx
  333bf6:	55                   	push   rbp
  333bf7:	56                   	push   rsi
  333bf8:	57                   	push   rdi
  333bf9:	41 54                	push   r12
  333bfb:	41 56                	push   r14
  333bfd:	41 57                	push   r15
  333bff:	48 83 ec 30          	sub    rsp,0x30
  333c03:	4c 8b e2             	mov    r12,rdx
  333c06:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  333c0d:	00 00 
  333c0f:	48 8b 94 24 90 00 00 	mov    rdx,QWORD PTR [rsp+0x90]
  333c16:	00 
  333c17:	4d 8b f1             	mov    r14,r9
  333c1a:	41 8b e8             	mov    ebp,r8d
  333c1d:	e8 02 06 00 00       	call   0x334224
  333c22:	48 8b c8             	mov    rcx,rax
  333c25:	48 8b f0             	mov    rsi,rax
  333c28:	e8 db 72 f9 ff       	call   0x2caf08
  333c2d:	84 c0                	test   al,al
  333c2f:	0f 84 c4 00 00 00    	je     0x333cf9
  333c35:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  333c3a:	48 8b ce             	mov    rcx,rsi
  333c3d:	e8 1e 0a 00 00       	call   0x334660
  333c42:	48 8b d8             	mov    rbx,rax
  333c45:	48 85 c0             	test   rax,rax
  333c48:	0f 84 ab 00 00 00    	je     0x333cf9
  333c4e:	8b bc 24 98 00 00 00 	mov    edi,DWORD PTR [rsp+0x98]
  333c55:	48 8b cb             	mov    rcx,rbx
  333c58:	e8 ab 72 f9 ff       	call   0x2caf08
  333c5d:	84 c0                	test   al,al
  333c5f:	74 7f                	je     0x333ce0
  333c61:	48 8b cb             	mov    rcx,rbx
  333c64:	e8 d7 13 00 00       	call   0x335040
  333c69:	48 8b c8             	mov    rcx,rax
  333c6c:	4c 8b c0             	mov    r8,rax
  333c6f:	e8 94 72 f9 ff       	call   0x2caf08
  333c74:	84 c0                	test   al,al
  333c76:	74 68                	je     0x333ce0
  333c78:	49 8b d4             	mov    rdx,r12
  333c7b:	49 8b c8             	mov    rcx,r8
  333c7e:	e8 71 13 00 00       	call   0x334ff4
  333c83:	84 c0                	test   al,al
  333c85:	74 59                	je     0x333ce0
  333c87:	85 ff                	test   edi,edi
  333c89:	78 7f                	js     0x333d0a
  333c8b:	4d 85 f6             	test   r14,r14
  333c8e:	74 7a                	je     0x333d0a
  333c90:	48 8b cb             	mov    rcx,rbx
  333c93:	e8 a8 14 00 00       	call   0x335140
  333c98:	3b f8                	cmp    edi,eax
  333c9a:	7f 44                	jg     0x333ce0
  333c9c:	85 ed                	test   ebp,ebp
  333c9e:	78 04                	js     0x333ca4
  333ca0:	3b c5                	cmp    eax,ebp
  333ca2:	75 3c                	jne    0x333ce0
  333ca4:	85 c0                	test   eax,eax
  333ca6:	7e 0d                	jle    0x333cb5
  333ca8:	8d 57 ff             	lea    edx,[rdi-0x1]
  333cab:	48 8b cb             	mov    rcx,rbx
  333cae:	e8 05 15 00 00       	call   0x3351b8
  333cb3:	eb 17                	jmp    0x333ccc
  333cb5:	48 8d 54 24 21       	lea    rdx,[rsp+0x21]
  333cba:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  333cbf:	e8 7c fe ff ff       	call   0x333b40
  333cc4:	48 8b c8             	mov    rcx,rax
  333cc7:	e8 98 47 fa ff       	call   0x2d8464
  333ccc:	48 85 c0             	test   rax,rax
  333ccf:	74 0f                	je     0x333ce0
  333cd1:	49 8b d6             	mov    rdx,r14
  333cd4:	48 8b c8             	mov    rcx,rax
  333cd7:	e8 18 13 00 00       	call   0x334ff4
  333cdc:	84 c0                	test   al,al
  333cde:	75 2a                	jne    0x333d0a
  333ce0:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  333ce5:	48 8b ce             	mov    rcx,rsi
  333ce8:	e8 73 09 00 00       	call   0x334660
  333ced:	48 8b d8             	mov    rbx,rax
  333cf0:	48 85 c0             	test   rax,rax
  333cf3:	0f 85 5c ff ff ff    	jne    0x333c55
  333cf9:	33 c0                	xor    eax,eax
  333cfb:	48 83 c4 30          	add    rsp,0x30
  333cff:	41 5f                	pop    r15
  333d01:	41 5e                	pop    r14
  333d03:	41 5c                	pop    r12
  333d05:	5f                   	pop    rdi
  333d06:	5e                   	pop    rsi
  333d07:	5d                   	pop    rbp
  333d08:	5b                   	pop    rbx
  333d09:	c3                   	ret
  333d0a:	48 8b c3             	mov    rax,rbx
  333d0d:	eb ec                	jmp    0x333cfb
; pdata 0x3346e8..0x334760
  3346e8:	40 53                	rex push rbx
  3346ea:	48 83 ec 20          	sub    rsp,0x20
  3346ee:	8b 05 7c 5f 0c 00    	mov    eax,DWORD PTR [rip+0xc5f7c]        # 0x3fa670
  3346f4:	48 8b d9             	mov    rbx,rcx
  3346f7:	a8 01                	test   al,0x1
  3346f9:	75 20                	jne    0x33471b
  3346fb:	83 c8 01             	or     eax,0x1
  3346fe:	89 05 6c 5f 0c 00    	mov    DWORD PTR [rip+0xc5f6c],eax        # 0x3fa670
  334704:	e8 6b 7a f9 ff       	call   0x2cc174
  334709:	4c 8b c0             	mov    r8,rax
  33470c:	48 89 05 55 5f 0c 00 	mov    QWORD PTR [rip+0xc5f55],rax        # 0x3fa668
  334713:	8b 05 57 5f 0c 00    	mov    eax,DWORD PTR [rip+0xc5f57]        # 0x3fa670
  334719:	eb 07                	jmp    0x334722
  33471b:	4c 8b 05 46 5f 0c 00 	mov    r8,QWORD PTR [rip+0xc5f46]        # 0x3fa668
  334722:	a8 02                	test   al,0x2
  334724:	75 1f                	jne    0x334745
  334726:	48 8b 0d 33 17 0a 00 	mov    rcx,QWORD PTR [rip+0xa1733]        # 0x3d5e60
  33472d:	48 8d 15 4c 5f 0c 00 	lea    rdx,[rip+0xc5f4c]        # 0x3fa680
  334734:	83 c8 02             	or     eax,0x2
  334737:	45 33 c9             	xor    r9d,r9d
  33473a:	89 05 30 5f 0c 00    	mov    DWORD PTR [rip+0xc5f30],eax        # 0x3fa670
  334740:	e8 df 75 f9 ff       	call   0x2cbd24
  334745:	48 8b 0d 14 17 0a 00 	mov    rcx,QWORD PTR [rip+0xa1714]        # 0x3d5e60
  33474c:	48 8d 15 2d 5f 0c 00 	lea    rdx,[rip+0xc5f2d]        # 0x3fa680
  334753:	4c 8b c3             	mov    r8,rbx
  334756:	48 83 c4 20          	add    rsp,0x20
  33475a:	5b                   	pop    rbx
  33475b:	e9 9c 72 f9 ff       	jmp    0x2cb9fc
; pdata 0x335358..0x3353d0
  335358:	40 53                	rex push rbx
  33535a:	48 83 ec 20          	sub    rsp,0x20
  33535e:	8b 05 1c 52 0c 00    	mov    eax,DWORD PTR [rip+0xc521c]        # 0x3fa580
  335364:	48 8b d9             	mov    rbx,rcx
  335367:	a8 01                	test   al,0x1
  335369:	75 20                	jne    0x33538b
  33536b:	83 c8 01             	or     eax,0x1
  33536e:	89 05 0c 52 0c 00    	mov    DWORD PTR [rip+0xc520c],eax        # 0x3fa580
  335374:	e8 f3 6d f9 ff       	call   0x2cc16c
  335379:	4c 8b c0             	mov    r8,rax
  33537c:	48 89 05 f5 51 0c 00 	mov    QWORD PTR [rip+0xc51f5],rax        # 0x3fa578
  335383:	8b 05 f7 51 0c 00    	mov    eax,DWORD PTR [rip+0xc51f7]        # 0x3fa580
  335389:	eb 07                	jmp    0x335392
  33538b:	4c 8b 05 e6 51 0c 00 	mov    r8,QWORD PTR [rip+0xc51e6]        # 0x3fa578
  335392:	a8 02                	test   al,0x2
  335394:	75 1f                	jne    0x3353b5
  335396:	48 8b 0d c3 0a 0a 00 	mov    rcx,QWORD PTR [rip+0xa0ac3]        # 0x3d5e60
  33539d:	48 8d 15 ec 51 0c 00 	lea    rdx,[rip+0xc51ec]        # 0x3fa590
  3353a4:	83 c8 02             	or     eax,0x2
  3353a7:	45 33 c9             	xor    r9d,r9d
  3353aa:	89 05 d0 51 0c 00    	mov    DWORD PTR [rip+0xc51d0],eax        # 0x3fa580
  3353b0:	e8 6f 69 f9 ff       	call   0x2cbd24
  3353b5:	48 8b 0d a4 0a 0a 00 	mov    rcx,QWORD PTR [rip+0xa0aa4]        # 0x3d5e60
  3353bc:	48 8d 15 cd 51 0c 00 	lea    rdx,[rip+0xc51cd]        # 0x3fa590
  3353c3:	4c 8b c3             	mov    r8,rbx
  3353c6:	48 83 c4 20          	add    rsp,0x20
  3353ca:	5b                   	pop    rbx
  3353cb:	e9 2c 66 f9 ff       	jmp    0x2cb9fc
; pdata 0x36c8c4..0x36ca31
  36c8c4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  36c8c9:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  36c8ce:	56                   	push   rsi
  36c8cf:	57                   	push   rdi
  36c8d0:	41 56                	push   r14
  36c8d2:	48 83 ec 70          	sub    rsp,0x70
  36c8d6:	48 8b ea             	mov    rbp,rdx
  36c8d9:	4c 8b f1             	mov    r14,rcx
  36c8dc:	e8 27 e6 f5 ff       	call   0x2caf08
  36c8e1:	84 c0                	test   al,al
  36c8e3:	75 1c                	jne    0x36c901
  36c8e5:	0f 57 c9             	xorps  xmm1,xmm1
  36c8e8:	0f 57 db             	xorps  xmm3,xmm3
  36c8eb:	0f 57 d2             	xorps  xmm2,xmm2
  36c8ee:	f3 0f 11 4c 24 20    	movss  DWORD PTR [rsp+0x20],xmm1
  36c8f4:	48 8b ca             	mov    rcx,rdx
  36c8f7:	e8 54 fa f5 ff       	call   0x2cc350
  36c8fc:	e9 18 01 00 00       	jmp    0x36ca19
  36c901:	8b 05 29 34 09 00    	mov    eax,DWORD PTR [rip+0x93429]        # 0x3ffd30
  36c907:	a8 01                	test   al,0x1
  36c909:	0f 85 b1 00 00 00    	jne    0x36c9c0
  36c90f:	83 c8 01             	or     eax,0x1
  36c912:	48 8d 94 24 a0 00 00 	lea    rdx,[rsp+0xa0]
  36c919:	00 
  36c91a:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  36c921:	00 
  36c922:	89 05 08 34 09 00    	mov    DWORD PTR [rip+0x93408],eax        # 0x3ffd30
  36c928:	e8 03 fe f5 ff       	call   0x2cc730
  36c92d:	48 8b c8             	mov    rcx,rax
  36c930:	e8 6f 13 f6 ff       	call   0x2cdca4
  36c935:	48 8d 54 24 43       	lea    rdx,[rsp+0x43]
  36c93a:	48 8b f0             	mov    rsi,rax
  36c93d:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  36c944:	00 
  36c945:	e8 9e fc ff ff       	call   0x36c5e8
  36c94a:	48 8b c8             	mov    rcx,rax
  36c94d:	e8 36 08 f7 ff       	call   0x2dd188
  36c952:	48 8d 54 24 37       	lea    rdx,[rsp+0x37]
  36c957:	48 8b f8             	mov    rdi,rax
  36c95a:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  36c961:	00 
  36c962:	e8 01 fc ff ff       	call   0x36c568
  36c967:	48 8b c8             	mov    rcx,rax
  36c96a:	e8 c5 14 f6 ff       	call   0x2cde34
  36c96f:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  36c974:	48 8b d8             	mov    rbx,rax
  36c977:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  36c97e:	00 
  36c97f:	e8 4c fb ff ff       	call   0x36c4d0
  36c984:	48 8b c8             	mov    rcx,rax
  36c987:	e8 68 13 f6 ff       	call   0x2cdcf4
  36c98c:	48 8b c8             	mov    rcx,rax
  36c98f:	48 8b d3             	mov    rdx,rbx
  36c992:	e8 8d 78 fc ff       	call   0x334224
  36c997:	41 83 c8 ff          	or     r8d,0xffffffff
  36c99b:	48 8b c8             	mov    rcx,rax
  36c99e:	4c 8b ce             	mov    r9,rsi
  36c9a1:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  36c9a6:	48 8b d7             	mov    rdx,rdi
  36c9a9:	e8 fe 7f fc ff       	call   0x3349ac
  36c9ae:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  36c9b1:	8b 05 79 33 09 00    	mov    eax,DWORD PTR [rip+0x93379]        # 0x3ffd30
  36c9b7:	4c 89 05 6a 33 09 00 	mov    QWORD PTR [rip+0x9336a],r8        # 0x3ffd28
  36c9be:	eb 07                	jmp    0x36c9c7
  36c9c0:	4c 8b 05 61 33 09 00 	mov    r8,QWORD PTR [rip+0x93361]        # 0x3ffd28
  36c9c7:	a8 02                	test   al,0x2
  36c9c9:	75 1f                	jne    0x36c9ea
  36c9cb:	48 8b 0d 8e 94 06 00 	mov    rcx,QWORD PTR [rip+0x6948e]        # 0x3d5e60
  36c9d2:	48 8d 15 67 33 09 00 	lea    rdx,[rip+0x93367]        # 0x3ffd40
  36c9d9:	83 c8 02             	or     eax,0x2
  36c9dc:	45 33 c9             	xor    r9d,r9d
  36c9df:	89 05 4b 33 09 00    	mov    DWORD PTR [rip+0x9334b],eax        # 0x3ffd30
  36c9e5:	e8 3a f3 f5 ff       	call   0x2cbd24
  36c9ea:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  36c9ef:	e8 ac e9 f6 ff       	call   0x2db3a0
  36c9f4:	48 8b 0d 65 94 06 00 	mov    rcx,QWORD PTR [rip+0x69465]        # 0x3d5e60
  36c9fb:	4c 8d 44 24 58       	lea    r8,[rsp+0x58]
  36ca00:	4d 8b ce             	mov    r9,r14
  36ca03:	48 8d 15 36 33 09 00 	lea    rdx,[rip+0x93336]        # 0x3ffd40
  36ca0a:	e8 85 56 f6 ff       	call   0x2d2094
  36ca0f:	0f 10 44 24 58       	movups xmm0,XMMWORD PTR [rsp+0x58]
  36ca14:	f3 0f 7f 45 00       	movdqu XMMWORD PTR [rbp+0x0],xmm0
  36ca19:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  36ca1e:	48 8b c5             	mov    rax,rbp
  36ca21:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  36ca25:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  36ca29:	49 8b e3             	mov    rsp,r11
  36ca2c:	41 5e                	pop    r14
  36ca2e:	5f                   	pop    rdi
  36ca2f:	5e                   	pop    rsi
  36ca30:	c3                   	ret
; pdata 0x373138..0x373248
  373138:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  37313d:	55                   	push   rbp
  37313e:	56                   	push   rsi
  37313f:	57                   	push   rdi
  373140:	48 83 ec 50          	sub    rsp,0x50
  373144:	8b 05 66 e3 08 00    	mov    eax,DWORD PTR [rip+0x8e366]        # 0x4014b0
  37314a:	48 8b e9             	mov    rbp,rcx
  37314d:	a8 01                	test   al,0x1
  37314f:	0f 85 a7 00 00 00    	jne    0x3731fc
  373155:	83 c8 01             	or     eax,0x1
  373158:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  37315d:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  373162:	89 05 48 e3 08 00    	mov    DWORD PTR [rip+0x8e348],eax        # 0x4014b0
  373168:	e8 73 fd ff ff       	call   0x372ee0
  37316d:	48 8b c8             	mov    rcx,rax
  373170:	e8 bf ac f5 ff       	call   0x2cde34
  373175:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
  37317c:	00 
  37317d:	48 8b f0             	mov    rsi,rax
  373180:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  373185:	e8 aa fc ff ff       	call   0x372e34
  37318a:	48 8b c8             	mov    rcx,rax
  37318d:	e8 3a ab f5 ff       	call   0x2cdccc
  373192:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  373199:	00 
  37319a:	48 8b f8             	mov    rdi,rax
  37319d:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  3731a2:	e8 a9 fb ff ff       	call   0x372d50
  3731a7:	48 8b c8             	mov    rcx,rax
  3731aa:	e8 1d ab f5 ff       	call   0x2cdccc
  3731af:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3731b4:	48 8b d8             	mov    rbx,rax
  3731b7:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  3731bc:	e8 b3 fa ff ff       	call   0x372c74
  3731c1:	48 8b c8             	mov    rcx,rax
  3731c4:	e8 8b 6a f7 ff       	call   0x2e9c54
  3731c9:	48 8b c8             	mov    rcx,rax
  3731cc:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3731d3:	ff 
  3731d4:	4c 8b cf             	mov    r9,rdi
  3731d7:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3731dc:	41 b8 01 00 00 00    	mov    r8d,0x1
  3731e2:	48 8b d3             	mov    rdx,rbx
  3731e5:	e8 0a 0a fc ff       	call   0x333bf4
  3731ea:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3731ed:	8b 05 bd e2 08 00    	mov    eax,DWORD PTR [rip+0x8e2bd]        # 0x4014b0
  3731f3:	4c 89 05 ae e2 08 00 	mov    QWORD PTR [rip+0x8e2ae],r8        # 0x4014a8
  3731fa:	eb 07                	jmp    0x373203
  3731fc:	4c 8b 05 a5 e2 08 00 	mov    r8,QWORD PTR [rip+0x8e2a5]        # 0x4014a8
  373203:	a8 02                	test   al,0x2
  373205:	75 1f                	jne    0x373226
  373207:	48 8b 0d 52 2c 06 00 	mov    rcx,QWORD PTR [rip+0x62c52]        # 0x3d5e60
  37320e:	48 8d 15 ab e2 08 00 	lea    rdx,[rip+0x8e2ab]        # 0x4014c0
  373215:	83 c8 02             	or     eax,0x2
  373218:	45 33 c9             	xor    r9d,r9d
  37321b:	89 05 8f e2 08 00    	mov    DWORD PTR [rip+0x8e28f],eax        # 0x4014b0
  373221:	e8 fe 8a f5 ff       	call   0x2cbd24
  373226:	48 8b 0d 33 2c 06 00 	mov    rcx,QWORD PTR [rip+0x62c33]        # 0x3d5e60
  37322d:	48 8d 15 8c e2 08 00 	lea    rdx,[rip+0x8e28c]        # 0x4014c0
  373234:	4c 8b c5             	mov    r8,rbp
  373237:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  37323c:	48 83 c4 50          	add    rsp,0x50
  373240:	5f                   	pop    rdi
  373241:	5e                   	pop    rsi
  373242:	5d                   	pop    rbp
  373243:	e9 b4 87 f5 ff       	jmp    0x2cb9fc
; pdata 0x373378..0x373483
  373378:	40 53                	rex push rbx
  37337a:	55                   	push   rbp
  37337b:	56                   	push   rsi
  37337c:	57                   	push   rdi
  37337d:	48 83 ec 68          	sub    rsp,0x68
  373381:	48 8b c2             	mov    rax,rdx
  373384:	48 8b e9             	mov    rbp,rcx
  373387:	48 8b c8             	mov    rcx,rax
  37338a:	49 8b d0             	mov    rdx,r8
  37338d:	e8 72 0e fc ff       	call   0x334204
  373392:	48 8b f0             	mov    rsi,rax
  373395:	48 85 c0             	test   rax,rax
  373398:	0f 84 dc 00 00 00    	je     0x37347a
  37339e:	8b 05 1c e0 08 00    	mov    eax,DWORD PTR [rip+0x8e01c]        # 0x4013c0
  3733a4:	a8 01                	test   al,0x1
  3733a6:	0f 85 8b 00 00 00    	jne    0x373437
  3733ac:	83 c8 01             	or     eax,0x1
  3733af:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  3733b4:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3733bb:	00 
  3733bc:	89 05 fe df 08 00    	mov    DWORD PTR [rip+0x8dffe],eax        # 0x4013c0
  3733c2:	e8 a9 fa ff ff       	call   0x372e70
  3733c7:	48 8b c8             	mov    rcx,rax
  3733ca:	e8 65 aa f5 ff       	call   0x2cde34
  3733cf:	48 8d 54 24 47       	lea    rdx,[rsp+0x47]
  3733d4:	48 8b f8             	mov    rdi,rax
  3733d7:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3733de:	00 
  3733df:	e8 a0 f9 ff ff       	call   0x372d84
  3733e4:	48 8b c8             	mov    rcx,rax
  3733e7:	e8 08 52 f6 ff       	call   0x2d85f4
  3733ec:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3733f1:	48 8b d8             	mov    rbx,rax
  3733f4:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3733fb:	00 
  3733fc:	e8 ab f8 ff ff       	call   0x372cac
  373401:	48 8b c8             	mov    rcx,rax
  373404:	e8 4b 68 f7 ff       	call   0x2e9c54
  373409:	48 8b c8             	mov    rcx,rax
  37340c:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
  373413:	00 
  373414:	41 b9 01 00 00 00    	mov    r9d,0x1
  37341a:	4c 8b c7             	mov    r8,rdi
  37341d:	48 8b d3             	mov    rdx,rbx
  373420:	e8 47 0d fc ff       	call   0x33416c
  373425:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  373428:	8b 05 92 df 08 00    	mov    eax,DWORD PTR [rip+0x8df92]        # 0x4013c0
  37342e:	4c 89 05 83 df 08 00 	mov    QWORD PTR [rip+0x8df83],r8        # 0x4013b8
  373435:	eb 07                	jmp    0x37343e
  373437:	4c 8b 05 7a df 08 00 	mov    r8,QWORD PTR [rip+0x8df7a]        # 0x4013b8
  37343e:	a8 02                	test   al,0x2
  373440:	75 1f                	jne    0x373461
  373442:	48 8b 0d 17 2a 06 00 	mov    rcx,QWORD PTR [rip+0x62a17]        # 0x3d5e60
  373449:	48 8d 15 80 df 08 00 	lea    rdx,[rip+0x8df80]        # 0x4013d0
  373450:	83 c8 02             	or     eax,0x2
  373453:	45 33 c9             	xor    r9d,r9d
  373456:	89 05 64 df 08 00    	mov    DWORD PTR [rip+0x8df64],eax        # 0x4013c0
  37345c:	e8 c3 88 f5 ff       	call   0x2cbd24
  373461:	48 8b 0d f8 29 06 00 	mov    rcx,QWORD PTR [rip+0x629f8]        # 0x3d5e60
  373468:	48 8d 15 61 df 08 00 	lea    rdx,[rip+0x8df61]        # 0x4013d0
  37346f:	4c 8b ce             	mov    r9,rsi
  373472:	4c 8b c5             	mov    r8,rbp
  373475:	e8 1a ec f5 ff       	call   0x2d2094
  37347a:	48 83 c4 68          	add    rsp,0x68
  37347e:	5f                   	pop    rdi
  37347f:	5e                   	pop    rsi
  373480:	5d                   	pop    rbp
  373481:	5b                   	pop    rbx
  373482:	c3                   	ret
; pdata 0x373744..0x373880
  373744:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  373749:	48 89 6c 24 10       	mov    QWORD PTR [rsp+0x10],rbp
  37374e:	56                   	push   rsi
  37374f:	57                   	push   rdi
  373750:	41 56                	push   r14
  373752:	48 83 ec 60          	sub    rsp,0x60
  373756:	44 8a f2             	mov    r14b,dl
  373759:	48 8b e9             	mov    rbp,rcx
  37375c:	e8 a7 77 f5 ff       	call   0x2caf08
  373761:	84 c0                	test   al,al
  373763:	0f 84 02 01 00 00    	je     0x37386b
  373769:	8b 05 71 da 08 00    	mov    eax,DWORD PTR [rip+0x8da71]        # 0x4011e0
  37376f:	a8 01                	test   al,0x1
  373771:	0f 85 b1 00 00 00    	jne    0x373828
  373777:	83 c8 01             	or     eax,0x1
  37377a:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  373781:	00 
  373782:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  373789:	00 
  37378a:	89 05 50 da 08 00    	mov    DWORD PTR [rip+0x8da50],eax        # 0x4011e0
  373790:	e8 9b 8f f5 ff       	call   0x2cc730
  373795:	48 8b c8             	mov    rcx,rax
  373798:	e8 07 a5 f5 ff       	call   0x2cdca4
  37379d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3737a2:	48 8b f0             	mov    rsi,rax
  3737a5:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3737ac:	00 
  3737ad:	e8 12 f7 ff ff       	call   0x372ec4
  3737b2:	48 8b c8             	mov    rcx,rax
  3737b5:	e8 9a 64 f7 ff       	call   0x2e9c54
  3737ba:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  3737bf:	48 8b f8             	mov    rdi,rax
  3737c2:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3737c9:	00 
  3737ca:	e8 11 f6 ff ff       	call   0x372de0
  3737cf:	48 8b c8             	mov    rcx,rax
  3737d2:	e8 5d a6 f5 ff       	call   0x2cde34
  3737d7:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  3737dc:	48 8b d8             	mov    rbx,rax
  3737df:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3737e6:	00 
  3737e7:	e8 18 f5 ff ff       	call   0x372d04
  3737ec:	48 8b c8             	mov    rcx,rax
  3737ef:	e8 60 64 f7 ff       	call   0x2e9c54
  3737f4:	48 8b c8             	mov    rcx,rax
  3737f7:	48 8b d3             	mov    rdx,rbx
  3737fa:	e8 25 0a fc ff       	call   0x334224
  3737ff:	41 83 c8 ff          	or     r8d,0xffffffff
  373803:	48 8b c8             	mov    rcx,rax
  373806:	4c 8b ce             	mov    r9,rsi
  373809:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  37380e:	48 8b d7             	mov    rdx,rdi
  373811:	e8 96 11 fc ff       	call   0x3349ac
  373816:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  373819:	8b 05 c1 d9 08 00    	mov    eax,DWORD PTR [rip+0x8d9c1]        # 0x4011e0
  37381f:	4c 89 05 b2 d9 08 00 	mov    QWORD PTR [rip+0x8d9b2],r8        # 0x4011d8
  373826:	eb 07                	jmp    0x37382f
  373828:	4c 8b 05 a9 d9 08 00 	mov    r8,QWORD PTR [rip+0x8d9a9]        # 0x4011d8
  37382f:	a8 02                	test   al,0x2
  373831:	75 1f                	jne    0x373852
  373833:	48 8b 0d 26 26 06 00 	mov    rcx,QWORD PTR [rip+0x62626]        # 0x3d5e60
  37383a:	48 8d 15 af d9 08 00 	lea    rdx,[rip+0x8d9af]        # 0x4011f0
  373841:	83 c8 02             	or     eax,0x2
  373844:	45 33 c9             	xor    r9d,r9d
  373847:	89 05 93 d9 08 00    	mov    DWORD PTR [rip+0x8d993],eax        # 0x4011e0
  37384d:	e8 d2 84 f5 ff       	call   0x2cbd24
  373852:	48 8b 0d 07 26 06 00 	mov    rcx,QWORD PTR [rip+0x62607]        # 0x3d5e60
  373859:	48 8d 15 90 d9 08 00 	lea    rdx,[rip+0x8d990]        # 0x4011f0
  373860:	45 8a ce             	mov    r9b,r14b
  373863:	4c 8b c5             	mov    r8,rbp
  373866:	e8 89 dc fa ff       	call   0x3214f4
  37386b:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  373870:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  373874:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  373878:	49 8b e3             	mov    rsp,r11
  37387b:	41 5e                	pop    r14
  37387d:	5f                   	pop    rdi
  37387e:	5e                   	pop    rsi
  37387f:	c3                   	ret
; pdata 0x375abc..0x375c05
  375abc:	40 53                	rex push rbx
  375abe:	55                   	push   rbp
  375abf:	56                   	push   rsi
  375ac0:	57                   	push   rdi
  375ac1:	41 56                	push   r14
  375ac3:	48 83 ec 60          	sub    rsp,0x60
  375ac7:	48 81 3d d6 9e f0 ff 	cmp    QWORD PTR [rip+0xfffffffffff09ed6],0x402402        # 0x27f9a8
  375ace:	02 24 40 00 
  375ad2:	48 8b ea             	mov    rbp,rdx
  375ad5:	4c 8b f1             	mov    r14,rcx
  375ad8:	75 22                	jne    0x375afc
  375ada:	49 8b d1             	mov    rdx,r9
  375add:	49 8b c8             	mov    rcx,r8
  375ae0:	e8 3f e7 fb ff       	call   0x334224
  375ae5:	48 8b c8             	mov    rcx,rax
  375ae8:	e8 7f 03 00 00       	call   0x375e6c
  375aed:	48 8b c8             	mov    rcx,rax
  375af0:	e8 1f 07 00 00       	call   0x376214
  375af5:	48 89 05 ac 9e f0 ff 	mov    QWORD PTR [rip+0xfffffffffff09eac],rax        # 0x27f9a8
  375afc:	8b 05 1e d1 08 00    	mov    eax,DWORD PTR [rip+0x8d11e]        # 0x402c20
  375b02:	a8 01                	test   al,0x1
  375b04:	0f 85 a1 00 00 00    	jne    0x375bab
  375b0a:	83 c8 01             	or     eax,0x1
  375b0d:	48 8d 54 24 32       	lea    rdx,[rsp+0x32]
  375b12:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  375b17:	89 05 03 d1 08 00    	mov    DWORD PTR [rip+0x8d103],eax        # 0x402c20
  375b1d:	e8 7e ff ff ff       	call   0x375aa0
  375b22:	48 8b c8             	mov    rcx,rax
  375b25:	e8 36 fd ff ff       	call   0x375860
  375b2a:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  375b2f:	48 8b f0             	mov    rsi,rax
  375b32:	48 8d 4c 24 31       	lea    rcx,[rsp+0x31]
  375b37:	e8 f4 6b f5 ff       	call   0x2cc730
  375b3c:	48 8b c8             	mov    rcx,rax
  375b3f:	e8 60 81 f5 ff       	call   0x2cdca4
  375b44:	48 8d 54 24 4a       	lea    rdx,[rsp+0x4a]
  375b49:	48 8b f8             	mov    rdi,rax
  375b4c:	48 8d 4c 24 31       	lea    rcx,[rsp+0x31]
  375b51:	e8 5e fe ff ff       	call   0x3759b4
  375b56:	48 8b c8             	mov    rcx,rax
  375b59:	e8 d6 04 00 00       	call   0x376034
  375b5e:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  375b63:	48 8b d8             	mov    rbx,rax
  375b66:	48 8d 4c 24 31       	lea    rcx,[rsp+0x31]
  375b6b:	e8 a4 fd ff ff       	call   0x375914
  375b70:	48 8b c8             	mov    rcx,rax
  375b73:	e8 e8 fc ff ff       	call   0x375860
  375b78:	48 8b c8             	mov    rcx,rax
  375b7b:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  375b82:	ff 
  375b83:	4c 8b cf             	mov    r9,rdi
  375b86:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  375b8b:	41 b8 02 00 00 00    	mov    r8d,0x2
  375b91:	48 8b d3             	mov    rdx,rbx
  375b94:	e8 5b e0 fb ff       	call   0x333bf4
  375b99:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  375b9c:	8b 05 7e d0 08 00    	mov    eax,DWORD PTR [rip+0x8d07e]        # 0x402c20
  375ba2:	4c 89 05 6f d0 08 00 	mov    QWORD PTR [rip+0x8d06f],r8        # 0x402c18
  375ba9:	eb 07                	jmp    0x375bb2
  375bab:	4c 8b 05 66 d0 08 00 	mov    r8,QWORD PTR [rip+0x8d066]        # 0x402c18
  375bb2:	a8 02                	test   al,0x2
  375bb4:	75 1f                	jne    0x375bd5
  375bb6:	48 8b 0d a3 02 06 00 	mov    rcx,QWORD PTR [rip+0x602a3]        # 0x3d5e60
  375bbd:	48 8d 15 6c d0 08 00 	lea    rdx,[rip+0x8d06c]        # 0x402c30
  375bc4:	83 c8 02             	or     eax,0x2
  375bc7:	45 33 c9             	xor    r9d,r9d
  375bca:	89 05 50 d0 08 00    	mov    DWORD PTR [rip+0x8d050],eax        # 0x402c20
  375bd0:	e8 4f 61 f5 ff       	call   0x2cbd24
  375bd5:	48 8b 05 cc 9d f0 ff 	mov    rax,QWORD PTR [rip+0xfffffffffff09dcc]        # 0x27f9a8
  375bdc:	48 8d 15 4d d0 08 00 	lea    rdx,[rip+0x8d04d]        # 0x402c30
  375be3:	48 8b 0d 76 02 06 00 	mov    rcx,QWORD PTR [rip+0x60276]        # 0x3d5e60
  375bea:	4c 8b cd             	mov    r9,rbp
  375bed:	4d 8b c6             	mov    r8,r14
  375bf0:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  375bf5:	e8 56 5e f5 ff       	call   0x2cba50
  375bfa:	48 83 c4 60          	add    rsp,0x60
  375bfe:	41 5e                	pop    r14
  375c00:	5f                   	pop    rdi
  375c01:	5e                   	pop    rsi
  375c02:	5d                   	pop    rbp
  375c03:	5b                   	pop    rbx
  375c04:	c3                   	ret
; pdata 0x375c08..0x375d2f
  375c08:	48 8b c4             	mov    rax,rsp
  375c0b:	53                   	push   rbx
  375c0c:	55                   	push   rbp
  375c0d:	56                   	push   rsi
  375c0e:	57                   	push   rdi
  375c0f:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  375c16:	48 8b f2             	mov    rsi,rdx
  375c19:	48 8d 48 18          	lea    rcx,[rax+0x18]
  375c1d:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  375c22:	41 8b e9             	mov    ebp,r9d
  375c25:	41 8b f8             	mov    edi,r8d
  375c28:	e8 9f fd ff ff       	call   0x3759cc
  375c2d:	48 8b c8             	mov    rcx,rax
  375c30:	e8 d7 03 00 00       	call   0x37600c
  375c35:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  375c3a:	48 8b d8             	mov    rbx,rax
  375c3d:	48 8d 8c 24 c0 00 00 	lea    rcx,[rsp+0xc0]
  375c44:	00 
  375c45:	e8 e6 fc ff ff       	call   0x375930
  375c4a:	48 8b c8             	mov    rcx,rax
  375c4d:	e8 1e fb ff ff       	call   0x375770
  375c52:	48 8b c8             	mov    rcx,rax
  375c55:	44 8b c7             	mov    r8d,edi
  375c58:	48 8b d3             	mov    rdx,rbx
  375c5b:	e8 84 02 00 00       	call   0x375ee4
  375c60:	45 33 c0             	xor    r8d,r8d
  375c63:	4c 8d 48 20          	lea    r9,[rax+0x20]
  375c67:	85 ff                	test   edi,edi
  375c69:	7e 11                	jle    0x375c7c
  375c6b:	42 8a 0c 06          	mov    cl,BYTE PTR [rsi+r8*1]
  375c6f:	42 88 4c 00 20       	mov    BYTE PTR [rax+r8*1+0x20],cl
  375c74:	41 ff c0             	inc    r8d
  375c77:	44 3b c7             	cmp    r8d,edi
  375c7a:	7c ef                	jl     0x375c6b
  375c7c:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
  375c81:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
  375c84:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  375c88:	8b 05 a2 ce 08 00    	mov    eax,DWORD PTR [rip+0x8cea2]        # 0x402b30
  375c8e:	a8 01                	test   al,0x1
  375c90:	75 3d                	jne    0x375ccf
  375c92:	83 c8 01             	or     eax,0x1
  375c95:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  375c9a:	48 8d 8c 24 c0 00 00 	lea    rcx,[rsp+0xc0]
  375ca1:	00 
  375ca2:	89 05 88 ce 08 00    	mov    DWORD PTR [rip+0x8ce88],eax        # 0x402b30
  375ca8:	e8 a7 fd ff ff       	call   0x375a54
  375cad:	48 8b c8             	mov    rcx,rax
  375cb0:	e8 a7 03 00 00       	call   0x37605c
  375cb5:	48 8b c8             	mov    rcx,rax
  375cb8:	e8 97 04 00 00       	call   0x376154
  375cbd:	4c 8b c0             	mov    r8,rax
  375cc0:	48 89 05 61 ce 08 00 	mov    QWORD PTR [rip+0x8ce61],rax        # 0x402b28
  375cc7:	8b 05 63 ce 08 00    	mov    eax,DWORD PTR [rip+0x8ce63]        # 0x402b30
  375ccd:	eb 07                	jmp    0x375cd6
  375ccf:	4c 8b 05 52 ce 08 00 	mov    r8,QWORD PTR [rip+0x8ce52]        # 0x402b28
  375cd6:	a8 02                	test   al,0x2
  375cd8:	75 1f                	jne    0x375cf9
  375cda:	48 8b 0d 7f 01 06 00 	mov    rcx,QWORD PTR [rip+0x6017f]        # 0x3d5e60
  375ce1:	48 8d 15 58 ce 08 00 	lea    rdx,[rip+0x8ce58]        # 0x402b40
  375ce8:	83 c8 02             	or     eax,0x2
  375ceb:	45 33 c9             	xor    r9d,r9d
  375cee:	89 05 3c ce 08 00    	mov    DWORD PTR [rip+0x8ce3c],eax        # 0x402b30
  375cf4:	e8 2b 60 f5 ff       	call   0x2cbd24
  375cf9:	48 8b 0d 60 01 06 00 	mov    rcx,QWORD PTR [rip+0x60160]        # 0x3d5e60
  375d00:	4c 8d 44 24 30       	lea    r8,[rsp+0x30]
  375d05:	44 8b cd             	mov    r9d,ebp
  375d08:	48 8d 15 31 ce 08 00 	lea    rdx,[rip+0x8ce31]        # 0x402b40
  375d0f:	e8 b4 54 fb ff       	call   0x32b1c8
  375d14:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  375d19:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  375d1e:	e8 dd fb ff ff       	call   0x375900
  375d23:	48 81 c4 88 00 00 00 	add    rsp,0x88
  375d2a:	5f                   	pop    rdi
  375d2b:	5e                   	pop    rsi
  375d2c:	5d                   	pop    rbp
  375d2d:	5b                   	pop    rbx
  375d2e:	c3                   	ret
; pdata 0x375e6c..0x375ee4
  375e6c:	40 53                	rex push rbx
  375e6e:	48 83 ec 20          	sub    rsp,0x20
  375e72:	8b 05 d8 ca 08 00    	mov    eax,DWORD PTR [rip+0x8cad8]        # 0x402950
  375e78:	48 8b d9             	mov    rbx,rcx
  375e7b:	a8 01                	test   al,0x1
  375e7d:	75 20                	jne    0x375e9f
  375e7f:	83 c8 01             	or     eax,0x1
  375e82:	89 05 c8 ca 08 00    	mov    DWORD PTR [rip+0x8cac8],eax        # 0x402950
  375e88:	e8 e7 62 f5 ff       	call   0x2cc174
  375e8d:	4c 8b c0             	mov    r8,rax
  375e90:	48 89 05 b1 ca 08 00 	mov    QWORD PTR [rip+0x8cab1],rax        # 0x402948
  375e97:	8b 05 b3 ca 08 00    	mov    eax,DWORD PTR [rip+0x8cab3]        # 0x402950
  375e9d:	eb 07                	jmp    0x375ea6
  375e9f:	4c 8b 05 a2 ca 08 00 	mov    r8,QWORD PTR [rip+0x8caa2]        # 0x402948
  375ea6:	a8 02                	test   al,0x2
  375ea8:	75 1f                	jne    0x375ec9
  375eaa:	48 8b 0d af ff 05 00 	mov    rcx,QWORD PTR [rip+0x5ffaf]        # 0x3d5e60
  375eb1:	48 8d 15 a8 ca 08 00 	lea    rdx,[rip+0x8caa8]        # 0x402960
  375eb8:	83 c8 02             	or     eax,0x2
  375ebb:	45 33 c9             	xor    r9d,r9d
  375ebe:	89 05 8c ca 08 00    	mov    DWORD PTR [rip+0x8ca8c],eax        # 0x402950
  375ec4:	e8 5b 5e f5 ff       	call   0x2cbd24
  375ec9:	48 8b 0d 90 ff 05 00 	mov    rcx,QWORD PTR [rip+0x5ff90]        # 0x3d5e60
  375ed0:	48 8d 15 89 ca 08 00 	lea    rdx,[rip+0x8ca89]        # 0x402960
  375ed7:	4c 8b c3             	mov    r8,rbx
  375eda:	48 83 c4 20          	add    rsp,0x20
  375ede:	5b                   	pop    rbx
  375edf:	e9 18 5b f5 ff       	jmp    0x2cb9fc
; pdata 0x376084..0x376153
  376084:	4c 8b dc             	mov    r11,rsp
  376087:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  37608b:	49 89 73 10          	mov    QWORD PTR [r11+0x10],rsi
  37608f:	57                   	push   rdi
  376090:	48 83 ec 50          	sub    rsp,0x50
  376094:	8b 05 d6 c6 08 00    	mov    eax,DWORD PTR [rip+0x8c6d6]        # 0x402770
  37609a:	48 8b fa             	mov    rdi,rdx
  37609d:	48 8b f1             	mov    rsi,rcx
  3760a0:	a8 01                	test   al,0x1
  3760a2:	75 5d                	jne    0x376101
  3760a4:	83 c8 01             	or     eax,0x1
  3760a7:	49 8d 53 c8          	lea    rdx,[r11-0x38]
  3760ab:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3760af:	89 05 bb c6 08 00    	mov    DWORD PTR [rip+0x8c6bb],eax        # 0x402770
  3760b5:	e8 66 f9 ff ff       	call   0x375a20
  3760ba:	48 8b c8             	mov    rcx,rax
  3760bd:	e8 92 24 f6 ff       	call   0x2d8554
  3760c2:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  3760c7:	48 8b d8             	mov    rbx,rax
  3760ca:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3760cf:	e8 b0 f8 ff ff       	call   0x375984
  3760d4:	48 8b c8             	mov    rcx,rax
  3760d7:	e8 78 24 f6 ff       	call   0x2d8554
  3760dc:	48 8b c8             	mov    rcx,rax
  3760df:	e8 74 4f 05 00       	call   0x3cb058
  3760e4:	48 8b c8             	mov    rcx,rax
  3760e7:	48 8b d3             	mov    rdx,rbx
  3760ea:	e8 e1 4d 05 00       	call   0x3caed0
  3760ef:	4c 8b c0             	mov    r8,rax
  3760f2:	48 89 05 6f c6 08 00 	mov    QWORD PTR [rip+0x8c66f],rax        # 0x402768
  3760f9:	8b 05 71 c6 08 00    	mov    eax,DWORD PTR [rip+0x8c671]        # 0x402770
  3760ff:	eb 07                	jmp    0x376108
  376101:	4c 8b 05 60 c6 08 00 	mov    r8,QWORD PTR [rip+0x8c660]        # 0x402768
  376108:	a8 02                	test   al,0x2
  37610a:	75 1f                	jne    0x37612b
  37610c:	48 8b 0d 4d fd 05 00 	mov    rcx,QWORD PTR [rip+0x5fd4d]        # 0x3d5e60
  376113:	48 8d 15 66 c6 08 00 	lea    rdx,[rip+0x8c666]        # 0x402780
  37611a:	83 c8 02             	or     eax,0x2
  37611d:	45 33 c9             	xor    r9d,r9d
  376120:	89 05 4a c6 08 00    	mov    DWORD PTR [rip+0x8c64a],eax        # 0x402770
  376126:	e8 f9 5b f5 ff       	call   0x2cbd24
  37612b:	48 8b 0d 2e fd 05 00 	mov    rcx,QWORD PTR [rip+0x5fd2e]        # 0x3d5e60
  376132:	48 8d 15 47 c6 08 00 	lea    rdx,[rip+0x8c647]        # 0x402780
  376139:	4c 8b cf             	mov    r9,rdi
  37613c:	4c 8b c6             	mov    r8,rsi
  37613f:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  376144:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
  376149:	48 83 c4 50          	add    rsp,0x50
  37614d:	5f                   	pop    rdi
  37614e:	e9 41 bf f5 ff       	jmp    0x2d2094
; pdata 0x376154..0x376214
  376154:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  376159:	57                   	push   rdi
  37615a:	48 83 ec 50          	sub    rsp,0x50
  37615e:	8b 05 1c c5 08 00    	mov    eax,DWORD PTR [rip+0x8c51c]        # 0x402680
  376164:	48 8b f9             	mov    rdi,rcx
  376167:	a8 01                	test   al,0x1
  376169:	75 5f                	jne    0x3761ca
  37616b:	83 c8 01             	or     eax,0x1
  37616e:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  376173:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  376178:	89 05 02 c5 08 00    	mov    DWORD PTR [rip+0x8c502],eax        # 0x402680
  37617e:	e8 b5 f8 ff ff       	call   0x375a38
  376183:	48 8b c8             	mov    rcx,rax
  376186:	e8 b1 d4 f6 ff       	call   0x2e363c
  37618b:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  376190:	48 8b d8             	mov    rbx,rax
  376193:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  376198:	e8 ff f7 ff ff       	call   0x37599c
  37619d:	48 8b c8             	mov    rcx,rax
  3761a0:	e8 af 23 f6 ff       	call   0x2d8554
  3761a5:	48 8b c8             	mov    rcx,rax
  3761a8:	e8 ab 4e 05 00       	call   0x3cb058
  3761ad:	48 8b c8             	mov    rcx,rax
  3761b0:	48 8b d3             	mov    rdx,rbx
  3761b3:	e8 18 4d 05 00       	call   0x3caed0
  3761b8:	4c 8b c0             	mov    r8,rax
  3761bb:	48 89 05 b6 c4 08 00 	mov    QWORD PTR [rip+0x8c4b6],rax        # 0x402678
  3761c2:	8b 05 b8 c4 08 00    	mov    eax,DWORD PTR [rip+0x8c4b8]        # 0x402680
  3761c8:	eb 07                	jmp    0x3761d1
  3761ca:	4c 8b 05 a7 c4 08 00 	mov    r8,QWORD PTR [rip+0x8c4a7]        # 0x402678
  3761d1:	a8 02                	test   al,0x2
  3761d3:	75 1f                	jne    0x3761f4
  3761d5:	48 8b 0d 84 fc 05 00 	mov    rcx,QWORD PTR [rip+0x5fc84]        # 0x3d5e60
  3761dc:	48 8d 15 ad c4 08 00 	lea    rdx,[rip+0x8c4ad]        # 0x402690
  3761e3:	83 c8 02             	or     eax,0x2
  3761e6:	45 33 c9             	xor    r9d,r9d
  3761e9:	89 05 91 c4 08 00    	mov    DWORD PTR [rip+0x8c491],eax        # 0x402680
  3761ef:	e8 30 5b f5 ff       	call   0x2cbd24
  3761f4:	48 8b 0d 65 fc 05 00 	mov    rcx,QWORD PTR [rip+0x5fc65]        # 0x3d5e60
  3761fb:	48 8d 15 8e c4 08 00 	lea    rdx,[rip+0x8c48e]        # 0x402690
  376202:	4c 8b c7             	mov    r8,rdi
  376205:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  37620a:	48 83 c4 50          	add    rsp,0x50
  37620e:	5f                   	pop    rdi
  37620f:	e9 e8 57 f5 ff       	jmp    0x2cb9fc
; pdata 0x376214..0x37628c
  376214:	40 53                	rex push rbx
  376216:	48 83 ec 20          	sub    rsp,0x20
  37621a:	8b 05 40 c6 08 00    	mov    eax,DWORD PTR [rip+0x8c640]        # 0x402860
  376220:	48 8b d9             	mov    rbx,rcx
  376223:	a8 01                	test   al,0x1
  376225:	75 20                	jne    0x376247
  376227:	83 c8 01             	or     eax,0x1
  37622a:	89 05 30 c6 08 00    	mov    DWORD PTR [rip+0x8c630],eax        # 0x402860
  376230:	e8 37 5f f5 ff       	call   0x2cc16c
  376235:	4c 8b c0             	mov    r8,rax
  376238:	48 89 05 19 c6 08 00 	mov    QWORD PTR [rip+0x8c619],rax        # 0x402858
  37623f:	8b 05 1b c6 08 00    	mov    eax,DWORD PTR [rip+0x8c61b]        # 0x402860
  376245:	eb 07                	jmp    0x37624e
  376247:	4c 8b 05 0a c6 08 00 	mov    r8,QWORD PTR [rip+0x8c60a]        # 0x402858
  37624e:	a8 02                	test   al,0x2
  376250:	75 1f                	jne    0x376271
  376252:	48 8b 0d 07 fc 05 00 	mov    rcx,QWORD PTR [rip+0x5fc07]        # 0x3d5e60
  376259:	48 8d 15 10 c6 08 00 	lea    rdx,[rip+0x8c610]        # 0x402870
  376260:	83 c8 02             	or     eax,0x2
  376263:	45 33 c9             	xor    r9d,r9d
  376266:	89 05 f4 c5 08 00    	mov    DWORD PTR [rip+0x8c5f4],eax        # 0x402860
  37626c:	e8 b3 5a f5 ff       	call   0x2cbd24
  376271:	48 8b 0d e8 fb 05 00 	mov    rcx,QWORD PTR [rip+0x5fbe8]        # 0x3d5e60
  376278:	48 8d 15 f1 c5 08 00 	lea    rdx,[rip+0x8c5f1]        # 0x402870
  37627f:	4c 8b c3             	mov    r8,rbx
  376282:	48 83 c4 20          	add    rsp,0x20
  376286:	5b                   	pop    rbx
  376287:	e9 70 57 f5 ff       	jmp    0x2cb9fc
; pdata 0x3af01c..0x3af0ba
  3af01c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af021:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3af026:	57                   	push   rdi
  3af027:	48 83 ec 30          	sub    rsp,0x30
  3af02b:	8b 05 cf e9 05 00    	mov    eax,DWORD PTR [rip+0x5e9cf]        # 0x40da00
  3af031:	41 8a d8             	mov    bl,r8b
  3af034:	40 8a fa             	mov    dil,dl
  3af037:	48 8b f1             	mov    rsi,rcx
  3af03a:	a8 01                	test   al,0x1
  3af03c:	75 25                	jne    0x3af063
  3af03e:	83 c8 01             	or     eax,0x1
  3af041:	b9 e5 ad e3 c1       	mov    ecx,0xc1e3ade5
  3af046:	89 05 b4 e9 05 00    	mov    DWORD PTR [rip+0x5e9b4],eax        # 0x40da00
  3af04c:	e8 bf 4c f8 ff       	call   0x333d10
  3af051:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af054:	8b 05 a6 e9 05 00    	mov    eax,DWORD PTR [rip+0x5e9a6]        # 0x40da00
  3af05a:	4c 89 05 97 e9 05 00 	mov    QWORD PTR [rip+0x5e997],r8        # 0x40d9f8
  3af061:	eb 07                	jmp    0x3af06a
  3af063:	4c 8b 05 8e e9 05 00 	mov    r8,QWORD PTR [rip+0x5e98e]        # 0x40d9f8
  3af06a:	a8 02                	test   al,0x2
  3af06c:	75 1f                	jne    0x3af08d
  3af06e:	48 8b 0d eb 6d 02 00 	mov    rcx,QWORD PTR [rip+0x26deb]        # 0x3d5e60
  3af075:	48 8d 15 94 e9 05 00 	lea    rdx,[rip+0x5e994]        # 0x40da10
  3af07c:	83 c8 02             	or     eax,0x2
  3af07f:	45 33 c9             	xor    r9d,r9d
  3af082:	89 05 78 e9 05 00    	mov    DWORD PTR [rip+0x5e978],eax        # 0x40da00
  3af088:	e8 97 cc f1 ff       	call   0x2cbd24
  3af08d:	48 8b 0d cc 6d 02 00 	mov    rcx,QWORD PTR [rip+0x26dcc]        # 0x3d5e60
  3af094:	48 8d 15 75 e9 05 00 	lea    rdx,[rip+0x5e975]        # 0x40da10
  3af09b:	44 8a cf             	mov    r9b,dil
  3af09e:	88 5c 24 20          	mov    BYTE PTR [rsp+0x20],bl
  3af0a2:	4c 8b c6             	mov    r8,rsi
  3af0a5:	e8 0a 10 00 00       	call   0x3b00b4
  3af0aa:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  3af0af:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  3af0b4:	48 83 c4 30          	add    rsp,0x30
  3af0b8:	5f                   	pop    rdi
  3af0b9:	c3                   	ret
; pdata 0x3af0bc..0x3af139
  3af0bc:	40 53                	rex push rbx
  3af0be:	48 83 ec 20          	sub    rsp,0x20
  3af0c2:	8b 05 08 fd 05 00    	mov    eax,DWORD PTR [rip+0x5fd08]        # 0x40edd0
  3af0c8:	48 8b d9             	mov    rbx,rcx
  3af0cb:	a8 01                	test   al,0x1
  3af0cd:	75 25                	jne    0x3af0f4
  3af0cf:	83 c8 01             	or     eax,0x1
  3af0d2:	b9 94 1a 56 13       	mov    ecx,0x13561a94
  3af0d7:	89 05 f3 fc 05 00    	mov    DWORD PTR [rip+0x5fcf3],eax        # 0x40edd0
  3af0dd:	e8 2e 4c f8 ff       	call   0x333d10
  3af0e2:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af0e5:	8b 05 e5 fc 05 00    	mov    eax,DWORD PTR [rip+0x5fce5]        # 0x40edd0
  3af0eb:	4c 89 05 d6 fc 05 00 	mov    QWORD PTR [rip+0x5fcd6],r8        # 0x40edc8
  3af0f2:	eb 07                	jmp    0x3af0fb
  3af0f4:	4c 8b 05 cd fc 05 00 	mov    r8,QWORD PTR [rip+0x5fccd]        # 0x40edc8
  3af0fb:	a8 02                	test   al,0x2
  3af0fd:	75 1f                	jne    0x3af11e
  3af0ff:	48 8b 0d 5a 6d 02 00 	mov    rcx,QWORD PTR [rip+0x26d5a]        # 0x3d5e60
  3af106:	48 8d 15 d3 fc 05 00 	lea    rdx,[rip+0x5fcd3]        # 0x40ede0
  3af10d:	83 c8 02             	or     eax,0x2
  3af110:	45 33 c9             	xor    r9d,r9d
  3af113:	89 05 b7 fc 05 00    	mov    DWORD PTR [rip+0x5fcb7],eax        # 0x40edd0
  3af119:	e8 06 cc f1 ff       	call   0x2cbd24
  3af11e:	48 8b 0d 3b 6d 02 00 	mov    rcx,QWORD PTR [rip+0x26d3b]        # 0x3d5e60
  3af125:	48 8d 15 b4 fc 05 00 	lea    rdx,[rip+0x5fcb4]        # 0x40ede0
  3af12c:	4c 8b c3             	mov    r8,rbx
  3af12f:	48 83 c4 20          	add    rsp,0x20
  3af133:	5b                   	pop    rbx
  3af134:	e9 c3 c8 f1 ff       	jmp    0x2cb9fc
; pdata 0x3af13c..0x3af1c7
  3af13c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af141:	57                   	push   rdi
  3af142:	48 83 ec 20          	sub    rsp,0x20
  3af146:	8b 05 04 f5 05 00    	mov    eax,DWORD PTR [rip+0x5f504]        # 0x40e650
  3af14c:	8a da                	mov    bl,dl
  3af14e:	48 8b f9             	mov    rdi,rcx
  3af151:	a8 01                	test   al,0x1
  3af153:	75 25                	jne    0x3af17a
  3af155:	83 c8 01             	or     eax,0x1
  3af158:	b9 f4 1f 19 c5       	mov    ecx,0xc5191ff4
  3af15d:	89 05 ed f4 05 00    	mov    DWORD PTR [rip+0x5f4ed],eax        # 0x40e650
  3af163:	e8 a8 4b f8 ff       	call   0x333d10
  3af168:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af16b:	8b 05 df f4 05 00    	mov    eax,DWORD PTR [rip+0x5f4df]        # 0x40e650
  3af171:	4c 89 05 d0 f4 05 00 	mov    QWORD PTR [rip+0x5f4d0],r8        # 0x40e648
  3af178:	eb 07                	jmp    0x3af181
  3af17a:	4c 8b 05 c7 f4 05 00 	mov    r8,QWORD PTR [rip+0x5f4c7]        # 0x40e648
  3af181:	a8 02                	test   al,0x2
  3af183:	75 1f                	jne    0x3af1a4
  3af185:	48 8b 0d d4 6c 02 00 	mov    rcx,QWORD PTR [rip+0x26cd4]        # 0x3d5e60
  3af18c:	48 8d 15 cd f4 05 00 	lea    rdx,[rip+0x5f4cd]        # 0x40e660
  3af193:	83 c8 02             	or     eax,0x2
  3af196:	45 33 c9             	xor    r9d,r9d
  3af199:	89 05 b1 f4 05 00    	mov    DWORD PTR [rip+0x5f4b1],eax        # 0x40e650
  3af19f:	e8 80 cb f1 ff       	call   0x2cbd24
  3af1a4:	48 8b 0d b5 6c 02 00 	mov    rcx,QWORD PTR [rip+0x26cb5]        # 0x3d5e60
  3af1ab:	48 8d 15 ae f4 05 00 	lea    rdx,[rip+0x5f4ae]        # 0x40e660
  3af1b2:	44 8a cb             	mov    r9b,bl
  3af1b5:	4c 8b c7             	mov    r8,rdi
  3af1b8:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3af1bd:	48 83 c4 20          	add    rsp,0x20
  3af1c1:	5f                   	pop    rdi
  3af1c2:	e9 2d 23 f7 ff       	jmp    0x3214f4
; pdata 0x3af1c8..0x3af262
  3af1c8:	40 53                	rex push rbx
  3af1ca:	55                   	push   rbp
  3af1cb:	56                   	push   rsi
  3af1cc:	57                   	push   rdi
  3af1cd:	48 83 ec 38          	sub    rsp,0x38
  3af1d1:	8b 05 49 f7 05 00    	mov    eax,DWORD PTR [rip+0x5f749]        # 0x40e920
  3af1d7:	49 8b d9             	mov    rbx,r9
  3af1da:	41 8a f8             	mov    dil,r8b
  3af1dd:	40 8a f2             	mov    sil,dl
  3af1e0:	48 8b e9             	mov    rbp,rcx
  3af1e3:	a8 01                	test   al,0x1
  3af1e5:	75 25                	jne    0x3af20c
  3af1e7:	83 c8 01             	or     eax,0x1
  3af1ea:	b9 9c 72 6f d5       	mov    ecx,0xd56f729c
  3af1ef:	89 05 2b f7 05 00    	mov    DWORD PTR [rip+0x5f72b],eax        # 0x40e920
  3af1f5:	e8 16 4b f8 ff       	call   0x333d10
  3af1fa:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af1fd:	8b 05 1d f7 05 00    	mov    eax,DWORD PTR [rip+0x5f71d]        # 0x40e920
  3af203:	4c 89 05 0e f7 05 00 	mov    QWORD PTR [rip+0x5f70e],r8        # 0x40e918
  3af20a:	eb 07                	jmp    0x3af213
  3af20c:	4c 8b 05 05 f7 05 00 	mov    r8,QWORD PTR [rip+0x5f705]        # 0x40e918
  3af213:	a8 02                	test   al,0x2
  3af215:	75 1f                	jne    0x3af236
  3af217:	48 8b 0d 42 6c 02 00 	mov    rcx,QWORD PTR [rip+0x26c42]        # 0x3d5e60
  3af21e:	48 8d 15 0b f7 05 00 	lea    rdx,[rip+0x5f70b]        # 0x40e930
  3af225:	83 c8 02             	or     eax,0x2
  3af228:	45 33 c9             	xor    r9d,r9d
  3af22b:	89 05 ef f6 05 00    	mov    DWORD PTR [rip+0x5f6ef],eax        # 0x40e920
  3af231:	e8 ee ca f1 ff       	call   0x2cbd24
  3af236:	48 8b 0d 23 6c 02 00 	mov    rcx,QWORD PTR [rip+0x26c23]        # 0x3d5e60
  3af23d:	48 8d 15 ec f6 05 00 	lea    rdx,[rip+0x5f6ec]        # 0x40e930
  3af244:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  3af249:	44 8a ce             	mov    r9b,sil
  3af24c:	4c 8b c5             	mov    r8,rbp
  3af24f:	40 88 7c 24 20       	mov    BYTE PTR [rsp+0x20],dil
  3af254:	e8 37 31 f7 ff       	call   0x322390
  3af259:	48 83 c4 38          	add    rsp,0x38
  3af25d:	5f                   	pop    rdi
  3af25e:	5e                   	pop    rsi
  3af25f:	5d                   	pop    rbp
  3af260:	5b                   	pop    rbx
  3af261:	c3                   	ret
; pdata 0x3af264..0x3af2e1
  3af264:	40 53                	rex push rbx
  3af266:	48 83 ec 20          	sub    rsp,0x20
  3af26a:	8b 05 f0 f2 05 00    	mov    eax,DWORD PTR [rip+0x5f2f0]        # 0x40e560
  3af270:	48 8b d9             	mov    rbx,rcx
  3af273:	a8 01                	test   al,0x1
  3af275:	75 25                	jne    0x3af29c
  3af277:	83 c8 01             	or     eax,0x1
  3af27a:	b9 a5 c0 4f 86       	mov    ecx,0x864fc0a5
  3af27f:	89 05 db f2 05 00    	mov    DWORD PTR [rip+0x5f2db],eax        # 0x40e560
  3af285:	e8 86 4a f8 ff       	call   0x333d10
  3af28a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af28d:	8b 05 cd f2 05 00    	mov    eax,DWORD PTR [rip+0x5f2cd]        # 0x40e560
  3af293:	4c 89 05 be f2 05 00 	mov    QWORD PTR [rip+0x5f2be],r8        # 0x40e558
  3af29a:	eb 07                	jmp    0x3af2a3
  3af29c:	4c 8b 05 b5 f2 05 00 	mov    r8,QWORD PTR [rip+0x5f2b5]        # 0x40e558
  3af2a3:	a8 02                	test   al,0x2
  3af2a5:	75 1f                	jne    0x3af2c6
  3af2a7:	48 8b 0d b2 6b 02 00 	mov    rcx,QWORD PTR [rip+0x26bb2]        # 0x3d5e60
  3af2ae:	48 8d 15 bb f2 05 00 	lea    rdx,[rip+0x5f2bb]        # 0x40e570
  3af2b5:	83 c8 02             	or     eax,0x2
  3af2b8:	45 33 c9             	xor    r9d,r9d
  3af2bb:	89 05 9f f2 05 00    	mov    DWORD PTR [rip+0x5f29f],eax        # 0x40e560
  3af2c1:	e8 5e ca f1 ff       	call   0x2cbd24
  3af2c6:	48 8b 0d 93 6b 02 00 	mov    rcx,QWORD PTR [rip+0x26b93]        # 0x3d5e60
  3af2cd:	48 8d 15 9c f2 05 00 	lea    rdx,[rip+0x5f29c]        # 0x40e570
  3af2d4:	4c 8b c3             	mov    r8,rbx
  3af2d7:	48 83 c4 20          	add    rsp,0x20
  3af2db:	5b                   	pop    rbx
  3af2dc:	e9 1b c7 f1 ff       	jmp    0x2cb9fc
; pdata 0x3af2e4..0x3af3a1
  3af2e4:	40 53                	rex push rbx
  3af2e6:	55                   	push   rbp
  3af2e7:	56                   	push   rsi
  3af2e8:	57                   	push   rdi
  3af2e9:	48 83 ec 58          	sub    rsp,0x58
  3af2ed:	8b 05 ed f9 05 00    	mov    eax,DWORD PTR [rip+0x5f9ed]        # 0x40ece0
  3af2f3:	49 8b d9             	mov    rbx,r9
  3af2f6:	49 8b f8             	mov    rdi,r8
  3af2f9:	48 8b f2             	mov    rsi,rdx
  3af2fc:	48 8b e9             	mov    rbp,rcx
  3af2ff:	a8 01                	test   al,0x1
  3af301:	75 25                	jne    0x3af328
  3af303:	83 c8 01             	or     eax,0x1
  3af306:	b9 1f 04 50 5e       	mov    ecx,0x5e50041f
  3af30b:	89 05 cf f9 05 00    	mov    DWORD PTR [rip+0x5f9cf],eax        # 0x40ece0
  3af311:	e8 fa 49 f8 ff       	call   0x333d10
  3af316:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af319:	8b 05 c1 f9 05 00    	mov    eax,DWORD PTR [rip+0x5f9c1]        # 0x40ece0
  3af31f:	4c 89 05 b2 f9 05 00 	mov    QWORD PTR [rip+0x5f9b2],r8        # 0x40ecd8
  3af326:	eb 07                	jmp    0x3af32f
  3af328:	4c 8b 05 a9 f9 05 00 	mov    r8,QWORD PTR [rip+0x5f9a9]        # 0x40ecd8
  3af32f:	a8 02                	test   al,0x2
  3af331:	75 1f                	jne    0x3af352
  3af333:	48 8b 0d 26 6b 02 00 	mov    rcx,QWORD PTR [rip+0x26b26]        # 0x3d5e60
  3af33a:	48 8d 15 af f9 05 00 	lea    rdx,[rip+0x5f9af]        # 0x40ecf0
  3af341:	83 c8 02             	or     eax,0x2
  3af344:	45 33 c9             	xor    r9d,r9d
  3af347:	89 05 93 f9 05 00    	mov    DWORD PTR [rip+0x5f993],eax        # 0x40ece0
  3af34d:	e8 d2 c9 f1 ff       	call   0x2cbd24
  3af352:	48 8b 84 24 b0 00 00 	mov    rax,QWORD PTR [rsp+0xb0]
  3af359:	00 
  3af35a:	48 8d 15 8f f9 05 00 	lea    rdx,[rip+0x5f98f]        # 0x40ecf0
  3af361:	48 8b 0d f8 6a 02 00 	mov    rcx,QWORD PTR [rip+0x26af8]        # 0x3d5e60
  3af368:	4c 8b ce             	mov    r9,rsi
  3af36b:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  3af370:	4c 8b c5             	mov    r8,rbp
  3af373:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [rsp+0xa8]
  3af37a:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  3af37e:	8b 84 24 a0 00 00 00 	mov    eax,DWORD PTR [rsp+0xa0]
  3af385:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  3af389:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  3af38e:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  3af393:	e8 0c 0a 00 00       	call   0x3afda4
  3af398:	48 83 c4 58          	add    rsp,0x58
  3af39c:	5f                   	pop    rdi
  3af39d:	5e                   	pop    rsi
  3af39e:	5d                   	pop    rbp
  3af39f:	5b                   	pop    rbx
  3af3a0:	c3                   	ret
; pdata 0x3af3a4..0x3af421
  3af3a4:	40 53                	rex push rbx
  3af3a6:	48 83 ec 20          	sub    rsp,0x20
  3af3aa:	8b 05 40 e9 05 00    	mov    eax,DWORD PTR [rip+0x5e940]        # 0x40dcf0
  3af3b0:	48 8b d9             	mov    rbx,rcx
  3af3b3:	a8 01                	test   al,0x1
  3af3b5:	75 25                	jne    0x3af3dc
  3af3b7:	83 c8 01             	or     eax,0x1
  3af3ba:	b9 8f 1e 72 b5       	mov    ecx,0xb5721e8f
  3af3bf:	89 05 2b e9 05 00    	mov    DWORD PTR [rip+0x5e92b],eax        # 0x40dcf0
  3af3c5:	e8 46 49 f8 ff       	call   0x333d10
  3af3ca:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af3cd:	8b 05 1d e9 05 00    	mov    eax,DWORD PTR [rip+0x5e91d]        # 0x40dcf0
  3af3d3:	4c 89 05 0e e9 05 00 	mov    QWORD PTR [rip+0x5e90e],r8        # 0x40dce8
  3af3da:	eb 07                	jmp    0x3af3e3
  3af3dc:	4c 8b 05 05 e9 05 00 	mov    r8,QWORD PTR [rip+0x5e905]        # 0x40dce8
  3af3e3:	a8 02                	test   al,0x2
  3af3e5:	75 1f                	jne    0x3af406
  3af3e7:	48 8b 0d 72 6a 02 00 	mov    rcx,QWORD PTR [rip+0x26a72]        # 0x3d5e60
  3af3ee:	48 8d 15 0b e9 05 00 	lea    rdx,[rip+0x5e90b]        # 0x40dd00
  3af3f5:	83 c8 02             	or     eax,0x2
  3af3f8:	45 33 c9             	xor    r9d,r9d
  3af3fb:	89 05 ef e8 05 00    	mov    DWORD PTR [rip+0x5e8ef],eax        # 0x40dcf0
  3af401:	e8 1e c9 f1 ff       	call   0x2cbd24
  3af406:	48 8b 0d 53 6a 02 00 	mov    rcx,QWORD PTR [rip+0x26a53]        # 0x3d5e60
  3af40d:	48 8d 15 ec e8 05 00 	lea    rdx,[rip+0x5e8ec]        # 0x40dd00
  3af414:	4c 8b c3             	mov    r8,rbx
  3af417:	48 83 c4 20          	add    rsp,0x20
  3af41b:	5b                   	pop    rbx
  3af41c:	e9 db c5 f1 ff       	jmp    0x2cb9fc
; pdata 0x3af424..0x3af549
  3af424:	4c 8b dc             	mov    r11,rsp
  3af427:	53                   	push   rbx
  3af428:	55                   	push   rbp
  3af429:	56                   	push   rsi
  3af42a:	57                   	push   rdi
  3af42b:	41 56                	push   r14
  3af42d:	41 57                	push   r15
  3af42f:	48 83 ec 68          	sub    rsp,0x68
  3af433:	8b 05 37 f0 05 00    	mov    eax,DWORD PTR [rip+0x5f037]        # 0x40e470
  3af439:	49 8b e8             	mov    rbp,r8
  3af43c:	4c 8b f2             	mov    r14,rdx
  3af43f:	4c 8b f9             	mov    r15,rcx
  3af442:	a8 01                	test   al,0x1
  3af444:	0f 85 a2 00 00 00    	jne    0x3af4ec
  3af44a:	83 c8 01             	or     eax,0x1
  3af44d:	49 8d 53 99          	lea    rdx,[r11-0x67]
  3af451:	49 8d 4b 20          	lea    rcx,[r11+0x20]
  3af455:	89 05 15 f0 05 00    	mov    DWORD PTR [rip+0x5f015],eax        # 0x40e470
  3af45b:	e8 ac 22 00 00       	call   0x3b170c
  3af460:	48 8b c8             	mov    rcx,rax
  3af463:	e8 a4 e9 f1 ff       	call   0x2cde0c
  3af468:	48 8d 94 24 b8 00 00 	lea    rdx,[rsp+0xb8]
  3af46f:	00 
  3af470:	48 8b f0             	mov    rsi,rax
  3af473:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af478:	e8 b3 d2 f1 ff       	call   0x2cc730
  3af47d:	48 8b c8             	mov    rcx,rax
  3af480:	e8 1f e8 f1 ff       	call   0x2cdca4
  3af485:	48 8d 54 24 49       	lea    rdx,[rsp+0x49]
  3af48a:	48 8b f8             	mov    rdi,rax
  3af48d:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af492:	e8 55 1d 00 00       	call   0x3b11ec
  3af497:	48 8b c8             	mov    rcx,rax
  3af49a:	e8 cd e8 f1 ff       	call   0x2cdd6c
  3af49f:	48 8d 54 24 3d       	lea    rdx,[rsp+0x3d]
  3af4a4:	48 8b d8             	mov    rbx,rax
  3af4a7:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af4ac:	e8 53 17 00 00       	call   0x3b0c04
  3af4b1:	48 8b c8             	mov    rcx,rax
  3af4b4:	e8 53 e9 f1 ff       	call   0x2cde0c
  3af4b9:	48 8b c8             	mov    rcx,rax
  3af4bc:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3af4c3:	ff 
  3af4c4:	4c 8b cf             	mov    r9,rdi
  3af4c7:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3af4cc:	41 b8 02 00 00 00    	mov    r8d,0x2
  3af4d2:	48 8b d3             	mov    rdx,rbx
  3af4d5:	e8 1a 47 f8 ff       	call   0x333bf4
  3af4da:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af4dd:	8b 05 8d ef 05 00    	mov    eax,DWORD PTR [rip+0x5ef8d]        # 0x40e470
  3af4e3:	4c 89 05 7e ef 05 00 	mov    QWORD PTR [rip+0x5ef7e],r8        # 0x40e468
  3af4ea:	eb 07                	jmp    0x3af4f3
  3af4ec:	4c 8b 05 75 ef 05 00 	mov    r8,QWORD PTR [rip+0x5ef75]        # 0x40e468
  3af4f3:	a8 02                	test   al,0x2
  3af4f5:	75 1f                	jne    0x3af516
  3af4f7:	48 8b 0d 62 69 02 00 	mov    rcx,QWORD PTR [rip+0x26962]        # 0x3d5e60
  3af4fe:	48 8d 15 7b ef 05 00 	lea    rdx,[rip+0x5ef7b]        # 0x40e480
  3af505:	83 c8 02             	or     eax,0x2
  3af508:	45 33 c9             	xor    r9d,r9d
  3af50b:	89 05 5f ef 05 00    	mov    DWORD PTR [rip+0x5ef5f],eax        # 0x40e470
  3af511:	e8 0e c8 f1 ff       	call   0x2cbd24
  3af516:	49 8b ce             	mov    rcx,r14
  3af519:	e8 be f0 f1 ff       	call   0x2ce5dc
  3af51e:	48 8b 0d 3b 69 02 00 	mov    rcx,QWORD PTR [rip+0x2693b]        # 0x3d5e60
  3af525:	48 8d 15 54 ef 05 00 	lea    rdx,[rip+0x5ef54]        # 0x40e480
  3af52c:	4c 8b c8             	mov    r9,rax
  3af52f:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
  3af534:	4d 8b c7             	mov    r8,r15
  3af537:	e8 14 c5 f1 ff       	call   0x2cba50
  3af53c:	48 83 c4 68          	add    rsp,0x68
  3af540:	41 5f                	pop    r15
  3af542:	41 5e                	pop    r14
  3af544:	5f                   	pop    rdi
  3af545:	5e                   	pop    rsi
  3af546:	5d                   	pop    rbp
  3af547:	5b                   	pop    rbx
  3af548:	c3                   	ret
; pdata 0x3af54c..0x3af671
  3af54c:	4c 8b dc             	mov    r11,rsp
  3af54f:	53                   	push   rbx
  3af550:	55                   	push   rbp
  3af551:	56                   	push   rsi
  3af552:	57                   	push   rdi
  3af553:	41 56                	push   r14
  3af555:	41 57                	push   r15
  3af557:	48 83 ec 68          	sub    rsp,0x68
  3af55b:	8b 05 1f ee 05 00    	mov    eax,DWORD PTR [rip+0x5ee1f]        # 0x40e380
  3af561:	49 8b e8             	mov    rbp,r8
  3af564:	4c 8b f2             	mov    r14,rdx
  3af567:	4c 8b f9             	mov    r15,rcx
  3af56a:	a8 01                	test   al,0x1
  3af56c:	0f 85 a2 00 00 00    	jne    0x3af614
  3af572:	83 c8 01             	or     eax,0x1
  3af575:	49 8d 53 99          	lea    rdx,[r11-0x67]
  3af579:	49 8d 4b 20          	lea    rcx,[r11+0x20]
  3af57d:	89 05 fd ed 05 00    	mov    DWORD PTR [rip+0x5edfd],eax        # 0x40e380
  3af583:	e8 a0 21 00 00       	call   0x3b1728
  3af588:	48 8b c8             	mov    rcx,rax
  3af58b:	e8 7c e8 f1 ff       	call   0x2cde0c
  3af590:	48 8d 94 24 b8 00 00 	lea    rdx,[rsp+0xb8]
  3af597:	00 
  3af598:	48 8b f0             	mov    rsi,rax
  3af59b:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af5a0:	e8 8b d1 f1 ff       	call   0x2cc730
  3af5a5:	48 8b c8             	mov    rcx,rax
  3af5a8:	e8 f7 e6 f1 ff       	call   0x2cdca4
  3af5ad:	48 8d 54 24 49       	lea    rdx,[rsp+0x49]
  3af5b2:	48 8b f8             	mov    rdi,rax
  3af5b5:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af5ba:	e8 45 1c 00 00       	call   0x3b1204
  3af5bf:	48 8b c8             	mov    rcx,rax
  3af5c2:	e8 a5 e7 f1 ff       	call   0x2cdd6c
  3af5c7:	48 8d 54 24 3d       	lea    rdx,[rsp+0x3d]
  3af5cc:	48 8b d8             	mov    rbx,rax
  3af5cf:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3af5d4:	e8 47 16 00 00       	call   0x3b0c20
  3af5d9:	48 8b c8             	mov    rcx,rax
  3af5dc:	e8 2b e8 f1 ff       	call   0x2cde0c
  3af5e1:	48 8b c8             	mov    rcx,rax
  3af5e4:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3af5eb:	ff 
  3af5ec:	4c 8b cf             	mov    r9,rdi
  3af5ef:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3af5f4:	41 b8 02 00 00 00    	mov    r8d,0x2
  3af5fa:	48 8b d3             	mov    rdx,rbx
  3af5fd:	e8 f2 45 f8 ff       	call   0x333bf4
  3af602:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af605:	8b 05 75 ed 05 00    	mov    eax,DWORD PTR [rip+0x5ed75]        # 0x40e380
  3af60b:	4c 89 05 66 ed 05 00 	mov    QWORD PTR [rip+0x5ed66],r8        # 0x40e378
  3af612:	eb 07                	jmp    0x3af61b
  3af614:	4c 8b 05 5d ed 05 00 	mov    r8,QWORD PTR [rip+0x5ed5d]        # 0x40e378
  3af61b:	a8 02                	test   al,0x2
  3af61d:	75 1f                	jne    0x3af63e
  3af61f:	48 8b 0d 3a 68 02 00 	mov    rcx,QWORD PTR [rip+0x2683a]        # 0x3d5e60
  3af626:	48 8d 15 63 ed 05 00 	lea    rdx,[rip+0x5ed63]        # 0x40e390
  3af62d:	83 c8 02             	or     eax,0x2
  3af630:	45 33 c9             	xor    r9d,r9d
  3af633:	89 05 47 ed 05 00    	mov    DWORD PTR [rip+0x5ed47],eax        # 0x40e380
  3af639:	e8 e6 c6 f1 ff       	call   0x2cbd24
  3af63e:	49 8b ce             	mov    rcx,r14
  3af641:	e8 96 ef f1 ff       	call   0x2ce5dc
  3af646:	48 8b 0d 13 68 02 00 	mov    rcx,QWORD PTR [rip+0x26813]        # 0x3d5e60
  3af64d:	48 8d 15 3c ed 05 00 	lea    rdx,[rip+0x5ed3c]        # 0x40e390
  3af654:	4c 8b c8             	mov    r9,rax
  3af657:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
  3af65c:	4d 8b c7             	mov    r8,r15
  3af65f:	e8 ec c3 f1 ff       	call   0x2cba50
  3af664:	48 83 c4 68          	add    rsp,0x68
  3af668:	41 5f                	pop    r15
  3af66a:	41 5e                	pop    r14
  3af66c:	5f                   	pop    rdi
  3af66d:	5e                   	pop    rsi
  3af66e:	5d                   	pop    rbp
  3af66f:	5b                   	pop    rbx
  3af670:	c3                   	ret
; pdata 0x3af674..0x3af6f1
  3af674:	40 53                	rex push rbx
  3af676:	48 83 ec 20          	sub    rsp,0x20
  3af67a:	8b 05 50 e8 05 00    	mov    eax,DWORD PTR [rip+0x5e850]        # 0x40ded0
  3af680:	48 8b d9             	mov    rbx,rcx
  3af683:	a8 01                	test   al,0x1
  3af685:	75 25                	jne    0x3af6ac
  3af687:	83 c8 01             	or     eax,0x1
  3af68a:	b9 09 5e 72 04       	mov    ecx,0x4725e09
  3af68f:	89 05 3b e8 05 00    	mov    DWORD PTR [rip+0x5e83b],eax        # 0x40ded0
  3af695:	e8 76 46 f8 ff       	call   0x333d10
  3af69a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af69d:	8b 05 2d e8 05 00    	mov    eax,DWORD PTR [rip+0x5e82d]        # 0x40ded0
  3af6a3:	4c 89 05 1e e8 05 00 	mov    QWORD PTR [rip+0x5e81e],r8        # 0x40dec8
  3af6aa:	eb 07                	jmp    0x3af6b3
  3af6ac:	4c 8b 05 15 e8 05 00 	mov    r8,QWORD PTR [rip+0x5e815]        # 0x40dec8
  3af6b3:	a8 02                	test   al,0x2
  3af6b5:	75 1f                	jne    0x3af6d6
  3af6b7:	48 8b 0d a2 67 02 00 	mov    rcx,QWORD PTR [rip+0x267a2]        # 0x3d5e60
  3af6be:	48 8d 15 1b e8 05 00 	lea    rdx,[rip+0x5e81b]        # 0x40dee0
  3af6c5:	83 c8 02             	or     eax,0x2
  3af6c8:	45 33 c9             	xor    r9d,r9d
  3af6cb:	89 05 ff e7 05 00    	mov    DWORD PTR [rip+0x5e7ff],eax        # 0x40ded0
  3af6d1:	e8 4e c6 f1 ff       	call   0x2cbd24
  3af6d6:	48 8b 0d 83 67 02 00 	mov    rcx,QWORD PTR [rip+0x26783]        # 0x3d5e60
  3af6dd:	48 8d 15 fc e7 05 00 	lea    rdx,[rip+0x5e7fc]        # 0x40dee0
  3af6e4:	4c 8b c3             	mov    r8,rbx
  3af6e7:	48 83 c4 20          	add    rsp,0x20
  3af6eb:	5b                   	pop    rbx
  3af6ec:	e9 0b c3 f1 ff       	jmp    0x2cb9fc
; pdata 0x3af6f4..0x3af771
  3af6f4:	40 53                	rex push rbx
  3af6f6:	48 83 ec 20          	sub    rsp,0x20
  3af6fa:	8b 05 c0 e8 05 00    	mov    eax,DWORD PTR [rip+0x5e8c0]        # 0x40dfc0
  3af700:	48 8b d9             	mov    rbx,rcx
  3af703:	a8 01                	test   al,0x1
  3af705:	75 25                	jne    0x3af72c
  3af707:	83 c8 01             	or     eax,0x1
  3af70a:	b9 57 11 08 23       	mov    ecx,0x23081157
  3af70f:	89 05 ab e8 05 00    	mov    DWORD PTR [rip+0x5e8ab],eax        # 0x40dfc0
  3af715:	e8 f6 45 f8 ff       	call   0x333d10
  3af71a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af71d:	8b 05 9d e8 05 00    	mov    eax,DWORD PTR [rip+0x5e89d]        # 0x40dfc0
  3af723:	4c 89 05 8e e8 05 00 	mov    QWORD PTR [rip+0x5e88e],r8        # 0x40dfb8
  3af72a:	eb 07                	jmp    0x3af733
  3af72c:	4c 8b 05 85 e8 05 00 	mov    r8,QWORD PTR [rip+0x5e885]        # 0x40dfb8
  3af733:	a8 02                	test   al,0x2
  3af735:	75 1f                	jne    0x3af756
  3af737:	48 8b 0d 22 67 02 00 	mov    rcx,QWORD PTR [rip+0x26722]        # 0x3d5e60
  3af73e:	48 8d 15 8b e8 05 00 	lea    rdx,[rip+0x5e88b]        # 0x40dfd0
  3af745:	83 c8 02             	or     eax,0x2
  3af748:	45 33 c9             	xor    r9d,r9d
  3af74b:	89 05 6f e8 05 00    	mov    DWORD PTR [rip+0x5e86f],eax        # 0x40dfc0
  3af751:	e8 ce c5 f1 ff       	call   0x2cbd24
  3af756:	48 8b 0d 03 67 02 00 	mov    rcx,QWORD PTR [rip+0x26703]        # 0x3d5e60
  3af75d:	48 8d 15 6c e8 05 00 	lea    rdx,[rip+0x5e86c]        # 0x40dfd0
  3af764:	4c 8b c3             	mov    r8,rbx
  3af767:	48 83 c4 20          	add    rsp,0x20
  3af76b:	5b                   	pop    rbx
  3af76c:	e9 8b c2 f1 ff       	jmp    0x2cb9fc
; pdata 0x3af774..0x3af812
  3af774:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af779:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3af77e:	57                   	push   rdi
  3af77f:	48 83 ec 30          	sub    rsp,0x30
  3af783:	8b 05 67 f4 05 00    	mov    eax,DWORD PTR [rip+0x5f467]        # 0x40ebf0
  3af789:	49 8b d8             	mov    rbx,r8
  3af78c:	8b fa                	mov    edi,edx
  3af78e:	48 8b f1             	mov    rsi,rcx
  3af791:	a8 01                	test   al,0x1
  3af793:	75 25                	jne    0x3af7ba
  3af795:	83 c8 01             	or     eax,0x1
  3af798:	b9 82 a6 93 cc       	mov    ecx,0xcc93a682
  3af79d:	89 05 4d f4 05 00    	mov    DWORD PTR [rip+0x5f44d],eax        # 0x40ebf0
  3af7a3:	e8 68 45 f8 ff       	call   0x333d10
  3af7a8:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af7ab:	8b 05 3f f4 05 00    	mov    eax,DWORD PTR [rip+0x5f43f]        # 0x40ebf0
  3af7b1:	4c 89 05 30 f4 05 00 	mov    QWORD PTR [rip+0x5f430],r8        # 0x40ebe8
  3af7b8:	eb 07                	jmp    0x3af7c1
  3af7ba:	4c 8b 05 27 f4 05 00 	mov    r8,QWORD PTR [rip+0x5f427]        # 0x40ebe8
  3af7c1:	a8 02                	test   al,0x2
  3af7c3:	75 1f                	jne    0x3af7e4
  3af7c5:	48 8b 0d 94 66 02 00 	mov    rcx,QWORD PTR [rip+0x26694]        # 0x3d5e60
  3af7cc:	48 8d 15 2d f4 05 00 	lea    rdx,[rip+0x5f42d]        # 0x40ec00
  3af7d3:	83 c8 02             	or     eax,0x2
  3af7d6:	45 33 c9             	xor    r9d,r9d
  3af7d9:	89 05 11 f4 05 00    	mov    DWORD PTR [rip+0x5f411],eax        # 0x40ebf0
  3af7df:	e8 40 c5 f1 ff       	call   0x2cbd24
  3af7e4:	48 8b 0d 75 66 02 00 	mov    rcx,QWORD PTR [rip+0x26675]        # 0x3d5e60
  3af7eb:	48 8d 15 0e f4 05 00 	lea    rdx,[rip+0x5f40e]        # 0x40ec00
  3af7f2:	44 8b cf             	mov    r9d,edi
  3af7f5:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  3af7fa:	4c 8b c6             	mov    r8,rsi
  3af7fd:	e8 76 06 00 00       	call   0x3afe78
  3af802:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  3af807:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  3af80c:	48 83 c4 30          	add    rsp,0x30
  3af810:	5f                   	pop    rdi
  3af811:	c3                   	ret
; pdata 0x3af814..0x3af8b3
  3af814:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af819:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3af81e:	57                   	push   rdi
  3af81f:	48 83 ec 30          	sub    rsp,0x30
  3af823:	8b 05 d7 f2 05 00    	mov    eax,DWORD PTR [rip+0x5f2d7]        # 0x40eb00
  3af829:	49 8b d8             	mov    rbx,r8
  3af82c:	48 8b fa             	mov    rdi,rdx
  3af82f:	48 8b f1             	mov    rsi,rcx
  3af832:	a8 01                	test   al,0x1
  3af834:	75 25                	jne    0x3af85b
  3af836:	83 c8 01             	or     eax,0x1
  3af839:	b9 66 51 51 00       	mov    ecx,0x515166
  3af83e:	89 05 bc f2 05 00    	mov    DWORD PTR [rip+0x5f2bc],eax        # 0x40eb00
  3af844:	e8 c7 44 f8 ff       	call   0x333d10
  3af849:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af84c:	8b 05 ae f2 05 00    	mov    eax,DWORD PTR [rip+0x5f2ae]        # 0x40eb00
  3af852:	4c 89 05 9f f2 05 00 	mov    QWORD PTR [rip+0x5f29f],r8        # 0x40eaf8
  3af859:	eb 07                	jmp    0x3af862
  3af85b:	4c 8b 05 96 f2 05 00 	mov    r8,QWORD PTR [rip+0x5f296]        # 0x40eaf8
  3af862:	a8 02                	test   al,0x2
  3af864:	75 1f                	jne    0x3af885
  3af866:	48 8b 0d f3 65 02 00 	mov    rcx,QWORD PTR [rip+0x265f3]        # 0x3d5e60
  3af86d:	48 8d 15 9c f2 05 00 	lea    rdx,[rip+0x5f29c]        # 0x40eb10
  3af874:	83 c8 02             	or     eax,0x2
  3af877:	45 33 c9             	xor    r9d,r9d
  3af87a:	89 05 80 f2 05 00    	mov    DWORD PTR [rip+0x5f280],eax        # 0x40eb00
  3af880:	e8 9f c4 f1 ff       	call   0x2cbd24
  3af885:	48 8b 0d d4 65 02 00 	mov    rcx,QWORD PTR [rip+0x265d4]        # 0x3d5e60
  3af88c:	48 8d 15 7d f2 05 00 	lea    rdx,[rip+0x5f27d]        # 0x40eb10
  3af893:	4c 8b cf             	mov    r9,rdi
  3af896:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  3af89b:	4c 8b c6             	mov    r8,rsi
  3af89e:	e8 ad c1 f1 ff       	call   0x2cba50
  3af8a3:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  3af8a8:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  3af8ad:	48 83 c4 30          	add    rsp,0x30
  3af8b1:	5f                   	pop    rdi
  3af8b2:	c3                   	ret
; pdata 0x3af8b4..0x3af940
  3af8b4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af8b9:	57                   	push   rdi
  3af8ba:	48 83 ec 20          	sub    rsp,0x20
  3af8be:	8b 05 4c f1 05 00    	mov    eax,DWORD PTR [rip+0x5f14c]        # 0x40ea10
  3af8c4:	48 8b da             	mov    rbx,rdx
  3af8c7:	48 8b f9             	mov    rdi,rcx
  3af8ca:	a8 01                	test   al,0x1
  3af8cc:	75 25                	jne    0x3af8f3
  3af8ce:	83 c8 01             	or     eax,0x1
  3af8d1:	b9 d6 b4 31 f3       	mov    ecx,0xf331b4d6
  3af8d6:	89 05 34 f1 05 00    	mov    DWORD PTR [rip+0x5f134],eax        # 0x40ea10
  3af8dc:	e8 2f 44 f8 ff       	call   0x333d10
  3af8e1:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af8e4:	8b 05 26 f1 05 00    	mov    eax,DWORD PTR [rip+0x5f126]        # 0x40ea10
  3af8ea:	4c 89 05 17 f1 05 00 	mov    QWORD PTR [rip+0x5f117],r8        # 0x40ea08
  3af8f1:	eb 07                	jmp    0x3af8fa
  3af8f3:	4c 8b 05 0e f1 05 00 	mov    r8,QWORD PTR [rip+0x5f10e]        # 0x40ea08
  3af8fa:	a8 02                	test   al,0x2
  3af8fc:	75 1f                	jne    0x3af91d
  3af8fe:	48 8b 0d 5b 65 02 00 	mov    rcx,QWORD PTR [rip+0x2655b]        # 0x3d5e60
  3af905:	48 8d 15 14 f1 05 00 	lea    rdx,[rip+0x5f114]        # 0x40ea20
  3af90c:	83 c8 02             	or     eax,0x2
  3af90f:	45 33 c9             	xor    r9d,r9d
  3af912:	89 05 f8 f0 05 00    	mov    DWORD PTR [rip+0x5f0f8],eax        # 0x40ea10
  3af918:	e8 07 c4 f1 ff       	call   0x2cbd24
  3af91d:	48 8b 0d 3c 65 02 00 	mov    rcx,QWORD PTR [rip+0x2653c]        # 0x3d5e60
  3af924:	48 8d 15 f5 f0 05 00 	lea    rdx,[rip+0x5f0f5]        # 0x40ea20
  3af92b:	4c 8b cb             	mov    r9,rbx
  3af92e:	4c 8b c7             	mov    r8,rdi
  3af931:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3af936:	48 83 c4 20          	add    rsp,0x20
  3af93a:	5f                   	pop    rdi
  3af93b:	e9 54 27 f2 ff       	jmp    0x2d2094
; pdata 0x3af940..0x3af9cb
  3af940:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af945:	57                   	push   rdi
  3af946:	48 83 ec 20          	sub    rsp,0x20
  3af94a:	8b 05 e0 ee 05 00    	mov    eax,DWORD PTR [rip+0x5eee0]        # 0x40e830
  3af950:	8a da                	mov    bl,dl
  3af952:	48 8b f9             	mov    rdi,rcx
  3af955:	a8 01                	test   al,0x1
  3af957:	75 25                	jne    0x3af97e
  3af959:	83 c8 01             	or     eax,0x1
  3af95c:	b9 b4 32 89 2c       	mov    ecx,0x2c8932b4
  3af961:	89 05 c9 ee 05 00    	mov    DWORD PTR [rip+0x5eec9],eax        # 0x40e830
  3af967:	e8 a4 43 f8 ff       	call   0x333d10
  3af96c:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3af96f:	8b 05 bb ee 05 00    	mov    eax,DWORD PTR [rip+0x5eebb]        # 0x40e830
  3af975:	4c 89 05 ac ee 05 00 	mov    QWORD PTR [rip+0x5eeac],r8        # 0x40e828
  3af97c:	eb 07                	jmp    0x3af985
  3af97e:	4c 8b 05 a3 ee 05 00 	mov    r8,QWORD PTR [rip+0x5eea3]        # 0x40e828
  3af985:	a8 02                	test   al,0x2
  3af987:	75 1f                	jne    0x3af9a8
  3af989:	48 8b 0d d0 64 02 00 	mov    rcx,QWORD PTR [rip+0x264d0]        # 0x3d5e60
  3af990:	48 8d 15 a9 ee 05 00 	lea    rdx,[rip+0x5eea9]        # 0x40e840
  3af997:	83 c8 02             	or     eax,0x2
  3af99a:	45 33 c9             	xor    r9d,r9d
  3af99d:	89 05 8d ee 05 00    	mov    DWORD PTR [rip+0x5ee8d],eax        # 0x40e830
  3af9a3:	e8 7c c3 f1 ff       	call   0x2cbd24
  3af9a8:	48 8b 0d b1 64 02 00 	mov    rcx,QWORD PTR [rip+0x264b1]        # 0x3d5e60
  3af9af:	48 8d 15 8a ee 05 00 	lea    rdx,[rip+0x5ee8a]        # 0x40e840
  3af9b6:	44 8a cb             	mov    r9b,bl
  3af9b9:	4c 8b c7             	mov    r8,rdi
  3af9bc:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3af9c1:	48 83 c4 20          	add    rsp,0x20
  3af9c5:	5f                   	pop    rdi
  3af9c6:	e9 29 1b f7 ff       	jmp    0x3214f4
; pdata 0x3af9cc..0x3afa30
  3af9cc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3af9d1:	57                   	push   rdi
  3af9d2:	48 83 ec 20          	sub    rsp,0x20
  3af9d6:	48 8b da             	mov    rbx,rdx
  3af9d9:	e8 c6 b9 f1 ff       	call   0x2cb3a4
  3af9de:	48 8b cb             	mov    rcx,rbx
  3af9e1:	48 8b f8             	mov    rdi,rax
  3af9e4:	e8 bb b9 f1 ff       	call   0x2cb3a4
  3af9e9:	48 8b d8             	mov    rbx,rax
  3af9ec:	e8 b3 eb f1 ff       	call   0x2ce5a4
  3af9f1:	84 c0                	test   al,al
  3af9f3:	74 0d                	je     0x3afa02
  3af9f5:	48 8b d3             	mov    rdx,rbx
  3af9f8:	48 8b cf             	mov    rcx,rdi
  3af9fb:	e8 b4 0a 00 00       	call   0x3b04b4
  3afa00:	eb 23                	jmp    0x3afa25
  3afa02:	48 8b d7             	mov    rdx,rdi
  3afa05:	b9 30 00 00 00       	mov    ecx,0x30
  3afa0a:	e8 21 cb f1 ff       	call   0x2cc530
  3afa0f:	0f 10 03             	movups xmm0,XMMWORD PTR [rbx]
  3afa12:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
  3afa15:	0f 10 4b 10          	movups xmm1,XMMWORD PTR [rbx+0x10]
  3afa19:	0f 11 48 10          	movups XMMWORD PTR [rax+0x10],xmm1
  3afa1d:	0f 10 43 20          	movups xmm0,XMMWORD PTR [rbx+0x20]
  3afa21:	0f 11 40 20          	movups XMMWORD PTR [rax+0x20],xmm0
  3afa25:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3afa2a:	48 83 c4 20          	add    rsp,0x20
  3afa2e:	5f                   	pop    rdi
  3afa2f:	c3                   	ret
; pdata 0x3afa38..0x3afa78
  3afa38:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3afa3d:	57                   	push   rdi
  3afa3e:	48 83 ec 20          	sub    rsp,0x20
  3afa42:	48 8b f9             	mov    rdi,rcx
  3afa45:	48 8b ca             	mov    rcx,rdx
  3afa48:	e8 57 b9 f1 ff       	call   0x2cb3a4
  3afa4d:	48 8b 4f 08          	mov    rcx,QWORD PTR [rdi+0x8]
  3afa51:	48 8b d8             	mov    rbx,rax
  3afa54:	e8 4b b9 f1 ff       	call   0x2cb3a4
  3afa59:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  3afa5d:	48 8b d0             	mov    rdx,rax
  3afa60:	4c 8b c3             	mov    r8,rbx
  3afa63:	e8 28 0a 00 00       	call   0x3b0490
  3afa68:	48 83 47 08 30       	add    QWORD PTR [rdi+0x8],0x30
  3afa6d:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3afa72:	48 83 c4 20          	add    rsp,0x20
  3afa76:	5f                   	pop    rdi
  3afa77:	c3                   	ret
; pdata 0x3afa78..0x3afaa7
  3afa78:	40 53                	rex push rbx
  3afa7a:	48 83 ec 20          	sub    rsp,0x20
  3afa7e:	48 8b d9             	mov    rbx,rcx
  3afa81:	48 8b ca             	mov    rcx,rdx
  3afa84:	e8 1b b9 f1 ff       	call   0x2cb3a4
  3afa89:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
  3afa8d:	48 8b d0             	mov    rdx,rax
  3afa90:	e8 37 ff ff ff       	call   0x3af9cc
  3afa95:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  3afa99:	48 8d 50 30          	lea    rdx,[rax+0x30]
  3afa9d:	48 89 53 08          	mov    QWORD PTR [rbx+0x8],rdx
  3afaa1:	48 83 c4 20          	add    rsp,0x20
  3afaa5:	5b                   	pop    rbx
  3afaa6:	c3                   	ret
; pdata 0x3afaa8..0x3afaea
  3afaa8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3afaad:	57                   	push   rdi
  3afaae:	48 83 ec 20          	sub    rsp,0x20
  3afab2:	48 8b 79 08          	mov    rdi,QWORD PTR [rcx+0x8]
  3afab6:	48 8b d9             	mov    rbx,rcx
  3afab9:	48 8b ca             	mov    rcx,rdx
  3afabc:	e8 e3 b8 f1 ff       	call   0x2cb3a4
  3afac1:	48 8b cb             	mov    rcx,rbx
  3afac4:	48 3b 7b 10          	cmp    rdi,QWORD PTR [rbx+0x10]
  3afac8:	74 0a                	je     0x3afad4
  3afaca:	48 8b d0             	mov    rdx,rax
  3afacd:	e8 a6 ff ff ff       	call   0x3afa78
  3afad2:	eb 0b                	jmp    0x3afadf
  3afad4:	4c 8b c0             	mov    r8,rax
  3afad7:	48 8b d7             	mov    rdx,rdi
  3afada:	e8 0d 00 00 00       	call   0x3afaec
  3afadf:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3afae4:	48 83 c4 20          	add    rsp,0x20
  3afae8:	5f                   	pop    rdi
  3afae9:	c3                   	ret
; pdata 0x3afaec..0x3afc67
  3afaec:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  3afaf1:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  3afaf6:	55                   	push   rbp
  3afaf7:	56                   	push   rsi
  3afaf8:	57                   	push   rdi
  3afaf9:	41 54                	push   r12
  3afafb:	41 55                	push   r13
  3afafd:	41 56                	push   r14
  3afaff:	41 57                	push   r15
  3afb01:	48 83 ec 50          	sub    rsp,0x50
  3afb05:	4c 8b f2             	mov    r14,rdx
  3afb08:	48 8b f9             	mov    rdi,rcx
  3afb0b:	e8 14 d8 f1 ff       	call   0x2cd324
  3afb10:	4c 8b 4f 08          	mov    r9,QWORD PTR [rdi+0x8]
  3afb14:	48 8b e8             	mov    rbp,rax
  3afb17:	4c 8b 3f             	mov    r15,QWORD PTR [rdi]
  3afb1a:	49 bd ab aa aa aa aa 	movabs r13,0x2aaaaaaaaaaaaaab
  3afb21:	aa aa 2a 
  3afb24:	4d 2b cf             	sub    r9,r15
  3afb27:	49 8b c5             	mov    rax,r13
  3afb2a:	49 f7 e9             	imul   r9
  3afb2d:	48 8b da             	mov    rbx,rdx
  3afb30:	48 c1 fb 03          	sar    rbx,0x3
  3afb34:	48 8b cb             	mov    rcx,rbx
  3afb37:	48 c1 e9 3f          	shr    rcx,0x3f
  3afb3b:	48 03 d9             	add    rbx,rcx
  3afb3e:	48 8b cf             	mov    rcx,rdi
  3afb41:	e8 de 0e f7 ff       	call   0x320a24
  3afb46:	48 3b d8             	cmp    rbx,rax
  3afb49:	0f 84 12 01 00 00    	je     0x3afc61
  3afb4f:	48 8d 43 01          	lea    rax,[rbx+0x1]
  3afb53:	48 8b cf             	mov    rcx,rdi
  3afb56:	48 8b d0             	mov    rdx,rax
  3afb59:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  3afb60:	00 
  3afb61:	e8 ae ff fc ff       	call   0x37fb14
  3afb66:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3afb6d:	00 
  3afb6e:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  3afb75:	00 
  3afb76:	48 8b cd             	mov    rcx,rbp
  3afb79:	4c 8b e0             	mov    r12,rax
  3afb7c:	e8 e7 ee fc ff       	call   0x37ea68
  3afb81:	48 8b f0             	mov    rsi,rax
  3afb84:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
  3afb89:	49 8b c5             	mov    rax,r13
  3afb8c:	4c 89 64 24 30       	mov    QWORD PTR [rsp+0x30],r12
  3afb91:	49 8b ce             	mov    rcx,r14
  3afb94:	49 2b cf             	sub    rcx,r15
  3afb97:	48 f7 e9             	imul   rcx
  3afb9a:	48 c1 fa 03          	sar    rdx,0x3
  3afb9e:	48 8b ca             	mov    rcx,rdx
  3afba1:	48 c1 e9 3f          	shr    rcx,0x3f
  3afba5:	48 03 d1             	add    rdx,rcx
  3afba8:	48 8b 8c 24 a0 00 00 	mov    rcx,QWORD PTR [rsp+0xa0]
  3afbaf:	00 
  3afbb0:	4c 8d 2c 52          	lea    r13,[rdx+rdx*2]
  3afbb4:	49 c1 e5 04          	shl    r13,0x4
  3afbb8:	4c 03 ee             	add    r13,rsi
  3afbbb:	4d 8d 7d 30          	lea    r15,[r13+0x30]
  3afbbf:	4c 89 7c 24 40       	mov    QWORD PTR [rsp+0x40],r15
  3afbc4:	e8 db b7 f1 ff       	call   0x2cb3a4
  3afbc9:	49 8b cd             	mov    rcx,r13
  3afbcc:	48 8b d8             	mov    rbx,rax
  3afbcf:	e8 d0 b7 f1 ff       	call   0x2cb3a4
  3afbd4:	48 8b d0             	mov    rdx,rax
  3afbd7:	4c 8b c3             	mov    r8,rbx
  3afbda:	48 8b cd             	mov    rcx,rbp
  3afbdd:	e8 ae 08 00 00       	call   0x3b0490
  3afbe2:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
  3afbe6:	48 8b 0f             	mov    rcx,QWORD PTR [rdi]
  3afbe9:	4c 89 6c 24 38       	mov    QWORD PTR [rsp+0x38],r13
  3afbee:	4c 3b f2             	cmp    r14,rdx
  3afbf1:	75 05                	jne    0x3afbf8
  3afbf3:	4c 8b fe             	mov    r15,rsi
  3afbf6:	eb 1a                	jmp    0x3afc12
  3afbf8:	4c 8b cd             	mov    r9,rbp
  3afbfb:	4c 8b c6             	mov    r8,rsi
  3afbfe:	49 8b d6             	mov    rdx,r14
  3afc01:	e8 d6 00 00 00       	call   0x3afcdc
  3afc06:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
  3afc0a:	49 8b ce             	mov    rcx,r14
  3afc0d:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  3afc12:	4c 8b cd             	mov    r9,rbp
  3afc15:	4d 8b c7             	mov    r8,r15
  3afc18:	e8 bf 00 00 00       	call   0x3afcdc
  3afc1d:	4c 8b 84 24 98 00 00 	mov    r8,QWORD PTR [rsp+0x98]
  3afc24:	00 
  3afc25:	4d 8b cc             	mov    r9,r12
  3afc28:	48 8b d6             	mov    rdx,rsi
  3afc2b:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
  3afc32:	00 00 
  3afc34:	48 8b cf             	mov    rcx,rdi
  3afc37:	e8 94 48 00 00       	call   0x3b44d0
  3afc3c:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3afc41:	e8 46 0e 00 00       	call   0x3b0a8c
  3afc46:	48 8b 9c 24 a8 00 00 	mov    rbx,QWORD PTR [rsp+0xa8]
  3afc4d:	00 
  3afc4e:	49 8b c5             	mov    rax,r13
  3afc51:	48 83 c4 50          	add    rsp,0x50
  3afc55:	41 5f                	pop    r15
  3afc57:	41 5e                	pop    r14
  3afc59:	41 5d                	pop    r13
  3afc5b:	41 5c                	pop    r12
  3afc5d:	5f                   	pop    rdi
  3afc5e:	5e                   	pop    rsi
  3afc5f:	5d                   	pop    rbp
  3afc60:	c3                   	ret
  3afc61:	e8 ce 7e f2 ff       	call   0x2d7b34
  3afc66:	cc                   	int3
; pdata 0x3afc68..0x3afcdb
  3afc68:	48 8b c4             	mov    rax,rsp
  3afc6b:	4c 89 40 18          	mov    QWORD PTR [rax+0x18],r8
  3afc6f:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  3afc73:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  3afc77:	53                   	push   rbx
  3afc78:	56                   	push   rsi
  3afc79:	57                   	push   rdi
  3afc7a:	48 83 ec 20          	sub    rsp,0x20
  3afc7e:	48 8d 48 08          	lea    rcx,[rax+0x8]
  3afc82:	e8 f1 1c f2 ff       	call   0x2d1978
  3afc87:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  3afc8c:	48 8b f0             	mov    rsi,rax
  3afc8f:	e8 e4 1c f2 ff       	call   0x2d1978
  3afc94:	48 8b f8             	mov    rdi,rax
  3afc97:	48 b8 ab aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaab
  3afc9e:	aa aa 2a 
  3afca1:	48 2b fe             	sub    rdi,rsi
  3afca4:	48 f7 ef             	imul   rdi
  3afca7:	48 8b da             	mov    rbx,rdx
  3afcaa:	48 c1 fb 03          	sar    rbx,0x3
  3afcae:	48 8b cb             	mov    rcx,rbx
  3afcb1:	48 c1 e9 3f          	shr    rcx,0x3f
  3afcb5:	48 03 d9             	add    rbx,rcx
  3afcb8:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3afcbd:	e8 e2 b6 f1 ff       	call   0x2cb3a4
  3afcc2:	4c 8b cb             	mov    r9,rbx
  3afcc5:	4c 8b c7             	mov    r8,rdi
  3afcc8:	48 8b ce             	mov    rcx,rsi
  3afccb:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  3afcce:	e8 91 0e f2 ff       	call   0x2d0b64
  3afcd3:	48 83 c4 20          	add    rsp,0x20
  3afcd7:	5f                   	pop    rdi
  3afcd8:	5e                   	pop    rsi
  3afcd9:	5b                   	pop    rbx
  3afcda:	c3                   	ret
; pdata 0x3afcdc..0x3afda2
  3afcdc:	48 8b c4             	mov    rax,rsp
  3afcdf:	48 89 58 18          	mov    QWORD PTR [rax+0x18],rbx
  3afce3:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  3afce7:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  3afceb:	55                   	push   rbp
  3afcec:	56                   	push   rsi
  3afced:	57                   	push   rdi
  3afcee:	48 83 ec 40          	sub    rsp,0x40
  3afcf2:	48 8d 48 08          	lea    rcx,[rax+0x8]
  3afcf6:	49 8b e9             	mov    rbp,r9
  3afcf9:	49 8b f0             	mov    rsi,r8
  3afcfc:	e8 d7 e8 f1 ff       	call   0x2ce5d8
  3afd01:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3afd06:	48 8b d8             	mov    rbx,rax
  3afd09:	e8 ca e8 f1 ff       	call   0x2ce5d8
  3afd0e:	48 8b f8             	mov    rdi,rax
  3afd11:	e8 8e e8 f1 ff       	call   0x2ce5a4
  3afd16:	84 c0                	test   al,al
  3afd18:	75 41                	jne    0x3afd5b
  3afd1a:	48 8b ce             	mov    rcx,rsi
  3afd1d:	e8 82 b6 f1 ff       	call   0x2cb3a4
  3afd22:	4c 8b c0             	mov    r8,rax
  3afd25:	48 8b d7             	mov    rdx,rdi
  3afd28:	48 8b cb             	mov    rcx,rbx
  3afd2b:	e8 00 fd ff ff       	call   0x3afa30
  3afd30:	48 2b fb             	sub    rdi,rbx
  3afd33:	48 b8 ab aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaab
  3afd3a:	aa aa 2a 
  3afd3d:	48 f7 ef             	imul   rdi
  3afd40:	48 c1 fa 03          	sar    rdx,0x3
  3afd44:	48 8b c2             	mov    rax,rdx
  3afd47:	48 c1 e8 3f          	shr    rax,0x3f
  3afd4b:	48 03 d0             	add    rdx,rax
  3afd4e:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  3afd52:	48 c1 e0 04          	shl    rax,0x4
  3afd56:	48 03 c6             	add    rax,rsi
  3afd59:	eb 3a                	jmp    0x3afd95
  3afd5b:	4c 8b c5             	mov    r8,rbp
  3afd5e:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3afd63:	48 8b d6             	mov    rdx,rsi
  3afd66:	e8 09 43 f2 ff       	call   0x2d4074
  3afd6b:	eb 19                	jmp    0x3afd86
  3afd6d:	48 8b cb             	mov    rcx,rbx
  3afd70:	e8 2f b6 f1 ff       	call   0x2cb3a4
  3afd75:	48 8b d0             	mov    rdx,rax
  3afd78:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3afd7d:	e8 b6 fc ff ff       	call   0x3afa38
  3afd82:	48 83 c3 30          	add    rbx,0x30
  3afd86:	48 3b df             	cmp    rbx,rdi
  3afd89:	75 e2                	jne    0x3afd6d
  3afd8b:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3afd90:	e8 c3 78 f2 ff       	call   0x2d7658
  3afd95:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  3afd9a:	48 83 c4 40          	add    rsp,0x40
  3afd9e:	5f                   	pop    rdi
  3afd9f:	5e                   	pop    rsi
  3afda0:	5d                   	pop    rbp
  3afda1:	c3                   	ret
; pdata 0x3afda4..0x3afe78
  3afda4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3afda9:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  3afdae:	55                   	push   rbp
  3afdaf:	48 8b ec             	mov    rbp,rsp
  3afdb2:	48 83 ec 60          	sub    rsp,0x60
  3afdb6:	48 8b fa             	mov    rdi,rdx
  3afdb9:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3afdbd:	49 8b d0             	mov    rdx,r8
  3afdc0:	49 8b d9             	mov    rbx,r9
  3afdc3:	e8 a0 c4 f1 ff       	call   0x2cc268
  3afdc8:	48 8b d3             	mov    rdx,rbx
  3afdcb:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3afdcf:	e8 94 c4 f1 ff       	call   0x2cc268
  3afdd4:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
  3afdd8:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3afddc:	e8 87 c4 f1 ff       	call   0x2cc268
  3afde1:	48 8b 55 38          	mov    rdx,QWORD PTR [rbp+0x38]
  3afde5:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  3afde9:	e8 7a c4 f1 ff       	call   0x2cc268
  3afdee:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  3afdf1:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  3afdf5:	e8 76 f5 f2 ff       	call   0x2df370
  3afdfa:	8b 55 48             	mov    edx,DWORD PTR [rbp+0x48]
  3afdfd:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3afe01:	e8 6a f5 f2 ff       	call   0x2df370
  3afe06:	48 8b 55 50          	mov    rdx,QWORD PTR [rbp+0x50]
  3afe0a:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  3afe0e:	e8 55 c4 f1 ff       	call   0x2cc268
  3afe13:	0f 10 45 c0          	movups xmm0,XMMWORD PTR [rbp-0x40]
  3afe17:	33 c0                	xor    eax,eax
  3afe19:	48 8b cf             	mov    rcx,rdi
  3afe1c:	0f 10 4d d0          	movups xmm1,XMMWORD PTR [rbp-0x30]
  3afe20:	89 45 18             	mov    DWORD PTR [rbp+0x18],eax
  3afe23:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3afe2a:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3afe30:	48 8d 45 08          	lea    rax,[rbp+0x8]
  3afe34:	0f 10 45 e0          	movups xmm0,XMMWORD PTR [rbp-0x20]
  3afe38:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x7
  3afe3f:	07 00 00 00 
  3afe43:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3afe4a:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3afe4e:	f2 0f 10 4d f0       	movsd  xmm1,QWORD PTR [rbp-0x10]
  3afe53:	0f 11 87 a8 00 00 00 	movups XMMWORD PTR [rdi+0xa8],xmm0
  3afe5a:	f2 0f 11 8f b8 00 00 	movsd  QWORD PTR [rdi+0xb8],xmm1
  3afe61:	00 
  3afe62:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3afe67:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3afe6b:	49 8b 7b 20          	mov    rdi,QWORD PTR [r11+0x20]
  3afe6f:	49 8b e3             	mov    rsp,r11
  3afe72:	5d                   	pop    rbp
  3afe73:	e9 5c dd 01 00       	jmp    0x3cdbd4
; pdata 0x3afe78..0x3aff09
  3afe78:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3afe7d:	57                   	push   rdi
  3afe7e:	48 83 ec 40          	sub    rsp,0x40
  3afe82:	48 8b fa             	mov    rdi,rdx
  3afe85:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3afe8a:	49 8b d0             	mov    rdx,r8
  3afe8d:	41 8b d9             	mov    ebx,r9d
  3afe90:	e8 d3 c3 f1 ff       	call   0x2cc268
  3afe95:	8b d3                	mov    edx,ebx
  3afe97:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  3afe9c:	e8 cf f4 f2 ff       	call   0x2df370
  3afea1:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
  3afea6:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3afeab:	e8 b8 c3 f1 ff       	call   0x2cc268
  3afeb0:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  3afeb5:	33 c0                	xor    eax,eax
  3afeb7:	48 8b cf             	mov    rcx,rdi
  3afeba:	f2 0f 10 4c 24 30    	movsd  xmm1,QWORD PTR [rsp+0x30]
  3afec0:	66 89 87 d0 00 00 00 	mov    WORD PTR [rdi+0xd0],ax
  3afec7:	88 87 d2 00 00 00    	mov    BYTE PTR [rdi+0xd2],al
  3afecd:	8a 44 24 5b          	mov    al,BYTE PTR [rsp+0x5b]
  3afed1:	88 87 d3 00 00 00    	mov    BYTE PTR [rdi+0xd3],al
  3afed7:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  3afedc:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3afee3:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3afee7:	f2 0f 11 8f 98 00 00 	movsd  QWORD PTR [rdi+0x98],xmm1
  3afeee:	00 
  3afeef:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x3
  3afef6:	03 00 00 00 
  3afefa:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
  3afeff:	48 83 c4 40          	add    rsp,0x40
  3aff03:	5f                   	pop    rdi
  3aff04:	e9 cb dc 01 00       	jmp    0x3cdbd4
; pdata 0x3aff0c..0x3affed
  3aff0c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3aff11:	55                   	push   rbp
  3aff12:	48 8b ec             	mov    rbp,rsp
  3aff15:	48 83 ec 70          	sub    rsp,0x70
  3aff19:	48 8b da             	mov    rbx,rdx
  3aff1c:	0f 29 74 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm6
  3aff21:	49 8b d0             	mov    rdx,r8
  3aff24:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  3aff28:	0f 28 f3             	movaps xmm6,xmm3
  3aff2b:	e8 38 c3 f1 ff       	call   0x2cc268
  3aff30:	0f 28 ce             	movaps xmm1,xmm6
  3aff33:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  3aff37:	e8 bc dc f2 ff       	call   0x2ddbf8
  3aff3c:	f3 0f 10 4d 30       	movss  xmm1,DWORD PTR [rbp+0x30]
  3aff41:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3aff45:	e8 ae dc f2 ff       	call   0x2ddbf8
  3aff4a:	f3 0f 10 4d 38       	movss  xmm1,DWORD PTR [rbp+0x38]
  3aff4f:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3aff53:	e8 a0 dc f2 ff       	call   0x2ddbf8
  3aff58:	f3 0f 10 4d 40       	movss  xmm1,DWORD PTR [rbp+0x40]
  3aff5d:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3aff61:	e8 92 dc f2 ff       	call   0x2ddbf8
  3aff66:	f3 0f 10 4d 48       	movss  xmm1,DWORD PTR [rbp+0x48]
  3aff6b:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  3aff6f:	e8 84 dc f2 ff       	call   0x2ddbf8
  3aff74:	f3 0f 10 4d 50       	movss  xmm1,DWORD PTR [rbp+0x50]
  3aff79:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  3aff7d:	e8 76 dc f2 ff       	call   0x2ddbf8
  3aff82:	0f 10 45 b0          	movups xmm0,XMMWORD PTR [rbp-0x50]
  3aff86:	c7 45 18 00 01 01 01 	mov    DWORD PTR [rbp+0x18],0x1010100
  3aff8d:	48 8b cb             	mov    rcx,rbx
  3aff90:	0f 10 4d c0          	movups xmm1,XMMWORD PTR [rbp-0x40]
  3aff94:	8b 45 18             	mov    eax,DWORD PTR [rbp+0x18]
  3aff97:	0f 11 83 88 00 00 00 	movups XMMWORD PTR [rbx+0x88],xmm0
  3aff9e:	89 83 d0 00 00 00    	mov    DWORD PTR [rbx+0xd0],eax
  3affa4:	48 8d 45 08          	lea    rax,[rbp+0x8]
  3affa8:	0f 10 45 d0          	movups xmm0,XMMWORD PTR [rbp-0x30]
  3affac:	48 c7 83 80 00 00 00 	mov    QWORD PTR [rbx+0x80],0x7
  3affb3:	07 00 00 00 
  3affb7:	0f 11 8b 98 00 00 00 	movups XMMWORD PTR [rbx+0x98],xmm1
  3affbe:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  3affc2:	f2 0f 10 4d e0       	movsd  xmm1,QWORD PTR [rbp-0x20]
  3affc7:	0f 11 83 a8 00 00 00 	movups XMMWORD PTR [rbx+0xa8],xmm0
  3affce:	f2 0f 11 8b b8 00 00 	movsd  QWORD PTR [rbx+0xb8],xmm1
  3affd5:	00 
  3affd6:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3affdd:	00 
  3affde:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  3affe3:	48 83 c4 70          	add    rsp,0x70
  3affe7:	5d                   	pop    rbp
  3affe8:	e9 e7 db 01 00       	jmp    0x3cdbd4
; pdata 0x3afff0..0x3b00b3
  3afff0:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3afff5:	57                   	push   rdi
  3afff6:	48 83 ec 50          	sub    rsp,0x50
  3afffa:	48 8b fa             	mov    rdi,rdx
  3afffd:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3b0002:	49 8b d0             	mov    rdx,r8
  3b0005:	41 8b d9             	mov    ebx,r9d
  3b0008:	e8 5b c2 f1 ff       	call   0x2cc268
  3b000d:	8b d3                	mov    edx,ebx
  3b000f:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  3b0014:	e8 57 f3 f2 ff       	call   0x2df370
  3b0019:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
  3b0020:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3b0025:	e8 46 f3 f2 ff       	call   0x2df370
  3b002a:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [rsp+0x88]
  3b0031:	48 8d 4c 24 38       	lea    rcx,[rsp+0x38]
  3b0036:	e8 35 f3 f2 ff       	call   0x2df370
  3b003b:	8a 94 24 90 00 00 00 	mov    dl,BYTE PTR [rsp+0x90]
  3b0042:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b0047:	e8 dc 48 f2 ff       	call   0x2d4928
  3b004c:	8a 94 24 98 00 00 00 	mov    dl,BYTE PTR [rsp+0x98]
  3b0053:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  3b0058:	e8 cb 48 f2 ff       	call   0x2d4928
  3b005d:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  3b0062:	33 c0                	xor    eax,eax
  3b0064:	48 8b cf             	mov    rcx,rdi
  3b0067:	0f 10 4c 24 30       	movups xmm1,XMMWORD PTR [rsp+0x30]
  3b006c:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  3b0070:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b0077:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3b007d:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
  3b0082:	0f 10 44 24 40       	movups xmm0,XMMWORD PTR [rsp+0x40]
  3b0087:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x6
  3b008e:	06 00 00 00 
  3b0092:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3b0099:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b009d:	0f 11 87 a8 00 00 00 	movups XMMWORD PTR [rdi+0xa8],xmm0
  3b00a4:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  3b00a9:	48 83 c4 50          	add    rsp,0x50
  3b00ad:	5f                   	pop    rdi
  3b00ae:	e9 21 db 01 00       	jmp    0x3cdbd4
; pdata 0x3b00b4..0x3b0144
  3b00b4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b00b9:	57                   	push   rdi
  3b00ba:	48 83 ec 40          	sub    rsp,0x40
  3b00be:	48 8b fa             	mov    rdi,rdx
  3b00c1:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3b00c6:	49 8b d0             	mov    rdx,r8
  3b00c9:	41 8a d9             	mov    bl,r9b
  3b00cc:	e8 97 c1 f1 ff       	call   0x2cc268
  3b00d1:	8a d3                	mov    dl,bl
  3b00d3:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  3b00d8:	e8 4b 48 f2 ff       	call   0x2d4928
  3b00dd:	8a 54 24 70          	mov    dl,BYTE PTR [rsp+0x70]
  3b00e1:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3b00e6:	e8 3d 48 f2 ff       	call   0x2d4928
  3b00eb:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  3b00f0:	33 c0                	xor    eax,eax
  3b00f2:	48 8b cf             	mov    rcx,rdi
  3b00f5:	f2 0f 10 4c 24 30    	movsd  xmm1,QWORD PTR [rsp+0x30]
  3b00fb:	66 89 87 d0 00 00 00 	mov    WORD PTR [rdi+0xd0],ax
  3b0102:	88 87 d2 00 00 00    	mov    BYTE PTR [rdi+0xd2],al
  3b0108:	8a 44 24 5b          	mov    al,BYTE PTR [rsp+0x5b]
  3b010c:	88 87 d3 00 00 00    	mov    BYTE PTR [rdi+0xd3],al
  3b0112:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  3b0117:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b011e:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b0122:	f2 0f 11 8f 98 00 00 	movsd  QWORD PTR [rdi+0x98],xmm1
  3b0129:	00 
  3b012a:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x3
  3b0131:	03 00 00 00 
  3b0135:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
  3b013a:	48 83 c4 40          	add    rsp,0x40
  3b013e:	5f                   	pop    rdi
  3b013f:	e9 90 da 01 00       	jmp    0x3cdbd4
; pdata 0x3b0144..0x3b0215
  3b0144:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b0149:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  3b014e:	55                   	push   rbp
  3b014f:	48 8b ec             	mov    rbp,rsp
  3b0152:	48 83 ec 60          	sub    rsp,0x60
  3b0156:	48 8b fa             	mov    rdi,rdx
  3b0159:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3b015d:	49 8b d0             	mov    rdx,r8
  3b0160:	41 8b d9             	mov    ebx,r9d
  3b0163:	e8 00 c1 f1 ff       	call   0x2cc268
  3b0168:	8b d3                	mov    edx,ebx
  3b016a:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3b016e:	e8 fd f1 f2 ff       	call   0x2df370
  3b0173:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
  3b0177:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3b017b:	e8 e8 c0 f1 ff       	call   0x2cc268
  3b0180:	8b 55 38             	mov    edx,DWORD PTR [rbp+0x38]
  3b0183:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  3b0187:	e8 e4 f1 f2 ff       	call   0x2df370
  3b018c:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  3b018f:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  3b0193:	e8 d8 f1 f2 ff       	call   0x2df370
  3b0198:	8b 55 48             	mov    edx,DWORD PTR [rbp+0x48]
  3b019b:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3b019f:	e8 cc f1 f2 ff       	call   0x2df370
  3b01a4:	8b 55 50             	mov    edx,DWORD PTR [rbp+0x50]
  3b01a7:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  3b01ab:	e8 c0 f1 f2 ff       	call   0x2df370
  3b01b0:	0f 10 45 c0          	movups xmm0,XMMWORD PTR [rbp-0x40]
  3b01b4:	33 c0                	xor    eax,eax
  3b01b6:	48 8b cf             	mov    rcx,rdi
  3b01b9:	0f 10 4d d0          	movups xmm1,XMMWORD PTR [rbp-0x30]
  3b01bd:	89 45 18             	mov    DWORD PTR [rbp+0x18],eax
  3b01c0:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b01c7:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3b01cd:	48 8d 45 08          	lea    rax,[rbp+0x8]
  3b01d1:	0f 10 45 e0          	movups xmm0,XMMWORD PTR [rbp-0x20]
  3b01d5:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x7
  3b01dc:	07 00 00 00 
  3b01e0:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3b01e7:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b01eb:	f2 0f 10 4d f0       	movsd  xmm1,QWORD PTR [rbp-0x10]
  3b01f0:	0f 11 87 a8 00 00 00 	movups XMMWORD PTR [rdi+0xa8],xmm0
  3b01f7:	f2 0f 11 8f b8 00 00 	movsd  QWORD PTR [rdi+0xb8],xmm1
  3b01fe:	00 
  3b01ff:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3b0204:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3b0208:	49 8b 7b 20          	mov    rdi,QWORD PTR [r11+0x20]
  3b020c:	49 8b e3             	mov    rsp,r11
  3b020f:	5d                   	pop    rbp
  3b0210:	e9 bf d9 01 00       	jmp    0x3cdbd4
; pdata 0x3b0218..0x3b02a5
  3b0218:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b021d:	57                   	push   rdi
  3b021e:	48 83 ec 40          	sub    rsp,0x40
  3b0222:	48 8b fa             	mov    rdi,rdx
  3b0225:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3b022a:	49 8b d0             	mov    rdx,r8
  3b022d:	41 8b d9             	mov    ebx,r9d
  3b0230:	e8 33 c0 f1 ff       	call   0x2cc268
  3b0235:	8b d3                	mov    edx,ebx
  3b0237:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  3b023c:	e8 2f f1 f2 ff       	call   0x2df370
  3b0241:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
  3b0246:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3b024b:	e8 18 c0 f1 ff       	call   0x2cc268
  3b0250:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
  3b0255:	48 8d 4c 24 38       	lea    rcx,[rsp+0x38]
  3b025a:	e8 09 c0 f1 ff       	call   0x2cc268
  3b025f:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  3b0264:	33 c0                	xor    eax,eax
  3b0266:	48 8b cf             	mov    rcx,rdi
  3b0269:	0f 10 4c 24 30       	movups xmm1,XMMWORD PTR [rsp+0x30]
  3b026e:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3b0274:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  3b0279:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b0280:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b0284:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3b028b:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x4
  3b0292:	04 00 00 00 
  3b0296:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
  3b029b:	48 83 c4 40          	add    rsp,0x40
  3b029f:	5f                   	pop    rdi
  3b02a0:	e9 2f d9 01 00       	jmp    0x3cdbd4
; pdata 0x3b02a8..0x3b035e
  3b02a8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b02ad:	57                   	push   rdi
  3b02ae:	48 83 ec 50          	sub    rsp,0x50
  3b02b2:	48 8b fa             	mov    rdi,rdx
  3b02b5:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  3b02ba:	49 8b d0             	mov    rdx,r8
  3b02bd:	49 8b d9             	mov    rbx,r9
  3b02c0:	e8 a3 bf f1 ff       	call   0x2cc268
  3b02c5:	48 8b d3             	mov    rdx,rbx
  3b02c8:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  3b02cd:	e8 96 bf f1 ff       	call   0x2cc268
  3b02d2:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [rsp+0x80]
  3b02d9:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3b02de:	e8 8d f0 f2 ff       	call   0x2df370
  3b02e3:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [rsp+0x88]
  3b02ea:	48 8d 4c 24 38       	lea    rcx,[rsp+0x38]
  3b02ef:	e8 7c f0 f2 ff       	call   0x2df370
  3b02f4:	48 8b 94 24 90 00 00 	mov    rdx,QWORD PTR [rsp+0x90]
  3b02fb:	00 
  3b02fc:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b0301:	e8 62 bf f1 ff       	call   0x2cc268
  3b0306:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  3b030b:	33 c0                	xor    eax,eax
  3b030d:	48 8b cf             	mov    rcx,rdi
  3b0310:	0f 10 4c 24 30       	movups xmm1,XMMWORD PTR [rsp+0x30]
  3b0315:	89 44 24 68          	mov    DWORD PTR [rsp+0x68],eax
  3b0319:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b0320:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3b0326:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
  3b032b:	f2 0f 10 44 24 40    	movsd  xmm0,QWORD PTR [rsp+0x40]
  3b0331:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3b0338:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x5
  3b033f:	05 00 00 00 
  3b0343:	f2 0f 11 87 a8 00 00 	movsd  QWORD PTR [rdi+0xa8],xmm0
  3b034a:	00 
  3b034b:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b034f:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  3b0354:	48 83 c4 50          	add    rsp,0x50
  3b0358:	5f                   	pop    rdi
  3b0359:	e9 76 d8 01 00       	jmp    0x3cdbd4
; pdata 0x3b0360..0x3b0432
  3b0360:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b0365:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  3b036a:	55                   	push   rbp
  3b036b:	48 8b ec             	mov    rbp,rsp
  3b036e:	48 83 ec 60          	sub    rsp,0x60
  3b0372:	48 8b fa             	mov    rdi,rdx
  3b0375:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3b0379:	49 8b d0             	mov    rdx,r8
  3b037c:	49 8b d9             	mov    rbx,r9
  3b037f:	e8 e4 be f1 ff       	call   0x2cc268
  3b0384:	48 8b d3             	mov    rdx,rbx
  3b0387:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  3b038b:	e8 d8 be f1 ff       	call   0x2cc268
  3b0390:	8b 55 30             	mov    edx,DWORD PTR [rbp+0x30]
  3b0393:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3b0397:	e8 d4 ef f2 ff       	call   0x2df370
  3b039c:	8b 55 38             	mov    edx,DWORD PTR [rbp+0x38]
  3b039f:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  3b03a3:	e8 c8 ef f2 ff       	call   0x2df370
  3b03a8:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  3b03ab:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  3b03af:	e8 bc ef f2 ff       	call   0x2df370
  3b03b4:	8b 55 48             	mov    edx,DWORD PTR [rbp+0x48]
  3b03b7:	48 8d 4d e8          	lea    rcx,[rbp-0x18]
  3b03bb:	e8 b0 ef f2 ff       	call   0x2df370
  3b03c0:	48 8b 55 50          	mov    rdx,QWORD PTR [rbp+0x50]
  3b03c4:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  3b03c8:	e8 9b be f1 ff       	call   0x2cc268
  3b03cd:	0f 10 45 c0          	movups xmm0,XMMWORD PTR [rbp-0x40]
  3b03d1:	33 c0                	xor    eax,eax
  3b03d3:	48 8b cf             	mov    rcx,rdi
  3b03d6:	0f 10 4d d0          	movups xmm1,XMMWORD PTR [rbp-0x30]
  3b03da:	89 45 18             	mov    DWORD PTR [rbp+0x18],eax
  3b03dd:	0f 11 87 88 00 00 00 	movups XMMWORD PTR [rdi+0x88],xmm0
  3b03e4:	89 87 d0 00 00 00    	mov    DWORD PTR [rdi+0xd0],eax
  3b03ea:	48 8d 45 08          	lea    rax,[rbp+0x8]
  3b03ee:	0f 10 45 e0          	movups xmm0,XMMWORD PTR [rbp-0x20]
  3b03f2:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0x7
  3b03f9:	07 00 00 00 
  3b03fd:	0f 11 8f 98 00 00 00 	movups XMMWORD PTR [rdi+0x98],xmm1
  3b0404:	48 89 47 78          	mov    QWORD PTR [rdi+0x78],rax
  3b0408:	f2 0f 10 4d f0       	movsd  xmm1,QWORD PTR [rbp-0x10]
  3b040d:	0f 11 87 a8 00 00 00 	movups XMMWORD PTR [rdi+0xa8],xmm0
  3b0414:	f2 0f 11 8f b8 00 00 	movsd  QWORD PTR [rdi+0xb8],xmm1
  3b041b:	00 
  3b041c:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3b0421:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3b0425:	49 8b 7b 20          	mov    rdi,QWORD PTR [r11+0x20]
  3b0429:	49 8b e3             	mov    rsp,r11
  3b042c:	5d                   	pop    rbp
  3b042d:	e9 a2 d7 01 00       	jmp    0x3cdbd4
; pdata 0x3b0434..0x3b048e
  3b0434:	40 53                	rex push rbx
  3b0436:	48 83 ec 20          	sub    rsp,0x20
  3b043a:	48 8b da             	mov    rbx,rdx
  3b043d:	48 8d 4c 24 48       	lea    rcx,[rsp+0x48]
  3b0442:	49 8b d0             	mov    rdx,r8
  3b0445:	e8 1e be f1 ff       	call   0x2cc268
  3b044a:	33 c0                	xor    eax,eax
  3b044c:	48 c7 83 80 00 00 00 	mov    QWORD PTR [rbx+0x80],0x1
  3b0453:	01 00 00 00 
  3b0457:	88 44 24 38          	mov    BYTE PTR [rsp+0x38],al
  3b045b:	48 8b cb             	mov    rcx,rbx
  3b045e:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
  3b0463:	48 89 83 88 00 00 00 	mov    QWORD PTR [rbx+0x88],rax
  3b046a:	8b 44 24 38          	mov    eax,DWORD PTR [rsp+0x38]
  3b046e:	89 83 d0 00 00 00    	mov    DWORD PTR [rbx+0xd0],eax
  3b0474:	48 8d 44 24 28       	lea    rax,[rsp+0x28]
  3b0479:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  3b047d:	e8 52 d7 01 00       	call   0x3cdbd4
  3b0482:	48 85 c0             	test   rax,rax
  3b0485:	0f 95 c0             	setne  al
  3b0488:	48 83 c4 20          	add    rsp,0x20
  3b048c:	5b                   	pop    rbx
  3b048d:	c3                   	ret
; pdata 0x3b0490..0x3b04b1
  3b0490:	40 53                	rex push rbx
  3b0492:	48 83 ec 20          	sub    rsp,0x20
  3b0496:	49 8b c8             	mov    rcx,r8
  3b0499:	48 8b da             	mov    rbx,rdx
  3b049c:	e8 03 af f1 ff       	call   0x2cb3a4
  3b04a1:	48 8b d0             	mov    rdx,rax
  3b04a4:	48 8b cb             	mov    rcx,rbx
  3b04a7:	48 83 c4 20          	add    rsp,0x20
  3b04ab:	5b                   	pop    rbx
  3b04ac:	e9 03 00 00 00       	jmp    0x3b04b4
; pdata 0x3b04b4..0x3b04fd
  3b04b4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b04b9:	57                   	push   rdi
  3b04ba:	48 83 ec 20          	sub    rsp,0x20
  3b04be:	48 8b da             	mov    rbx,rdx
  3b04c1:	48 8b d1             	mov    rdx,rcx
  3b04c4:	b9 30 00 00 00       	mov    ecx,0x30
  3b04c9:	e8 62 c0 f1 ff       	call   0x2cc530
  3b04ce:	48 8b cb             	mov    rcx,rbx
  3b04d1:	48 8b f8             	mov    rdi,rax
  3b04d4:	e8 cb ae f1 ff       	call   0x2cb3a4
  3b04d9:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b04de:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  3b04e1:	0f 11 07             	movups XMMWORD PTR [rdi],xmm0
  3b04e4:	0f 10 48 10          	movups xmm1,XMMWORD PTR [rax+0x10]
  3b04e8:	0f 11 4f 10          	movups XMMWORD PTR [rdi+0x10],xmm1
  3b04ec:	0f 10 40 20          	movups xmm0,XMMWORD PTR [rax+0x20]
  3b04f0:	48 8b c7             	mov    rax,rdi
  3b04f3:	0f 11 47 20          	movups XMMWORD PTR [rdi+0x20],xmm0
  3b04f7:	48 83 c4 20          	add    rsp,0x20
  3b04fb:	5f                   	pop    rdi
  3b04fc:	c3                   	ret
; pdata 0x3b0500..0x3b057d
  3b0500:	40 53                	rex push rbx
  3b0502:	48 83 ec 20          	sub    rsp,0x20
  3b0506:	8b 05 94 dc 05 00    	mov    eax,DWORD PTR [rip+0x5dc94]        # 0x40e1a0
  3b050c:	48 8b d9             	mov    rbx,rcx
  3b050f:	a8 01                	test   al,0x1
  3b0511:	75 25                	jne    0x3b0538
  3b0513:	83 c8 01             	or     eax,0x1
  3b0516:	b9 7d 14 ac 59       	mov    ecx,0x59ac147d
  3b051b:	89 05 7f dc 05 00    	mov    DWORD PTR [rip+0x5dc7f],eax        # 0x40e1a0
  3b0521:	e8 ea 37 f8 ff       	call   0x333d10
  3b0526:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b0529:	8b 05 71 dc 05 00    	mov    eax,DWORD PTR [rip+0x5dc71]        # 0x40e1a0
  3b052f:	4c 89 05 62 dc 05 00 	mov    QWORD PTR [rip+0x5dc62],r8        # 0x40e198
  3b0536:	eb 07                	jmp    0x3b053f
  3b0538:	4c 8b 05 59 dc 05 00 	mov    r8,QWORD PTR [rip+0x5dc59]        # 0x40e198
  3b053f:	a8 02                	test   al,0x2
  3b0541:	75 1f                	jne    0x3b0562
  3b0543:	48 8b 0d 16 59 02 00 	mov    rcx,QWORD PTR [rip+0x25916]        # 0x3d5e60
  3b054a:	48 8d 15 5f dc 05 00 	lea    rdx,[rip+0x5dc5f]        # 0x40e1b0
  3b0551:	83 c8 02             	or     eax,0x2
  3b0554:	45 33 c9             	xor    r9d,r9d
  3b0557:	89 05 43 dc 05 00    	mov    DWORD PTR [rip+0x5dc43],eax        # 0x40e1a0
  3b055d:	e8 c2 b7 f1 ff       	call   0x2cbd24
  3b0562:	48 8b 0d f7 58 02 00 	mov    rcx,QWORD PTR [rip+0x258f7]        # 0x3d5e60
  3b0569:	48 8d 15 40 dc 05 00 	lea    rdx,[rip+0x5dc40]        # 0x40e1b0
  3b0570:	4c 8b c3             	mov    r8,rbx
  3b0573:	48 83 c4 20          	add    rsp,0x20
  3b0577:	5b                   	pop    rbx
  3b0578:	e9 7f b4 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b0580..0x3b05fd
  3b0580:	40 53                	rex push rbx
  3b0582:	48 83 ec 20          	sub    rsp,0x20
  3b0586:	8b 05 24 db 05 00    	mov    eax,DWORD PTR [rip+0x5db24]        # 0x40e0b0
  3b058c:	48 8b d9             	mov    rbx,rcx
  3b058f:	a8 01                	test   al,0x1
  3b0591:	75 25                	jne    0x3b05b8
  3b0593:	83 c8 01             	or     eax,0x1
  3b0596:	b9 96 67 cc cd       	mov    ecx,0xcdcc6796
  3b059b:	89 05 0f db 05 00    	mov    DWORD PTR [rip+0x5db0f],eax        # 0x40e0b0
  3b05a1:	e8 6a 37 f8 ff       	call   0x333d10
  3b05a6:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b05a9:	8b 05 01 db 05 00    	mov    eax,DWORD PTR [rip+0x5db01]        # 0x40e0b0
  3b05af:	4c 89 05 f2 da 05 00 	mov    QWORD PTR [rip+0x5daf2],r8        # 0x40e0a8
  3b05b6:	eb 07                	jmp    0x3b05bf
  3b05b8:	4c 8b 05 e9 da 05 00 	mov    r8,QWORD PTR [rip+0x5dae9]        # 0x40e0a8
  3b05bf:	a8 02                	test   al,0x2
  3b05c1:	75 1f                	jne    0x3b05e2
  3b05c3:	48 8b 0d 96 58 02 00 	mov    rcx,QWORD PTR [rip+0x25896]        # 0x3d5e60
  3b05ca:	48 8d 15 ef da 05 00 	lea    rdx,[rip+0x5daef]        # 0x40e0c0
  3b05d1:	83 c8 02             	or     eax,0x2
  3b05d4:	45 33 c9             	xor    r9d,r9d
  3b05d7:	89 05 d3 da 05 00    	mov    DWORD PTR [rip+0x5dad3],eax        # 0x40e0b0
  3b05dd:	e8 42 b7 f1 ff       	call   0x2cbd24
  3b05e2:	48 8b 0d 77 58 02 00 	mov    rcx,QWORD PTR [rip+0x25877]        # 0x3d5e60
  3b05e9:	48 8d 15 d0 da 05 00 	lea    rdx,[rip+0x5dad0]        # 0x40e0c0
  3b05f0:	4c 8b c3             	mov    r8,rbx
  3b05f3:	48 83 c4 20          	add    rsp,0x20
  3b05f7:	5b                   	pop    rbx
  3b05f8:	e9 ff b3 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b0600..0x3b067d
  3b0600:	40 53                	rex push rbx
  3b0602:	48 83 ec 20          	sub    rsp,0x20
  3b0606:	8b 05 d4 d7 05 00    	mov    eax,DWORD PTR [rip+0x5d7d4]        # 0x40dde0
  3b060c:	48 8b d9             	mov    rbx,rcx
  3b060f:	a8 01                	test   al,0x1
  3b0611:	75 25                	jne    0x3b0638
  3b0613:	83 c8 01             	or     eax,0x1
  3b0616:	b9 94 44 9c ce       	mov    ecx,0xce9c4494
  3b061b:	89 05 bf d7 05 00    	mov    DWORD PTR [rip+0x5d7bf],eax        # 0x40dde0
  3b0621:	e8 ea 36 f8 ff       	call   0x333d10
  3b0626:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b0629:	8b 05 b1 d7 05 00    	mov    eax,DWORD PTR [rip+0x5d7b1]        # 0x40dde0
  3b062f:	4c 89 05 a2 d7 05 00 	mov    QWORD PTR [rip+0x5d7a2],r8        # 0x40ddd8
  3b0636:	eb 07                	jmp    0x3b063f
  3b0638:	4c 8b 05 99 d7 05 00 	mov    r8,QWORD PTR [rip+0x5d799]        # 0x40ddd8
  3b063f:	a8 02                	test   al,0x2
  3b0641:	75 1f                	jne    0x3b0662
  3b0643:	48 8b 0d 16 58 02 00 	mov    rcx,QWORD PTR [rip+0x25816]        # 0x3d5e60
  3b064a:	48 8d 15 9f d7 05 00 	lea    rdx,[rip+0x5d79f]        # 0x40ddf0
  3b0651:	83 c8 02             	or     eax,0x2
  3b0654:	45 33 c9             	xor    r9d,r9d
  3b0657:	89 05 83 d7 05 00    	mov    DWORD PTR [rip+0x5d783],eax        # 0x40dde0
  3b065d:	e8 c2 b6 f1 ff       	call   0x2cbd24
  3b0662:	48 8b 0d f7 57 02 00 	mov    rcx,QWORD PTR [rip+0x257f7]        # 0x3d5e60
  3b0669:	48 8d 15 80 d7 05 00 	lea    rdx,[rip+0x5d780]        # 0x40ddf0
  3b0670:	4c 8b c3             	mov    r8,rbx
  3b0673:	48 83 c4 20          	add    rsp,0x20
  3b0677:	5b                   	pop    rbx
  3b0678:	e9 7f b3 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b0680..0x3b072d
  3b0680:	40 53                	rex push rbx
  3b0682:	55                   	push   rbp
  3b0683:	56                   	push   rsi
  3b0684:	57                   	push   rdi
  3b0685:	48 83 ec 48          	sub    rsp,0x48
  3b0689:	8b 05 91 d1 05 00    	mov    eax,DWORD PTR [rip+0x5d191]        # 0x40d820
  3b068f:	41 8b d9             	mov    ebx,r9d
  3b0692:	41 8b f8             	mov    edi,r8d
  3b0695:	8b f2                	mov    esi,edx
  3b0697:	48 8b e9             	mov    rbp,rcx
  3b069a:	a8 01                	test   al,0x1
  3b069c:	75 25                	jne    0x3b06c3
  3b069e:	83 c8 01             	or     eax,0x1
  3b06a1:	b9 5f 95 b3 c1       	mov    ecx,0xc1b3955f
  3b06a6:	89 05 74 d1 05 00    	mov    DWORD PTR [rip+0x5d174],eax        # 0x40d820
  3b06ac:	e8 5f 36 f8 ff       	call   0x333d10
  3b06b1:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b06b4:	8b 05 66 d1 05 00    	mov    eax,DWORD PTR [rip+0x5d166]        # 0x40d820
  3b06ba:	4c 89 05 57 d1 05 00 	mov    QWORD PTR [rip+0x5d157],r8        # 0x40d818
  3b06c1:	eb 07                	jmp    0x3b06ca
  3b06c3:	4c 8b 05 4e d1 05 00 	mov    r8,QWORD PTR [rip+0x5d14e]        # 0x40d818
  3b06ca:	a8 02                	test   al,0x2
  3b06cc:	75 1f                	jne    0x3b06ed
  3b06ce:	48 8b 0d 8b 57 02 00 	mov    rcx,QWORD PTR [rip+0x2578b]        # 0x3d5e60
  3b06d5:	48 8d 15 54 d1 05 00 	lea    rdx,[rip+0x5d154]        # 0x40d830
  3b06dc:	83 c8 02             	or     eax,0x2
  3b06df:	45 33 c9             	xor    r9d,r9d
  3b06e2:	89 05 38 d1 05 00    	mov    DWORD PTR [rip+0x5d138],eax        # 0x40d820
  3b06e8:	e8 37 b6 f1 ff       	call   0x2cbd24
  3b06ed:	8a 84 24 98 00 00 00 	mov    al,BYTE PTR [rsp+0x98]
  3b06f4:	48 8d 15 35 d1 05 00 	lea    rdx,[rip+0x5d135]        # 0x40d830
  3b06fb:	48 8b 0d 5e 57 02 00 	mov    rcx,QWORD PTR [rip+0x2575e]        # 0x3d5e60
  3b0702:	44 8b ce             	mov    r9d,esi
  3b0705:	88 44 24 38          	mov    BYTE PTR [rsp+0x38],al
  3b0709:	4c 8b c5             	mov    r8,rbp
  3b070c:	8a 84 24 90 00 00 00 	mov    al,BYTE PTR [rsp+0x90]
  3b0713:	88 44 24 30          	mov    BYTE PTR [rsp+0x30],al
  3b0717:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  3b071b:	89 7c 24 20          	mov    DWORD PTR [rsp+0x20],edi
  3b071f:	e8 cc f8 ff ff       	call   0x3afff0
  3b0724:	48 83 c4 48          	add    rsp,0x48
  3b0728:	5f                   	pop    rdi
  3b0729:	5e                   	pop    rsi
  3b072a:	5d                   	pop    rbp
  3b072b:	5b                   	pop    rbx
  3b072c:	c3                   	ret
; pdata 0x3b0730..0x3b07bc
  3b0730:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b0735:	57                   	push   rdi
  3b0736:	48 83 ec 20          	sub    rsp,0x20
  3b073a:	8b 05 c8 d4 05 00    	mov    eax,DWORD PTR [rip+0x5d4c8]        # 0x40dc08
  3b0740:	48 8b da             	mov    rbx,rdx
  3b0743:	48 8b f9             	mov    rdi,rcx
  3b0746:	a8 01                	test   al,0x1
  3b0748:	75 25                	jne    0x3b076f
  3b074a:	83 c8 01             	or     eax,0x1
  3b074d:	b9 87 3d 71 ce       	mov    ecx,0xce713d87
  3b0752:	89 05 b0 d4 05 00    	mov    DWORD PTR [rip+0x5d4b0],eax        # 0x40dc08
  3b0758:	e8 b3 35 f8 ff       	call   0x333d10
  3b075d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b0760:	8b 05 a2 d4 05 00    	mov    eax,DWORD PTR [rip+0x5d4a2]        # 0x40dc08
  3b0766:	4c 89 05 93 d4 05 00 	mov    QWORD PTR [rip+0x5d493],r8        # 0x40dc00
  3b076d:	eb 07                	jmp    0x3b0776
  3b076f:	4c 8b 05 8a d4 05 00 	mov    r8,QWORD PTR [rip+0x5d48a]        # 0x40dc00
  3b0776:	a8 02                	test   al,0x2
  3b0778:	75 1f                	jne    0x3b0799
  3b077a:	48 8b 0d df 56 02 00 	mov    rcx,QWORD PTR [rip+0x256df]        # 0x3d5e60
  3b0781:	48 8d 15 88 d4 05 00 	lea    rdx,[rip+0x5d488]        # 0x40dc10
  3b0788:	83 c8 02             	or     eax,0x2
  3b078b:	45 33 c9             	xor    r9d,r9d
  3b078e:	89 05 74 d4 05 00    	mov    DWORD PTR [rip+0x5d474],eax        # 0x40dc08
  3b0794:	e8 8b b5 f1 ff       	call   0x2cbd24
  3b0799:	48 8b 0d c0 56 02 00 	mov    rcx,QWORD PTR [rip+0x256c0]        # 0x3d5e60
  3b07a0:	48 8d 15 69 d4 05 00 	lea    rdx,[rip+0x5d469]        # 0x40dc10
  3b07a7:	4c 8b cb             	mov    r9,rbx
  3b07aa:	4c 8b c7             	mov    r8,rdi
  3b07ad:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b07b2:	48 83 c4 20          	add    rsp,0x20
  3b07b6:	5f                   	pop    rdi
  3b07b7:	e9 d8 18 f2 ff       	jmp    0x2d2094
; pdata 0x3b07bc..0x3b07dd
  3b07bc:	40 53                	rex push rbx
  3b07be:	48 83 ec 20          	sub    rsp,0x20
  3b07c2:	48 8b d9             	mov    rbx,rcx
  3b07c5:	48 8b ca             	mov    rcx,rdx
  3b07c8:	e8 d7 ab f1 ff       	call   0x2cb3a4
  3b07cd:	48 8b d0             	mov    rdx,rax
  3b07d0:	48 8b cb             	mov    rcx,rbx
  3b07d3:	48 83 c4 20          	add    rsp,0x20
  3b07d7:	5b                   	pop    rbx
  3b07d8:	e9 cb f2 ff ff       	jmp    0x3afaa8
; pdata 0x3b07e0..0x3b086c
  3b07e0:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b07e5:	57                   	push   rdi
  3b07e6:	48 83 ec 20          	sub    rsp,0x20
  3b07ea:	8b 05 a0 da 05 00    	mov    eax,DWORD PTR [rip+0x5daa0]        # 0x40e290
  3b07f0:	48 8b da             	mov    rbx,rdx
  3b07f3:	48 8b f9             	mov    rdi,rcx
  3b07f6:	a8 01                	test   al,0x1
  3b07f8:	75 25                	jne    0x3b081f
  3b07fa:	83 c8 01             	or     eax,0x1
  3b07fd:	b9 9f 47 b0 c0       	mov    ecx,0xc0b0479f
  3b0802:	89 05 88 da 05 00    	mov    DWORD PTR [rip+0x5da88],eax        # 0x40e290
  3b0808:	e8 03 35 f8 ff       	call   0x333d10
  3b080d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b0810:	8b 05 7a da 05 00    	mov    eax,DWORD PTR [rip+0x5da7a]        # 0x40e290
  3b0816:	4c 89 05 6b da 05 00 	mov    QWORD PTR [rip+0x5da6b],r8        # 0x40e288
  3b081d:	eb 07                	jmp    0x3b0826
  3b081f:	4c 8b 05 62 da 05 00 	mov    r8,QWORD PTR [rip+0x5da62]        # 0x40e288
  3b0826:	a8 02                	test   al,0x2
  3b0828:	75 1f                	jne    0x3b0849
  3b082a:	48 8b 0d 2f 56 02 00 	mov    rcx,QWORD PTR [rip+0x2562f]        # 0x3d5e60
  3b0831:	48 8d 15 68 da 05 00 	lea    rdx,[rip+0x5da68]        # 0x40e2a0
  3b0838:	83 c8 02             	or     eax,0x2
  3b083b:	45 33 c9             	xor    r9d,r9d
  3b083e:	89 05 4c da 05 00    	mov    DWORD PTR [rip+0x5da4c],eax        # 0x40e290
  3b0844:	e8 db b4 f1 ff       	call   0x2cbd24
  3b0849:	48 8b 0d 10 56 02 00 	mov    rcx,QWORD PTR [rip+0x25610]        # 0x3d5e60
  3b0850:	48 8d 15 49 da 05 00 	lea    rdx,[rip+0x5da49]        # 0x40e2a0
  3b0857:	4c 8b cb             	mov    r9,rbx
  3b085a:	4c 8b c7             	mov    r8,rdi
  3b085d:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b0862:	48 83 c4 20          	add    rsp,0x20
  3b0866:	5f                   	pop    rdi
  3b0867:	e9 28 18 f2 ff       	jmp    0x2d2094
; pdata 0x3b086c..0x3b08f7
  3b086c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b0871:	57                   	push   rdi
  3b0872:	48 83 ec 20          	sub    rsp,0x20
  3b0876:	8b 05 94 d0 05 00    	mov    eax,DWORD PTR [rip+0x5d094]        # 0x40d910
  3b087c:	8b da                	mov    ebx,edx
  3b087e:	48 8b f9             	mov    rdi,rcx
  3b0881:	a8 01                	test   al,0x1
  3b0883:	75 25                	jne    0x3b08aa
  3b0885:	83 c8 01             	or     eax,0x1
  3b0888:	b9 f0 45 e8 13       	mov    ecx,0x13e845f0
  3b088d:	89 05 7d d0 05 00    	mov    DWORD PTR [rip+0x5d07d],eax        # 0x40d910
  3b0893:	e8 78 34 f8 ff       	call   0x333d10
  3b0898:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b089b:	8b 05 6f d0 05 00    	mov    eax,DWORD PTR [rip+0x5d06f]        # 0x40d910
  3b08a1:	4c 89 05 60 d0 05 00 	mov    QWORD PTR [rip+0x5d060],r8        # 0x40d908
  3b08a8:	eb 07                	jmp    0x3b08b1
  3b08aa:	4c 8b 05 57 d0 05 00 	mov    r8,QWORD PTR [rip+0x5d057]        # 0x40d908
  3b08b1:	a8 02                	test   al,0x2
  3b08b3:	75 1f                	jne    0x3b08d4
  3b08b5:	48 8b 0d a4 55 02 00 	mov    rcx,QWORD PTR [rip+0x255a4]        # 0x3d5e60
  3b08bc:	48 8d 15 5d d0 05 00 	lea    rdx,[rip+0x5d05d]        # 0x40d920
  3b08c3:	83 c8 02             	or     eax,0x2
  3b08c6:	45 33 c9             	xor    r9d,r9d
  3b08c9:	89 05 41 d0 05 00    	mov    DWORD PTR [rip+0x5d041],eax        # 0x40d910
  3b08cf:	e8 50 b4 f1 ff       	call   0x2cbd24
  3b08d4:	48 8b 0d 85 55 02 00 	mov    rcx,QWORD PTR [rip+0x25585]        # 0x3d5e60
  3b08db:	48 8d 15 3e d0 05 00 	lea    rdx,[rip+0x5d03e]        # 0x40d920
  3b08e2:	44 8b cb             	mov    r9d,ebx
  3b08e5:	4c 8b c7             	mov    r8,rdi
  3b08e8:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b08ed:	48 83 c4 20          	add    rsp,0x20
  3b08f1:	5f                   	pop    rdi
  3b08f2:	e9 d1 a8 f7 ff       	jmp    0x32b1c8
; pdata 0x3b08f8..0x3b0983
  3b08f8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b08fd:	57                   	push   rdi
  3b08fe:	48 83 ec 20          	sub    rsp,0x20
  3b0902:	8b 05 38 de 05 00    	mov    eax,DWORD PTR [rip+0x5de38]        # 0x40e740
  3b0908:	8b da                	mov    ebx,edx
  3b090a:	48 8b f9             	mov    rdi,rcx
  3b090d:	a8 01                	test   al,0x1
  3b090f:	75 25                	jne    0x3b0936
  3b0911:	83 c8 01             	or     eax,0x1
  3b0914:	b9 f2 30 f7 9e       	mov    ecx,0x9ef730f2
  3b0919:	89 05 21 de 05 00    	mov    DWORD PTR [rip+0x5de21],eax        # 0x40e740
  3b091f:	e8 ec 33 f8 ff       	call   0x333d10
  3b0924:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b0927:	8b 05 13 de 05 00    	mov    eax,DWORD PTR [rip+0x5de13]        # 0x40e740
  3b092d:	4c 89 05 04 de 05 00 	mov    QWORD PTR [rip+0x5de04],r8        # 0x40e738
  3b0934:	eb 07                	jmp    0x3b093d
  3b0936:	4c 8b 05 fb dd 05 00 	mov    r8,QWORD PTR [rip+0x5ddfb]        # 0x40e738
  3b093d:	a8 02                	test   al,0x2
  3b093f:	75 1f                	jne    0x3b0960
  3b0941:	48 8b 0d 18 55 02 00 	mov    rcx,QWORD PTR [rip+0x25518]        # 0x3d5e60
  3b0948:	48 8d 15 01 de 05 00 	lea    rdx,[rip+0x5de01]        # 0x40e750
  3b094f:	83 c8 02             	or     eax,0x2
  3b0952:	45 33 c9             	xor    r9d,r9d
  3b0955:	89 05 e5 dd 05 00    	mov    DWORD PTR [rip+0x5dde5],eax        # 0x40e740
  3b095b:	e8 c4 b3 f1 ff       	call   0x2cbd24
  3b0960:	48 8b 0d f9 54 02 00 	mov    rcx,QWORD PTR [rip+0x254f9]        # 0x3d5e60
  3b0967:	48 8d 15 e2 dd 05 00 	lea    rdx,[rip+0x5dde2]        # 0x40e750
  3b096e:	44 8b cb             	mov    r9d,ebx
  3b0971:	4c 8b c7             	mov    r8,rdi
  3b0974:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b0979:	48 83 c4 20          	add    rsp,0x20
  3b097d:	5f                   	pop    rdi
  3b097e:	e9 45 a8 f7 ff       	jmp    0x32b1c8
; pdata 0x3b0a18..0x3b0a81
  3b0a18:	48 8b c4             	mov    rax,rsp
  3b0a1b:	53                   	push   rbx
  3b0a1c:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  3b0a23:	0f 57 c9             	xorps  xmm1,xmm1
  3b0a26:	0f 57 db             	xorps  xmm3,xmm3
  3b0a29:	f3 0f 11 48 e8       	movss  DWORD PTR [rax-0x18],xmm1
  3b0a2e:	0f 57 d2             	xorps  xmm2,xmm2
  3b0a31:	f3 0f 11 48 e0       	movss  DWORD PTR [rax-0x20],xmm1
  3b0a36:	48 8b d9             	mov    rbx,rcx
  3b0a39:	f3 0f 11 48 d8       	movss  DWORD PTR [rax-0x28],xmm1
  3b0a3e:	f3 0f 11 48 d0       	movss  DWORD PTR [rax-0x30],xmm1
  3b0a43:	f3 0f 11 48 c8       	movss  DWORD PTR [rax-0x38],xmm1
  3b0a48:	f3 0f 11 48 c0       	movss  DWORD PTR [rax-0x40],xmm1
  3b0a4d:	f3 0f 11 48 b8       	movss  DWORD PTR [rax-0x48],xmm1
  3b0a52:	f3 0f 11 48 b0       	movss  DWORD PTR [rax-0x50],xmm1
  3b0a57:	f3 0f 11 48 a8       	movss  DWORD PTR [rax-0x58],xmm1
  3b0a5c:	f3 0f 11 48 a0       	movss  DWORD PTR [rax-0x60],xmm1
  3b0a61:	f3 0f 11 48 98       	movss  DWORD PTR [rax-0x68],xmm1
  3b0a66:	f3 0f 11 48 90       	movss  DWORD PTR [rax-0x70],xmm1
  3b0a6b:	f3 0f 11 48 88       	movss  DWORD PTR [rax-0x78],xmm1
  3b0a70:	e8 27 27 00 00       	call   0x3b319c
  3b0a75:	48 8b c3             	mov    rax,rbx
  3b0a78:	48 81 c4 90 00 00 00 	add    rsp,0x90
  3b0a7f:	5b                   	pop    rbx
  3b0a80:	c3                   	ret
; pdata 0x3b0a8c..0x3b0aaa
  3b0a8c:	48 83 ec 28          	sub    rsp,0x28
  3b0a90:	48 8b 51 08          	mov    rdx,QWORD PTR [rcx+0x8]
  3b0a94:	48 85 d2             	test   rdx,rdx
  3b0a97:	74 0c                	je     0x3b0aa5
  3b0a99:	4c 8b 41 10          	mov    r8,QWORD PTR [rcx+0x10]
  3b0a9d:	48 8b 09             	mov    rcx,QWORD PTR [rcx]
  3b0aa0:	e8 0f f9 f6 ff       	call   0x3203b4
  3b0aa5:	48 83 c4 28          	add    rsp,0x28
  3b0aa9:	c3                   	ret
; pdata 0x3b0aac..0x3b0af6
  3b0aac:	40 53                	rex push rbx
  3b0aae:	48 83 ec 30          	sub    rsp,0x30
  3b0ab2:	f3 0f 10 41 0c       	movss  xmm0,DWORD PTR [rcx+0xc]
  3b0ab7:	48 8b da             	mov    rbx,rdx
  3b0aba:	f3 0f 10 59 08       	movss  xmm3,DWORD PTR [rcx+0x8]
  3b0abf:	f3 0f 10 51 04       	movss  xmm2,DWORD PTR [rcx+0x4]
  3b0ac4:	f3 0f 10 09          	movss  xmm1,DWORD PTR [rcx]
  3b0ac8:	48 8b ca             	mov    rcx,rdx
  3b0acb:	f3 41 0f 5c 40 0c    	subss  xmm0,DWORD PTR [r8+0xc]
  3b0ad1:	f3 41 0f 5c 58 08    	subss  xmm3,DWORD PTR [r8+0x8]
  3b0ad7:	f3 41 0f 5c 50 04    	subss  xmm2,DWORD PTR [r8+0x4]
  3b0add:	f3 41 0f 5c 08       	subss  xmm1,DWORD PTR [r8]
  3b0ae2:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  3b0ae8:	e8 63 b8 f1 ff       	call   0x2cc350
  3b0aed:	48 8b c3             	mov    rax,rbx
  3b0af0:	48 83 c4 30          	add    rsp,0x30
  3b0af4:	5b                   	pop    rbx
  3b0af5:	c3                   	ret
; pdata 0x3b106c..0x3b1199
  3b106c:	48 8b c4             	mov    rax,rsp
  3b106f:	53                   	push   rbx
  3b1070:	56                   	push   rsi
  3b1071:	57                   	push   rdi
  3b1072:	48 83 ec 60          	sub    rsp,0x60
  3b1076:	48 8d 50 b0          	lea    rdx,[rax-0x50]
  3b107a:	48 c7 40 20 00 00 00 	mov    QWORD PTR [rax+0x20],0x0
  3b1081:	00 
  3b1082:	48 8d 48 10          	lea    rcx,[rax+0x10]
  3b1086:	e8 91 01 00 00       	call   0x3b121c
  3b108b:	48 8b c8             	mov    rcx,rax
  3b108e:	e8 d1 25 f3 ff       	call   0x2e3664
  3b1093:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  3b1098:	48 8b d8             	mov    rbx,rax
  3b109b:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b10a2:	00 
  3b10a3:	e8 94 fb ff ff       	call   0x3b0c3c
  3b10a8:	48 8b c8             	mov    rcx,rax
  3b10ab:	e8 dc 25 f3 ff       	call   0x2e368c
  3b10b0:	48 8b c8             	mov    rcx,rax
  3b10b3:	48 8b d3             	mov    rdx,rbx
  3b10b6:	e8 69 31 f8 ff       	call   0x334224
  3b10bb:	48 8b f0             	mov    rsi,rax
  3b10be:	48 8b c8             	mov    rcx,rax
  3b10c1:	e9 ab 00 00 00       	jmp    0x3b1171
  3b10c6:	48 8b cb             	mov    rcx,rbx
  3b10c9:	e8 52 39 00 00       	call   0x3b4a20
  3b10ce:	48 8b f8             	mov    rdi,rax
  3b10d1:	48 85 c0             	test   rax,rax
  3b10d4:	0f 84 94 00 00 00    	je     0x3b116e
  3b10da:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3b10e1:	00 
  3b10e2:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b10e9:	00 
  3b10ea:	e8 05 06 00 00       	call   0x3b16f4
  3b10ef:	48 8b c8             	mov    rcx,rax
  3b10f2:	e8 bd 73 f2 ff       	call   0x2d84b4
  3b10f7:	48 8b d0             	mov    rdx,rax
  3b10fa:	48 8b cf             	mov    rcx,rdi
  3b10fd:	e8 f2 3e f8 ff       	call   0x334ff4
  3b1102:	84 c0                	test   al,al
  3b1104:	74 68                	je     0x3b116e
  3b1106:	48 8b cb             	mov    rcx,rbx
  3b1109:	e8 12 3a 00 00       	call   0x3b4b20
  3b110e:	83 f8 01             	cmp    eax,0x1
  3b1111:	75 5b                	jne    0x3b116e
  3b1113:	33 d2                	xor    edx,edx
  3b1115:	48 8b cb             	mov    rcx,rbx
  3b1118:	e8 7b 39 00 00       	call   0x3b4a98
  3b111d:	48 8b c8             	mov    rcx,rax
  3b1120:	e8 c3 3c 00 00       	call   0x3b4de8
  3b1125:	48 8b f8             	mov    rdi,rax
  3b1128:	48 85 c0             	test   rax,rax
  3b112b:	74 41                	je     0x3b116e
  3b112d:	eb 11                	jmp    0x3b1140
  3b112f:	80 38 2e             	cmp    BYTE PTR [rax],0x2e
  3b1132:	74 05                	je     0x3b1139
  3b1134:	80 38 2b             	cmp    BYTE PTR [rax],0x2b
  3b1137:	75 04                	jne    0x3b113d
  3b1139:	48 8d 78 01          	lea    rdi,[rax+0x1]
  3b113d:	48 ff c0             	inc    rax
  3b1140:	80 38 00             	cmp    BYTE PTR [rax],0x0
  3b1143:	75 ea                	jne    0x3b112f
  3b1145:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b114a:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b1151:	00 
  3b1152:	e8 e9 06 00 00       	call   0x3b1840
  3b1157:	48 8b c8             	mov    rcx,rax
  3b115a:	e8 d9 bf f2 ff       	call   0x2dd138
  3b115f:	48 8b d0             	mov    rdx,rax
  3b1162:	48 8b cf             	mov    rcx,rdi
  3b1165:	e8 8a 3e f8 ff       	call   0x334ff4
  3b116a:	84 c0                	test   al,al
  3b116c:	75 26                	jne    0x3b1194
  3b116e:	48 8b ce             	mov    rcx,rsi
  3b1171:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b1178:	00 
  3b1179:	e8 46 34 00 00       	call   0x3b45c4
  3b117e:	48 8b d8             	mov    rbx,rax
  3b1181:	48 85 c0             	test   rax,rax
  3b1184:	0f 85 3c ff ff ff    	jne    0x3b10c6
  3b118a:	33 c0                	xor    eax,eax
  3b118c:	48 83 c4 60          	add    rsp,0x60
  3b1190:	5f                   	pop    rdi
  3b1191:	5e                   	pop    rsi
  3b1192:	5b                   	pop    rbx
  3b1193:	c3                   	ret
  3b1194:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  3b1197:	eb f3                	jmp    0x3b118c
; pdata 0x3b1904..0x3b197e
  3b1904:	48 83 ec 48          	sub    rsp,0x48
  3b1908:	48 8b 0d 69 b8 05 00 	mov    rcx,QWORD PTR [rip+0x5b869]        # 0x40d178
  3b190f:	0f 29 74 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm6
  3b1914:	0f 28 f1             	movaps xmm6,xmm1
  3b1917:	0f 29 7c 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm7
  3b191c:	0f 28 f8             	movaps xmm7,xmm0
  3b191f:	e8 18 1f 00 00       	call   0x3b383c
  3b1924:	48 8b 0d 4d b8 05 00 	mov    rcx,QWORD PTR [rip+0x5b84d]        # 0x40d178
  3b192b:	f3 0f 2c d7          	cvttss2si edx,xmm7
  3b192f:	e8 9c 27 00 00       	call   0x3b40d0
  3b1934:	48 8b 0d 3d b8 05 00 	mov    rcx,QWORD PTR [rip+0x5b83d]        # 0x40d178
  3b193b:	f3 0f 2c d6          	cvttss2si edx,xmm6
  3b193f:	e8 98 20 00 00       	call   0x3b39dc
  3b1944:	48 8b 0d 2d b8 05 00 	mov    rcx,QWORD PTR [rip+0x5b82d]        # 0x40d178
  3b194b:	e8 30 00 00 00       	call   0x3b1980
  3b1950:	0f 28 d6             	movaps xmm2,xmm6
  3b1953:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b1958:	0f 28 cf             	movaps xmm1,xmm7
  3b195b:	e8 e0 a9 f1 ff       	call   0x2cc340
  3b1960:	48 8b 0d 01 b8 05 00 	mov    rcx,QWORD PTR [rip+0x5b801]        # 0x40d168
  3b1967:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  3b196a:	e8 4d 24 00 00       	call   0x3b3dbc
  3b196f:	0f 28 74 24 30       	movaps xmm6,XMMWORD PTR [rsp+0x30]
  3b1974:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
  3b1979:	48 83 c4 48          	add    rsp,0x48
  3b197d:	c3                   	ret
; pdata 0x3b1980..0x3b1a93
  3b1980:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b1985:	55                   	push   rbp
  3b1986:	56                   	push   rsi
  3b1987:	57                   	push   rdi
  3b1988:	48 83 ec 50          	sub    rsp,0x50
  3b198c:	8b 05 be bb 05 00    	mov    eax,DWORD PTR [rip+0x5bbbe]        # 0x40d550
  3b1992:	48 8b e9             	mov    rbp,rcx
  3b1995:	a8 01                	test   al,0x1
  3b1997:	0f 85 aa 00 00 00    	jne    0x3b1a47
  3b199d:	83 c8 01             	or     eax,0x1
  3b19a0:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b19a5:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  3b19aa:	89 05 a0 bb 05 00    	mov    DWORD PTR [rip+0x5bba0],eax        # 0x40d550
  3b19b0:	e8 8f fd ff ff       	call   0x3b1744
  3b19b5:	48 8b c8             	mov    rcx,rax
  3b19b8:	e8 4f c4 f1 ff       	call   0x2cde0c
  3b19bd:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  3b19c2:	48 8b f0             	mov    rsi,rax
  3b19c5:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b19cc:	00 
  3b19cd:	e8 5e ad f1 ff       	call   0x2cc730
  3b19d2:	48 8b c8             	mov    rcx,rax
  3b19d5:	e8 ca c2 f1 ff       	call   0x2cdca4
  3b19da:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  3b19e1:	00 
  3b19e2:	48 8b f8             	mov    rdi,rax
  3b19e5:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b19ec:	00 
  3b19ed:	e8 46 f8 ff ff       	call   0x3b1238
  3b19f2:	48 8b c8             	mov    rcx,rax
  3b19f5:	e8 16 b7 f2 ff       	call   0x2dd110
  3b19fa:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  3b19ff:	48 8b d8             	mov    rbx,rax
  3b1a02:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b1a09:	00 
  3b1a0a:	e8 49 f2 ff ff       	call   0x3b0c58
  3b1a0f:	48 8b c8             	mov    rcx,rax
  3b1a12:	e8 05 6c f2 ff       	call   0x2d861c
  3b1a17:	48 8b c8             	mov    rcx,rax
  3b1a1a:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b1a21:	ff 
  3b1a22:	4c 8b cf             	mov    r9,rdi
  3b1a25:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b1a2a:	45 33 c0             	xor    r8d,r8d
  3b1a2d:	48 8b d3             	mov    rdx,rbx
  3b1a30:	e8 bf 21 f8 ff       	call   0x333bf4
  3b1a35:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b1a38:	8b 05 12 bb 05 00    	mov    eax,DWORD PTR [rip+0x5bb12]        # 0x40d550
  3b1a3e:	4c 89 05 03 bb 05 00 	mov    QWORD PTR [rip+0x5bb03],r8        # 0x40d548
  3b1a45:	eb 07                	jmp    0x3b1a4e
  3b1a47:	4c 8b 05 fa ba 05 00 	mov    r8,QWORD PTR [rip+0x5bafa]        # 0x40d548
  3b1a4e:	a8 02                	test   al,0x2
  3b1a50:	75 1f                	jne    0x3b1a71
  3b1a52:	48 8b 0d 07 44 02 00 	mov    rcx,QWORD PTR [rip+0x24407]        # 0x3d5e60
  3b1a59:	48 8d 15 00 bb 05 00 	lea    rdx,[rip+0x5bb00]        # 0x40d560
  3b1a60:	83 c8 02             	or     eax,0x2
  3b1a63:	45 33 c9             	xor    r9d,r9d
  3b1a66:	89 05 e4 ba 05 00    	mov    DWORD PTR [rip+0x5bae4],eax        # 0x40d550
  3b1a6c:	e8 b3 a2 f1 ff       	call   0x2cbd24
  3b1a71:	48 8b 0d e8 43 02 00 	mov    rcx,QWORD PTR [rip+0x243e8]        # 0x3d5e60
  3b1a78:	48 8d 15 e1 ba 05 00 	lea    rdx,[rip+0x5bae1]        # 0x40d560
  3b1a7f:	4c 8b c5             	mov    r8,rbp
  3b1a82:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  3b1a87:	48 83 c4 50          	add    rsp,0x50
  3b1a8b:	5f                   	pop    rdi
  3b1a8c:	5e                   	pop    rsi
  3b1a8d:	5d                   	pop    rbp
  3b1a8e:	e9 a1 e9 ff ff       	jmp    0x3b0434
; pdata 0x3b1a94..0x3b1dc1
  3b1a94:	48 8b c4             	mov    rax,rsp
  3b1a97:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  3b1a9b:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  3b1a9f:	55                   	push   rbp
  3b1aa0:	56                   	push   rsi
  3b1aa1:	57                   	push   rdi
  3b1aa2:	41 54                	push   r12
  3b1aa4:	41 55                	push   r13
  3b1aa6:	41 56                	push   r14
  3b1aa8:	41 57                	push   r15
  3b1aaa:	48 8d a8 08 ff ff ff 	lea    rbp,[rax-0xf8]
  3b1ab1:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  3b1ab8:	f3 0f 10 5a 18       	movss  xmm3,DWORD PTR [rdx+0x18]
  3b1abd:	4c 8b f1             	mov    r14,rcx
  3b1ac0:	f3 0f 10 52 1c       	movss  xmm2,DWORD PTR [rdx+0x1c]
  3b1ac5:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  3b1ac9:	0f 29 70 b8          	movaps XMMWORD PTR [rax-0x48],xmm6
  3b1acd:	0f 28 cb             	movaps xmm1,xmm3
  3b1ad0:	0f 29 78 a8          	movaps XMMWORD PTR [rax-0x58],xmm7
  3b1ad4:	48 8b da             	mov    rbx,rdx
  3b1ad7:	44 0f 29 40 98       	movaps XMMWORD PTR [rax-0x68],xmm8
  3b1adc:	66 4d 0f 6e c0       	movq   xmm8,r8
  3b1ae1:	f2 44 0f 11 85 18 01 	movsd  QWORD PTR [rbp+0x118],xmm8
  3b1ae8:	00 00 
  3b1aea:	f3 0f 11 54 24 20    	movss  DWORD PTR [rsp+0x20],xmm2
  3b1af0:	e8 5b a8 f1 ff       	call   0x2cc350
  3b1af5:	f3 0f 10 5b 28       	movss  xmm3,DWORD PTR [rbx+0x28]
  3b1afa:	48 8d 4d 90          	lea    rcx,[rbp-0x70]
  3b1afe:	f3 0f 10 53 2c       	movss  xmm2,DWORD PTR [rbx+0x2c]
  3b1b03:	0f 28 cb             	movaps xmm1,xmm3
  3b1b06:	f3 0f 11 54 24 20    	movss  DWORD PTR [rsp+0x20],xmm2
  3b1b0c:	e8 3f a8 f1 ff       	call   0x2cc350
  3b1b11:	48 8b 15 60 b6 05 00 	mov    rdx,QWORD PTR [rip+0x5b660]        # 0x40d178
  3b1b18:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  3b1b1c:	0f 57 c0             	xorps  xmm0,xmm0
  3b1b1f:	33 c0                	xor    eax,eax
  3b1b21:	0f 11 45 d0          	movups XMMWORD PTR [rbp-0x30],xmm0
  3b1b25:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  3b1b29:	0f 11 45 e0          	movups XMMWORD PTR [rbp-0x20],xmm0
  3b1b2d:	e8 f2 2c 00 00       	call   0x3b4824
  3b1b32:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3b1b36:	49 8b ce             	mov    rcx,r14
  3b1b39:	e8 52 21 00 00       	call   0x3b3c90
  3b1b3e:	0f 57 f6             	xorps  xmm6,xmm6
  3b1b41:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b1b46:	0f 57 db             	xorps  xmm3,xmm3
  3b1b49:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  3b1b4f:	0f 57 d2             	xorps  xmm2,xmm2
  3b1b52:	0f 57 c9             	xorps  xmm1,xmm1
  3b1b55:	e8 f2 2c f2 ff       	call   0x2d484c
  3b1b5a:	41 b0 01             	mov    r8b,0x1
  3b1b5d:	4c 8d 4c 24 60       	lea    r9,[rsp+0x60]
  3b1b62:	41 8a d0             	mov    dl,r8b
  3b1b65:	49 8b ce             	mov    rcx,r14
  3b1b68:	e8 5b d6 ff ff       	call   0x3af1c8
  3b1b6d:	f3 0f 10 bd 1c 01 00 	movss  xmm7,DWORD PTR [rbp+0x11c]
  3b1b74:	00 
  3b1b75:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b1b7a:	41 0f 28 d8          	movaps xmm3,xmm8
  3b1b7e:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  3b1b84:	0f 57 d2             	xorps  xmm2,xmm2
  3b1b87:	0f 57 c9             	xorps  xmm1,xmm1
  3b1b8a:	e8 c1 a7 f1 ff       	call   0x2cc350
  3b1b8f:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3b1b94:	49 8b ce             	mov    rcx,r14
  3b1b97:	e8 18 dd ff ff       	call   0x3af8b4
  3b1b9c:	f3 0f 10 0d ac b6 ed 	movss  xmm1,DWORD PTR [rip+0xffffffffffedb6ac]        # 0x28d250
  3b1ba3:	ff 
  3b1ba4:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b1ba9:	0f 28 d1             	movaps xmm2,xmm1
  3b1bac:	0f 57 db             	xorps  xmm3,xmm3
  3b1baf:	f3 0f 5e d7          	divss  xmm2,xmm7
  3b1bb3:	f3 41 0f 5e c8       	divss  xmm1,xmm8
  3b1bb8:	e8 eb 5f 01 00       	call   0x3c7ba8
  3b1bbd:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3b1bc2:	48 8d 4d 50          	lea    rcx,[rbp+0x50]
  3b1bc6:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3b1bca:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3b1bcd:	f2 0f 11 44 24 50    	movsd  QWORD PTR [rsp+0x50],xmm0
  3b1bd3:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
  3b1bd7:	e8 1c 26 00 00       	call   0x3b41f8
  3b1bdc:	f3 0f 10 05 70 b6 ed 	movss  xmm0,DWORD PTR [rip+0xffffffffffedb670]        # 0x28d254
  3b1be3:	ff 
  3b1be4:	48 8d 4d 10          	lea    rcx,[rbp+0x10]
  3b1be8:	f3 0f 11 44 24 30    	movss  DWORD PTR [rsp+0x30],xmm0
  3b1bee:	0f 28 df             	movaps xmm3,xmm7
  3b1bf1:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  3b1bf7:	41 0f 28 d0          	movaps xmm2,xmm8
  3b1bfb:	0f 57 c9             	xorps  xmm1,xmm1
  3b1bfe:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  3b1c04:	e8 0b 1a 00 00       	call   0x3b3614
  3b1c09:	4c 8d 45 10          	lea    r8,[rbp+0x10]
  3b1c0d:	49 8b ce             	mov    rcx,r14
  3b1c10:	48 8d 55 50          	lea    rdx,[rbp+0x50]
  3b1c14:	e8 fb db ff ff       	call   0x3af814
  3b1c19:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
  3b1c1c:	45 33 ff             	xor    r15d,r15d
  3b1c1f:	33 ff                	xor    edi,edi
  3b1c21:	89 85 18 01 00 00    	mov    DWORD PTR [rbp+0x118],eax
  3b1c27:	85 c0                	test   eax,eax
  3b1c29:	0f 8e 60 01 00 00    	jle    0x3b1d8f
  3b1c2f:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
  3b1c33:	33 db                	xor    ebx,ebx
  3b1c35:	4c 8b 24 f8          	mov    r12,QWORD PTR [rax+rdi*8]
  3b1c39:	41 8b 34 24          	mov    esi,DWORD PTR [r12]
  3b1c3d:	85 f6                	test   esi,esi
  3b1c3f:	0f 8e 35 01 00 00    	jle    0x3b1d7a
  3b1c45:	8b d3                	mov    edx,ebx
  3b1c47:	49 8b cc             	mov    rcx,r12
  3b1c4a:	e8 41 9f fd ff       	call   0x38bb90
  3b1c4f:	48 8d 4d f8          	lea    rcx,[rbp-0x8]
  3b1c53:	f3 0f 10 40 0c       	movss  xmm0,DWORD PTR [rax+0xc]
  3b1c58:	f3 0f 10 58 08       	movss  xmm3,DWORD PTR [rax+0x8]
  3b1c5d:	f3 0f 10 50 04       	movss  xmm2,DWORD PTR [rax+0x4]
  3b1c62:	f3 0f 10 08          	movss  xmm1,DWORD PTR [rax]
  3b1c66:	4c 8b 68 10          	mov    r13,QWORD PTR [rax+0x10]
  3b1c6a:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  3b1c70:	e8 db a6 f1 ff       	call   0x2cc350
  3b1c75:	48 8b c8             	mov    rcx,rax
  3b1c78:	4c 8d 45 80          	lea    r8,[rbp-0x80]
  3b1c7c:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3b1c81:	e8 26 ee ff ff       	call   0x3b0aac
  3b1c86:	0f 10 45 90          	movups xmm0,XMMWORD PTR [rbp-0x70]
  3b1c8a:	4c 8d 45 a0          	lea    r8,[rbp-0x60]
  3b1c8e:	0f 10 4c 24 50       	movups xmm1,XMMWORD PTR [rsp+0x50]
  3b1c93:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  3b1c97:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b1c9c:	66 0f 7f 45 a0       	movdqa XMMWORD PTR [rbp-0x60],xmm0
  3b1ca1:	66 0f 7f 4d b0       	movdqa XMMWORD PTR [rbp-0x50],xmm1
  3b1ca6:	e8 a5 1c 00 00       	call   0x3b3950
  3b1cab:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [rsp+0x40]
  3b1cb1:	41 0f 2f c0          	comiss xmm0,xmm8
  3b1cb5:	0f 83 b2 00 00 00    	jae    0x3b1d6d
  3b1cbb:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [rsp+0x44]
  3b1cc1:	0f 2f c7             	comiss xmm0,xmm7
  3b1cc4:	0f 83 a3 00 00 00    	jae    0x3b1d6d
  3b1cca:	0f 2f 74 24 48       	comiss xmm6,DWORD PTR [rsp+0x48]
  3b1ccf:	0f 87 98 00 00 00    	ja     0x3b1d6d
  3b1cd5:	0f 2f 74 24 4c       	comiss xmm6,DWORD PTR [rsp+0x4c]
  3b1cda:	0f 87 8d 00 00 00    	ja     0x3b1d6d
  3b1ce0:	8b 15 6a b4 05 00    	mov    edx,DWORD PTR [rip+0x5b46a]        # 0x40d150
  3b1ce6:	4d 8b c5             	mov    r8,r13
  3b1ce9:	48 8b 0d 68 b4 05 00 	mov    rcx,QWORD PTR [rip+0x5b468]        # 0x40d158
  3b1cf0:	e8 7f da ff ff       	call   0x3af774
  3b1cf5:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [rsp+0x4c]
  3b1cfb:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3b1cff:	f3 0f 10 5c 24 48    	movss  xmm3,DWORD PTR [rsp+0x48]
  3b1d05:	0f 28 d7             	movaps xmm2,xmm7
  3b1d08:	f3 0f 5c 44 24 44    	subss  xmm0,DWORD PTR [rsp+0x44]
  3b1d0e:	f3 0f 5c 5c 24 40    	subss  xmm3,DWORD PTR [rsp+0x40]
  3b1d14:	f3 0f 5c 54 24 4c    	subss  xmm2,DWORD PTR [rsp+0x4c]
  3b1d1a:	f3 0f 10 4c 24 40    	movss  xmm1,DWORD PTR [rsp+0x40]
  3b1d20:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  3b1d26:	e8 25 a6 f1 ff       	call   0x2cc350
  3b1d2b:	48 8d 55 c0          	lea    rdx,[rbp-0x40]
  3b1d2f:	49 8b ce             	mov    rcx,r14
  3b1d32:	e8 a5 01 00 00       	call   0x3b1edc
  3b1d37:	48 8b 05 1a b4 05 00 	mov    rax,QWORD PTR [rip+0x5b41a]        # 0x40d158
  3b1d3e:	4c 8d 05 9b b3 05 00 	lea    r8,[rip+0x5b39b]        # 0x40d0e0
  3b1d45:	4c 8b 0d ec b3 05 00 	mov    r9,QWORD PTR [rip+0x5b3ec]        # 0x40d138
  3b1d4c:	49 8b ce             	mov    rcx,r14
  3b1d4f:	48 8b 15 ea b3 05 00 	mov    rdx,QWORD PTR [rip+0x5b3ea]        # 0x40d140
  3b1d56:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  3b1d5b:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b1d62:	ff 
  3b1d63:	44 89 7c 24 20       	mov    DWORD PTR [rsp+0x20],r15d
  3b1d68:	e8 77 d5 ff ff       	call   0x3af2e4
  3b1d6d:	ff c3                	inc    ebx
  3b1d6f:	41 ff c7             	inc    r15d
  3b1d72:	3b de                	cmp    ebx,esi
  3b1d74:	0f 8c cb fe ff ff    	jl     0x3b1c45
  3b1d7a:	48 8b 9d 08 01 00 00 	mov    rbx,QWORD PTR [rbp+0x108]
  3b1d81:	ff c7                	inc    edi
  3b1d83:	3b bd 18 01 00 00    	cmp    edi,DWORD PTR [rbp+0x118]
  3b1d89:	0f 8c a0 fe ff ff    	jl     0x3b1c2f
  3b1d8f:	49 8b ce             	mov    rcx,r14
  3b1d92:	e8 2d 00 00 00       	call   0x3b1dc4
  3b1d97:	4c 8d 9c 24 c0 01 00 	lea    r11,[rsp+0x1c0]
  3b1d9e:	00 
  3b1d9f:	49 8b 5b 40          	mov    rbx,QWORD PTR [r11+0x40]
  3b1da3:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3b1da8:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  3b1dad:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3b1db2:	49 8b e3             	mov    rsp,r11
  3b1db5:	41 5f                	pop    r15
  3b1db7:	41 5e                	pop    r14
  3b1db9:	41 5d                	pop    r13
  3b1dbb:	41 5c                	pop    r12
  3b1dbd:	5f                   	pop    rdi
  3b1dbe:	5e                   	pop    rsi
  3b1dbf:	5d                   	pop    rbp
  3b1dc0:	c3                   	ret
; pdata 0x3b1dc4..0x3b1edb
  3b1dc4:	4c 8b dc             	mov    r11,rsp
  3b1dc7:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b1dcb:	55                   	push   rbp
  3b1dcc:	56                   	push   rsi
  3b1dcd:	57                   	push   rdi
  3b1dce:	48 83 ec 70          	sub    rsp,0x70
  3b1dd2:	8b 05 28 b1 05 00    	mov    eax,DWORD PTR [rip+0x5b128]        # 0x40cf00
  3b1dd8:	48 8b e9             	mov    rbp,rcx
  3b1ddb:	a8 01                	test   al,0x1
  3b1ddd:	0f 85 a9 00 00 00    	jne    0x3b1e8c
  3b1de3:	83 c8 01             	or     eax,0x1
  3b1de6:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b1dea:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b1dee:	89 05 0c b1 05 00    	mov    DWORD PTR [rip+0x5b10c],eax        # 0x40cf00
  3b1df4:	e8 37 a9 f1 ff       	call   0x2cc730
  3b1df9:	48 8b c8             	mov    rcx,rax
  3b1dfc:	e8 a3 be f1 ff       	call   0x2cdca4
  3b1e01:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  3b1e06:	48 8b f0             	mov    rsi,rax
  3b1e09:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b1e10:	00 
  3b1e11:	e8 06 f7 ff ff       	call   0x3b151c
  3b1e16:	48 8b c8             	mov    rcx,rax
  3b1e19:	e8 4e bf f1 ff       	call   0x2cdd6c
  3b1e1e:	48 8d 54 24 51       	lea    rdx,[rsp+0x51]
  3b1e23:	48 8b f8             	mov    rdi,rax
  3b1e26:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b1e2d:	00 
  3b1e2e:	e8 25 f4 ff ff       	call   0x3b1258
  3b1e33:	48 8b c8             	mov    rcx,rax
  3b1e36:	e8 29 18 f3 ff       	call   0x2e3664
  3b1e3b:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b1e40:	48 8b d8             	mov    rbx,rax
  3b1e43:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b1e4a:	00 
  3b1e4b:	e8 2c ee ff ff       	call   0x3b0c7c
  3b1e50:	48 8b c8             	mov    rcx,rax
  3b1e53:	e8 c4 67 f2 ff       	call   0x2d861c
  3b1e58:	48 8b c8             	mov    rcx,rax
  3b1e5b:	48 8b d3             	mov    rdx,rbx
  3b1e5e:	e8 c1 23 f8 ff       	call   0x334224
  3b1e63:	41 83 c8 ff          	or     r8d,0xffffffff
  3b1e67:	48 8b c8             	mov    rcx,rax
  3b1e6a:	4c 8b ce             	mov    r9,rsi
  3b1e6d:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b1e72:	48 8b d7             	mov    rdx,rdi
  3b1e75:	e8 32 2b f8 ff       	call   0x3349ac
  3b1e7a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b1e7d:	8b 05 7d b0 05 00    	mov    eax,DWORD PTR [rip+0x5b07d]        # 0x40cf00
  3b1e83:	4c 89 05 6e b0 05 00 	mov    QWORD PTR [rip+0x5b06e],r8        # 0x40cef8
  3b1e8a:	eb 07                	jmp    0x3b1e93
  3b1e8c:	4c 8b 05 65 b0 05 00 	mov    r8,QWORD PTR [rip+0x5b065]        # 0x40cef8
  3b1e93:	a8 02                	test   al,0x2
  3b1e95:	75 1f                	jne    0x3b1eb6
  3b1e97:	48 8b 0d c2 3f 02 00 	mov    rcx,QWORD PTR [rip+0x23fc2]        # 0x3d5e60
  3b1e9e:	48 8d 15 6b b0 05 00 	lea    rdx,[rip+0x5b06b]        # 0x40cf10
  3b1ea5:	83 c8 02             	or     eax,0x2
  3b1ea8:	45 33 c9             	xor    r9d,r9d
  3b1eab:	89 05 4f b0 05 00    	mov    DWORD PTR [rip+0x5b04f],eax        # 0x40cf00
  3b1eb1:	e8 6e 9e f1 ff       	call   0x2cbd24
  3b1eb6:	48 8b 0d a3 3f 02 00 	mov    rcx,QWORD PTR [rip+0x23fa3]        # 0x3d5e60
  3b1ebd:	48 8d 15 4c b0 05 00 	lea    rdx,[rip+0x5b04c]        # 0x40cf10
  3b1ec4:	4c 8b c5             	mov    r8,rbp
  3b1ec7:	48 8b 9c 24 90 00 00 	mov    rbx,QWORD PTR [rsp+0x90]
  3b1ece:	00 
  3b1ecf:	48 83 c4 70          	add    rsp,0x70
  3b1ed3:	5f                   	pop    rdi
  3b1ed4:	5e                   	pop    rsi
  3b1ed5:	5d                   	pop    rbp
  3b1ed6:	e9 21 9b f1 ff       	jmp    0x2cb9fc
; pdata 0x3b1edc..0x3b2003
  3b1edc:	4c 8b dc             	mov    r11,rsp
  3b1edf:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b1ee3:	49 89 6b 10          	mov    QWORD PTR [r11+0x10],rbp
  3b1ee7:	56                   	push   rsi
  3b1ee8:	57                   	push   rdi
  3b1ee9:	41 56                	push   r14
  3b1eeb:	48 83 ec 70          	sub    rsp,0x70
  3b1eef:	8b 05 1b af 05 00    	mov    eax,DWORD PTR [rip+0x5af1b]        # 0x40ce10
  3b1ef5:	48 8b ea             	mov    rbp,rdx
  3b1ef8:	4c 8b f1             	mov    r14,rcx
  3b1efb:	a8 01                	test   al,0x1
  3b1efd:	0f 85 a9 00 00 00    	jne    0x3b1fac
  3b1f03:	83 c8 01             	or     eax,0x1
  3b1f06:	49 8d 53 18          	lea    rdx,[r11+0x18]
  3b1f0a:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b1f0e:	89 05 fc ae 05 00    	mov    DWORD PTR [rip+0x5aefc],eax        # 0x40ce10
  3b1f14:	e8 17 a8 f1 ff       	call   0x2cc730
  3b1f19:	48 8b c8             	mov    rcx,rax
  3b1f1c:	e8 83 bd f1 ff       	call   0x2cdca4
  3b1f21:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  3b1f26:	48 8b f0             	mov    rsi,rax
  3b1f29:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3b1f30:	00 
  3b1f31:	e8 fe f5 ff ff       	call   0x3b1534
  3b1f36:	48 8b c8             	mov    rcx,rax
  3b1f39:	e8 3e 66 f2 ff       	call   0x2d857c
  3b1f3e:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3b1f43:	48 8b f8             	mov    rdi,rax
  3b1f46:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3b1f4d:	00 
  3b1f4e:	e8 21 f3 ff ff       	call   0x3b1274
  3b1f53:	48 8b c8             	mov    rcx,rax
  3b1f56:	e8 09 17 f3 ff       	call   0x2e3664
  3b1f5b:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b1f60:	48 8b d8             	mov    rbx,rax
  3b1f63:	48 8d 8c 24 a8 00 00 	lea    rcx,[rsp+0xa8]
  3b1f6a:	00 
  3b1f6b:	e8 30 ed ff ff       	call   0x3b0ca0
  3b1f70:	48 8b c8             	mov    rcx,rax
  3b1f73:	e8 a4 66 f2 ff       	call   0x2d861c
  3b1f78:	48 8b c8             	mov    rcx,rax
  3b1f7b:	48 8b d3             	mov    rdx,rbx
  3b1f7e:	e8 a1 22 f8 ff       	call   0x334224
  3b1f83:	41 83 c8 ff          	or     r8d,0xffffffff
  3b1f87:	48 8b c8             	mov    rcx,rax
  3b1f8a:	4c 8b ce             	mov    r9,rsi
  3b1f8d:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b1f92:	48 8b d7             	mov    rdx,rdi
  3b1f95:	e8 12 2a f8 ff       	call   0x3349ac
  3b1f9a:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b1f9d:	8b 05 6d ae 05 00    	mov    eax,DWORD PTR [rip+0x5ae6d]        # 0x40ce10
  3b1fa3:	4c 89 05 5e ae 05 00 	mov    QWORD PTR [rip+0x5ae5e],r8        # 0x40ce08
  3b1faa:	eb 07                	jmp    0x3b1fb3
  3b1fac:	4c 8b 05 55 ae 05 00 	mov    r8,QWORD PTR [rip+0x5ae55]        # 0x40ce08
  3b1fb3:	a8 02                	test   al,0x2
  3b1fb5:	75 1f                	jne    0x3b1fd6
  3b1fb7:	48 8b 0d a2 3e 02 00 	mov    rcx,QWORD PTR [rip+0x23ea2]        # 0x3d5e60
  3b1fbe:	48 8d 15 5b ae 05 00 	lea    rdx,[rip+0x5ae5b]        # 0x40ce20
  3b1fc5:	83 c8 02             	or     eax,0x2
  3b1fc8:	45 33 c9             	xor    r9d,r9d
  3b1fcb:	89 05 3f ae 05 00    	mov    DWORD PTR [rip+0x5ae3f],eax        # 0x40ce10
  3b1fd1:	e8 4e 9d f1 ff       	call   0x2cbd24
  3b1fd6:	48 8b 0d 83 3e 02 00 	mov    rcx,QWORD PTR [rip+0x23e83]        # 0x3d5e60
  3b1fdd:	48 8d 15 3c ae 05 00 	lea    rdx,[rip+0x5ae3c]        # 0x40ce20
  3b1fe4:	4c 8b cd             	mov    r9,rbp
  3b1fe7:	4d 8b c6             	mov    r8,r14
  3b1fea:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  3b1fef:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3b1ff3:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  3b1ff7:	49 8b e3             	mov    rsp,r11
  3b1ffa:	41 5e                	pop    r14
  3b1ffc:	5f                   	pop    rdi
  3b1ffd:	5e                   	pop    rsi
  3b1ffe:	e9 91 00 f2 ff       	jmp    0x2d2094
; pdata 0x3b2004..0x3b211d
  3b2004:	4c 8b dc             	mov    r11,rsp
  3b2007:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b200b:	55                   	push   rbp
  3b200c:	56                   	push   rsi
  3b200d:	57                   	push   rdi
  3b200e:	48 83 ec 60          	sub    rsp,0x60
  3b2012:	8b 05 68 b2 05 00    	mov    eax,DWORD PTR [rip+0x5b268]        # 0x40d280
  3b2018:	48 8b e9             	mov    rbp,rcx
  3b201b:	a8 01                	test   al,0x1
  3b201d:	0f 85 ab 00 00 00    	jne    0x3b20ce
  3b2023:	83 c8 01             	or     eax,0x1
  3b2026:	49 8d 53 c1          	lea    rdx,[r11-0x3f]
  3b202a:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b202e:	89 05 4c b2 05 00    	mov    DWORD PTR [rip+0x5b24c],eax        # 0x40d280
  3b2034:	e8 27 f7 ff ff       	call   0x3b1760
  3b2039:	48 8b c8             	mov    rcx,rax
  3b203c:	e8 cb bd f1 ff       	call   0x2cde0c
  3b2041:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  3b2048:	00 
  3b2049:	48 8b f0             	mov    rsi,rax
  3b204c:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2053:	00 
  3b2054:	e8 d7 a6 f1 ff       	call   0x2cc730
  3b2059:	48 8b c8             	mov    rcx,rax
  3b205c:	e8 43 bc f1 ff       	call   0x2cdca4
  3b2061:	48 8d 54 24 45       	lea    rdx,[rsp+0x45]
  3b2066:	48 8b f8             	mov    rdi,rax
  3b2069:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2070:	00 
  3b2071:	e8 1a f2 ff ff       	call   0x3b1290
  3b2076:	48 8b c8             	mov    rcx,rax
  3b2079:	e8 be 15 f3 ff       	call   0x2e363c
  3b207e:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b2083:	48 8b d8             	mov    rbx,rax
  3b2086:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b208d:	00 
  3b208e:	e8 31 ec ff ff       	call   0x3b0cc4
  3b2093:	48 8b c8             	mov    rcx,rax
  3b2096:	e8 69 64 f2 ff       	call   0x2d8504
  3b209b:	48 8b c8             	mov    rcx,rax
  3b209e:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b20a5:	ff 
  3b20a6:	4c 8b cf             	mov    r9,rdi
  3b20a9:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b20ae:	41 b8 01 00 00 00    	mov    r8d,0x1
  3b20b4:	48 8b d3             	mov    rdx,rbx
  3b20b7:	e8 38 1b f8 ff       	call   0x333bf4
  3b20bc:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b20bf:	8b 05 bb b1 05 00    	mov    eax,DWORD PTR [rip+0x5b1bb]        # 0x40d280
  3b20c5:	4c 89 05 ac b1 05 00 	mov    QWORD PTR [rip+0x5b1ac],r8        # 0x40d278
  3b20cc:	eb 07                	jmp    0x3b20d5
  3b20ce:	4c 8b 05 a3 b1 05 00 	mov    r8,QWORD PTR [rip+0x5b1a3]        # 0x40d278
  3b20d5:	a8 02                	test   al,0x2
  3b20d7:	75 1f                	jne    0x3b20f8
  3b20d9:	48 8b 0d 80 3d 02 00 	mov    rcx,QWORD PTR [rip+0x23d80]        # 0x3d5e60
  3b20e0:	48 8d 15 a9 b1 05 00 	lea    rdx,[rip+0x5b1a9]        # 0x40d290
  3b20e7:	83 c8 02             	or     eax,0x2
  3b20ea:	45 33 c9             	xor    r9d,r9d
  3b20ed:	89 05 8d b1 05 00    	mov    DWORD PTR [rip+0x5b18d],eax        # 0x40d280
  3b20f3:	e8 2c 9c f1 ff       	call   0x2cbd24
  3b20f8:	48 8b 0d 61 3d 02 00 	mov    rcx,QWORD PTR [rip+0x23d61]        # 0x3d5e60
  3b20ff:	48 8d 15 8a b1 05 00 	lea    rdx,[rip+0x5b18a]        # 0x40d290
  3b2106:	4c 8b c5             	mov    r8,rbp
  3b2109:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2110:	00 
  3b2111:	48 83 c4 60          	add    rsp,0x60
  3b2115:	5f                   	pop    rdi
  3b2116:	5e                   	pop    rsi
  3b2117:	5d                   	pop    rbp
  3b2118:	e9 df 98 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2120..0x3b223a
  3b2120:	4c 8b dc             	mov    r11,rsp
  3b2123:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b2127:	55                   	push   rbp
  3b2128:	56                   	push   rsi
  3b2129:	57                   	push   rdi
  3b212a:	48 83 ec 60          	sub    rsp,0x60
  3b212e:	8b 05 8c a2 05 00    	mov    eax,DWORD PTR [rip+0x5a28c]        # 0x40c3c0
  3b2134:	48 8b e9             	mov    rbp,rcx
  3b2137:	a8 01                	test   al,0x1
  3b2139:	0f 85 ac 00 00 00    	jne    0x3b21eb
  3b213f:	83 c8 01             	or     eax,0x1
  3b2142:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b2146:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b214a:	89 05 70 a2 05 00    	mov    DWORD PTR [rip+0x5a270],eax        # 0x40c3c0
  3b2150:	e8 db a5 f1 ff       	call   0x2cc730
  3b2155:	48 8b c8             	mov    rcx,rax
  3b2158:	e8 47 bb f1 ff       	call   0x2cdca4
  3b215d:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b2162:	48 8b f0             	mov    rsi,rax
  3b2165:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b216c:	00 
  3b216d:	e8 de f3 ff ff       	call   0x3b1550
  3b2172:	48 8b c8             	mov    rcx,rax
  3b2175:	e8 ca 64 f2 ff       	call   0x2d8644
  3b217a:	48 8d 54 24 3f       	lea    rdx,[rsp+0x3f]
  3b217f:	48 8b f8             	mov    rdi,rax
  3b2182:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2189:	00 
  3b218a:	e8 1d f1 ff ff       	call   0x3b12ac
  3b218f:	48 8b c8             	mov    rcx,rax
  3b2192:	e8 1d 15 f3 ff       	call   0x2e36b4
  3b2197:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b219e:	00 
  3b219f:	48 8b d8             	mov    rbx,rax
  3b21a2:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b21a9:	00 
  3b21aa:	e8 31 eb ff ff       	call   0x3b0ce0
  3b21af:	48 8b c8             	mov    rcx,rax
  3b21b2:	e8 fd 62 f2 ff       	call   0x2d84b4
  3b21b7:	48 8b c8             	mov    rcx,rax
  3b21ba:	48 8b d3             	mov    rdx,rbx
  3b21bd:	e8 62 20 f8 ff       	call   0x334224
  3b21c2:	41 83 c8 ff          	or     r8d,0xffffffff
  3b21c6:	48 8b c8             	mov    rcx,rax
  3b21c9:	4c 8b ce             	mov    r9,rsi
  3b21cc:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b21d1:	48 8b d7             	mov    rdx,rdi
  3b21d4:	e8 d3 27 f8 ff       	call   0x3349ac
  3b21d9:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b21dc:	8b 05 de a1 05 00    	mov    eax,DWORD PTR [rip+0x5a1de]        # 0x40c3c0
  3b21e2:	4c 89 05 cf a1 05 00 	mov    QWORD PTR [rip+0x5a1cf],r8        # 0x40c3b8
  3b21e9:	eb 07                	jmp    0x3b21f2
  3b21eb:	4c 8b 05 c6 a1 05 00 	mov    r8,QWORD PTR [rip+0x5a1c6]        # 0x40c3b8
  3b21f2:	a8 02                	test   al,0x2
  3b21f4:	75 1f                	jne    0x3b2215
  3b21f6:	48 8b 0d 63 3c 02 00 	mov    rcx,QWORD PTR [rip+0x23c63]        # 0x3d5e60
  3b21fd:	48 8d 15 cc a1 05 00 	lea    rdx,[rip+0x5a1cc]        # 0x40c3d0
  3b2204:	83 c8 02             	or     eax,0x2
  3b2207:	45 33 c9             	xor    r9d,r9d
  3b220a:	89 05 b0 a1 05 00    	mov    DWORD PTR [rip+0x5a1b0],eax        # 0x40c3c0
  3b2210:	e8 0f 9b f1 ff       	call   0x2cbd24
  3b2215:	48 8b 0d 44 3c 02 00 	mov    rcx,QWORD PTR [rip+0x23c44]        # 0x3d5e60
  3b221c:	48 8d 15 ad a1 05 00 	lea    rdx,[rip+0x5a1ad]        # 0x40c3d0
  3b2223:	4c 8b c5             	mov    r8,rbp
  3b2226:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b222d:	00 
  3b222e:	48 83 c4 60          	add    rsp,0x60
  3b2232:	5f                   	pop    rdi
  3b2233:	5e                   	pop    rsi
  3b2234:	5d                   	pop    rbp
  3b2235:	e9 c2 97 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b223c..0x3b2356
  3b223c:	4c 8b dc             	mov    r11,rsp
  3b223f:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b2243:	55                   	push   rbp
  3b2244:	56                   	push   rsi
  3b2245:	57                   	push   rdi
  3b2246:	48 83 ec 60          	sub    rsp,0x60
  3b224a:	8b 05 60 a2 05 00    	mov    eax,DWORD PTR [rip+0x5a260]        # 0x40c4b0
  3b2250:	48 8b e9             	mov    rbp,rcx
  3b2253:	a8 01                	test   al,0x1
  3b2255:	0f 85 ac 00 00 00    	jne    0x3b2307
  3b225b:	83 c8 01             	or     eax,0x1
  3b225e:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b2262:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b2266:	89 05 44 a2 05 00    	mov    DWORD PTR [rip+0x5a244],eax        # 0x40c4b0
  3b226c:	e8 bf a4 f1 ff       	call   0x2cc730
  3b2271:	48 8b c8             	mov    rcx,rax
  3b2274:	e8 2b ba f1 ff       	call   0x2cdca4
  3b2279:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b227e:	48 8b f0             	mov    rsi,rax
  3b2281:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2288:	00 
  3b2289:	e8 f2 f2 ff ff       	call   0x3b1580
  3b228e:	48 8b c8             	mov    rcx,rax
  3b2291:	e8 e6 62 f2 ff       	call   0x2d857c
  3b2296:	48 8d 54 24 42       	lea    rdx,[rsp+0x42]
  3b229b:	48 8b f8             	mov    rdi,rax
  3b229e:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b22a5:	00 
  3b22a6:	e8 1d f0 ff ff       	call   0x3b12c8
  3b22ab:	48 8b c8             	mov    rcx,rax
  3b22ae:	e8 01 14 f3 ff       	call   0x2e36b4
  3b22b3:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b22ba:	00 
  3b22bb:	48 8b d8             	mov    rbx,rax
  3b22be:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b22c5:	00 
  3b22c6:	e8 2d ea ff ff       	call   0x3b0cf8
  3b22cb:	48 8b c8             	mov    rcx,rax
  3b22ce:	e8 e1 61 f2 ff       	call   0x2d84b4
  3b22d3:	48 8b c8             	mov    rcx,rax
  3b22d6:	48 8b d3             	mov    rdx,rbx
  3b22d9:	e8 46 1f f8 ff       	call   0x334224
  3b22de:	41 83 c8 ff          	or     r8d,0xffffffff
  3b22e2:	48 8b c8             	mov    rcx,rax
  3b22e5:	4c 8b ce             	mov    r9,rsi
  3b22e8:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b22ed:	48 8b d7             	mov    rdx,rdi
  3b22f0:	e8 b7 26 f8 ff       	call   0x3349ac
  3b22f5:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b22f8:	8b 05 b2 a1 05 00    	mov    eax,DWORD PTR [rip+0x5a1b2]        # 0x40c4b0
  3b22fe:	4c 89 05 a3 a1 05 00 	mov    QWORD PTR [rip+0x5a1a3],r8        # 0x40c4a8
  3b2305:	eb 07                	jmp    0x3b230e
  3b2307:	4c 8b 05 9a a1 05 00 	mov    r8,QWORD PTR [rip+0x5a19a]        # 0x40c4a8
  3b230e:	a8 02                	test   al,0x2
  3b2310:	75 1f                	jne    0x3b2331
  3b2312:	48 8b 0d 47 3b 02 00 	mov    rcx,QWORD PTR [rip+0x23b47]        # 0x3d5e60
  3b2319:	48 8d 15 a0 a1 05 00 	lea    rdx,[rip+0x5a1a0]        # 0x40c4c0
  3b2320:	83 c8 02             	or     eax,0x2
  3b2323:	45 33 c9             	xor    r9d,r9d
  3b2326:	89 05 84 a1 05 00    	mov    DWORD PTR [rip+0x5a184],eax        # 0x40c4b0
  3b232c:	e8 f3 99 f1 ff       	call   0x2cbd24
  3b2331:	48 8b 0d 28 3b 02 00 	mov    rcx,QWORD PTR [rip+0x23b28]        # 0x3d5e60
  3b2338:	48 8d 15 81 a1 05 00 	lea    rdx,[rip+0x5a181]        # 0x40c4c0
  3b233f:	4c 8b c5             	mov    r8,rbp
  3b2342:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2349:	00 
  3b234a:	48 83 c4 60          	add    rsp,0x60
  3b234e:	5f                   	pop    rdi
  3b234f:	5e                   	pop    rsi
  3b2350:	5d                   	pop    rbp
  3b2351:	e9 a6 96 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2358..0x3b2472
  3b2358:	4c 8b dc             	mov    r11,rsp
  3b235b:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b235f:	55                   	push   rbp
  3b2360:	56                   	push   rsi
  3b2361:	57                   	push   rdi
  3b2362:	48 83 ec 60          	sub    rsp,0x60
  3b2366:	8b 05 84 9d 05 00    	mov    eax,DWORD PTR [rip+0x59d84]        # 0x40c0f0
  3b236c:	48 8b e9             	mov    rbp,rcx
  3b236f:	a8 01                	test   al,0x1
  3b2371:	0f 85 ac 00 00 00    	jne    0x3b2423
  3b2377:	83 c8 01             	or     eax,0x1
  3b237a:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b237e:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b2382:	89 05 68 9d 05 00    	mov    DWORD PTR [rip+0x59d68],eax        # 0x40c0f0
  3b2388:	e8 a3 a3 f1 ff       	call   0x2cc730
  3b238d:	48 8b c8             	mov    rcx,rax
  3b2390:	e8 0f b9 f1 ff       	call   0x2cdca4
  3b2395:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b239a:	48 8b f0             	mov    rsi,rax
  3b239d:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b23a4:	00 
  3b23a5:	e8 f2 f1 ff ff       	call   0x3b159c
  3b23aa:	48 8b c8             	mov    rcx,rax
  3b23ad:	e8 92 62 f2 ff       	call   0x2d8644
  3b23b2:	48 8d 54 24 3f       	lea    rdx,[rsp+0x3f]
  3b23b7:	48 8b f8             	mov    rdi,rax
  3b23ba:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b23c1:	00 
  3b23c2:	e8 1d ef ff ff       	call   0x3b12e4
  3b23c7:	48 8b c8             	mov    rcx,rax
  3b23ca:	e8 e5 12 f3 ff       	call   0x2e36b4
  3b23cf:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b23d6:	00 
  3b23d7:	48 8b d8             	mov    rbx,rax
  3b23da:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b23e1:	00 
  3b23e2:	e8 29 e9 ff ff       	call   0x3b0d10
  3b23e7:	48 8b c8             	mov    rcx,rax
  3b23ea:	e8 c5 60 f2 ff       	call   0x2d84b4
  3b23ef:	48 8b c8             	mov    rcx,rax
  3b23f2:	48 8b d3             	mov    rdx,rbx
  3b23f5:	e8 2a 1e f8 ff       	call   0x334224
  3b23fa:	41 83 c8 ff          	or     r8d,0xffffffff
  3b23fe:	48 8b c8             	mov    rcx,rax
  3b2401:	4c 8b ce             	mov    r9,rsi
  3b2404:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b2409:	48 8b d7             	mov    rdx,rdi
  3b240c:	e8 9b 25 f8 ff       	call   0x3349ac
  3b2411:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b2414:	8b 05 d6 9c 05 00    	mov    eax,DWORD PTR [rip+0x59cd6]        # 0x40c0f0
  3b241a:	4c 89 05 c7 9c 05 00 	mov    QWORD PTR [rip+0x59cc7],r8        # 0x40c0e8
  3b2421:	eb 07                	jmp    0x3b242a
  3b2423:	4c 8b 05 be 9c 05 00 	mov    r8,QWORD PTR [rip+0x59cbe]        # 0x40c0e8
  3b242a:	a8 02                	test   al,0x2
  3b242c:	75 1f                	jne    0x3b244d
  3b242e:	48 8b 0d 2b 3a 02 00 	mov    rcx,QWORD PTR [rip+0x23a2b]        # 0x3d5e60
  3b2435:	48 8d 15 c4 9c 05 00 	lea    rdx,[rip+0x59cc4]        # 0x40c100
  3b243c:	83 c8 02             	or     eax,0x2
  3b243f:	45 33 c9             	xor    r9d,r9d
  3b2442:	89 05 a8 9c 05 00    	mov    DWORD PTR [rip+0x59ca8],eax        # 0x40c0f0
  3b2448:	e8 d7 98 f1 ff       	call   0x2cbd24
  3b244d:	48 8b 0d 0c 3a 02 00 	mov    rcx,QWORD PTR [rip+0x23a0c]        # 0x3d5e60
  3b2454:	48 8d 15 a5 9c 05 00 	lea    rdx,[rip+0x59ca5]        # 0x40c100
  3b245b:	4c 8b c5             	mov    r8,rbp
  3b245e:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2465:	00 
  3b2466:	48 83 c4 60          	add    rsp,0x60
  3b246a:	5f                   	pop    rdi
  3b246b:	5e                   	pop    rsi
  3b246c:	5d                   	pop    rbp
  3b246d:	e9 8a 95 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2474..0x3b258e
  3b2474:	4c 8b dc             	mov    r11,rsp
  3b2477:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b247b:	55                   	push   rbp
  3b247c:	56                   	push   rsi
  3b247d:	57                   	push   rdi
  3b247e:	48 83 ec 60          	sub    rsp,0x60
  3b2482:	8b 05 48 9e 05 00    	mov    eax,DWORD PTR [rip+0x59e48]        # 0x40c2d0
  3b2488:	48 8b e9             	mov    rbp,rcx
  3b248b:	a8 01                	test   al,0x1
  3b248d:	0f 85 ac 00 00 00    	jne    0x3b253f
  3b2493:	83 c8 01             	or     eax,0x1
  3b2496:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b249a:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b249e:	89 05 2c 9e 05 00    	mov    DWORD PTR [rip+0x59e2c],eax        # 0x40c2d0
  3b24a4:	e8 87 a2 f1 ff       	call   0x2cc730
  3b24a9:	48 8b c8             	mov    rcx,rax
  3b24ac:	e8 f3 b7 f1 ff       	call   0x2cdca4
  3b24b1:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b24b6:	48 8b f0             	mov    rsi,rax
  3b24b9:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b24c0:	00 
  3b24c1:	e8 06 f1 ff ff       	call   0x3b15cc
  3b24c6:	48 8b c8             	mov    rcx,rax
  3b24c9:	e8 86 60 f2 ff       	call   0x2d8554
  3b24ce:	48 8d 54 24 41       	lea    rdx,[rsp+0x41]
  3b24d3:	48 8b f8             	mov    rdi,rax
  3b24d6:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b24dd:	00 
  3b24de:	e8 1d ee ff ff       	call   0x3b1300
  3b24e3:	48 8b c8             	mov    rcx,rax
  3b24e6:	e8 c9 11 f3 ff       	call   0x2e36b4
  3b24eb:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b24f2:	00 
  3b24f3:	48 8b d8             	mov    rbx,rax
  3b24f6:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b24fd:	00 
  3b24fe:	e8 25 e8 ff ff       	call   0x3b0d28
  3b2503:	48 8b c8             	mov    rcx,rax
  3b2506:	e8 a9 5f f2 ff       	call   0x2d84b4
  3b250b:	48 8b c8             	mov    rcx,rax
  3b250e:	48 8b d3             	mov    rdx,rbx
  3b2511:	e8 0e 1d f8 ff       	call   0x334224
  3b2516:	41 83 c8 ff          	or     r8d,0xffffffff
  3b251a:	48 8b c8             	mov    rcx,rax
  3b251d:	4c 8b ce             	mov    r9,rsi
  3b2520:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b2525:	48 8b d7             	mov    rdx,rdi
  3b2528:	e8 7f 24 f8 ff       	call   0x3349ac
  3b252d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b2530:	8b 05 9a 9d 05 00    	mov    eax,DWORD PTR [rip+0x59d9a]        # 0x40c2d0
  3b2536:	4c 89 05 8b 9d 05 00 	mov    QWORD PTR [rip+0x59d8b],r8        # 0x40c2c8
  3b253d:	eb 07                	jmp    0x3b2546
  3b253f:	4c 8b 05 82 9d 05 00 	mov    r8,QWORD PTR [rip+0x59d82]        # 0x40c2c8
  3b2546:	a8 02                	test   al,0x2
  3b2548:	75 1f                	jne    0x3b2569
  3b254a:	48 8b 0d 0f 39 02 00 	mov    rcx,QWORD PTR [rip+0x2390f]        # 0x3d5e60
  3b2551:	48 8d 15 88 9d 05 00 	lea    rdx,[rip+0x59d88]        # 0x40c2e0
  3b2558:	83 c8 02             	or     eax,0x2
  3b255b:	45 33 c9             	xor    r9d,r9d
  3b255e:	89 05 6c 9d 05 00    	mov    DWORD PTR [rip+0x59d6c],eax        # 0x40c2d0
  3b2564:	e8 bb 97 f1 ff       	call   0x2cbd24
  3b2569:	48 8b 0d f0 38 02 00 	mov    rcx,QWORD PTR [rip+0x238f0]        # 0x3d5e60
  3b2570:	48 8d 15 69 9d 05 00 	lea    rdx,[rip+0x59d69]        # 0x40c2e0
  3b2577:	4c 8b c5             	mov    r8,rbp
  3b257a:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2581:	00 
  3b2582:	48 83 c4 60          	add    rsp,0x60
  3b2586:	5f                   	pop    rdi
  3b2587:	5e                   	pop    rsi
  3b2588:	5d                   	pop    rbp
  3b2589:	e9 6e 94 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2590..0x3b2698
  3b2590:	4c 8b dc             	mov    r11,rsp
  3b2593:	53                   	push   rbx
  3b2594:	56                   	push   rsi
  3b2595:	57                   	push   rdi
  3b2596:	48 83 ec 60          	sub    rsp,0x60
  3b259a:	8b 05 60 9a 05 00    	mov    eax,DWORD PTR [rip+0x59a60]        # 0x40c000
  3b25a0:	a8 01                	test   al,0x1
  3b25a2:	0f 85 ac 00 00 00    	jne    0x3b2654
  3b25a8:	83 c8 01             	or     eax,0x1
  3b25ab:	49 8d 53 08          	lea    rdx,[r11+0x8]
  3b25af:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b25b3:	89 05 47 9a 05 00    	mov    DWORD PTR [rip+0x59a47],eax        # 0x40c000
  3b25b9:	e8 72 a1 f1 ff       	call   0x2cc730
  3b25be:	48 8b c8             	mov    rcx,rax
  3b25c1:	e8 de b6 f1 ff       	call   0x2cdca4
  3b25c6:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b25cb:	48 8b f0             	mov    rsi,rax
  3b25ce:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b25d5:	00 
  3b25d6:	e8 09 f0 ff ff       	call   0x3b15e4
  3b25db:	48 8b c8             	mov    rcx,rax
  3b25de:	e8 29 b8 f1 ff       	call   0x2cde0c
  3b25e3:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  3b25e8:	48 8b f8             	mov    rdi,rax
  3b25eb:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b25f2:	00 
  3b25f3:	e8 24 ed ff ff       	call   0x3b131c
  3b25f8:	48 8b c8             	mov    rcx,rax
  3b25fb:	e8 b4 10 f3 ff       	call   0x2e36b4
  3b2600:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3b2607:	00 
  3b2608:	48 8b d8             	mov    rbx,rax
  3b260b:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b2612:	00 
  3b2613:	e8 28 e7 ff ff       	call   0x3b0d40
  3b2618:	48 8b c8             	mov    rcx,rax
  3b261b:	e8 94 5e f2 ff       	call   0x2d84b4
  3b2620:	48 8b c8             	mov    rcx,rax
  3b2623:	48 8b d3             	mov    rdx,rbx
  3b2626:	e8 f9 1b f8 ff       	call   0x334224
  3b262b:	41 83 c8 ff          	or     r8d,0xffffffff
  3b262f:	48 8b c8             	mov    rcx,rax
  3b2632:	4c 8b ce             	mov    r9,rsi
  3b2635:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b263a:	48 8b d7             	mov    rdx,rdi
  3b263d:	e8 6a 23 f8 ff       	call   0x3349ac
  3b2642:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b2645:	8b 05 b5 99 05 00    	mov    eax,DWORD PTR [rip+0x599b5]        # 0x40c000
  3b264b:	4c 89 05 a6 99 05 00 	mov    QWORD PTR [rip+0x599a6],r8        # 0x40bff8
  3b2652:	eb 07                	jmp    0x3b265b
  3b2654:	4c 8b 05 9d 99 05 00 	mov    r8,QWORD PTR [rip+0x5999d]        # 0x40bff8
  3b265b:	a8 02                	test   al,0x2
  3b265d:	75 1f                	jne    0x3b267e
  3b265f:	48 8b 0d fa 37 02 00 	mov    rcx,QWORD PTR [rip+0x237fa]        # 0x3d5e60
  3b2666:	48 8d 15 a3 99 05 00 	lea    rdx,[rip+0x599a3]        # 0x40c010
  3b266d:	83 c8 02             	or     eax,0x2
  3b2670:	45 33 c9             	xor    r9d,r9d
  3b2673:	89 05 87 99 05 00    	mov    DWORD PTR [rip+0x59987],eax        # 0x40c000
  3b2679:	e8 a6 96 f1 ff       	call   0x2cbd24
  3b267e:	48 8b 0d db 37 02 00 	mov    rcx,QWORD PTR [rip+0x237db]        # 0x3d5e60
  3b2685:	48 8d 15 84 99 05 00 	lea    rdx,[rip+0x59984]        # 0x40c010
  3b268c:	48 83 c4 60          	add    rsp,0x60
  3b2690:	5f                   	pop    rdi
  3b2691:	5e                   	pop    rsi
  3b2692:	5b                   	pop    rbx
  3b2693:	e9 80 b3 f2 ff       	jmp    0x2dda18
; pdata 0x3b2698..0x3b27b2
  3b2698:	4c 8b dc             	mov    r11,rsp
  3b269b:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b269f:	55                   	push   rbp
  3b26a0:	56                   	push   rsi
  3b26a1:	57                   	push   rdi
  3b26a2:	48 83 ec 60          	sub    rsp,0x60
  3b26a6:	8b 05 74 97 05 00    	mov    eax,DWORD PTR [rip+0x59774]        # 0x40be20
  3b26ac:	48 8b e9             	mov    rbp,rcx
  3b26af:	a8 01                	test   al,0x1
  3b26b1:	0f 85 ac 00 00 00    	jne    0x3b2763
  3b26b7:	83 c8 01             	or     eax,0x1
  3b26ba:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b26be:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b26c2:	89 05 58 97 05 00    	mov    DWORD PTR [rip+0x59758],eax        # 0x40be20
  3b26c8:	e8 63 a0 f1 ff       	call   0x2cc730
  3b26cd:	48 8b c8             	mov    rcx,rax
  3b26d0:	e8 cf b5 f1 ff       	call   0x2cdca4
  3b26d5:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b26da:	48 8b f0             	mov    rsi,rax
  3b26dd:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b26e4:	00 
  3b26e5:	e8 16 ef ff ff       	call   0x3b1600
  3b26ea:	48 8b c8             	mov    rcx,rax
  3b26ed:	e8 6a b7 f1 ff       	call   0x2cde5c
  3b26f2:	48 8d 54 24 3d       	lea    rdx,[rsp+0x3d]
  3b26f7:	48 8b f8             	mov    rdi,rax
  3b26fa:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2701:	00 
  3b2702:	e8 31 ec ff ff       	call   0x3b1338
  3b2707:	48 8b c8             	mov    rcx,rax
  3b270a:	e8 a5 0f f3 ff       	call   0x2e36b4
  3b270f:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b2716:	00 
  3b2717:	48 8b d8             	mov    rbx,rax
  3b271a:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2721:	00 
  3b2722:	e8 31 e6 ff ff       	call   0x3b0d58
  3b2727:	48 8b c8             	mov    rcx,rax
  3b272a:	e8 09 aa f2 ff       	call   0x2dd138
  3b272f:	48 8b c8             	mov    rcx,rax
  3b2732:	48 8b d3             	mov    rdx,rbx
  3b2735:	e8 ea 1a f8 ff       	call   0x334224
  3b273a:	41 83 c8 ff          	or     r8d,0xffffffff
  3b273e:	48 8b c8             	mov    rcx,rax
  3b2741:	4c 8b ce             	mov    r9,rsi
  3b2744:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b2749:	48 8b d7             	mov    rdx,rdi
  3b274c:	e8 5b 22 f8 ff       	call   0x3349ac
  3b2751:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b2754:	8b 05 c6 96 05 00    	mov    eax,DWORD PTR [rip+0x596c6]        # 0x40be20
  3b275a:	4c 89 05 b7 96 05 00 	mov    QWORD PTR [rip+0x596b7],r8        # 0x40be18
  3b2761:	eb 07                	jmp    0x3b276a
  3b2763:	4c 8b 05 ae 96 05 00 	mov    r8,QWORD PTR [rip+0x596ae]        # 0x40be18
  3b276a:	a8 02                	test   al,0x2
  3b276c:	75 1f                	jne    0x3b278d
  3b276e:	48 8b 0d eb 36 02 00 	mov    rcx,QWORD PTR [rip+0x236eb]        # 0x3d5e60
  3b2775:	48 8d 15 b4 96 05 00 	lea    rdx,[rip+0x596b4]        # 0x40be30
  3b277c:	83 c8 02             	or     eax,0x2
  3b277f:	45 33 c9             	xor    r9d,r9d
  3b2782:	89 05 98 96 05 00    	mov    DWORD PTR [rip+0x59698],eax        # 0x40be20
  3b2788:	e8 97 95 f1 ff       	call   0x2cbd24
  3b278d:	48 8b 0d cc 36 02 00 	mov    rcx,QWORD PTR [rip+0x236cc]        # 0x3d5e60
  3b2794:	48 8d 15 95 96 05 00 	lea    rdx,[rip+0x59695]        # 0x40be30
  3b279b:	4c 8b c5             	mov    r8,rbp
  3b279e:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b27a5:	00 
  3b27a6:	48 83 c4 60          	add    rsp,0x60
  3b27aa:	5f                   	pop    rdi
  3b27ab:	5e                   	pop    rsi
  3b27ac:	5d                   	pop    rbp
  3b27ad:	e9 4a 92 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b27b4..0x3b27f5
  3b27b4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b27b9:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3b27be:	57                   	push   rdi
  3b27bf:	48 83 ec 20          	sub    rsp,0x20
  3b27c3:	48 8b f2             	mov    rsi,rdx
  3b27c6:	48 8b f9             	mov    rdi,rcx
  3b27c9:	33 d2                	xor    edx,edx
  3b27cb:	e8 90 26 00 00       	call   0x3b4e60
  3b27d0:	48 8b cf             	mov    rcx,rdi
  3b27d3:	48 8b d8             	mov    rbx,rax
  3b27d6:	e8 35 24 00 00       	call   0x3b4c10
  3b27db:	48 89 06             	mov    QWORD PTR [rsi],rax
  3b27de:	48 8b c6             	mov    rax,rsi
  3b27e1:	48 89 5e 08          	mov    QWORD PTR [rsi+0x8],rbx
  3b27e5:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  3b27ea:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b27ef:	48 83 c4 20          	add    rsp,0x20
  3b27f3:	5f                   	pop    rdi
  3b27f4:	c3                   	ret
; pdata 0x3b27f8..0x3b2912
  3b27f8:	4c 8b dc             	mov    r11,rsp
  3b27fb:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b27ff:	55                   	push   rbp
  3b2800:	56                   	push   rsi
  3b2801:	57                   	push   rdi
  3b2802:	48 83 ec 60          	sub    rsp,0x60
  3b2806:	8b 05 d4 99 05 00    	mov    eax,DWORD PTR [rip+0x599d4]        # 0x40c1e0
  3b280c:	48 8b e9             	mov    rbp,rcx
  3b280f:	a8 01                	test   al,0x1
  3b2811:	0f 85 ac 00 00 00    	jne    0x3b28c3
  3b2817:	83 c8 01             	or     eax,0x1
  3b281a:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b281e:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b2822:	89 05 b8 99 05 00    	mov    DWORD PTR [rip+0x599b8],eax        # 0x40c1e0
  3b2828:	e8 03 9f f1 ff       	call   0x2cc730
  3b282d:	48 8b c8             	mov    rcx,rax
  3b2830:	e8 6f b4 f1 ff       	call   0x2cdca4
  3b2835:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b283a:	48 8b f0             	mov    rsi,rax
  3b283d:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2844:	00 
  3b2845:	e8 da ed ff ff       	call   0x3b1624
  3b284a:	48 8b c8             	mov    rcx,rax
  3b284d:	e8 da 5c f2 ff       	call   0x2d852c
  3b2852:	48 8d 54 24 40       	lea    rdx,[rsp+0x40]
  3b2857:	48 8b f8             	mov    rdi,rax
  3b285a:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2861:	00 
  3b2862:	e8 ed ea ff ff       	call   0x3b1354
  3b2867:	48 8b c8             	mov    rcx,rax
  3b286a:	e8 45 0e f3 ff       	call   0x2e36b4
  3b286f:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b2876:	00 
  3b2877:	48 8b d8             	mov    rbx,rax
  3b287a:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2881:	00 
  3b2882:	e8 e5 e4 ff ff       	call   0x3b0d6c
  3b2887:	48 8b c8             	mov    rcx,rax
  3b288a:	e8 25 5c f2 ff       	call   0x2d84b4
  3b288f:	48 8b c8             	mov    rcx,rax
  3b2892:	48 8b d3             	mov    rdx,rbx
  3b2895:	e8 8a 19 f8 ff       	call   0x334224
  3b289a:	41 83 c8 ff          	or     r8d,0xffffffff
  3b289e:	48 8b c8             	mov    rcx,rax
  3b28a1:	4c 8b ce             	mov    r9,rsi
  3b28a4:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b28a9:	48 8b d7             	mov    rdx,rdi
  3b28ac:	e8 fb 20 f8 ff       	call   0x3349ac
  3b28b1:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b28b4:	8b 05 26 99 05 00    	mov    eax,DWORD PTR [rip+0x59926]        # 0x40c1e0
  3b28ba:	4c 89 05 17 99 05 00 	mov    QWORD PTR [rip+0x59917],r8        # 0x40c1d8
  3b28c1:	eb 07                	jmp    0x3b28ca
  3b28c3:	4c 8b 05 0e 99 05 00 	mov    r8,QWORD PTR [rip+0x5990e]        # 0x40c1d8
  3b28ca:	a8 02                	test   al,0x2
  3b28cc:	75 1f                	jne    0x3b28ed
  3b28ce:	48 8b 0d 8b 35 02 00 	mov    rcx,QWORD PTR [rip+0x2358b]        # 0x3d5e60
  3b28d5:	48 8d 15 14 99 05 00 	lea    rdx,[rip+0x59914]        # 0x40c1f0
  3b28dc:	83 c8 02             	or     eax,0x2
  3b28df:	45 33 c9             	xor    r9d,r9d
  3b28e2:	89 05 f8 98 05 00    	mov    DWORD PTR [rip+0x598f8],eax        # 0x40c1e0
  3b28e8:	e8 37 94 f1 ff       	call   0x2cbd24
  3b28ed:	48 8b 0d 6c 35 02 00 	mov    rcx,QWORD PTR [rip+0x2356c]        # 0x3d5e60
  3b28f4:	48 8d 15 f5 98 05 00 	lea    rdx,[rip+0x598f5]        # 0x40c1f0
  3b28fb:	4c 8b c5             	mov    r8,rbp
  3b28fe:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2905:	00 
  3b2906:	48 83 c4 60          	add    rsp,0x60
  3b290a:	5f                   	pop    rdi
  3b290b:	5e                   	pop    rsi
  3b290c:	5d                   	pop    rbp
  3b290d:	e9 ea 90 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2914..0x3b2a2e
  3b2914:	4c 8b dc             	mov    r11,rsp
  3b2917:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b291b:	55                   	push   rbp
  3b291c:	56                   	push   rsi
  3b291d:	57                   	push   rdi
  3b291e:	48 83 ec 60          	sub    rsp,0x60
  3b2922:	8b 05 e8 95 05 00    	mov    eax,DWORD PTR [rip+0x595e8]        # 0x40bf10
  3b2928:	48 8b e9             	mov    rbp,rcx
  3b292b:	a8 01                	test   al,0x1
  3b292d:	0f 85 ac 00 00 00    	jne    0x3b29df
  3b2933:	83 c8 01             	or     eax,0x1
  3b2936:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b293a:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b293e:	89 05 cc 95 05 00    	mov    DWORD PTR [rip+0x595cc],eax        # 0x40bf10
  3b2944:	e8 e7 9d f1 ff       	call   0x2cc730
  3b2949:	48 8b c8             	mov    rcx,rax
  3b294c:	e8 53 b3 f1 ff       	call   0x2cdca4
  3b2951:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b2956:	48 8b f0             	mov    rsi,rax
  3b2959:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b2960:	00 
  3b2961:	e8 ce ec ff ff       	call   0x3b1634
  3b2966:	48 8b c8             	mov    rcx,rax
  3b2969:	e8 5e 5c f2 ff       	call   0x2d85cc
  3b296e:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  3b2973:	48 8b f8             	mov    rdi,rax
  3b2976:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b297d:	00 
  3b297e:	e8 ed e9 ff ff       	call   0x3b1370
  3b2983:	48 8b c8             	mov    rcx,rax
  3b2986:	e8 29 0d f3 ff       	call   0x2e36b4
  3b298b:	48 8d 94 24 98 00 00 	lea    rdx,[rsp+0x98]
  3b2992:	00 
  3b2993:	48 8b d8             	mov    rbx,rax
  3b2996:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b299d:	00 
  3b299e:	e8 e1 e3 ff ff       	call   0x3b0d84
  3b29a3:	48 8b c8             	mov    rcx,rax
  3b29a6:	e8 09 5b f2 ff       	call   0x2d84b4
  3b29ab:	48 8b c8             	mov    rcx,rax
  3b29ae:	48 8b d3             	mov    rdx,rbx
  3b29b1:	e8 6e 18 f8 ff       	call   0x334224
  3b29b6:	41 83 c8 ff          	or     r8d,0xffffffff
  3b29ba:	48 8b c8             	mov    rcx,rax
  3b29bd:	4c 8b ce             	mov    r9,rsi
  3b29c0:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b29c5:	48 8b d7             	mov    rdx,rdi
  3b29c8:	e8 df 1f f8 ff       	call   0x3349ac
  3b29cd:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b29d0:	8b 05 3a 95 05 00    	mov    eax,DWORD PTR [rip+0x5953a]        # 0x40bf10
  3b29d6:	4c 89 05 2b 95 05 00 	mov    QWORD PTR [rip+0x5952b],r8        # 0x40bf08
  3b29dd:	eb 07                	jmp    0x3b29e6
  3b29df:	4c 8b 05 22 95 05 00 	mov    r8,QWORD PTR [rip+0x59522]        # 0x40bf08
  3b29e6:	a8 02                	test   al,0x2
  3b29e8:	75 1f                	jne    0x3b2a09
  3b29ea:	48 8b 0d 6f 34 02 00 	mov    rcx,QWORD PTR [rip+0x2346f]        # 0x3d5e60
  3b29f1:	48 8d 15 28 95 05 00 	lea    rdx,[rip+0x59528]        # 0x40bf20
  3b29f8:	83 c8 02             	or     eax,0x2
  3b29fb:	45 33 c9             	xor    r9d,r9d
  3b29fe:	89 05 0c 95 05 00    	mov    DWORD PTR [rip+0x5950c],eax        # 0x40bf10
  3b2a04:	e8 1b 93 f1 ff       	call   0x2cbd24
  3b2a09:	48 8b 0d 50 34 02 00 	mov    rcx,QWORD PTR [rip+0x23450]        # 0x3d5e60
  3b2a10:	48 8d 15 09 95 05 00 	lea    rdx,[rip+0x59509]        # 0x40bf20
  3b2a17:	4c 8b c5             	mov    r8,rbp
  3b2a1a:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b2a21:	00 
  3b2a22:	48 83 c4 60          	add    rsp,0x60
  3b2a26:	5f                   	pop    rdi
  3b2a27:	5e                   	pop    rsi
  3b2a28:	5d                   	pop    rbp
  3b2a29:	e9 ce 8f f1 ff       	jmp    0x2cb9fc
; pdata 0x3b2a30..0x3b2b38
  3b2a30:	4c 8b dc             	mov    r11,rsp
  3b2a33:	53                   	push   rbx
  3b2a34:	56                   	push   rsi
  3b2a35:	57                   	push   rdi
  3b2a36:	48 83 ec 60          	sub    rsp,0x60
  3b2a3a:	8b 05 60 9b 05 00    	mov    eax,DWORD PTR [rip+0x59b60]        # 0x40c5a0
  3b2a40:	a8 01                	test   al,0x1
  3b2a42:	0f 85 ac 00 00 00    	jne    0x3b2af4
  3b2a48:	83 c8 01             	or     eax,0x1
  3b2a4b:	49 8d 53 08          	lea    rdx,[r11+0x8]
  3b2a4f:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b2a53:	89 05 47 9b 05 00    	mov    DWORD PTR [rip+0x59b47],eax        # 0x40c5a0
  3b2a59:	e8 d2 9c f1 ff       	call   0x2cc730
  3b2a5e:	48 8b c8             	mov    rcx,rax
  3b2a61:	e8 3e b2 f1 ff       	call   0x2cdca4
  3b2a66:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  3b2a6b:	48 8b f0             	mov    rsi,rax
  3b2a6e:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b2a75:	00 
  3b2a76:	e8 d5 eb ff ff       	call   0x3b1650
  3b2a7b:	48 8b c8             	mov    rcx,rax
  3b2a7e:	e8 e1 0b f3 ff       	call   0x2e3664
  3b2a83:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b2a88:	48 8b f8             	mov    rdi,rax
  3b2a8b:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b2a92:	00 
  3b2a93:	e8 f4 e8 ff ff       	call   0x3b138c
  3b2a98:	48 8b c8             	mov    rcx,rax
  3b2a9b:	e8 6c b3 f1 ff       	call   0x2cde0c
  3b2aa0:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3b2aa7:	00 
  3b2aa8:	48 8b d8             	mov    rbx,rax
  3b2aab:	48 8d 8c 24 88 00 00 	lea    rcx,[rsp+0x88]
  3b2ab2:	00 
  3b2ab3:	e8 e4 e2 ff ff       	call   0x3b0d9c
  3b2ab8:	48 8b c8             	mov    rcx,rax
  3b2abb:	e8 2c 0b f3 ff       	call   0x2e35ec
  3b2ac0:	48 8b c8             	mov    rcx,rax
  3b2ac3:	48 8b d3             	mov    rdx,rbx
  3b2ac6:	e8 59 17 f8 ff       	call   0x334224
  3b2acb:	41 83 c8 ff          	or     r8d,0xffffffff
  3b2acf:	48 8b c8             	mov    rcx,rax
  3b2ad2:	4c 8b ce             	mov    r9,rsi
  3b2ad5:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b2ada:	48 8b d7             	mov    rdx,rdi
  3b2add:	e8 ca 1e f8 ff       	call   0x3349ac
  3b2ae2:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b2ae5:	8b 05 b5 9a 05 00    	mov    eax,DWORD PTR [rip+0x59ab5]        # 0x40c5a0
  3b2aeb:	4c 89 05 a6 9a 05 00 	mov    QWORD PTR [rip+0x59aa6],r8        # 0x40c598
  3b2af2:	eb 07                	jmp    0x3b2afb
  3b2af4:	4c 8b 05 9d 9a 05 00 	mov    r8,QWORD PTR [rip+0x59a9d]        # 0x40c598
  3b2afb:	a8 02                	test   al,0x2
  3b2afd:	75 1f                	jne    0x3b2b1e
  3b2aff:	48 8b 0d 5a 33 02 00 	mov    rcx,QWORD PTR [rip+0x2335a]        # 0x3d5e60
  3b2b06:	48 8d 15 a3 9a 05 00 	lea    rdx,[rip+0x59aa3]        # 0x40c5b0
  3b2b0d:	83 c8 02             	or     eax,0x2
  3b2b10:	45 33 c9             	xor    r9d,r9d
  3b2b13:	89 05 87 9a 05 00    	mov    DWORD PTR [rip+0x59a87],eax        # 0x40c5a0
  3b2b19:	e8 06 92 f1 ff       	call   0x2cbd24
  3b2b1e:	48 8b 0d 3b 33 02 00 	mov    rcx,QWORD PTR [rip+0x2333b]        # 0x3d5e60
  3b2b25:	48 8d 15 84 9a 05 00 	lea    rdx,[rip+0x59a84]        # 0x40c5b0
  3b2b2c:	48 83 c4 60          	add    rsp,0x60
  3b2b30:	5f                   	pop    rdi
  3b2b31:	5e                   	pop    rsi
  3b2b32:	5b                   	pop    rbx
  3b2b33:	e9 18 be f2 ff       	jmp    0x2de950
; pdata 0x3b2b38..0x3b2ee9
  3b2b38:	48 8b c4             	mov    rax,rsp
  3b2b3b:	48 89 58 18          	mov    QWORD PTR [rax+0x18],rbx
  3b2b3f:	55                   	push   rbp
  3b2b40:	56                   	push   rsi
  3b2b41:	57                   	push   rdi
  3b2b42:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  3b2b46:	48 81 ec f0 00 00 00 	sub    rsp,0xf0
  3b2b4d:	0f 29 70 d8          	movaps XMMWORD PTR [rax-0x28],xmm6
  3b2b51:	e8 56 fb fd ff       	call   0x3926ac
  3b2b56:	48 8d 55 67          	lea    rdx,[rbp+0x67]
  3b2b5a:	48 8b d8             	mov    rbx,rax
  3b2b5d:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2b61:	e8 4e e2 ff ff       	call   0x3b0db4
  3b2b66:	48 8b c8             	mov    rcx,rax
  3b2b69:	e8 82 74 fc ff       	call   0x379ff0
  3b2b6e:	83 4b 04 0e          	or     DWORD PTR [rbx+0x4],0xe
  3b2b72:	48 8d 55 97          	lea    rdx,[rbp-0x69]
  3b2b76:	66 0f 6f 05 52 ac ef 	movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefac52]        # 0x2ad7d0
  3b2b7d:	ff 
  3b2b7e:	48 89 83 88 00 00 00 	mov    QWORD PTR [rbx+0x88],rax
  3b2b85:	48 c7 83 b8 00 00 00 	mov    QWORD PTR [rbx+0xb8],0x0
  3b2b8c:	00 00 00 00 
  3b2b90:	48 8d 1d 89 a5 05 00 	lea    rbx,[rip+0x5a589]        # 0x40d120
  3b2b97:	48 8b cb             	mov    rcx,rbx
  3b2b9a:	f3 0f 7f 45 97       	movdqu XMMWORD PTR [rbp-0x69],xmm0
  3b2b9f:	e8 00 86 f7 ff       	call   0x32b1a4
  3b2ba4:	66 0f 6f 05 34 ac ef 	movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefac34]        # 0x2ad7e0
  3b2bab:	ff 
  3b2bac:	48 8d 55 97          	lea    rdx,[rbp-0x69]
  3b2bb0:	48 8b cb             	mov    rcx,rbx
  3b2bb3:	f3 0f 7f 45 97       	movdqu XMMWORD PTR [rbp-0x69],xmm0
  3b2bb8:	e8 e7 85 f7 ff       	call   0x32b1a4
  3b2bbd:	66 0f 6f 05 fb ab ef 	movdqa xmm0,XMMWORD PTR [rip+0xffffffffffefabfb]        # 0x2ad7c0
  3b2bc4:	ff 
  3b2bc5:	48 8d 55 97          	lea    rdx,[rbp-0x69]
  3b2bc9:	48 8b cb             	mov    rcx,rbx
  3b2bcc:	f3 0f 7f 45 97       	movdqu XMMWORD PTR [rbp-0x69],xmm0
  3b2bd1:	e8 ce 85 f7 ff       	call   0x32b1a4
  3b2bd6:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2bda:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2bde:	e8 c5 e7 ff ff       	call   0x3b13a8
  3b2be3:	48 8b c8             	mov    rcx,rax
  3b2be6:	e8 ad 2b fc ff       	call   0x375798
  3b2beb:	48 8b c8             	mov    rcx,rax
  3b2bee:	e8 e9 b9 f1 ff       	call   0x2ce5dc
  3b2bf3:	48 8b c8             	mov    rcx,rax
  3b2bf6:	e8 f9 ca ff ff       	call   0x3af6f4
  3b2bfb:	89 05 4f a5 05 00    	mov    DWORD PTR [rip+0x5a54f],eax        # 0x40d150
  3b2c01:	e8 6e 09 00 00       	call   0x3b3574
  3b2c06:	48 8b c8             	mov    rcx,rax
  3b2c09:	48 89 05 48 a5 05 00 	mov    QWORD PTR [rip+0x5a548],rax        # 0x40d158
  3b2c10:	e8 6b d9 ff ff       	call   0x3b0580
  3b2c15:	48 8b 0d 3c a5 05 00 	mov    rcx,QWORD PTR [rip+0x5a53c]        # 0x40d158
  3b2c1c:	48 8d 15 dd ae 05 00 	lea    rdx,[rip+0x5aedd]        # 0x40db00
  3b2c23:	e8 70 0b 00 00       	call   0x3b3798
  3b2c28:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2c2c:	48 89 05 25 a5 05 00 	mov    QWORD PTR [rip+0x5a525],rax        # 0x40d158
  3b2c33:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2c37:	e8 40 eb ff ff       	call   0x3b177c
  3b2c3c:	48 8b c8             	mov    rcx,rax
  3b2c3f:	e8 1c 2c fc ff       	call   0x375860
  3b2c44:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  3b2c48:	48 8b d8             	mov    rbx,rax
  3b2c4b:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2c4f:	e8 18 ea ff ff       	call   0x3b166c
  3b2c54:	48 8b c8             	mov    rcx,rax
  3b2c57:	e8 14 2b fc ff       	call   0x375770
  3b2c5c:	48 8b c8             	mov    rcx,rax
  3b2c5f:	48 8b d3             	mov    rdx,rbx
  3b2c62:	e8 75 9f f1 ff       	call   0x2ccbdc
  3b2c67:	e8 b8 08 00 00       	call   0x3b3524
  3b2c6c:	48 8b c8             	mov    rcx,rax
  3b2c6f:	48 89 05 0a a5 05 00 	mov    QWORD PTR [rip+0x5a50a],rax        # 0x40d180
  3b2c76:	e8 85 d8 ff ff       	call   0x3b0500
  3b2c7b:	48 8b 0d fe a4 05 00 	mov    rcx,QWORD PTR [rip+0x5a4fe]        # 0x40d180
  3b2c82:	48 8d 15 7f ae 05 00 	lea    rdx,[rip+0x5ae7f]        # 0x40db08
  3b2c89:	e8 0a 0b 00 00       	call   0x3b3798
  3b2c8e:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2c92:	48 89 05 e7 a4 05 00 	mov    QWORD PTR [rip+0x5a4e7],rax        # 0x40d180
  3b2c99:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2c9d:	e8 b2 eb ff ff       	call   0x3b1854
  3b2ca2:	48 8b c8             	mov    rcx,rax
  3b2ca5:	e8 52 8a fc ff       	call   0x37b6fc
  3b2caa:	48 8b c8             	mov    rcx,rax
  3b2cad:	e8 2a b9 f1 ff       	call   0x2ce5dc
  3b2cb2:	48 8b 0d c7 a4 05 00 	mov    rcx,QWORD PTR [rip+0x5a4c7]        # 0x40d180
  3b2cb9:	48 8b d0             	mov    rdx,rax
  3b2cbc:	e8 1f db ff ff       	call   0x3b07e0
  3b2cc1:	e8 b6 06 00 00       	call   0x3b337c
  3b2cc6:	e8 25 dd f2 ff       	call   0x2e09f0
  3b2ccb:	66 0f 6e f0          	movd   xmm6,eax
  3b2ccf:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  3b2cd2:	e8 19 de f2 ff       	call   0x2e0af0
  3b2cd7:	0f 57 d2             	xorps  xmm2,xmm2
  3b2cda:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  3b2ce0:	0f 57 c9             	xorps  xmm1,xmm1
  3b2ce3:	48 8d 4d b3          	lea    rcx,[rbp-0x4d]
  3b2ce7:	66 0f 6e d8          	movd   xmm3,eax
  3b2ceb:	0f 5b db             	cvtdq2ps xmm3,xmm3
  3b2cee:	e8 5d 96 f1 ff       	call   0x2cc350
  3b2cf3:	48 8d 55 c3          	lea    rdx,[rbp-0x3d]
  3b2cf7:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2cfb:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  3b2cfe:	f3 0f 7f 05 a2 45 02 	movdqu XMMWORD PTR [rip+0x245a2],xmm0        # 0x3d72a8
  3b2d05:	00 
  3b2d06:	e8 9d eb ff ff       	call   0x3b18a8
  3b2d0b:	48 8b c8             	mov    rcx,rax
  3b2d0e:	e8 4d 2b fc ff       	call   0x375860
  3b2d13:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2d17:	48 8b d8             	mov    rbx,rax
  3b2d1a:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2d1e:	e8 69 eb ff ff       	call   0x3b188c
  3b2d23:	48 8b c8             	mov    rcx,rax
  3b2d26:	e8 d1 89 fc ff       	call   0x37b6fc
  3b2d2b:	48 8b c8             	mov    rcx,rax
  3b2d2e:	48 8b d3             	mov    rdx,rbx
  3b2d31:	e8 a6 9e f1 ff       	call   0x2ccbdc
  3b2d36:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  3b2d3a:	48 8b f0             	mov    rsi,rax
  3b2d3d:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2d41:	e8 a2 eb ff ff       	call   0x3b18e8
  3b2d46:	48 8b c8             	mov    rcx,rax
  3b2d49:	e8 12 2b fc ff       	call   0x375860
  3b2d4e:	48 8d 55 b3          	lea    rdx,[rbp-0x4d]
  3b2d52:	48 8b d8             	mov    rbx,rax
  3b2d55:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2d59:	e8 66 eb ff ff       	call   0x3b18c4
  3b2d5e:	48 8b c8             	mov    rcx,rax
  3b2d61:	e8 4a 2b fc ff       	call   0x3758b0
  3b2d66:	48 8b c8             	mov    rcx,rax
  3b2d69:	48 8b d3             	mov    rdx,rbx
  3b2d6c:	e8 6b 9e f1 ff       	call   0x2ccbdc
  3b2d71:	48 8d 55 cf          	lea    rdx,[rbp-0x31]
  3b2d75:	48 8b f8             	mov    rdi,rax
  3b2d78:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2d7c:	e8 77 dd ff ff       	call   0x3b0af8
  3b2d81:	48 8b c8             	mov    rcx,rax
  3b2d84:	e8 4f 1b 00 00       	call   0x3b48d8
  3b2d89:	48 8b 0d 68 31 03 00 	mov    rcx,QWORD PTR [rip+0x33168]        # 0x3e5ef8
  3b2d90:	4c 8b c6             	mov    r8,rsi
  3b2d93:	48 8b d0             	mov    rdx,rax
  3b2d96:	e8 b1 c7 ff ff       	call   0x3af54c
  3b2d9b:	48 8d 55 f6          	lea    rdx,[rbp-0xa]
  3b2d9f:	48 8b d8             	mov    rbx,rax
  3b2da2:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2da6:	e8 75 dd ff ff       	call   0x3b0b20
  3b2dab:	48 8b c8             	mov    rcx,rax
  3b2dae:	e8 75 1b 00 00       	call   0x3b4928
  3b2db3:	48 8b 0d 3e 31 03 00 	mov    rcx,QWORD PTR [rip+0x3313e]        # 0x3e5ef8
  3b2dba:	4c 8b c7             	mov    r8,rdi
  3b2dbd:	48 8b d0             	mov    rdx,rax
  3b2dc0:	e8 5f c6 ff ff       	call   0x3af424
  3b2dc5:	48 8b cb             	mov    rcx,rbx
  3b2dc8:	48 89 05 a9 a3 05 00 	mov    QWORD PTR [rip+0x5a3a9],rax        # 0x40d178
  3b2dcf:	e8 d0 c5 ff ff       	call   0x3af3a4
  3b2dd4:	48 8b c8             	mov    rcx,rax
  3b2dd7:	e8 88 c4 ff ff       	call   0x3af264
  3b2ddc:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2de0:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2de4:	e8 67 dd ff ff       	call   0x3b0b50
  3b2de9:	48 8b c8             	mov    rcx,rax
  3b2dec:	e8 0b 89 fc ff       	call   0x37b6fc
  3b2df1:	48 8b c8             	mov    rcx,rax
  3b2df4:	e8 e3 b7 f1 ff       	call   0x2ce5dc
  3b2df9:	48 8b c8             	mov    rcx,rax
  3b2dfc:	e8 37 03 fc ff       	call   0x373138
  3b2e01:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  3b2e05:	48 8b f8             	mov    rdi,rax
  3b2e08:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2e0c:	e8 7f dd ff ff       	call   0x3b0b90
  3b2e11:	48 8b c8             	mov    rcx,rax
  3b2e14:	e8 47 2a fc ff       	call   0x375860
  3b2e19:	48 8b d8             	mov    rbx,rax
  3b2e1c:	48 8d 55 b3          	lea    rdx,[rbp-0x4d]
  3b2e20:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2e24:	e8 43 dd ff ff       	call   0x3b0b6c
  3b2e29:	48 8b c8             	mov    rcx,rax
  3b2e2c:	e8 7f 2a fc ff       	call   0x3758b0
  3b2e31:	48 8b d0             	mov    rdx,rax
  3b2e34:	4c 8b c3             	mov    r8,rbx
  3b2e37:	48 8b cf             	mov    rcx,rdi
  3b2e3a:	e8 39 05 fc ff       	call   0x373378
  3b2e3f:	48 8d 55 87          	lea    rdx,[rbp-0x79]
  3b2e43:	48 89 05 1e a3 05 00 	mov    QWORD PTR [rip+0x5a31e],rax        # 0x40d168
  3b2e4a:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2e4e:	e8 59 dd ff ff       	call   0x3b0bac
  3b2e53:	48 8b c8             	mov    rcx,rax
  3b2e56:	e8 3d 29 fc ff       	call   0x375798
  3b2e5b:	48 8b c8             	mov    rcx,rax
  3b2e5e:	e8 79 b7 f1 ff       	call   0x2ce5dc
  3b2e63:	48 8b c8             	mov    rcx,rax
  3b2e66:	e8 cd 02 fc ff       	call   0x373138
  3b2e6b:	48 8d 55 a7          	lea    rdx,[rbp-0x59]
  3b2e6f:	48 8b f8             	mov    rdi,rax
  3b2e72:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2e76:	e8 6d dd ff ff       	call   0x3b0be8
  3b2e7b:	48 8b c8             	mov    rcx,rax
  3b2e7e:	e8 dd 29 fc ff       	call   0x375860
  3b2e83:	48 8d 55 6f          	lea    rdx,[rbp+0x6f]
  3b2e87:	48 8b d8             	mov    rbx,rax
  3b2e8a:	48 8d 4d 67          	lea    rcx,[rbp+0x67]
  3b2e8e:	e8 35 dd ff ff       	call   0x3b0bc8
  3b2e93:	48 8b c8             	mov    rcx,rax
  3b2e96:	e8 d5 28 fc ff       	call   0x375770
  3b2e9b:	48 8b d0             	mov    rdx,rax
  3b2e9e:	4c 8b c3             	mov    r8,rbx
  3b2ea1:	48 8b cf             	mov    rcx,rdi
  3b2ea4:	e8 cf 04 fc ff       	call   0x373378
  3b2ea9:	33 d2                	xor    edx,edx
  3b2eab:	48 89 05 be a2 05 00 	mov    QWORD PTR [rip+0x5a2be],rax        # 0x40d170
  3b2eb2:	48 8b cf             	mov    rcx,rdi
  3b2eb5:	e8 8a 08 fc ff       	call   0x373744
  3b2eba:	f3 0f 10 0d f2 43 02 	movss  xmm1,DWORD PTR [rip+0x243f2]        # 0x3d72b4
  3b2ec1:	00 
  3b2ec2:	f3 0f 10 05 e6 43 02 	movss  xmm0,DWORD PTR [rip+0x243e6]        # 0x3d72b0
  3b2ec9:	00 
  3b2eca:	e8 35 ea ff ff       	call   0x3b1904
  3b2ecf:	4c 8d 9c 24 f0 00 00 	lea    r11,[rsp+0xf0]
  3b2ed6:	00 
  3b2ed7:	b0 01                	mov    al,0x1
  3b2ed9:	49 8b 5b 30          	mov    rbx,QWORD PTR [r11+0x30]
  3b2edd:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  3b2ee2:	49 8b e3             	mov    rsp,r11
  3b2ee5:	5f                   	pop    rdi
  3b2ee6:	5e                   	pop    rsi
  3b2ee7:	5d                   	pop    rbp
  3b2ee8:	c3                   	ret
; pdata 0x3b2eec..0x3b3027
  3b2eec:	40 53                	rex push rbx
  3b2eee:	57                   	push   rdi
  3b2eef:	48 83 ec 38          	sub    rsp,0x38
  3b2ef3:	48 8b d9             	mov    rbx,rcx
  3b2ef6:	e8 35 fb ff ff       	call   0x3b2a30
  3b2efb:	48 8b 0d 6e a2 05 00 	mov    rcx,QWORD PTR [rip+0x5a26e]        # 0x40d170
  3b2f02:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b2f07:	f3 0f 11 43 10       	movss  DWORD PTR [rbx+0x10],xmm0
  3b2f0c:	e8 b3 99 fb ff       	call   0x36c8c4
  3b2f11:	f3 0f 10 54 24 2c    	movss  xmm2,DWORD PTR [rsp+0x2c]
  3b2f17:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b2f1c:	f3 0f 10 4c 24 28    	movss  xmm1,DWORD PTR [rsp+0x28]
  3b2f22:	e8 19 94 f1 ff       	call   0x2cc340
  3b2f27:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3b2f2b:	f2 0f 11 43 08       	movsd  QWORD PTR [rbx+0x8],xmm0
  3b2f30:	e8 5b f6 ff ff       	call   0x3b2590
  3b2f35:	48 8b c8             	mov    rcx,rax
  3b2f38:	48 8b f8             	mov    rdi,rax
  3b2f3b:	e8 c8 7f f1 ff       	call   0x2caf08
  3b2f40:	84 c0                	test   al,al
  3b2f42:	0f 84 d8 00 00 00    	je     0x3b3020
  3b2f48:	48 8b cf             	mov    rcx,rdi
  3b2f4b:	e8 48 f7 ff ff       	call   0x3b2698
  3b2f50:	48 8b c8             	mov    rcx,rax
  3b2f53:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  3b2f58:	e8 93 05 00 00       	call   0x3b34f0
  3b2f5d:	f3 0f 10 54 24 54    	movss  xmm2,DWORD PTR [rsp+0x54]
  3b2f63:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b2f68:	f3 0f 10 4c 24 50    	movss  xmm1,DWORD PTR [rsp+0x50]
  3b2f6e:	e8 cd 93 f1 ff       	call   0x2cc340
  3b2f73:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3b2f78:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  3b2f7b:	e8 18 0a 00 00       	call   0x3b3998
  3b2f80:	48 8b cf             	mov    rcx,rdi
  3b2f83:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3b2f87:	f2 0f 11 83 00 0e 00 	movsd  QWORD PTR [rbx+0xe00],xmm0
  3b2f8e:	00 
  3b2f8f:	e8 80 f9 ff ff       	call   0x3b2914
  3b2f94:	48 8b c8             	mov    rcx,rax
  3b2f97:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  3b2f9c:	e8 4f 05 00 00       	call   0x3b34f0
  3b2fa1:	f3 0f 10 54 24 5c    	movss  xmm2,DWORD PTR [rsp+0x5c]
  3b2fa7:	0f 57 c9             	xorps  xmm1,xmm1
  3b2faa:	48 8b cb             	mov    rcx,rbx
  3b2fad:	e8 76 9d fd ff       	call   0x38cd28
  3b2fb2:	48 8b cf             	mov    rcx,rdi
  3b2fb5:	e8 9e f3 ff ff       	call   0x3b2358
  3b2fba:	48 8b c8             	mov    rcx,rax
  3b2fbd:	e8 f6 38 f3 ff       	call   0x2e68b8
  3b2fc2:	48 8b cf             	mov    rcx,rdi
  3b2fc5:	88 83 08 0e 00 00    	mov    BYTE PTR [rbx+0xe08],al
  3b2fcb:	e8 28 f8 ff ff       	call   0x3b27f8
  3b2fd0:	48 8b c8             	mov    rcx,rax
  3b2fd3:	e8 e0 38 f3 ff       	call   0x2e68b8
  3b2fd8:	48 8b cf             	mov    rcx,rdi
  3b2fdb:	88 83 09 0e 00 00    	mov    BYTE PTR [rbx+0xe09],al
  3b2fe1:	e8 8e f4 ff ff       	call   0x3b2474
  3b2fe6:	48 8b c8             	mov    rcx,rax
  3b2fe9:	e8 ca 38 f3 ff       	call   0x2e68b8
  3b2fee:	48 8b cf             	mov    rcx,rdi
  3b2ff1:	88 83 0a 0e 00 00    	mov    BYTE PTR [rbx+0xe0a],al
  3b2ff7:	e8 24 f1 ff ff       	call   0x3b2120
  3b2ffc:	48 8b c8             	mov    rcx,rax
  3b2fff:	e8 b4 38 f3 ff       	call   0x2e68b8
  3b3004:	48 8b cf             	mov    rcx,rdi
  3b3007:	88 83 0b 0e 00 00    	mov    BYTE PTR [rbx+0xe0b],al
  3b300d:	e8 2a f2 ff ff       	call   0x3b223c
  3b3012:	48 8b c8             	mov    rcx,rax
  3b3015:	e8 9e 38 f3 ff       	call   0x2e68b8
  3b301a:	88 83 0c 0e 00 00    	mov    BYTE PTR [rbx+0xe0c],al
  3b3020:	48 83 c4 38          	add    rsp,0x38
  3b3024:	5f                   	pop    rdi
  3b3025:	5b                   	pop    rbx
  3b3026:	c3                   	ret
; pdata 0x3b3028..0x3b3199
  3b3028:	48 8b c4             	mov    rax,rsp
  3b302b:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  3b302f:	55                   	push   rbp
  3b3030:	48 8b ec             	mov    rbp,rsp
  3b3033:	48 83 ec 70          	sub    rsp,0x70
  3b3037:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  3b303b:	48 8b d9             	mov    rbx,rcx
  3b303e:	48 8b 0d 3b a1 05 00 	mov    rcx,QWORD PTR [rip+0x5a13b]        # 0x40d180
  3b3045:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  3b3049:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  3b304e:	e8 69 c0 ff ff       	call   0x3af0bc
  3b3053:	48 8b 05 e6 a0 05 00 	mov    rax,QWORD PTR [rip+0x5a0e6]        # 0x40d140
  3b305a:	48 83 78 10 00       	cmp    QWORD PTR [rax+0x10],0x0
  3b305f:	75 35                	jne    0x3b3096
  3b3061:	f3 0f 10 05 8f ab 05 	movss  xmm0,DWORD PTR [rip+0x5ab8f]        # 0x40dbf8
  3b3068:	00 
  3b3069:	0f 2f 05 e8 00 ee ff 	comiss xmm0,DWORD PTR [rip+0xffffffffffee00e8]        # 0x293158
  3b3070:	76 0a                	jbe    0x3b307c
  3b3072:	e8 05 03 00 00       	call   0x3b337c
  3b3077:	0f 57 c0             	xorps  xmm0,xmm0
  3b307a:	eb 0d                	jmp    0x3b3089
  3b307c:	e8 9b d6 f2 ff       	call   0x2e071c
  3b3081:	f3 0f 58 05 6f ab 05 	addss  xmm0,DWORD PTR [rip+0x5ab6f]        # 0x40dbf8
  3b3088:	00 
  3b3089:	f3 0f 11 05 67 ab 05 	movss  DWORD PTR [rip+0x5ab67],xmm0        # 0x40dbf8
  3b3090:	00 
  3b3091:	e9 e6 00 00 00       	jmp    0x3b317c
  3b3096:	e8 55 d9 f2 ff       	call   0x2e09f0
  3b309b:	66 0f 6e f0          	movd   xmm6,eax
  3b309f:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  3b30a2:	e8 49 da f2 ff       	call   0x2e0af0
  3b30a7:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3b30ab:	0f 57 d2             	xorps  xmm2,xmm2
  3b30ae:	f3 0f 11 74 24 20    	movss  DWORD PTR [rsp+0x20],xmm6
  3b30b4:	66 0f 6e d8          	movd   xmm3,eax
  3b30b8:	0f 57 c9             	xorps  xmm1,xmm1
  3b30bb:	0f 5b db             	cvtdq2ps xmm3,xmm3
  3b30be:	0f 57 ff             	xorps  xmm7,xmm7
  3b30c1:	e8 8a 92 f1 ff       	call   0x2cc350
  3b30c6:	f3 44 0f 10 45 c8    	movss  xmm8,DWORD PTR [rbp-0x38]
  3b30cc:	44 0f 2e 05 dc 41 02 	ucomiss xmm8,DWORD PTR [rip+0x241dc]        # 0x3d72b0
  3b30d3:	00 
  3b30d4:	f3 0f 10 75 cc       	movss  xmm6,DWORD PTR [rbp-0x34]
  3b30d9:	7a 0d                	jp     0x3b30e8
  3b30db:	75 0b                	jne    0x3b30e8
  3b30dd:	0f 2e 35 d0 41 02 00 	ucomiss xmm6,DWORD PTR [rip+0x241d0]        # 0x3d72b4
  3b30e4:	7a 02                	jp     0x3b30e8
  3b30e6:	74 37                	je     0x3b311f
  3b30e8:	0f 28 ce             	movaps xmm1,xmm6
  3b30eb:	41 0f 28 c0          	movaps xmm0,xmm8
  3b30ef:	e8 10 e8 ff ff       	call   0x3b1904
  3b30f4:	f3 0f 10 45 c0       	movss  xmm0,DWORD PTR [rbp-0x40]
  3b30f9:	f3 0f 10 4d c4       	movss  xmm1,DWORD PTR [rbp-0x3c]
  3b30fe:	f3 0f 11 05 a2 41 02 	movss  DWORD PTR [rip+0x241a2],xmm0        # 0x3d72a8
  3b3105:	00 
  3b3106:	f3 0f 11 0d 9e 41 02 	movss  DWORD PTR [rip+0x2419e],xmm1        # 0x3d72ac
  3b310d:	00 
  3b310e:	f3 44 0f 11 05 99 41 	movss  DWORD PTR [rip+0x24199],xmm8        # 0x3d72b0
  3b3115:	02 00 
  3b3117:	f3 0f 11 35 95 41 02 	movss  DWORD PTR [rip+0x24195],xmm6        # 0x3d72b4
  3b311e:	00 
  3b311f:	4c 8d 43 28          	lea    r8,[rbx+0x28]
  3b3123:	48 8d 53 20          	lea    rdx,[rbx+0x20]
  3b3127:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  3b312b:	e8 ac 8a fd ff       	call   0x38bbdc
  3b3130:	f3 0f 10 55 24       	movss  xmm2,DWORD PTR [rbp+0x24]
  3b3135:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3b3139:	f3 0f 10 4d 20       	movss  xmm1,DWORD PTR [rbp+0x20]
  3b313e:	e8 fd 91 f1 ff       	call   0x2cc340
  3b3143:	0f 2f 7d 18          	comiss xmm7,DWORD PTR [rbp+0x18]
  3b3147:	73 33                	jae    0x3b317c
  3b3149:	0f 2f 7d 1c          	comiss xmm7,DWORD PTR [rbp+0x1c]
  3b314d:	73 2d                	jae    0x3b317c
  3b314f:	83 7b 0c 00          	cmp    DWORD PTR [rbx+0xc],0x0
  3b3153:	74 27                	je     0x3b317c
  3b3155:	48 8b cb             	mov    rcx,rbx
  3b3158:	e8 f3 10 00 00       	call   0x3b4250
  3b315d:	4c 8b 45 18          	mov    r8,QWORD PTR [rbp+0x18]
  3b3161:	48 8b d3             	mov    rdx,rbx
  3b3164:	48 8b 0d 15 a0 05 00 	mov    rcx,QWORD PTR [rip+0x5a015]        # 0x40d180
  3b316b:	e8 24 e9 ff ff       	call   0x3b1a94
  3b3170:	48 8b 0d 09 a0 05 00 	mov    rcx,QWORD PTR [rip+0x5a009]        # 0x40d180
  3b3177:	e8 88 ee ff ff       	call   0x3b2004
  3b317c:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  3b3181:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  3b3186:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  3b318a:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  3b318f:	0f 28 7c 24 50       	movaps xmm7,XMMWORD PTR [rsp+0x50]
  3b3194:	49 8b e3             	mov    rsp,r11
  3b3197:	5d                   	pop    rbp
  3b3198:	c3                   	ret
; pdata 0x3b3240..0x3b337b
  3b3240:	40 55                	rex push rbp
  3b3242:	53                   	push   rbx
  3b3243:	56                   	push   rsi
  3b3244:	57                   	push   rdi
  3b3245:	41 56                	push   r14
  3b3247:	48 8b ec             	mov    rbp,rsp
  3b324a:	48 83 ec 60          	sub    rsp,0x60
  3b324e:	48 8b f1             	mov    rsi,rcx
  3b3251:	48 8d 45 48          	lea    rax,[rbp+0x48]
  3b3255:	48 8b 49 50          	mov    rcx,QWORD PTR [rcx+0x50]
  3b3259:	4c 8d 4d 38          	lea    r9,[rbp+0x38]
  3b325d:	4c 8d 45 40          	lea    r8,[rbp+0x40]
  3b3261:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  3b3266:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3b326a:	e8 7d 17 ff ff       	call   0x3a49ec
  3b326f:	4c 8b 75 d0          	mov    r14,QWORD PTR [rbp-0x30]
  3b3273:	48 8d 55 e8          	lea    rdx,[rbp-0x18]
  3b3277:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3b327b:	e8 44 e1 ff ff       	call   0x3b13c4
  3b3280:	48 8b c8             	mov    rcx,rax
  3b3283:	e8 84 ab f1 ff       	call   0x2cde0c
  3b3288:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  3b328c:	48 8b d8             	mov    rbx,rax
  3b328f:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3b3293:	e8 34 db ff ff       	call   0x3b0dcc
  3b3298:	48 8b c8             	mov    rcx,rax
  3b329b:	e8 7c aa f1 ff       	call   0x2cdd1c
  3b32a0:	48 8b c8             	mov    rcx,rax
  3b32a3:	48 8b d3             	mov    rdx,rbx
  3b32a6:	e8 79 0f f8 ff       	call   0x334224
  3b32ab:	48 8b c8             	mov    rcx,rax
  3b32ae:	e8 e5 18 00 00       	call   0x3b4b98
  3b32b3:	44 8b 45 38          	mov    r8d,DWORD PTR [rbp+0x38]
  3b32b7:	41 b9 04 00 00 00    	mov    r9d,0x4
  3b32bd:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  3b32c0:	48 8b c8             	mov    rcx,rax
  3b32c3:	c6 44 24 28 00       	mov    BYTE PTR [rsp+0x28],0x0
  3b32c8:	48 89 05 91 9e 05 00 	mov    QWORD PTR [rip+0x59e91],rax        # 0x40d160
  3b32cf:	c6 44 24 20 00       	mov    BYTE PTR [rsp+0x20],0x0
  3b32d4:	e8 a7 d3 ff ff       	call   0x3b0680
  3b32d9:	48 8b 0d 80 9e 05 00 	mov    rcx,QWORD PTR [rip+0x59e80]        # 0x40d160
  3b32e0:	48 8d 15 a1 9e 05 00 	lea    rdx,[rip+0x59ea1]        # 0x40d188
  3b32e7:	e8 ac 04 00 00       	call   0x3b3798
  3b32ec:	33 d2                	xor    edx,edx
  3b32ee:	48 89 05 6b 9e 05 00 	mov    QWORD PTR [rip+0x59e6b],rax        # 0x40d160
  3b32f5:	48 8b c8             	mov    rcx,rax
  3b32f8:	e8 6f d5 ff ff       	call   0x3b086c
  3b32fd:	48 8b 0d 5c 9e 05 00 	mov    rcx,QWORD PTR [rip+0x59e5c]        # 0x40d160
  3b3304:	48 8d 55 e8          	lea    rdx,[rbp-0x18]
  3b3308:	e8 a7 f4 ff ff       	call   0x3b27b4
  3b330d:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  3b3310:	33 db                	xor    ebx,ebx
  3b3312:	0f af 55 48          	imul   edx,DWORD PTR [rbp+0x48]
  3b3316:	8b 4d 38             	mov    ecx,DWORD PTR [rbp+0x38]
  3b3319:	85 c9                	test   ecx,ecx
  3b331b:	74 32                	je     0x3b334f
  3b331d:	48 63 fa             	movsxd rdi,edx
  3b3320:	48 63 c9             	movsxd rcx,ecx
  3b3323:	48 8b d7             	mov    rdx,rdi
  3b3326:	48 2b cb             	sub    rcx,rbx
  3b3329:	4c 8b c7             	mov    r8,rdi
  3b332c:	48 ff c9             	dec    rcx
  3b332f:	48 0f af cf          	imul   rcx,rdi
  3b3333:	48 0f af d3          	imul   rdx,rbx
  3b3337:	48 03 4d f0          	add    rcx,QWORD PTR [rbp-0x10]
  3b333b:	49 03 d6             	add    rdx,r14
  3b333e:	e8 09 5a 01 00       	call   0x3c8d4c
  3b3343:	48 63 4d 38          	movsxd rcx,DWORD PTR [rbp+0x38]
  3b3347:	48 ff c3             	inc    rbx
  3b334a:	48 3b d9             	cmp    rbx,rcx
  3b334d:	72 d1                	jb     0x3b3320
  3b334f:	48 8b 0d 0a 9e 05 00 	mov    rcx,QWORD PTR [rip+0x59e0a]        # 0x40d160
  3b3356:	45 33 c0             	xor    r8d,r8d
  3b3359:	b2 01                	mov    dl,0x1
  3b335b:	e8 bc bc ff ff       	call   0x3af01c
  3b3360:	48 8b 15 f9 9d 05 00 	mov    rdx,QWORD PTR [rip+0x59df9]        # 0x40d160
  3b3367:	48 8b 4e 50          	mov    rcx,QWORD PTR [rsi+0x50]
  3b336b:	e8 c0 0b 00 00       	call   0x3b3f30
  3b3370:	48 83 c4 60          	add    rsp,0x60
  3b3374:	41 5e                	pop    r14
  3b3376:	5f                   	pop    rdi
  3b3377:	5e                   	pop    rsi
  3b3378:	5b                   	pop    rbx
  3b3379:	5d                   	pop    rbp
  3b337a:	c3                   	ret
; pdata 0x3b337c..0x3b34ed
  3b337c:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
  3b3381:	57                   	push   rdi
  3b3382:	48 83 ec 60          	sub    rsp,0x60
  3b3386:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b338b:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b3390:	e8 f7 e2 ff ff       	call   0x3b168c
  3b3395:	48 8b c8             	mov    rcx,rax
  3b3398:	e8 c3 24 fc ff       	call   0x375860
  3b339d:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  3b33a2:	48 8b f8             	mov    rdi,rax
  3b33a5:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b33aa:	e8 31 e0 ff ff       	call   0x3b13e0
  3b33af:	48 8b c8             	mov    rcx,rax
  3b33b2:	e8 b9 23 fc ff       	call   0x375770
  3b33b7:	48 8d 54 24 38       	lea    rdx,[rsp+0x38]
  3b33bc:	48 8b d8             	mov    rbx,rax
  3b33bf:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b33c4:	e8 1f da ff ff       	call   0x3b0de8
  3b33c9:	48 8b c8             	mov    rcx,rax
  3b33cc:	e8 df 14 00 00       	call   0x3b48b0
  3b33d1:	48 8b c8             	mov    rcx,rax
  3b33d4:	e8 03 b2 f1 ff       	call   0x2ce5dc
  3b33d9:	48 8b 0d 18 2b 03 00 	mov    rcx,QWORD PTR [rip+0x32b18]        # 0x3e5ef8
  3b33e0:	4c 8b cf             	mov    r9,rdi
  3b33e3:	4c 8b c3             	mov    r8,rbx
  3b33e6:	48 8b d0             	mov    rdx,rax
  3b33e9:	e8 ce 26 fc ff       	call   0x375abc
  3b33ee:	48 8d 15 f3 a6 05 00 	lea    rdx,[rip+0x5a6f3]        # 0x40dae8
  3b33f5:	48 89 05 4c 9d 05 00 	mov    QWORD PTR [rip+0x59d4c],rax        # 0x40d148
  3b33fc:	48 8b c8             	mov    rcx,rax
  3b33ff:	e8 94 03 00 00       	call   0x3b3798
  3b3404:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
  3b3409:	48 89 05 38 9d 05 00 	mov    QWORD PTR [rip+0x59d38],rax        # 0x40d148
  3b3410:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b3415:	e8 56 e4 ff ff       	call   0x3b1870
  3b341a:	48 8b c8             	mov    rcx,rax
  3b341d:	e8 3e 24 fc ff       	call   0x375860
  3b3422:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b3427:	48 8b d8             	mov    rbx,rax
  3b342a:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b342f:	e8 64 e3 ff ff       	call   0x3b1798
  3b3434:	48 8b c8             	mov    rcx,rax
  3b3437:	e8 5c 23 fc ff       	call   0x375798
  3b343c:	48 8b c8             	mov    rcx,rax
  3b343f:	48 8b d3             	mov    rdx,rbx
  3b3442:	e8 dd 0d f8 ff       	call   0x334224
  3b3447:	48 8b c8             	mov    rcx,rax
  3b344a:	e8 49 17 00 00       	call   0x3b4b98
  3b344f:	48 8b 15 f2 9c 05 00 	mov    rdx,QWORD PTR [rip+0x59cf2]        # 0x40d148
  3b3456:	48 8b c8             	mov    rcx,rax
  3b3459:	48 89 05 d8 9c 05 00 	mov    QWORD PTR [rip+0x59cd8],rax        # 0x40d138
  3b3460:	e8 cb d2 ff ff       	call   0x3b0730
  3b3465:	48 8b 0d cc 9c 05 00 	mov    rcx,QWORD PTR [rip+0x59ccc]        # 0x40d138
  3b346c:	e8 33 bf ff ff       	call   0x3af3a4
  3b3471:	48 8d 15 78 a6 05 00 	lea    rdx,[rip+0x5a678]        # 0x40daf0
  3b3478:	48 89 05 b9 9c 05 00 	mov    QWORD PTR [rip+0x59cb9],rax        # 0x40d138
  3b347f:	48 8b c8             	mov    rcx,rax
  3b3482:	e8 11 03 00 00       	call   0x3b3798
  3b3487:	48 89 05 aa 9c 05 00 	mov    QWORD PTR [rip+0x59caa],rax        # 0x40d138
  3b348e:	e8 31 01 00 00       	call   0x3b35c4
  3b3493:	48 8b c8             	mov    rcx,rax
  3b3496:	48 89 05 a3 9c 05 00 	mov    QWORD PTR [rip+0x59ca3],rax        # 0x40d140
  3b349d:	e8 5e d1 ff ff       	call   0x3b0600
  3b34a2:	48 8b 0d 97 9c 05 00 	mov    rcx,QWORD PTR [rip+0x59c97]        # 0x40d140
  3b34a9:	e8 f6 be ff ff       	call   0x3af3a4
  3b34ae:	48 8d 15 43 a6 05 00 	lea    rdx,[rip+0x5a643]        # 0x40daf8
  3b34b5:	48 89 05 84 9c 05 00 	mov    QWORD PTR [rip+0x59c84],rax        # 0x40d140
  3b34bc:	48 8b c8             	mov    rcx,rax
  3b34bf:	e8 d4 02 00 00       	call   0x3b3798
  3b34c4:	48 8b c8             	mov    rcx,rax
  3b34c7:	48 89 05 72 9c 05 00 	mov    QWORD PTR [rip+0x59c72],rax        # 0x40d140
  3b34ce:	e8 a1 c1 ff ff       	call   0x3af674
  3b34d3:	e8 d4 f1 fd ff       	call   0x3926ac
  3b34d8:	48 8b c8             	mov    rcx,rax
  3b34db:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b34e2:	00 
  3b34e3:	48 83 c4 60          	add    rsp,0x60
  3b34e7:	5f                   	pop    rdi
  3b34e8:	e9 53 fd ff ff       	jmp    0x3b3240
; pdata 0x3b34f0..0x3b3524
  3b34f0:	40 53                	rex push rbx
  3b34f2:	48 83 ec 20          	sub    rsp,0x20
  3b34f6:	48 8b da             	mov    rbx,rdx
  3b34f9:	48 8b d1             	mov    rdx,rcx
  3b34fc:	e8 07 7a f1 ff       	call   0x2caf08
  3b3501:	84 c0                	test   al,al
  3b3503:	75 0a                	jne    0x3b350f
  3b3505:	48 8b cb             	mov    rcx,rbx
  3b3508:	e8 97 7e f1 ff       	call   0x2cb3a4
  3b350d:	eb 0c                	jmp    0x3b351b
  3b350f:	f2 0f 10 82 f8 00 00 	movsd  xmm0,QWORD PTR [rdx+0xf8]
  3b3516:	00 
  3b3517:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  3b351b:	48 8b c3             	mov    rax,rbx
  3b351e:	48 83 c4 20          	add    rsp,0x20
  3b3522:	5b                   	pop    rbx
  3b3523:	c3                   	ret
; pdata 0x3b3524..0x3b3573
  3b3524:	40 53                	rex push rbx
  3b3526:	48 83 ec 50          	sub    rsp,0x50
  3b352a:	48 8d 54 24 2e       	lea    rdx,[rsp+0x2e]
  3b352f:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b3534:	e8 c7 de ff ff       	call   0x3b1400
  3b3539:	48 8b c8             	mov    rcx,rax
  3b353c:	e8 23 01 f3 ff       	call   0x2e3664
  3b3541:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b3546:	48 8b d8             	mov    rbx,rax
  3b3549:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b354e:	e8 b9 d8 ff ff       	call   0x3b0e0c
  3b3553:	48 8b c8             	mov    rcx,rax
  3b3556:	e8 c1 50 f2 ff       	call   0x2d861c
  3b355b:	48 8b c8             	mov    rcx,rax
  3b355e:	48 8b d3             	mov    rdx,rbx
  3b3561:	e8 be 0c f8 ff       	call   0x334224
  3b3566:	48 8b c8             	mov    rcx,rax
  3b3569:	48 83 c4 50          	add    rsp,0x50
  3b356d:	5b                   	pop    rbx
  3b356e:	e9 25 16 00 00       	jmp    0x3b4b98
; pdata 0x3b3574..0x3b35c3
  3b3574:	40 53                	rex push rbx
  3b3576:	48 83 ec 50          	sub    rsp,0x50
  3b357a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b357f:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b3584:	e8 93 de ff ff       	call   0x3b141c
  3b3589:	48 8b c8             	mov    rcx,rax
  3b358c:	e8 7b a8 f1 ff       	call   0x2cde0c
  3b3591:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
  3b3596:	48 8b d8             	mov    rbx,rax
  3b3599:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3b359e:	e8 8d d8 ff ff       	call   0x3b0e30
  3b35a3:	48 8b c8             	mov    rcx,rax
  3b35a6:	e8 b9 00 f3 ff       	call   0x2e3664
  3b35ab:	48 8b c8             	mov    rcx,rax
  3b35ae:	48 8b d3             	mov    rdx,rbx
  3b35b1:	e8 6e 0c f8 ff       	call   0x334224
  3b35b6:	48 8b c8             	mov    rcx,rax
  3b35b9:	48 83 c4 50          	add    rsp,0x50
  3b35bd:	5b                   	pop    rbx
  3b35be:	e9 d5 15 00 00       	jmp    0x3b4b98
; pdata 0x3b35c4..0x3b3613
  3b35c4:	40 53                	rex push rbx
  3b35c6:	48 83 ec 30          	sub    rsp,0x30
  3b35ca:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b35cf:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b35d4:	e8 5f de ff ff       	call   0x3b1438
  3b35d9:	48 8b c8             	mov    rcx,rax
  3b35dc:	e8 2b a8 f1 ff       	call   0x2cde0c
  3b35e1:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
  3b35e6:	48 8b d8             	mov    rbx,rax
  3b35e9:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b35ee:	e8 59 d8 ff ff       	call   0x3b0e4c
  3b35f3:	48 8b c8             	mov    rcx,rax
  3b35f6:	e8 f1 ff f2 ff       	call   0x2e35ec
  3b35fb:	48 8b c8             	mov    rcx,rax
  3b35fe:	48 8b d3             	mov    rdx,rbx
  3b3601:	e8 1e 0c f8 ff       	call   0x334224
  3b3606:	48 8b c8             	mov    rcx,rax
  3b3609:	48 83 c4 30          	add    rsp,0x30
  3b360d:	5b                   	pop    rbx
  3b360e:	e9 85 15 00 00       	jmp    0x3b4b98
; pdata 0x3b3614..0x3b3795
  3b3614:	4c 8b dc             	mov    r11,rsp
  3b3617:	53                   	push   rbx
  3b3618:	55                   	push   rbp
  3b3619:	56                   	push   rsi
  3b361a:	57                   	push   rdi
  3b361b:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
  3b3622:	8b 05 f0 a4 05 00    	mov    eax,DWORD PTR [rip+0x5a4f0]        # 0x40db18
  3b3628:	48 8b e9             	mov    rbp,rcx
  3b362b:	41 0f 29 73 c8       	movaps XMMWORD PTR [r11-0x38],xmm6
  3b3630:	0f 28 f3             	movaps xmm6,xmm3
  3b3633:	41 0f 29 7b b8       	movaps XMMWORD PTR [r11-0x48],xmm7
  3b3638:	0f 28 fa             	movaps xmm7,xmm2
  3b363b:	45 0f 29 43 a8       	movaps XMMWORD PTR [r11-0x58],xmm8
  3b3640:	44 0f 28 c1          	movaps xmm8,xmm1
  3b3644:	a8 01                	test   al,0x1
  3b3646:	0f 85 a2 00 00 00    	jne    0x3b36ee
  3b364c:	83 c8 01             	or     eax,0x1
  3b364f:	49 8d 53 99          	lea    rdx,[r11-0x67]
  3b3653:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b3657:	89 05 bb a4 05 00    	mov    DWORD PTR [rip+0x5a4bb],eax        # 0x40db18
  3b365d:	e8 52 e1 ff ff       	call   0x3b17b4
  3b3662:	48 8b c8             	mov    rcx,rax
  3b3665:	e8 f6 21 fc ff       	call   0x375860
  3b366a:	48 8d 94 24 d0 00 00 	lea    rdx,[rsp+0xd0]
  3b3671:	00 
  3b3672:	48 8b f0             	mov    rsi,rax
  3b3675:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3b367a:	e8 b1 90 f1 ff       	call   0x2cc730
  3b367f:	48 8b c8             	mov    rcx,rax
  3b3682:	e8 1d a6 f1 ff       	call   0x2cdca4
  3b3687:	48 8d 54 24 51       	lea    rdx,[rsp+0x51]
  3b368c:	48 8b f8             	mov    rdi,rax
  3b368f:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3b3694:	e8 bb dd ff ff       	call   0x3b1454
  3b3699:	48 8b c8             	mov    rcx,rax
  3b369c:	e8 9f 69 fc ff       	call   0x37a040
  3b36a1:	48 8d 54 24 57       	lea    rdx,[rsp+0x57]
  3b36a6:	48 8b d8             	mov    rbx,rax
  3b36a9:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  3b36ae:	e8 b1 d7 ff ff       	call   0x3b0e64
  3b36b3:	48 8b c8             	mov    rcx,rax
  3b36b6:	e8 05 21 fc ff       	call   0x3757c0
  3b36bb:	48 8b c8             	mov    rcx,rax
  3b36be:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b36c5:	ff 
  3b36c6:	4c 8b cf             	mov    r9,rdi
  3b36c9:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b36ce:	41 b8 06 00 00 00    	mov    r8d,0x6
  3b36d4:	48 8b d3             	mov    rdx,rbx
  3b36d7:	e8 18 05 f8 ff       	call   0x333bf4
  3b36dc:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b36df:	8b 05 33 a4 05 00    	mov    eax,DWORD PTR [rip+0x5a433]        # 0x40db18
  3b36e5:	4c 89 05 24 a4 05 00 	mov    QWORD PTR [rip+0x5a424],r8        # 0x40db10
  3b36ec:	eb 07                	jmp    0x3b36f5
  3b36ee:	4c 8b 05 1b a4 05 00 	mov    r8,QWORD PTR [rip+0x5a41b]        # 0x40db10
  3b36f5:	a8 02                	test   al,0x2
  3b36f7:	75 1f                	jne    0x3b3718
  3b36f9:	48 8b 0d 60 27 02 00 	mov    rcx,QWORD PTR [rip+0x22760]        # 0x3d5e60
  3b3700:	48 8d 15 19 a4 05 00 	lea    rdx,[rip+0x5a419]        # 0x40db20
  3b3707:	83 c8 02             	or     eax,0x2
  3b370a:	45 33 c9             	xor    r9d,r9d
  3b370d:	89 05 05 a4 05 00    	mov    DWORD PTR [rip+0x5a405],eax        # 0x40db18
  3b3713:	e8 0c 86 f1 ff       	call   0x2cbd24
  3b3718:	48 8b cd             	mov    rcx,rbp
  3b371b:	e8 f8 d2 ff ff       	call   0x3b0a18
  3b3720:	f3 0f 10 84 24 00 01 	movss  xmm0,DWORD PTR [rsp+0x100]
  3b3727:	00 00 
  3b3729:	48 8d 15 f0 a3 05 00 	lea    rdx,[rip+0x5a3f0]        # 0x40db20
  3b3730:	f3 0f 10 8c 24 f8 00 	movss  xmm1,DWORD PTR [rsp+0xf8]
  3b3737:	00 00 
  3b3739:	41 0f 28 d8          	movaps xmm3,xmm8
  3b373d:	48 8b 0d 1c 27 02 00 	mov    rcx,QWORD PTR [rip+0x2271c]        # 0x3d5e60
  3b3744:	4c 8b c5             	mov    r8,rbp
  3b3747:	f3 0f 11 44 24 40    	movss  DWORD PTR [rsp+0x40],xmm0
  3b374d:	f3 0f 10 84 24 f0 00 	movss  xmm0,DWORD PTR [rsp+0xf0]
  3b3754:	00 00 
  3b3756:	f3 0f 11 4c 24 38    	movss  DWORD PTR [rsp+0x38],xmm1
  3b375c:	f3 0f 11 44 24 30    	movss  DWORD PTR [rsp+0x30],xmm0
  3b3762:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  3b3768:	f3 0f 11 7c 24 20    	movss  DWORD PTR [rsp+0x20],xmm7
  3b376e:	e8 99 c7 ff ff       	call   0x3aff0c
  3b3773:	4c 8d 9c 24 a8 00 00 	lea    r11,[rsp+0xa8]
  3b377a:	00 
  3b377b:	48 8b c5             	mov    rax,rbp
  3b377e:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  3b3783:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  3b3788:	45 0f 28 43 c8       	movaps xmm8,XMMWORD PTR [r11-0x38]
  3b378d:	49 8b e3             	mov    rsp,r11
  3b3790:	5f                   	pop    rdi
  3b3791:	5e                   	pop    rsi
  3b3792:	5d                   	pop    rbp
  3b3793:	5b                   	pop    rbx
  3b3794:	c3                   	ret
; pdata 0x3b3798..0x3b383c
  3b3798:	4c 8b dc             	mov    r11,rsp
  3b379b:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b379f:	57                   	push   rdi
  3b37a0:	48 83 ec 70          	sub    rsp,0x70
  3b37a4:	8b 05 76 95 05 00    	mov    eax,DWORD PTR [rip+0x59576]        # 0x40cd20
  3b37aa:	48 8b da             	mov    rbx,rdx
  3b37ad:	48 8b f9             	mov    rdi,rcx
  3b37b0:	a8 01                	test   al,0x1
  3b37b2:	75 38                	jne    0x3b37ec
  3b37b4:	83 c8 01             	or     eax,0x1
  3b37b7:	49 8d 53 a8          	lea    rdx,[r11-0x58]
  3b37bb:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b37bf:	89 05 5b 95 05 00    	mov    DWORD PTR [rip+0x5955b],eax        # 0x40cd20
  3b37c5:	e8 b6 d6 ff ff       	call   0x3b0e80
  3b37ca:	48 8b c8             	mov    rcx,rax
  3b37cd:	e8 1e 12 00 00       	call   0x3b49f0
  3b37d2:	48 8b c8             	mov    rcx,rax
  3b37d5:	e8 4e 15 00 00       	call   0x3b4d28
  3b37da:	4c 8b c0             	mov    r8,rax
  3b37dd:	48 89 05 34 95 05 00 	mov    QWORD PTR [rip+0x59534],rax        # 0x40cd18
  3b37e4:	8b 05 36 95 05 00    	mov    eax,DWORD PTR [rip+0x59536]        # 0x40cd20
  3b37ea:	eb 07                	jmp    0x3b37f3
  3b37ec:	4c 8b 05 25 95 05 00 	mov    r8,QWORD PTR [rip+0x59525]        # 0x40cd18
  3b37f3:	a8 02                	test   al,0x2
  3b37f5:	75 1f                	jne    0x3b3816
  3b37f7:	48 8b 0d 62 26 02 00 	mov    rcx,QWORD PTR [rip+0x22662]        # 0x3d5e60
  3b37fe:	48 8d 15 2b 95 05 00 	lea    rdx,[rip+0x5952b]        # 0x40cd30
  3b3805:	83 c8 02             	or     eax,0x2
  3b3808:	45 33 c9             	xor    r9d,r9d
  3b380b:	89 05 0f 95 05 00    	mov    DWORD PTR [rip+0x5950f],eax        # 0x40cd20
  3b3811:	e8 0e 85 f1 ff       	call   0x2cbd24
  3b3816:	48 8b 0d 43 26 02 00 	mov    rcx,QWORD PTR [rip+0x22643]        # 0x3d5e60
  3b381d:	48 8d 15 0c 95 05 00 	lea    rdx,[rip+0x5950c]        # 0x40cd30
  3b3824:	4c 8b cb             	mov    r9,rbx
  3b3827:	4c 8b c7             	mov    r8,rdi
  3b382a:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b3831:	00 
  3b3832:	48 83 c4 70          	add    rsp,0x70
  3b3836:	5f                   	pop    rdi
  3b3837:	e9 58 e8 f1 ff       	jmp    0x2d2094
; pdata 0x3b383c..0x3b394f
  3b383c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b3841:	55                   	push   rbp
  3b3842:	56                   	push   rsi
  3b3843:	57                   	push   rdi
  3b3844:	48 83 ec 50          	sub    rsp,0x50
  3b3848:	8b 05 12 9c 05 00    	mov    eax,DWORD PTR [rip+0x59c12]        # 0x40d460
  3b384e:	48 8b e9             	mov    rbp,rcx
  3b3851:	a8 01                	test   al,0x1
  3b3853:	0f 85 aa 00 00 00    	jne    0x3b3903
  3b3859:	83 c8 01             	or     eax,0x1
  3b385c:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b3861:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  3b3866:	89 05 f4 9b 05 00    	mov    DWORD PTR [rip+0x59bf4],eax        # 0x40d460
  3b386c:	e8 5f df ff ff       	call   0x3b17d0
  3b3871:	48 8b c8             	mov    rcx,rax
  3b3874:	e8 93 a5 f1 ff       	call   0x2cde0c
  3b3879:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  3b387e:	48 8b f0             	mov    rsi,rax
  3b3881:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b3888:	00 
  3b3889:	e8 a2 8e f1 ff       	call   0x2cc730
  3b388e:	48 8b c8             	mov    rcx,rax
  3b3891:	e8 0e a4 f1 ff       	call   0x2cdca4
  3b3896:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  3b389d:	00 
  3b389e:	48 8b f8             	mov    rdi,rax
  3b38a1:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b38a8:	00 
  3b38a9:	e8 be db ff ff       	call   0x3b146c
  3b38ae:	48 8b c8             	mov    rcx,rax
  3b38b1:	e8 82 98 f2 ff       	call   0x2dd138
  3b38b6:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  3b38bb:	48 8b d8             	mov    rbx,rax
  3b38be:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  3b38c5:	00 
  3b38c6:	e8 f1 d5 ff ff       	call   0x3b0ebc
  3b38cb:	48 8b c8             	mov    rcx,rax
  3b38ce:	e8 49 4d f2 ff       	call   0x2d861c
  3b38d3:	48 8b c8             	mov    rcx,rax
  3b38d6:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b38dd:	ff 
  3b38de:	4c 8b cf             	mov    r9,rdi
  3b38e1:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b38e6:	45 33 c0             	xor    r8d,r8d
  3b38e9:	48 8b d3             	mov    rdx,rbx
  3b38ec:	e8 03 03 f8 ff       	call   0x333bf4
  3b38f1:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b38f4:	8b 05 66 9b 05 00    	mov    eax,DWORD PTR [rip+0x59b66]        # 0x40d460
  3b38fa:	4c 89 05 57 9b 05 00 	mov    QWORD PTR [rip+0x59b57],r8        # 0x40d458
  3b3901:	eb 07                	jmp    0x3b390a
  3b3903:	4c 8b 05 4e 9b 05 00 	mov    r8,QWORD PTR [rip+0x59b4e]        # 0x40d458
  3b390a:	a8 02                	test   al,0x2
  3b390c:	75 1f                	jne    0x3b392d
  3b390e:	48 8b 0d 4b 25 02 00 	mov    rcx,QWORD PTR [rip+0x2254b]        # 0x3d5e60
  3b3915:	48 8d 15 54 9b 05 00 	lea    rdx,[rip+0x59b54]        # 0x40d470
  3b391c:	83 c8 02             	or     eax,0x2
  3b391f:	45 33 c9             	xor    r9d,r9d
  3b3922:	89 05 38 9b 05 00    	mov    DWORD PTR [rip+0x59b38],eax        # 0x40d460
  3b3928:	e8 f7 83 f1 ff       	call   0x2cbd24
  3b392d:	48 8b 0d 2c 25 02 00 	mov    rcx,QWORD PTR [rip+0x2252c]        # 0x3d5e60
  3b3934:	48 8d 15 35 9b 05 00 	lea    rdx,[rip+0x59b35]        # 0x40d470
  3b393b:	4c 8b c5             	mov    r8,rbp
  3b393e:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  3b3943:	48 83 c4 50          	add    rsp,0x50
  3b3947:	5f                   	pop    rdi
  3b3948:	5e                   	pop    rsi
  3b3949:	5d                   	pop    rbp
  3b394a:	e9 ad 80 f1 ff       	jmp    0x2cb9fc
; pdata 0x3b3950..0x3b3997
  3b3950:	40 53                	rex push rbx
  3b3952:	48 83 ec 30          	sub    rsp,0x30
  3b3956:	f3 0f 10 42 0c       	movss  xmm0,DWORD PTR [rdx+0xc]
  3b395b:	48 8b d9             	mov    rbx,rcx
  3b395e:	f3 0f 10 5a 08       	movss  xmm3,DWORD PTR [rdx+0x8]
  3b3963:	f3 0f 10 52 04       	movss  xmm2,DWORD PTR [rdx+0x4]
  3b3968:	f3 0f 10 0a          	movss  xmm1,DWORD PTR [rdx]
  3b396c:	f3 41 0f 59 40 0c    	mulss  xmm0,DWORD PTR [r8+0xc]
  3b3972:	f3 41 0f 59 58 08    	mulss  xmm3,DWORD PTR [r8+0x8]
  3b3978:	f3 41 0f 59 50 04    	mulss  xmm2,DWORD PTR [r8+0x4]
  3b397e:	f3 41 0f 59 08       	mulss  xmm1,DWORD PTR [r8]
  3b3983:	f3 0f 11 44 24 20    	movss  DWORD PTR [rsp+0x20],xmm0
  3b3989:	e8 c2 89 f1 ff       	call   0x2cc350
  3b398e:	48 8b c3             	mov    rax,rbx
  3b3991:	48 83 c4 30          	add    rsp,0x30
  3b3995:	5b                   	pop    rbx
  3b3996:	c3                   	ret
; pdata 0x3b3998..0x3b39dc
  3b3998:	40 53                	rex push rbx
  3b399a:	48 83 ec 30          	sub    rsp,0x30
  3b399e:	0f 29 74 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm6
  3b39a3:	48 8b d9             	mov    rbx,rcx
  3b39a6:	66 48 0f 6e f2       	movq   xmm6,rdx
  3b39ab:	f2 0f 11 74 24 40    	movsd  QWORD PTR [rsp+0x40],xmm6
  3b39b1:	e8 3a d0 f2 ff       	call   0x2e09f0
  3b39b6:	0f 28 ce             	movaps xmm1,xmm6
  3b39b9:	48 8b cb             	mov    rcx,rbx
  3b39bc:	66 0f 6e d0          	movd   xmm2,eax
  3b39c0:	0f 5b d2             	cvtdq2ps xmm2,xmm2
  3b39c3:	f3 0f 5c 54 24 44    	subss  xmm2,DWORD PTR [rsp+0x44]
  3b39c9:	e8 72 89 f1 ff       	call   0x2cc340
  3b39ce:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
  3b39d3:	48 8b c3             	mov    rax,rbx
  3b39d6:	48 83 c4 30          	add    rsp,0x30
  3b39da:	5b                   	pop    rbx
  3b39db:	c3                   	ret
; pdata 0x3b39dc..0x3b3b04
  3b39dc:	4c 8b dc             	mov    r11,rsp
  3b39df:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b39e3:	49 89 6b 10          	mov    QWORD PTR [r11+0x10],rbp
  3b39e7:	56                   	push   rsi
  3b39e8:	57                   	push   rdi
  3b39e9:	41 56                	push   r14
  3b39eb:	48 83 ec 60          	sub    rsp,0x60
  3b39ef:	8b 05 3b 9d 05 00    	mov    eax,DWORD PTR [rip+0x59d3b]        # 0x40d730
  3b39f5:	8b ea                	mov    ebp,edx
  3b39f7:	4c 8b f1             	mov    r14,rcx
  3b39fa:	a8 01                	test   al,0x1
  3b39fc:	0f 85 ab 00 00 00    	jne    0x3b3aad
  3b3a02:	83 c8 01             	or     eax,0x1
  3b3a05:	49 8d 53 c3          	lea    rdx,[r11-0x3d]
  3b3a09:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b3a0d:	89 05 1d 9d 05 00    	mov    DWORD PTR [rip+0x59d1d],eax        # 0x40d730
  3b3a13:	e8 d4 dd ff ff       	call   0x3b17ec
  3b3a18:	48 8b c8             	mov    rcx,rax
  3b3a1b:	e8 ec a3 f1 ff       	call   0x2cde0c
  3b3a20:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3b3a27:	00 
  3b3a28:	48 8b f0             	mov    rsi,rax
  3b3a2b:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b3a32:	00 
  3b3a33:	e8 f8 8c f1 ff       	call   0x2cc730
  3b3a38:	48 8b c8             	mov    rcx,rax
  3b3a3b:	e8 64 a2 f1 ff       	call   0x2cdca4
  3b3a40:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b3a45:	48 8b f8             	mov    rdi,rax
  3b3a48:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b3a4f:	00 
  3b3a50:	e8 2b da ff ff       	call   0x3b1480
  3b3a55:	48 8b c8             	mov    rcx,rax
  3b3a58:	e8 6f 4b f2 ff       	call   0x2d85cc
  3b3a5d:	48 8d 54 24 47       	lea    rdx,[rsp+0x47]
  3b3a62:	48 8b d8             	mov    rbx,rax
  3b3a65:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b3a6c:	00 
  3b3a6d:	e8 6e d4 ff ff       	call   0x3b0ee0
  3b3a72:	48 8b c8             	mov    rcx,rax
  3b3a75:	e8 a2 4b f2 ff       	call   0x2d861c
  3b3a7a:	48 8b c8             	mov    rcx,rax
  3b3a7d:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b3a84:	ff 
  3b3a85:	4c 8b cf             	mov    r9,rdi
  3b3a88:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b3a8d:	41 b8 01 00 00 00    	mov    r8d,0x1
  3b3a93:	48 8b d3             	mov    rdx,rbx
  3b3a96:	e8 59 01 f8 ff       	call   0x333bf4
  3b3a9b:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b3a9e:	8b 05 8c 9c 05 00    	mov    eax,DWORD PTR [rip+0x59c8c]        # 0x40d730
  3b3aa4:	4c 89 05 7d 9c 05 00 	mov    QWORD PTR [rip+0x59c7d],r8        # 0x40d728
  3b3aab:	eb 07                	jmp    0x3b3ab4
  3b3aad:	4c 8b 05 74 9c 05 00 	mov    r8,QWORD PTR [rip+0x59c74]        # 0x40d728
  3b3ab4:	a8 02                	test   al,0x2
  3b3ab6:	75 1f                	jne    0x3b3ad7
  3b3ab8:	48 8b 0d a1 23 02 00 	mov    rcx,QWORD PTR [rip+0x223a1]        # 0x3d5e60
  3b3abf:	48 8d 15 7a 9c 05 00 	lea    rdx,[rip+0x59c7a]        # 0x40d740
  3b3ac6:	83 c8 02             	or     eax,0x2
  3b3ac9:	45 33 c9             	xor    r9d,r9d
  3b3acc:	89 05 5e 9c 05 00    	mov    DWORD PTR [rip+0x59c5e],eax        # 0x40d730
  3b3ad2:	e8 4d 82 f1 ff       	call   0x2cbd24
  3b3ad7:	48 8b 0d 82 23 02 00 	mov    rcx,QWORD PTR [rip+0x22382]        # 0x3d5e60
  3b3ade:	48 8d 15 5b 9c 05 00 	lea    rdx,[rip+0x59c5b]        # 0x40d740
  3b3ae5:	44 8b cd             	mov    r9d,ebp
  3b3ae8:	4d 8b c6             	mov    r8,r14
  3b3aeb:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3b3af0:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3b3af4:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  3b3af8:	49 8b e3             	mov    rsp,r11
  3b3afb:	41 5e                	pop    r14
  3b3afd:	5f                   	pop    rdi
  3b3afe:	5e                   	pop    rsi
  3b3aff:	e9 c4 76 f7 ff       	jmp    0x32b1c8
; pdata 0x3b3b04..0x3b3bdb
  3b3b04:	4c 8b dc             	mov    r11,rsp
  3b3b07:	53                   	push   rbx
  3b3b08:	55                   	push   rbp
  3b3b09:	56                   	push   rsi
  3b3b0a:	57                   	push   rdi
  3b3b0b:	48 81 ec 98 00 00 00 	sub    rsp,0x98
  3b3b12:	8b 05 38 8f 05 00    	mov    eax,DWORD PTR [rip+0x58f38]        # 0x40ca50
  3b3b18:	41 8b d9             	mov    ebx,r9d
  3b3b1b:	41 8b f8             	mov    edi,r8d
  3b3b1e:	48 8b f2             	mov    rsi,rdx
  3b3b21:	48 8b e9             	mov    rbp,rcx
  3b3b24:	a8 01                	test   al,0x1
  3b3b26:	75 38                	jne    0x3b3b60
  3b3b28:	83 c8 01             	or     eax,0x1
  3b3b2b:	49 8d 53 98          	lea    rdx,[r11-0x68]
  3b3b2f:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b3b33:	89 05 17 8f 05 00    	mov    DWORD PTR [rip+0x58f17],eax        # 0x40ca50
  3b3b39:	e8 c6 d3 ff ff       	call   0x3b0f04
  3b3b3e:	48 8b c8             	mov    rcx,rax
  3b3b41:	e8 0a 0e 00 00       	call   0x3b4950
  3b3b46:	48 8b c8             	mov    rcx,rax
  3b3b49:	e8 da 11 00 00       	call   0x3b4d28
  3b3b4e:	4c 8b c0             	mov    r8,rax
  3b3b51:	48 89 05 f0 8e 05 00 	mov    QWORD PTR [rip+0x58ef0],rax        # 0x40ca48
  3b3b58:	8b 05 f2 8e 05 00    	mov    eax,DWORD PTR [rip+0x58ef2]        # 0x40ca50
  3b3b5e:	eb 07                	jmp    0x3b3b67
  3b3b60:	4c 8b 05 e1 8e 05 00 	mov    r8,QWORD PTR [rip+0x58ee1]        # 0x40ca48
  3b3b67:	a8 02                	test   al,0x2
  3b3b69:	75 1f                	jne    0x3b3b8a
  3b3b6b:	48 8b 0d ee 22 02 00 	mov    rcx,QWORD PTR [rip+0x222ee]        # 0x3d5e60
  3b3b72:	48 8d 15 e7 8e 05 00 	lea    rdx,[rip+0x58ee7]        # 0x40ca60
  3b3b79:	83 c8 02             	or     eax,0x2
  3b3b7c:	45 33 c9             	xor    r9d,r9d
  3b3b7f:	89 05 cb 8e 05 00    	mov    DWORD PTR [rip+0x58ecb],eax        # 0x40ca50
  3b3b85:	e8 9a 81 f1 ff       	call   0x2cbd24
  3b3b8a:	4c 8b 45 10          	mov    r8,QWORD PTR [rbp+0x10]
  3b3b8e:	48 8d 84 24 f0 00 00 	lea    rax,[rsp+0xf0]
  3b3b95:	00 
  3b3b96:	48 8b 0d c3 22 02 00 	mov    rcx,QWORD PTR [rip+0x222c3]        # 0x3d5e60
  3b3b9d:	48 8d 15 bc 8e 05 00 	lea    rdx,[rip+0x58ebc]        # 0x40ca60
  3b3ba4:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  3b3ba9:	4c 8b ce             	mov    r9,rsi
  3b3bac:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [rsp+0xe8]
  3b3bb3:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  3b3bb7:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [rsp+0xe0]
  3b3bbe:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  3b3bc2:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  3b3bc6:	89 7c 24 20          	mov    DWORD PTR [rsp+0x20],edi
  3b3bca:	e8 91 c7 ff ff       	call   0x3b0360
  3b3bcf:	48 81 c4 98 00 00 00 	add    rsp,0x98
  3b3bd6:	5f                   	pop    rdi
  3b3bd7:	5e                   	pop    rsi
  3b3bd8:	5d                   	pop    rbp
  3b3bd9:	5b                   	pop    rbx
  3b3bda:	c3                   	ret
; pdata 0x3b3bdc..0x3b3c8f
  3b3bdc:	4c 8b dc             	mov    r11,rsp
  3b3bdf:	49 89 5b 10          	mov    QWORD PTR [r11+0x10],rbx
  3b3be3:	45 89 43 18          	mov    DWORD PTR [r11+0x18],r8d
  3b3be7:	57                   	push   rdi
  3b3be8:	48 83 ec 60          	sub    rsp,0x60
  3b3bec:	8b 05 4e 8f 05 00    	mov    eax,DWORD PTR [rip+0x58f4e]        # 0x40cb40
  3b3bf2:	8b da                	mov    ebx,edx
  3b3bf4:	48 8b f9             	mov    rdi,rcx
  3b3bf7:	a8 01                	test   al,0x1
  3b3bf9:	75 38                	jne    0x3b3c33
  3b3bfb:	83 c8 01             	or     eax,0x1
  3b3bfe:	49 8d 53 c8          	lea    rdx,[r11-0x38]
  3b3c02:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b3c06:	89 05 34 8f 05 00    	mov    DWORD PTR [rip+0x58f34],eax        # 0x40cb40
  3b3c0c:	e8 27 d3 ff ff       	call   0x3b0f38
  3b3c11:	48 8b c8             	mov    rcx,rax
  3b3c14:	e8 ab ca f6 ff       	call   0x3206c4
  3b3c19:	48 8b c8             	mov    rcx,rax
  3b3c1c:	e8 07 11 00 00       	call   0x3b4d28
  3b3c21:	4c 8b c0             	mov    r8,rax
  3b3c24:	48 89 05 0d 8f 05 00 	mov    QWORD PTR [rip+0x58f0d],rax        # 0x40cb38
  3b3c2b:	8b 05 0f 8f 05 00    	mov    eax,DWORD PTR [rip+0x58f0f]        # 0x40cb40
  3b3c31:	eb 07                	jmp    0x3b3c3a
  3b3c33:	4c 8b 05 fe 8e 05 00 	mov    r8,QWORD PTR [rip+0x58efe]        # 0x40cb38
  3b3c3a:	a8 02                	test   al,0x2
  3b3c3c:	75 1f                	jne    0x3b3c5d
  3b3c3e:	48 8b 0d 1b 22 02 00 	mov    rcx,QWORD PTR [rip+0x2221b]        # 0x3d5e60
  3b3c45:	48 8d 15 04 8f 05 00 	lea    rdx,[rip+0x58f04]        # 0x40cb50
  3b3c4c:	83 c8 02             	or     eax,0x2
  3b3c4f:	45 33 c9             	xor    r9d,r9d
  3b3c52:	89 05 e8 8e 05 00    	mov    DWORD PTR [rip+0x58ee8],eax        # 0x40cb40
  3b3c58:	e8 c7 80 f1 ff       	call   0x2cbd24
  3b3c5d:	4c 8b 47 10          	mov    r8,QWORD PTR [rdi+0x10]
  3b3c61:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  3b3c68:	00 
  3b3c69:	48 8b 0d f0 21 02 00 	mov    rcx,QWORD PTR [rip+0x221f0]        # 0x3d5e60
  3b3c70:	48 8d 15 d9 8e 05 00 	lea    rdx,[rip+0x58ed9]        # 0x40cb50
  3b3c77:	44 8b cb             	mov    r9d,ebx
  3b3c7a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  3b3c7f:	e8 f4 c1 ff ff       	call   0x3afe78
  3b3c84:	48 8b 5c 24 78       	mov    rbx,QWORD PTR [rsp+0x78]
  3b3c89:	48 83 c4 60          	add    rsp,0x60
  3b3c8d:	5f                   	pop    rdi
  3b3c8e:	c3                   	ret
; pdata 0x3b3c90..0x3b3db9
  3b3c90:	4c 8b dc             	mov    r11,rsp
  3b3c93:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b3c97:	49 89 6b 10          	mov    QWORD PTR [r11+0x10],rbp
  3b3c9b:	56                   	push   rsi
  3b3c9c:	57                   	push   rdi
  3b3c9d:	41 56                	push   r14
  3b3c9f:	48 83 ec 70          	sub    rsp,0x70
  3b3ca3:	8b 05 47 93 05 00    	mov    eax,DWORD PTR [rip+0x59347]        # 0x40cff0
  3b3ca9:	48 8b ea             	mov    rbp,rdx
  3b3cac:	4c 8b f1             	mov    r14,rcx
  3b3caf:	a8 01                	test   al,0x1
  3b3cb1:	0f 85 ab 00 00 00    	jne    0x3b3d62
  3b3cb7:	83 c8 01             	or     eax,0x1
  3b3cba:	49 8d 53 c6          	lea    rdx,[r11-0x3a]
  3b3cbe:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b3cc2:	89 05 28 93 05 00    	mov    DWORD PTR [rip+0x59328],eax        # 0x40cff0
  3b3cc8:	e8 3b db ff ff       	call   0x3b1808
  3b3ccd:	48 8b c8             	mov    rcx,rax
  3b3cd0:	e8 8f f9 f2 ff       	call   0x2e3664
  3b3cd5:	48 8d 94 24 a8 00 00 	lea    rdx,[rsp+0xa8]
  3b3cdc:	00 
  3b3cdd:	48 8b f0             	mov    rsi,rax
  3b3ce0:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b3ce7:	00 
  3b3ce8:	e8 bb d9 ff ff       	call   0x3b16a8
  3b3ced:	48 8b c8             	mov    rcx,rax
  3b3cf0:	e8 97 47 f2 ff       	call   0x2d848c
  3b3cf5:	48 8d 54 24 3e       	lea    rdx,[rsp+0x3e]
  3b3cfa:	48 8b f8             	mov    rdi,rax
  3b3cfd:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b3d04:	00 
  3b3d05:	e8 92 d7 ff ff       	call   0x3b149c
  3b3d0a:	48 8b c8             	mov    rcx,rax
  3b3d0d:	e8 1a 48 f2 ff       	call   0x2d852c
  3b3d12:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b3d17:	48 8b d8             	mov    rbx,rax
  3b3d1a:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3b3d21:	00 
  3b3d22:	e8 35 d2 ff ff       	call   0x3b0f5c
  3b3d27:	48 8b c8             	mov    rcx,rax
  3b3d2a:	e8 ed 48 f2 ff       	call   0x2d861c
  3b3d2f:	48 8b c8             	mov    rcx,rax
  3b3d32:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b3d39:	ff 
  3b3d3a:	4c 8b cf             	mov    r9,rdi
  3b3d3d:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b3d42:	41 b8 01 00 00 00    	mov    r8d,0x1
  3b3d48:	48 8b d3             	mov    rdx,rbx
  3b3d4b:	e8 a4 fe f7 ff       	call   0x333bf4
  3b3d50:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b3d53:	8b 05 97 92 05 00    	mov    eax,DWORD PTR [rip+0x59297]        # 0x40cff0
  3b3d59:	4c 89 05 88 92 05 00 	mov    QWORD PTR [rip+0x59288],r8        # 0x40cfe8
  3b3d60:	eb 07                	jmp    0x3b3d69
  3b3d62:	4c 8b 05 7f 92 05 00 	mov    r8,QWORD PTR [rip+0x5927f]        # 0x40cfe8
  3b3d69:	a8 02                	test   al,0x2
  3b3d6b:	75 1f                	jne    0x3b3d8c
  3b3d6d:	48 8b 0d ec 20 02 00 	mov    rcx,QWORD PTR [rip+0x220ec]        # 0x3d5e60
  3b3d74:	48 8d 15 85 92 05 00 	lea    rdx,[rip+0x59285]        # 0x40d000
  3b3d7b:	83 c8 02             	or     eax,0x2
  3b3d7e:	45 33 c9             	xor    r9d,r9d
  3b3d81:	89 05 69 92 05 00    	mov    DWORD PTR [rip+0x59269],eax        # 0x40cff0
  3b3d87:	e8 98 7f f1 ff       	call   0x2cbd24
  3b3d8c:	48 8b 0d cd 20 02 00 	mov    rcx,QWORD PTR [rip+0x220cd]        # 0x3d5e60
  3b3d93:	48 8d 15 66 92 05 00 	lea    rdx,[rip+0x59266]        # 0x40d000
  3b3d9a:	4c 8b cd             	mov    r9,rbp
  3b3d9d:	4d 8b c6             	mov    r8,r14
  3b3da0:	4c 8d 5c 24 70       	lea    r11,[rsp+0x70]
  3b3da5:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3b3da9:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  3b3dad:	49 8b e3             	mov    rsp,r11
  3b3db0:	41 5e                	pop    r14
  3b3db2:	5f                   	pop    rdi
  3b3db3:	5e                   	pop    rsi
  3b3db4:	e9 db e2 f1 ff       	jmp    0x2d2094
; pdata 0x3b3dbc..0x3b3e5a
  3b3dbc:	40 53                	rex push rbx
  3b3dbe:	48 83 ec 60          	sub    rsp,0x60
  3b3dc2:	8b 05 d0 93 05 00    	mov    eax,DWORD PTR [rip+0x593d0]        # 0x40d198
  3b3dc8:	48 8b d9             	mov    rbx,rcx
  3b3dcb:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
  3b3dd0:	a8 01                	test   al,0x1
  3b3dd2:	75 3a                	jne    0x3b3e0e
  3b3dd4:	83 c8 01             	or     eax,0x1
  3b3dd7:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
  3b3ddc:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  3b3de1:	89 05 b1 93 05 00    	mov    DWORD PTR [rip+0x593b1],eax        # 0x40d198
  3b3de7:	e8 94 d1 ff ff       	call   0x3b0f80
  3b3dec:	48 8b c8             	mov    rcx,rax
  3b3def:	e8 0c 0b 00 00       	call   0x3b4900
  3b3df4:	48 8b c8             	mov    rcx,rax
  3b3df7:	e8 2c 0f 00 00       	call   0x3b4d28
  3b3dfc:	4c 8b c0             	mov    r8,rax
  3b3dff:	48 89 05 8a 93 05 00 	mov    QWORD PTR [rip+0x5938a],rax        # 0x40d190
  3b3e06:	8b 05 8c 93 05 00    	mov    eax,DWORD PTR [rip+0x5938c]        # 0x40d198
  3b3e0c:	eb 07                	jmp    0x3b3e15
  3b3e0e:	4c 8b 05 7b 93 05 00 	mov    r8,QWORD PTR [rip+0x5937b]        # 0x40d190
  3b3e15:	a8 02                	test   al,0x2
  3b3e17:	75 1f                	jne    0x3b3e38
  3b3e19:	48 8b 0d 40 20 02 00 	mov    rcx,QWORD PTR [rip+0x22040]        # 0x3d5e60
  3b3e20:	48 8d 15 79 93 05 00 	lea    rdx,[rip+0x59379]        # 0x40d1a0
  3b3e27:	83 c8 02             	or     eax,0x2
  3b3e2a:	45 33 c9             	xor    r9d,r9d
  3b3e2d:	89 05 65 93 05 00    	mov    DWORD PTR [rip+0x59365],eax        # 0x40d198
  3b3e33:	e8 ec 7e f1 ff       	call   0x2cbd24
  3b3e38:	4c 8b 43 10          	mov    r8,QWORD PTR [rbx+0x10]
  3b3e3c:	4c 8d 4c 24 20       	lea    r9,[rsp+0x20]
  3b3e41:	48 8b 0d 18 20 02 00 	mov    rcx,QWORD PTR [rip+0x22018]        # 0x3d5e60
  3b3e48:	48 8d 15 51 93 05 00 	lea    rdx,[rip+0x59351]        # 0x40d1a0
  3b3e4f:	e8 40 e2 f1 ff       	call   0x2d2094
  3b3e54:	48 83 c4 60          	add    rsp,0x60
  3b3e58:	5b                   	pop    rbx
  3b3e59:	c3                   	ret
; pdata 0x3b3e5c..0x3b3f30
  3b3e5c:	4c 8b dc             	mov    r11,rsp
  3b3e5f:	49 89 5b 10          	mov    QWORD PTR [r11+0x10],rbx
  3b3e63:	49 89 73 18          	mov    QWORD PTR [r11+0x18],rsi
  3b3e67:	45 89 4b 20          	mov    DWORD PTR [r11+0x20],r9d
  3b3e6b:	57                   	push   rdi
  3b3e6c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
  3b3e73:	8b 05 f7 89 05 00    	mov    eax,DWORD PTR [rip+0x589f7]        # 0x40c870
  3b3e79:	41 8b d8             	mov    ebx,r8d
  3b3e7c:	48 8b fa             	mov    rdi,rdx
  3b3e7f:	48 8b f1             	mov    rsi,rcx
  3b3e82:	a8 01                	test   al,0x1
  3b3e84:	75 38                	jne    0x3b3ebe
  3b3e86:	83 c8 01             	or     eax,0x1
  3b3e89:	49 8d 53 b8          	lea    rdx,[r11-0x48]
  3b3e8d:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b3e91:	89 05 d9 89 05 00    	mov    DWORD PTR [rip+0x589d9],eax        # 0x40c870
  3b3e97:	e8 14 d1 ff ff       	call   0x3b0fb0
  3b3e9c:	48 8b c8             	mov    rcx,rax
  3b3e9f:	e8 24 0b 00 00       	call   0x3b49c8
  3b3ea4:	48 8b c8             	mov    rcx,rax
  3b3ea7:	e8 7c 0e 00 00       	call   0x3b4d28
  3b3eac:	4c 8b c0             	mov    r8,rax
  3b3eaf:	48 89 05 b2 89 05 00 	mov    QWORD PTR [rip+0x589b2],rax        # 0x40c868
  3b3eb6:	8b 05 b4 89 05 00    	mov    eax,DWORD PTR [rip+0x589b4]        # 0x40c870
  3b3ebc:	eb 07                	jmp    0x3b3ec5
  3b3ebe:	4c 8b 05 a3 89 05 00 	mov    r8,QWORD PTR [rip+0x589a3]        # 0x40c868
  3b3ec5:	a8 02                	test   al,0x2
  3b3ec7:	75 1f                	jne    0x3b3ee8
  3b3ec9:	48 8b 0d 90 1f 02 00 	mov    rcx,QWORD PTR [rip+0x21f90]        # 0x3d5e60
  3b3ed0:	48 8d 15 a9 89 05 00 	lea    rdx,[rip+0x589a9]        # 0x40c880
  3b3ed7:	83 c8 02             	or     eax,0x2
  3b3eda:	45 33 c9             	xor    r9d,r9d
  3b3edd:	89 05 8d 89 05 00    	mov    DWORD PTR [rip+0x5898d],eax        # 0x40c870
  3b3ee3:	e8 3c 7e f1 ff       	call   0x2cbd24
  3b3ee8:	4c 8b 46 10          	mov    r8,QWORD PTR [rsi+0x10]
  3b3eec:	48 8d 84 24 a8 00 00 	lea    rax,[rsp+0xa8]
  3b3ef3:	00 
  3b3ef4:	48 8b 0d 65 1f 02 00 	mov    rcx,QWORD PTR [rip+0x21f65]        # 0x3d5e60
  3b3efb:	48 8d 15 7e 89 05 00 	lea    rdx,[rip+0x5897e]        # 0x40c880
  3b3f02:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  3b3f07:	4c 8b cf             	mov    r9,rdi
  3b3f0a:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  3b3f0e:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
  3b3f15:	00 
  3b3f16:	e8 8d c3 ff ff       	call   0x3b02a8
  3b3f1b:	4c 8d 9c 24 80 00 00 	lea    r11,[rsp+0x80]
  3b3f22:	00 
  3b3f23:	49 8b 5b 18          	mov    rbx,QWORD PTR [r11+0x18]
  3b3f27:	49 8b 73 20          	mov    rsi,QWORD PTR [r11+0x20]
  3b3f2b:	49 8b e3             	mov    rsp,r11
  3b3f2e:	5f                   	pop    rdi
  3b3f2f:	c3                   	ret
; pdata 0x3b3f38..0x3b400d
  3b3f38:	4c 8b dc             	mov    r11,rsp
  3b3f3b:	53                   	push   rbx
  3b3f3c:	55                   	push   rbp
  3b3f3d:	56                   	push   rsi
  3b3f3e:	57                   	push   rdi
  3b3f3f:	48 81 ec 98 00 00 00 	sub    rsp,0x98
  3b3f46:	8b 05 14 8a 05 00    	mov    eax,DWORD PTR [rip+0x58a14]        # 0x40c960
  3b3f4c:	41 8b d9             	mov    ebx,r9d
  3b3f4f:	49 8b f8             	mov    rdi,r8
  3b3f52:	8b f2                	mov    esi,edx
  3b3f54:	48 8b e9             	mov    rbp,rcx
  3b3f57:	a8 01                	test   al,0x1
  3b3f59:	75 38                	jne    0x3b3f93
  3b3f5b:	83 c8 01             	or     eax,0x1
  3b3f5e:	49 8d 53 98          	lea    rdx,[r11-0x68]
  3b3f62:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b3f66:	89 05 f4 89 05 00    	mov    DWORD PTR [rip+0x589f4],eax        # 0x40c960
  3b3f6c:	e8 6f d0 ff ff       	call   0x3b0fe0
  3b3f71:	48 8b c8             	mov    rcx,rax
  3b3f74:	e8 ff 09 00 00       	call   0x3b4978
  3b3f79:	48 8b c8             	mov    rcx,rax
  3b3f7c:	e8 a7 0d 00 00       	call   0x3b4d28
  3b3f81:	4c 8b c0             	mov    r8,rax
  3b3f84:	48 89 05 cd 89 05 00 	mov    QWORD PTR [rip+0x589cd],rax        # 0x40c958
  3b3f8b:	8b 05 cf 89 05 00    	mov    eax,DWORD PTR [rip+0x589cf]        # 0x40c960
  3b3f91:	eb 07                	jmp    0x3b3f9a
  3b3f93:	4c 8b 05 be 89 05 00 	mov    r8,QWORD PTR [rip+0x589be]        # 0x40c958
  3b3f9a:	a8 02                	test   al,0x2
  3b3f9c:	75 1f                	jne    0x3b3fbd
  3b3f9e:	48 8b 0d bb 1e 02 00 	mov    rcx,QWORD PTR [rip+0x21ebb]        # 0x3d5e60
  3b3fa5:	48 8d 15 c4 89 05 00 	lea    rdx,[rip+0x589c4]        # 0x40c970
  3b3fac:	83 c8 02             	or     eax,0x2
  3b3faf:	45 33 c9             	xor    r9d,r9d
  3b3fb2:	89 05 a8 89 05 00    	mov    DWORD PTR [rip+0x589a8],eax        # 0x40c960
  3b3fb8:	e8 67 7d f1 ff       	call   0x2cbd24
  3b3fbd:	8b 84 24 f0 00 00 00 	mov    eax,DWORD PTR [rsp+0xf0]
  3b3fc4:	48 8d 15 a5 89 05 00 	lea    rdx,[rip+0x589a5]        # 0x40c970
  3b3fcb:	4c 8b 45 10          	mov    r8,QWORD PTR [rbp+0x10]
  3b3fcf:	44 8b ce             	mov    r9d,esi
  3b3fd2:	48 8b 0d 87 1e 02 00 	mov    rcx,QWORD PTR [rip+0x21e87]        # 0x3d5e60
  3b3fd9:	89 44 24 40          	mov    DWORD PTR [rsp+0x40],eax
  3b3fdd:	8b 84 24 e8 00 00 00 	mov    eax,DWORD PTR [rsp+0xe8]
  3b3fe4:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  3b3fe8:	8b 84 24 e0 00 00 00 	mov    eax,DWORD PTR [rsp+0xe0]
  3b3fef:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  3b3ff3:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  3b3ff7:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  3b3ffc:	e8 43 c1 ff ff       	call   0x3b0144
  3b4001:	48 81 c4 98 00 00 00 	add    rsp,0x98
  3b4008:	5f                   	pop    rdi
  3b4009:	5e                   	pop    rsi
  3b400a:	5d                   	pop    rbp
  3b400b:	5b                   	pop    rbx
  3b400c:	c3                   	ret
; pdata 0x3b4010..0x3b40cf
  3b4010:	4c 8b dc             	mov    r11,rsp
  3b4013:	53                   	push   rbx
  3b4014:	55                   	push   rbp
  3b4015:	56                   	push   rsi
  3b4016:	57                   	push   rdi
  3b4017:	48 83 ec 78          	sub    rsp,0x78
  3b401b:	8b 05 0f 8c 05 00    	mov    eax,DWORD PTR [rip+0x58c0f]        # 0x40cc30
  3b4021:	49 8b f8             	mov    rdi,r8
  3b4024:	8b f2                	mov    esi,edx
  3b4026:	48 8b e9             	mov    rbp,rcx
  3b4029:	a8 01                	test   al,0x1
  3b402b:	75 38                	jne    0x3b4065
  3b402d:	83 c8 01             	or     eax,0x1
  3b4030:	49 8d 53 98          	lea    rdx,[r11-0x68]
  3b4034:	49 8d 4b 08          	lea    rcx,[r11+0x8]
  3b4038:	89 05 f2 8b 05 00    	mov    DWORD PTR [rip+0x58bf2],eax        # 0x40cc30
  3b403e:	e8 d1 cf ff ff       	call   0x3b1014
  3b4043:	48 8b c8             	mov    rcx,rax
  3b4046:	e8 55 09 00 00       	call   0x3b49a0
  3b404b:	48 8b c8             	mov    rcx,rax
  3b404e:	e8 d5 0c 00 00       	call   0x3b4d28
  3b4053:	4c 8b c0             	mov    r8,rax
  3b4056:	48 89 05 cb 8b 05 00 	mov    QWORD PTR [rip+0x58bcb],rax        # 0x40cc28
  3b405d:	8b 05 cd 8b 05 00    	mov    eax,DWORD PTR [rip+0x58bcd]        # 0x40cc30
  3b4063:	eb 07                	jmp    0x3b406c
  3b4065:	4c 8b 05 bc 8b 05 00 	mov    r8,QWORD PTR [rip+0x58bbc]        # 0x40cc28
  3b406c:	a8 02                	test   al,0x2
  3b406e:	75 1f                	jne    0x3b408f
  3b4070:	48 8b 0d e9 1d 02 00 	mov    rcx,QWORD PTR [rip+0x21de9]        # 0x3d5e60
  3b4077:	48 8d 15 c2 8b 05 00 	lea    rdx,[rip+0x58bc2]        # 0x40cc40
  3b407e:	83 c8 02             	or     eax,0x2
  3b4081:	45 33 c9             	xor    r9d,r9d
  3b4084:	89 05 a6 8b 05 00    	mov    DWORD PTR [rip+0x58ba6],eax        # 0x40cc30
  3b408a:	e8 95 7c f1 ff       	call   0x2cbd24
  3b408f:	48 8b cf             	mov    rcx,rdi
  3b4092:	e8 c1 ce f6 ff       	call   0x320f58
  3b4097:	48 8b cf             	mov    rcx,rdi
  3b409a:	48 8b d8             	mov    rbx,rax
  3b409d:	e8 d6 d8 f1 ff       	call   0x2d1978
  3b40a2:	4c 8b 45 10          	mov    r8,QWORD PTR [rbp+0x10]
  3b40a6:	48 8d 15 93 8b 05 00 	lea    rdx,[rip+0x58b93]        # 0x40cc40
  3b40ad:	48 8b 0d ac 1d 02 00 	mov    rcx,QWORD PTR [rip+0x21dac]        # 0x3d5e60
  3b40b4:	44 8b ce             	mov    r9d,esi
  3b40b7:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  3b40bc:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  3b40c1:	e8 52 c1 ff ff       	call   0x3b0218
  3b40c6:	48 83 c4 78          	add    rsp,0x78
  3b40ca:	5f                   	pop    rdi
  3b40cb:	5e                   	pop    rsi
  3b40cc:	5d                   	pop    rbp
  3b40cd:	5b                   	pop    rbx
  3b40ce:	c3                   	ret
; pdata 0x3b40d0..0x3b41f8
  3b40d0:	4c 8b dc             	mov    r11,rsp
  3b40d3:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b40d7:	49 89 6b 10          	mov    QWORD PTR [r11+0x10],rbp
  3b40db:	56                   	push   rsi
  3b40dc:	57                   	push   rdi
  3b40dd:	41 56                	push   r14
  3b40df:	48 83 ec 60          	sub    rsp,0x60
  3b40e3:	8b 05 57 95 05 00    	mov    eax,DWORD PTR [rip+0x59557]        # 0x40d640
  3b40e9:	8b ea                	mov    ebp,edx
  3b40eb:	4c 8b f1             	mov    r14,rcx
  3b40ee:	a8 01                	test   al,0x1
  3b40f0:	0f 85 ab 00 00 00    	jne    0x3b41a1
  3b40f6:	83 c8 01             	or     eax,0x1
  3b40f9:	49 8d 53 c2          	lea    rdx,[r11-0x3e]
  3b40fd:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b4101:	89 05 39 95 05 00    	mov    DWORD PTR [rip+0x59539],eax        # 0x40d640
  3b4107:	e8 18 d7 ff ff       	call   0x3b1824
  3b410c:	48 8b c8             	mov    rcx,rax
  3b410f:	e8 f8 9c f1 ff       	call   0x2cde0c
  3b4114:	48 8d 94 24 90 00 00 	lea    rdx,[rsp+0x90]
  3b411b:	00 
  3b411c:	48 8b f0             	mov    rsi,rax
  3b411f:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4126:	00 
  3b4127:	e8 04 86 f1 ff       	call   0x2cc730
  3b412c:	48 8b c8             	mov    rcx,rax
  3b412f:	e8 70 9b f1 ff       	call   0x2cdca4
  3b4134:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b4139:	48 8b f8             	mov    rdi,rax
  3b413c:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4143:	00 
  3b4144:	e8 63 d3 ff ff       	call   0x3b14ac
  3b4149:	48 8b c8             	mov    rcx,rax
  3b414c:	e8 cb 9b f1 ff       	call   0x2cdd1c
  3b4151:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  3b4156:	48 8b d8             	mov    rbx,rax
  3b4159:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4160:	00 
  3b4161:	e8 e2 ce ff ff       	call   0x3b1048
  3b4166:	48 8b c8             	mov    rcx,rax
  3b4169:	e8 ae 44 f2 ff       	call   0x2d861c
  3b416e:	48 8b c8             	mov    rcx,rax
  3b4171:	c7 44 24 28 ff ff ff 	mov    DWORD PTR [rsp+0x28],0xffffffff
  3b4178:	ff 
  3b4179:	4c 8b cf             	mov    r9,rdi
  3b417c:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  3b4181:	41 b8 01 00 00 00    	mov    r8d,0x1
  3b4187:	48 8b d3             	mov    rdx,rbx
  3b418a:	e8 65 fa f7 ff       	call   0x333bf4
  3b418f:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b4192:	8b 05 a8 94 05 00    	mov    eax,DWORD PTR [rip+0x594a8]        # 0x40d640
  3b4198:	4c 89 05 99 94 05 00 	mov    QWORD PTR [rip+0x59499],r8        # 0x40d638
  3b419f:	eb 07                	jmp    0x3b41a8
  3b41a1:	4c 8b 05 90 94 05 00 	mov    r8,QWORD PTR [rip+0x59490]        # 0x40d638
  3b41a8:	a8 02                	test   al,0x2
  3b41aa:	75 1f                	jne    0x3b41cb
  3b41ac:	48 8b 0d ad 1c 02 00 	mov    rcx,QWORD PTR [rip+0x21cad]        # 0x3d5e60
  3b41b3:	48 8d 15 96 94 05 00 	lea    rdx,[rip+0x59496]        # 0x40d650
  3b41ba:	83 c8 02             	or     eax,0x2
  3b41bd:	45 33 c9             	xor    r9d,r9d
  3b41c0:	89 05 7a 94 05 00    	mov    DWORD PTR [rip+0x5947a],eax        # 0x40d640
  3b41c6:	e8 59 7b f1 ff       	call   0x2cbd24
  3b41cb:	48 8b 0d 8e 1c 02 00 	mov    rcx,QWORD PTR [rip+0x21c8e]        # 0x3d5e60
  3b41d2:	48 8d 15 77 94 05 00 	lea    rdx,[rip+0x59477]        # 0x40d650
  3b41d9:	44 8b cd             	mov    r9d,ebp
  3b41dc:	4d 8b c6             	mov    r8,r14
  3b41df:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3b41e4:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3b41e8:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  3b41ec:	49 8b e3             	mov    rsp,r11
  3b41ef:	41 5e                	pop    r14
  3b41f1:	5f                   	pop    rdi
  3b41f2:	5e                   	pop    rsi
  3b41f3:	e9 d0 6f f7 ff       	jmp    0x32b1c8
; pdata 0x3b41f8..0x3b424f
  3b41f8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b41fd:	57                   	push   rdi
  3b41fe:	48 83 ec 20          	sub    rsp,0x20
  3b4202:	48 8b da             	mov    rbx,rdx
  3b4205:	48 8b f9             	mov    rdi,rcx
  3b4208:	e8 0b c8 ff ff       	call   0x3b0a18
  3b420d:	8b 03                	mov    eax,DWORD PTR [rbx]
  3b420f:	ba 00 00 80 3f       	mov    edx,0x3f800000
  3b4214:	33 c9                	xor    ecx,ecx
  3b4216:	89 47 30             	mov    DWORD PTR [rdi+0x30],eax
  3b4219:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
  3b421c:	89 47 34             	mov    DWORD PTR [rdi+0x34],eax
  3b421f:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  3b4222:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b4227:	89 47 38             	mov    DWORD PTR [rdi+0x38],eax
  3b422a:	48 8b c7             	mov    rax,rdi
  3b422d:	48 89 17             	mov    QWORD PTR [rdi],rdx
  3b4230:	89 4f 10             	mov    DWORD PTR [rdi+0x10],ecx
  3b4233:	48 89 4f 20          	mov    QWORD PTR [rdi+0x20],rcx
  3b4237:	48 89 57 14          	mov    QWORD PTR [rdi+0x14],rdx
  3b423b:	48 89 4f 08          	mov    QWORD PTR [rdi+0x8],rcx
  3b423f:	48 89 57 28          	mov    QWORD PTR [rdi+0x28],rdx
  3b4243:	89 4f 1c             	mov    DWORD PTR [rdi+0x1c],ecx
  3b4246:	89 57 3c             	mov    DWORD PTR [rdi+0x3c],edx
  3b4249:	48 83 c4 20          	add    rsp,0x20
  3b424d:	5f                   	pop    rdi
  3b424e:	c3                   	ret
; pdata 0x3b4250..0x3b44cf
  3b4250:	48 8b c4             	mov    rax,rsp
  3b4253:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  3b4257:	55                   	push   rbp
  3b4258:	53                   	push   rbx
  3b4259:	56                   	push   rsi
  3b425a:	57                   	push   rdi
  3b425b:	41 54                	push   r12
  3b425d:	41 55                	push   r13
  3b425f:	41 56                	push   r14
  3b4261:	41 57                	push   r15
  3b4263:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  3b4267:	48 81 ec e8 00 00 00 	sub    rsp,0xe8
  3b426e:	33 db                	xor    ebx,ebx
  3b4270:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  3b4274:	4c 8b f9             	mov    r15,rcx
  3b4277:	39 59 04             	cmp    DWORD PTR [rcx+0x4],ebx
  3b427a:	7e 14                	jle    0x3b4290
  3b427c:	4c 8b 41 10          	mov    r8,QWORD PTR [rcx+0x10]
  3b4280:	33 d2                	xor    edx,edx
  3b4282:	49 8b 0c d0          	mov    rcx,QWORD PTR [r8+rdx*8]
  3b4286:	ff c2                	inc    edx
  3b4288:	03 19                	add    ebx,DWORD PTR [rcx]
  3b428a:	41 3b 57 04          	cmp    edx,DWORD PTR [r15+0x4]
  3b428e:	7c f2                	jl     0x3b4282
  3b4290:	39 1d be b7 ec ff    	cmp    DWORD PTR [rip+0xffffffffffecb7be],ebx        # 0x27fa54
  3b4296:	74 22                	je     0x3b42ba
  3b4298:	48 8b 0d a1 8e 05 00 	mov    rcx,QWORD PTR [rip+0x58ea1]        # 0x40d140
  3b429f:	b2 01                	mov    dl,0x1
  3b42a1:	e8 96 ae ff ff       	call   0x3af13c
  3b42a6:	48 8b 0d 93 8e 05 00 	mov    rcx,QWORD PTR [rip+0x58e93]        # 0x40d140
  3b42ad:	8b d3                	mov    edx,ebx
  3b42af:	89 1d 9f b7 ec ff    	mov    DWORD PTR [rip+0xffffffffffecb79f],ebx        # 0x27fa54
  3b42b5:	e8 3e c6 ff ff       	call   0x3b08f8
  3b42ba:	41 8b 57 0c          	mov    edx,DWORD PTR [r15+0xc]
  3b42be:	4c 8d 05 5b 8e 05 00 	lea    r8,[rip+0x58e5b]        # 0x40d120
  3b42c5:	48 8b 0d 74 8e 05 00 	mov    rcx,QWORD PTR [rip+0x58e74]        # 0x40d140
  3b42cc:	e8 3f fd ff ff       	call   0x3b4010
  3b42d1:	41 8b 57 08          	mov    edx,DWORD PTR [r15+0x8]
  3b42d5:	45 33 c0             	xor    r8d,r8d
  3b42d8:	48 8b 0d 61 8e 05 00 	mov    rcx,QWORD PTR [rip+0x58e61]        # 0x40d140
  3b42df:	e8 f8 f8 ff ff       	call   0x3b3bdc
  3b42e4:	33 db                	xor    ebx,ebx
  3b42e6:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b42ea:	33 ff                	xor    edi,edi
  3b42ec:	89 5d 6f             	mov    DWORD PTR [rbp+0x6f],ebx
  3b42ef:	89 7d 77             	mov    DWORD PTR [rbp+0x77],edi
  3b42f2:	e8 61 04 f2 ff       	call   0x2d4758
  3b42f7:	41 8b 47 04          	mov    eax,DWORD PTR [r15+0x4]
  3b42fb:	45 33 ed             	xor    r13d,r13d
  3b42fe:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  3b4302:	44 89 6c 24 40       	mov    DWORD PTR [rsp+0x40],r13d
  3b4307:	85 c0                	test   eax,eax
  3b4309:	0f 8e 60 01 00 00    	jle    0x3b446f
  3b430f:	49 8b 47 10          	mov    rax,QWORD PTR [r15+0x10]
  3b4313:	45 33 c9             	xor    r9d,r9d
  3b4316:	48 8b 0d 23 8e 05 00 	mov    rcx,QWORD PTR [rip+0x58e23]        # 0x40d140
  3b431d:	33 d2                	xor    edx,edx
  3b431f:	c7 44 24 38 0f 00 00 	mov    DWORD PTR [rsp+0x38],0xf
  3b4326:	00 
  3b4327:	c7 44 24 30 14 00 00 	mov    DWORD PTR [rsp+0x30],0x14
  3b432e:	00 
  3b432f:	4e 8b 24 e8          	mov    r12,QWORD PTR [rax+r13*8]
  3b4333:	41 8b 44 24 20       	mov    eax,DWORD PTR [r12+0x20]
  3b4338:	4d 8b 44 24 28       	mov    r8,QWORD PTR [r12+0x28]
  3b433d:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  3b4341:	89 5c 24 20          	mov    DWORD PTR [rsp+0x20],ebx
  3b4345:	e8 ee fb ff ff       	call   0x3b3f38
  3b434a:	41 8b 44 24 10       	mov    eax,DWORD PTR [r12+0x10]
  3b434f:	44 8b cf             	mov    r9d,edi
  3b4352:	49 8b 54 24 18       	mov    rdx,QWORD PTR [r12+0x18]
  3b4357:	45 33 c0             	xor    r8d,r8d
  3b435a:	48 8b 0d df 8d 05 00 	mov    rcx,QWORD PTR [rip+0x58ddf]        # 0x40d140
  3b4361:	c7 44 24 30 0f 00 00 	mov    DWORD PTR [rsp+0x30],0xf
  3b4368:	00 
  3b4369:	c7 44 24 28 02 00 00 	mov    DWORD PTR [rsp+0x28],0x2
  3b4370:	00 
  3b4371:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  3b4375:	e8 8a f7 ff ff       	call   0x3b3b04
  3b437a:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
  3b437e:	33 c9                	xor    ecx,ecx
  3b4380:	89 44 24 44          	mov    DWORD PTR [rsp+0x44],eax
  3b4384:	89 4d 7f             	mov    DWORD PTR [rbp+0x7f],ecx
  3b4387:	85 c0                	test   eax,eax
  3b4389:	0f 8e bd 00 00 00    	jle    0x3b444c
  3b438f:	44 8b 7d 6f          	mov    r15d,DWORD PTR [rbp+0x6f]
  3b4393:	44 8b 6d 77          	mov    r13d,DWORD PTR [rbp+0x77]
  3b4397:	8b d1                	mov    edx,ecx
  3b4399:	49 8b cc             	mov    rcx,r12
  3b439c:	e8 ef 77 fd ff       	call   0x38bb90
  3b43a1:	0f 57 db             	xorps  xmm3,xmm3
  3b43a4:	48 8d 4d ef          	lea    rcx,[rbp-0x11]
  3b43a8:	0f 57 d2             	xorps  xmm2,xmm2
  3b43ab:	0f 57 c9             	xorps  xmm1,xmm1
  3b43ae:	44 8b 70 18          	mov    r14d,DWORD PTR [rax+0x18]
  3b43b2:	8b 78 1c             	mov    edi,DWORD PTR [rax+0x1c]
  3b43b5:	8b 70 20             	mov    esi,DWORD PTR [rax+0x20]
  3b43b8:	e8 eb 37 01 00       	call   0x3c7ba8
  3b43bd:	0f 57 db             	xorps  xmm3,xmm3
  3b43c0:	48 8d 4d fb          	lea    rcx,[rbp-0x5]
  3b43c4:	0f 57 d2             	xorps  xmm2,xmm2
  3b43c7:	0f 57 c9             	xorps  xmm1,xmm1
  3b43ca:	f2 0f 10 30          	movsd  xmm6,QWORD PTR [rax]
  3b43ce:	8b 58 08             	mov    ebx,DWORD PTR [rax+0x8]
  3b43d1:	e8 d2 37 01 00       	call   0x3c7ba8
  3b43d6:	4c 8d 45 87          	lea    r8,[rbp-0x79]
  3b43da:	f2 0f 11 75 97       	movsd  QWORD PTR [rbp-0x69],xmm6
  3b43df:	48 8d 55 97          	lea    rdx,[rbp-0x69]
  3b43e3:	89 5d 9f             	mov    DWORD PTR [rbp-0x61],ebx
  3b43e6:	48 8d 4d bf          	lea    rcx,[rbp-0x41]
  3b43ea:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  3b43ee:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  3b43f1:	f2 0f 11 45 87       	movsd  QWORD PTR [rbp-0x79],xmm0
  3b43f6:	89 45 8f             	mov    DWORD PTR [rbp-0x71],eax
  3b43f9:	e8 86 c5 ff ff       	call   0x3b0984
  3b43fe:	42 8d 04 2f          	lea    eax,[rdi+r13*1]
  3b4402:	c7 45 d7 00 00 00 00 	mov    DWORD PTR [rbp-0x29],0x0
  3b4409:	89 45 db             	mov    DWORD PTR [rbp-0x25],eax
  3b440c:	48 8d 55 bf          	lea    rdx,[rbp-0x41]
  3b4410:	43 8d 04 3e          	lea    eax,[r14+r15*1]
  3b4414:	89 75 df             	mov    DWORD PTR [rbp-0x21],esi
  3b4417:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b441b:	89 45 e3             	mov    DWORD PTR [rbp-0x1d],eax
  3b441e:	48 c7 45 e7 00 00 00 	mov    QWORD PTR [rbp-0x19],0x0
  3b4425:	00 
  3b4426:	e8 91 c3 ff ff       	call   0x3b07bc
  3b442b:	8b 4d 7f             	mov    ecx,DWORD PTR [rbp+0x7f]
  3b442e:	ff c1                	inc    ecx
  3b4430:	89 4d 7f             	mov    DWORD PTR [rbp+0x7f],ecx
  3b4433:	3b 4c 24 44          	cmp    ecx,DWORD PTR [rsp+0x44]
  3b4437:	0f 8c 5a ff ff ff    	jl     0x3b4397
  3b443d:	4c 8b 7d 67          	mov    r15,QWORD PTR [rbp+0x67]
  3b4441:	44 8b 6c 24 40       	mov    r13d,DWORD PTR [rsp+0x40]
  3b4446:	8b 5d 6f             	mov    ebx,DWORD PTR [rbp+0x6f]
  3b4449:	8b 7d 77             	mov    edi,DWORD PTR [rbp+0x77]
  3b444c:	41 03 5c 24 20       	add    ebx,DWORD PTR [r12+0x20]
  3b4451:	41 ff c5             	inc    r13d
  3b4454:	41 03 7c 24 10       	add    edi,DWORD PTR [r12+0x10]
  3b4459:	89 5d 6f             	mov    DWORD PTR [rbp+0x6f],ebx
  3b445c:	89 7d 77             	mov    DWORD PTR [rbp+0x77],edi
  3b445f:	44 89 6c 24 40       	mov    DWORD PTR [rsp+0x40],r13d
  3b4464:	44 3b 6c 24 48       	cmp    r13d,DWORD PTR [rsp+0x48]
  3b4469:	0f 8c a0 fe ff ff    	jl     0x3b430f
  3b446f:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b4473:	e8 dc b8 fc ff       	call   0x37fd54
  3b4478:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b447c:	48 8b d8             	mov    rbx,rax
  3b447f:	e8 f4 d4 f1 ff       	call   0x2d1978
  3b4484:	48 8b 0d b5 8c 05 00 	mov    rcx,QWORD PTR [rip+0x58cb5]        # 0x40d140
  3b448b:	48 8b d0             	mov    rdx,rax
  3b448e:	41 b9 0f 00 00 00    	mov    r9d,0xf
  3b4494:	44 8b c3             	mov    r8d,ebx
  3b4497:	e8 c0 f9 ff ff       	call   0x3b3e5c
  3b449c:	48 8b 0d 9d 8c 05 00 	mov    rcx,QWORD PTR [rip+0x58c9d]        # 0x40d140
  3b44a3:	33 d2                	xor    edx,edx
  3b44a5:	e8 96 b4 ff ff       	call   0x3af940
  3b44aa:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b44ae:	e8 d1 c5 ff ff       	call   0x3b0a84
  3b44b3:	0f 28 b4 24 d0 00 00 	movaps xmm6,XMMWORD PTR [rsp+0xd0]
  3b44ba:	00 
  3b44bb:	48 81 c4 e8 00 00 00 	add    rsp,0xe8
  3b44c2:	41 5f                	pop    r15
  3b44c4:	41 5e                	pop    r14
  3b44c6:	41 5d                	pop    r13
  3b44c8:	41 5c                	pop    r12
  3b44ca:	5f                   	pop    rdi
  3b44cb:	5e                   	pop    rsi
  3b44cc:	5b                   	pop    rbx
  3b44cd:	5d                   	pop    rbp
  3b44ce:	c3                   	ret
; pdata 0x3b44d0..0x3b4553
  3b44d0:	40 53                	rex push rbx
  3b44d2:	56                   	push   rsi
  3b44d3:	57                   	push   rdi
  3b44d4:	41 56                	push   r14
  3b44d6:	41 57                	push   r15
  3b44d8:	48 83 ec 20          	sub    rsp,0x20
  3b44dc:	48 83 39 00          	cmp    QWORD PTR [rcx],0x0
  3b44e0:	4d 8b f1             	mov    r14,r9
  3b44e3:	4d 8b f8             	mov    r15,r8
  3b44e6:	48 8b f2             	mov    rsi,rdx
  3b44e9:	48 8b f9             	mov    rdi,rcx
  3b44ec:	74 38                	je     0x3b4526
  3b44ee:	4c 8b 51 10          	mov    r10,QWORD PTR [rcx+0x10]
  3b44f2:	48 b8 ab aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaab
  3b44f9:	aa aa 2a 
  3b44fc:	4c 2b 11             	sub    r10,QWORD PTR [rcx]
  3b44ff:	49 f7 ea             	imul   r10
  3b4502:	48 8b da             	mov    rbx,rdx
  3b4505:	48 c1 fb 03          	sar    rbx,0x3
  3b4509:	48 8b c3             	mov    rax,rbx
  3b450c:	48 c1 e8 3f          	shr    rax,0x3f
  3b4510:	48 03 d8             	add    rbx,rax
  3b4513:	e8 0c 8e f1 ff       	call   0x2cd324
  3b4518:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
  3b451b:	48 8b c8             	mov    rcx,rax
  3b451e:	4c 8b c3             	mov    r8,rbx
  3b4521:	e8 8e be f6 ff       	call   0x3203b4
  3b4526:	48 89 37             	mov    QWORD PTR [rdi],rsi
  3b4529:	4b 8d 04 7f          	lea    rax,[r15+r15*2]
  3b452d:	48 c1 e0 04          	shl    rax,0x4
  3b4531:	48 03 c6             	add    rax,rsi
  3b4534:	48 89 47 08          	mov    QWORD PTR [rdi+0x8],rax
  3b4538:	4b 8d 04 76          	lea    rax,[r14+r14*2]
  3b453c:	48 c1 e0 04          	shl    rax,0x4
  3b4540:	48 03 c6             	add    rax,rsi
  3b4543:	48 89 47 10          	mov    QWORD PTR [rdi+0x10],rax
  3b4547:	48 83 c4 20          	add    rsp,0x20
  3b454b:	41 5f                	pop    r15
  3b454d:	41 5e                	pop    r14
  3b454f:	5f                   	pop    rdi
  3b4550:	5e                   	pop    rsi
  3b4551:	5b                   	pop    rbx
  3b4552:	c3                   	ret
; pdata 0x3b4554..0x3b45c1
  3b4554:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b4559:	57                   	push   rdi
  3b455a:	48 83 ec 20          	sub    rsp,0x20
  3b455e:	48 83 39 00          	cmp    QWORD PTR [rcx],0x0
  3b4562:	48 8b f9             	mov    rdi,rcx
  3b4565:	74 4f                	je     0x3b45b6
  3b4567:	4c 8b 41 10          	mov    r8,QWORD PTR [rcx+0x10]
  3b456b:	48 b8 ab aa aa aa aa 	movabs rax,0x2aaaaaaaaaaaaaab
  3b4572:	aa aa 2a 
  3b4575:	4c 2b 01             	sub    r8,QWORD PTR [rcx]
  3b4578:	49 f7 e8             	imul   r8
  3b457b:	48 8b da             	mov    rbx,rdx
  3b457e:	48 c1 fb 03          	sar    rbx,0x3
  3b4582:	48 8b c3             	mov    rax,rbx
  3b4585:	48 c1 e8 3f          	shr    rax,0x3f
  3b4589:	48 03 d8             	add    rbx,rax
  3b458c:	e8 93 8d f1 ff       	call   0x2cd324
  3b4591:	48 8b 17             	mov    rdx,QWORD PTR [rdi]
  3b4594:	48 8b c8             	mov    rcx,rax
  3b4597:	4c 8b c3             	mov    r8,rbx
  3b459a:	e8 15 be f6 ff       	call   0x3203b4
  3b459f:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
  3b45a6:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
  3b45ad:	00 
  3b45ae:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
  3b45b5:	00 
  3b45b6:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b45bb:	48 83 c4 20          	add    rsp,0x20
  3b45bf:	5f                   	pop    rdi
  3b45c0:	c3                   	ret
; pdata 0x3b45c4..0x3b464b
  3b45c4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b45c9:	57                   	push   rdi
  3b45ca:	48 83 ec 20          	sub    rsp,0x20
  3b45ce:	8b 05 bc 71 05 00    	mov    eax,DWORD PTR [rip+0x571bc]        # 0x40b790
  3b45d4:	48 8b da             	mov    rbx,rdx
  3b45d7:	48 8b f9             	mov    rdi,rcx
  3b45da:	a8 01                	test   al,0x1
  3b45dc:	75 20                	jne    0x3b45fe
  3b45de:	83 c8 01             	or     eax,0x1
  3b45e1:	89 05 a9 71 05 00    	mov    DWORD PTR [rip+0x571a9],eax        # 0x40b790
  3b45e7:	e8 40 f4 f7 ff       	call   0x333a2c
  3b45ec:	4c 8b c0             	mov    r8,rax
  3b45ef:	48 89 05 92 71 05 00 	mov    QWORD PTR [rip+0x57192],rax        # 0x40b788
  3b45f6:	8b 05 94 71 05 00    	mov    eax,DWORD PTR [rip+0x57194]        # 0x40b790
  3b45fc:	eb 07                	jmp    0x3b4605
  3b45fe:	4c 8b 05 83 71 05 00 	mov    r8,QWORD PTR [rip+0x57183]        # 0x40b788
  3b4605:	a8 02                	test   al,0x2
  3b4607:	75 1f                	jne    0x3b4628
  3b4609:	48 8b 0d 50 18 02 00 	mov    rcx,QWORD PTR [rip+0x21850]        # 0x3d5e60
  3b4610:	48 8d 15 89 71 05 00 	lea    rdx,[rip+0x57189]        # 0x40b7a0
  3b4617:	83 c8 02             	or     eax,0x2
  3b461a:	45 33 c9             	xor    r9d,r9d
  3b461d:	89 05 6d 71 05 00    	mov    DWORD PTR [rip+0x5716d],eax        # 0x40b790
  3b4623:	e8 fc 76 f1 ff       	call   0x2cbd24
  3b4628:	48 8b 0d 31 18 02 00 	mov    rcx,QWORD PTR [rip+0x21831]        # 0x3d5e60
  3b462f:	48 8d 15 6a 71 05 00 	lea    rdx,[rip+0x5716a]        # 0x40b7a0
  3b4636:	4c 8b cb             	mov    r9,rbx
  3b4639:	4c 8b c7             	mov    r8,rdi
  3b463c:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b4641:	48 83 c4 20          	add    rsp,0x20
  3b4645:	5f                   	pop    rdi
  3b4646:	e9 49 da f1 ff       	jmp    0x2d2094
; pdata 0x3b4824..0x3b48b0
  3b4824:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b4829:	57                   	push   rdi
  3b482a:	48 83 ec 20          	sub    rsp,0x20
  3b482e:	8b 05 3c 8b 05 00    	mov    eax,DWORD PTR [rip+0x58b3c]        # 0x40d370
  3b4834:	48 8b da             	mov    rbx,rdx
  3b4837:	48 8b f9             	mov    rdi,rcx
  3b483a:	a8 01                	test   al,0x1
  3b483c:	75 25                	jne    0x3b4863
  3b483e:	83 c8 01             	or     eax,0x1
  3b4841:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  3b4846:	89 05 24 8b 05 00    	mov    DWORD PTR [rip+0x58b24],eax        # 0x40d370
  3b484c:	e8 1b c8 ff ff       	call   0x3b106c
  3b4851:	4c 8b c0             	mov    r8,rax
  3b4854:	48 89 05 0d 8b 05 00 	mov    QWORD PTR [rip+0x58b0d],rax        # 0x40d368
  3b485b:	8b 05 0f 8b 05 00    	mov    eax,DWORD PTR [rip+0x58b0f]        # 0x40d370
  3b4861:	eb 07                	jmp    0x3b486a
  3b4863:	4c 8b 05 fe 8a 05 00 	mov    r8,QWORD PTR [rip+0x58afe]        # 0x40d368
  3b486a:	a8 02                	test   al,0x2
  3b486c:	75 1f                	jne    0x3b488d
  3b486e:	48 8b 0d eb 15 02 00 	mov    rcx,QWORD PTR [rip+0x215eb]        # 0x3d5e60
  3b4875:	48 8d 15 04 8b 05 00 	lea    rdx,[rip+0x58b04]        # 0x40d380
  3b487c:	83 c8 02             	or     eax,0x2
  3b487f:	45 33 c9             	xor    r9d,r9d
  3b4882:	89 05 e8 8a 05 00    	mov    DWORD PTR [rip+0x58ae8],eax        # 0x40d370
  3b4888:	e8 97 74 f1 ff       	call   0x2cbd24
  3b488d:	48 8b 0d cc 15 02 00 	mov    rcx,QWORD PTR [rip+0x215cc]        # 0x3d5e60
  3b4894:	48 8d 15 e5 8a 05 00 	lea    rdx,[rip+0x58ae5]        # 0x40d380
  3b489b:	4c 8b cb             	mov    r9,rbx
  3b489e:	4c 8b c7             	mov    r8,rdi
  3b48a1:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b48a6:	48 83 c4 20          	add    rsp,0x20
  3b48aa:	5f                   	pop    rdi
  3b48ab:	e9 e4 d7 f1 ff       	jmp    0x2d2094
; pdata 0x3b48b0..0x3b48d6
  3b48b0:	40 53                	rex push rbx
  3b48b2:	48 83 ec 20          	sub    rsp,0x20
  3b48b6:	48 8b d9             	mov    rbx,rcx
  3b48b9:	e8 e2 03 fb ff       	call   0x364ca0
  3b48be:	84 c0                	test   al,al
  3b48c0:	74 0b                	je     0x3b48cd
  3b48c2:	48 8b d3             	mov    rdx,rbx
  3b48c5:	48 8b cb             	mov    rcx,rbx
  3b48c8:	e8 7f fd ff ff       	call   0x3b464c
  3b48cd:	48 8b c3             	mov    rax,rbx
  3b48d0:	48 83 c4 20          	add    rsp,0x20
  3b48d4:	5b                   	pop    rbx
  3b48d5:	c3                   	ret
; pdata 0x3b48d8..0x3b48fe
  3b48d8:	40 53                	rex push rbx
  3b48da:	48 83 ec 20          	sub    rsp,0x20
  3b48de:	48 8b d9             	mov    rbx,rcx
  3b48e1:	e8 a6 d8 f6 ff       	call   0x32218c
  3b48e6:	84 c0                	test   al,al
  3b48e8:	74 0b                	je     0x3b48f5
  3b48ea:	48 8b d3             	mov    rdx,rbx
  3b48ed:	48 8b cb             	mov    rcx,rbx
  3b48f0:	e8 93 fd ff ff       	call   0x3b4688
  3b48f5:	48 8b c3             	mov    rax,rbx
  3b48f8:	48 83 c4 20          	add    rsp,0x20
  3b48fc:	5b                   	pop    rbx
  3b48fd:	c3                   	ret
; pdata 0x3b4900..0x3b4926
  3b4900:	40 53                	rex push rbx
  3b4902:	48 83 ec 20          	sub    rsp,0x20
  3b4906:	48 8b d9             	mov    rbx,rcx
  3b4909:	e8 d2 03 fb ff       	call   0x364ce0
  3b490e:	84 c0                	test   al,al
  3b4910:	74 0b                	je     0x3b491d
  3b4912:	48 8b d3             	mov    rdx,rbx
  3b4915:	48 8b cb             	mov    rcx,rbx
  3b4918:	e8 a7 fd ff ff       	call   0x3b46c4
  3b491d:	48 8b c3             	mov    rax,rbx
  3b4920:	48 83 c4 20          	add    rsp,0x20
  3b4924:	5b                   	pop    rbx
  3b4925:	c3                   	ret
; pdata 0x3b4928..0x3b494e
  3b4928:	40 53                	rex push rbx
  3b492a:	48 83 ec 20          	sub    rsp,0x20
  3b492e:	48 8b d9             	mov    rbx,rcx
  3b4931:	e8 b2 03 fb ff       	call   0x364ce8
  3b4936:	84 c0                	test   al,al
  3b4938:	74 0b                	je     0x3b4945
  3b493a:	48 8b d3             	mov    rdx,rbx
  3b493d:	48 8b cb             	mov    rcx,rbx
  3b4940:	e8 af fd ff ff       	call   0x3b46f4
  3b4945:	48 8b c3             	mov    rax,rbx
  3b4948:	48 83 c4 20          	add    rsp,0x20
  3b494c:	5b                   	pop    rbx
  3b494d:	c3                   	ret
; pdata 0x3b4950..0x3b4976
  3b4950:	40 53                	rex push rbx
  3b4952:	48 83 ec 20          	sub    rsp,0x20
  3b4956:	48 8b d9             	mov    rbx,rcx
  3b4959:	e8 92 03 fb ff       	call   0x364cf0
  3b495e:	84 c0                	test   al,al
  3b4960:	74 0b                	je     0x3b496d
  3b4962:	48 8b d3             	mov    rdx,rbx
  3b4965:	48 8b cb             	mov    rcx,rbx
  3b4968:	e8 c3 fd ff ff       	call   0x3b4730
  3b496d:	48 8b c3             	mov    rax,rbx
  3b4970:	48 83 c4 20          	add    rsp,0x20
  3b4974:	5b                   	pop    rbx
  3b4975:	c3                   	ret
; pdata 0x3b4978..0x3b499e
  3b4978:	40 53                	rex push rbx
  3b497a:	48 83 ec 20          	sub    rsp,0x20
  3b497e:	48 8b d9             	mov    rbx,rcx
  3b4981:	e8 72 03 fb ff       	call   0x364cf8
  3b4986:	84 c0                	test   al,al
  3b4988:	74 0b                	je     0x3b4995
  3b498a:	48 8b d3             	mov    rdx,rbx
  3b498d:	48 8b cb             	mov    rcx,rbx
  3b4990:	e8 cb fd ff ff       	call   0x3b4760
  3b4995:	48 8b c3             	mov    rax,rbx
  3b4998:	48 83 c4 20          	add    rsp,0x20
  3b499c:	5b                   	pop    rbx
  3b499d:	c3                   	ret
; pdata 0x3b49a0..0x3b49c6
  3b49a0:	40 53                	rex push rbx
  3b49a2:	48 83 ec 20          	sub    rsp,0x20
  3b49a6:	48 8b d9             	mov    rbx,rcx
  3b49a9:	e8 66 db f7 ff       	call   0x332514
  3b49ae:	84 c0                	test   al,al
  3b49b0:	74 0b                	je     0x3b49bd
  3b49b2:	48 8b d3             	mov    rdx,rbx
  3b49b5:	48 8b cb             	mov    rcx,rbx
  3b49b8:	e8 d7 fd ff ff       	call   0x3b4794
  3b49bd:	48 8b c3             	mov    rax,rbx
  3b49c0:	48 83 c4 20          	add    rsp,0x20
  3b49c4:	5b                   	pop    rbx
  3b49c5:	c3                   	ret
; pdata 0x3b49c8..0x3b49ee
  3b49c8:	40 53                	rex push rbx
  3b49ca:	48 83 ec 20          	sub    rsp,0x20
  3b49ce:	48 8b d9             	mov    rbx,rcx
  3b49d1:	e8 4a 03 fb ff       	call   0x364d20
  3b49d6:	84 c0                	test   al,al
  3b49d8:	74 0b                	je     0x3b49e5
  3b49da:	48 8b d3             	mov    rdx,rbx
  3b49dd:	48 8b cb             	mov    rcx,rbx
  3b49e0:	e8 df fd ff ff       	call   0x3b47c4
  3b49e5:	48 8b c3             	mov    rax,rbx
  3b49e8:	48 83 c4 20          	add    rsp,0x20
  3b49ec:	5b                   	pop    rbx
  3b49ed:	c3                   	ret
; pdata 0x3b49f0..0x3b4a16
  3b49f0:	40 53                	rex push rbx
  3b49f2:	48 83 ec 20          	sub    rsp,0x20
  3b49f6:	48 8b d9             	mov    rbx,rcx
  3b49f9:	e8 1a 00 00 00       	call   0x3b4a18
  3b49fe:	84 c0                	test   al,al
  3b4a00:	74 0b                	je     0x3b4a0d
  3b4a02:	48 8b d3             	mov    rdx,rbx
  3b4a05:	48 8b cb             	mov    rcx,rbx
  3b4a08:	e8 e7 fd ff ff       	call   0x3b47f4
  3b4a0d:	48 8b c3             	mov    rax,rbx
  3b4a10:	48 83 c4 20          	add    rsp,0x20
  3b4a14:	5b                   	pop    rbx
  3b4a15:	c3                   	ret
; pdata 0x3b4a20..0x3b4a98
  3b4a20:	40 53                	rex push rbx
  3b4a22:	48 83 ec 20          	sub    rsp,0x20
  3b4a26:	8b 05 14 72 05 00    	mov    eax,DWORD PTR [rip+0x57214]        # 0x40bc40
  3b4a2c:	48 8b d9             	mov    rbx,rcx
  3b4a2f:	a8 01                	test   al,0x1
  3b4a31:	75 20                	jne    0x3b4a53
  3b4a33:	83 c8 01             	or     eax,0x1
  3b4a36:	89 05 04 72 05 00    	mov    DWORD PTR [rip+0x57204],eax        # 0x40bc40
  3b4a3c:	e8 ab ef f7 ff       	call   0x3339ec
  3b4a41:	4c 8b c0             	mov    r8,rax
  3b4a44:	48 89 05 ed 71 05 00 	mov    QWORD PTR [rip+0x571ed],rax        # 0x40bc38
  3b4a4b:	8b 05 ef 71 05 00    	mov    eax,DWORD PTR [rip+0x571ef]        # 0x40bc40
  3b4a51:	eb 07                	jmp    0x3b4a5a
  3b4a53:	4c 8b 05 de 71 05 00 	mov    r8,QWORD PTR [rip+0x571de]        # 0x40bc38
  3b4a5a:	a8 02                	test   al,0x2
  3b4a5c:	75 1f                	jne    0x3b4a7d
  3b4a5e:	48 8b 0d fb 13 02 00 	mov    rcx,QWORD PTR [rip+0x213fb]        # 0x3d5e60
  3b4a65:	48 8d 15 e4 71 05 00 	lea    rdx,[rip+0x571e4]        # 0x40bc50
  3b4a6c:	83 c8 02             	or     eax,0x2
  3b4a6f:	45 33 c9             	xor    r9d,r9d
  3b4a72:	89 05 c8 71 05 00    	mov    DWORD PTR [rip+0x571c8],eax        # 0x40bc40
  3b4a78:	e8 a7 72 f1 ff       	call   0x2cbd24
  3b4a7d:	48 8b 0d dc 13 02 00 	mov    rcx,QWORD PTR [rip+0x213dc]        # 0x3d5e60
  3b4a84:	48 8d 15 c5 71 05 00 	lea    rdx,[rip+0x571c5]        # 0x40bc50
  3b4a8b:	4c 8b c3             	mov    r8,rbx
  3b4a8e:	48 83 c4 20          	add    rsp,0x20
  3b4a92:	5b                   	pop    rbx
  3b4a93:	e9 64 6f f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4a98..0x3b4b1e
  3b4a98:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b4a9d:	57                   	push   rdi
  3b4a9e:	48 83 ec 20          	sub    rsp,0x20
  3b4aa2:	8b 05 c8 6e 05 00    	mov    eax,DWORD PTR [rip+0x56ec8]        # 0x40b970
  3b4aa8:	8b da                	mov    ebx,edx
  3b4aaa:	48 8b f9             	mov    rdi,rcx
  3b4aad:	a8 01                	test   al,0x1
  3b4aaf:	75 20                	jne    0x3b4ad1
  3b4ab1:	83 c8 01             	or     eax,0x1
  3b4ab4:	89 05 b6 6e 05 00    	mov    DWORD PTR [rip+0x56eb6],eax        # 0x40b970
  3b4aba:	e8 65 ef f7 ff       	call   0x333a24
  3b4abf:	4c 8b c0             	mov    r8,rax
  3b4ac2:	48 89 05 9f 6e 05 00 	mov    QWORD PTR [rip+0x56e9f],rax        # 0x40b968
  3b4ac9:	8b 05 a1 6e 05 00    	mov    eax,DWORD PTR [rip+0x56ea1]        # 0x40b970
  3b4acf:	eb 07                	jmp    0x3b4ad8
  3b4ad1:	4c 8b 05 90 6e 05 00 	mov    r8,QWORD PTR [rip+0x56e90]        # 0x40b968
  3b4ad8:	a8 02                	test   al,0x2
  3b4ada:	75 1f                	jne    0x3b4afb
  3b4adc:	48 8b 0d 7d 13 02 00 	mov    rcx,QWORD PTR [rip+0x2137d]        # 0x3d5e60
  3b4ae3:	48 8d 15 96 6e 05 00 	lea    rdx,[rip+0x56e96]        # 0x40b980
  3b4aea:	83 c8 02             	or     eax,0x2
  3b4aed:	45 33 c9             	xor    r9d,r9d
  3b4af0:	89 05 7a 6e 05 00    	mov    DWORD PTR [rip+0x56e7a],eax        # 0x40b970
  3b4af6:	e8 29 72 f1 ff       	call   0x2cbd24
  3b4afb:	48 8b 0d 5e 13 02 00 	mov    rcx,QWORD PTR [rip+0x2135e]        # 0x3d5e60
  3b4b02:	48 8d 15 77 6e 05 00 	lea    rdx,[rip+0x56e77]        # 0x40b980
  3b4b09:	44 8b cb             	mov    r9d,ebx
  3b4b0c:	4c 8b c7             	mov    r8,rdi
  3b4b0f:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  3b4b14:	48 83 c4 20          	add    rsp,0x20
  3b4b18:	5f                   	pop    rdi
  3b4b19:	e9 aa 66 f7 ff       	jmp    0x32b1c8
; pdata 0x3b4b20..0x3b4b98
  3b4b20:	40 53                	rex push rbx
  3b4b22:	48 83 ec 20          	sub    rsp,0x20
  3b4b26:	8b 05 54 6d 05 00    	mov    eax,DWORD PTR [rip+0x56d54]        # 0x40b880
  3b4b2c:	48 8b d9             	mov    rbx,rcx
  3b4b2f:	a8 01                	test   al,0x1
  3b4b31:	75 20                	jne    0x3b4b53
  3b4b33:	83 c8 01             	or     eax,0x1
  3b4b36:	89 05 44 6d 05 00    	mov    DWORD PTR [rip+0x56d44],eax        # 0x40b880
  3b4b3c:	e8 cb 9b f3 ff       	call   0x2ee70c
  3b4b41:	4c 8b c0             	mov    r8,rax
  3b4b44:	48 89 05 2d 6d 05 00 	mov    QWORD PTR [rip+0x56d2d],rax        # 0x40b878
  3b4b4b:	8b 05 2f 6d 05 00    	mov    eax,DWORD PTR [rip+0x56d2f]        # 0x40b880
  3b4b51:	eb 07                	jmp    0x3b4b5a
  3b4b53:	4c 8b 05 1e 6d 05 00 	mov    r8,QWORD PTR [rip+0x56d1e]        # 0x40b878
  3b4b5a:	a8 02                	test   al,0x2
  3b4b5c:	75 1f                	jne    0x3b4b7d
  3b4b5e:	48 8b 0d fb 12 02 00 	mov    rcx,QWORD PTR [rip+0x212fb]        # 0x3d5e60
  3b4b65:	48 8d 15 24 6d 05 00 	lea    rdx,[rip+0x56d24]        # 0x40b890
  3b4b6c:	83 c8 02             	or     eax,0x2
  3b4b6f:	45 33 c9             	xor    r9d,r9d
  3b4b72:	89 05 08 6d 05 00    	mov    DWORD PTR [rip+0x56d08],eax        # 0x40b880
  3b4b78:	e8 a7 71 f1 ff       	call   0x2cbd24
  3b4b7d:	48 8b 0d dc 12 02 00 	mov    rcx,QWORD PTR [rip+0x212dc]        # 0x3d5e60
  3b4b84:	48 8d 15 05 6d 05 00 	lea    rdx,[rip+0x56d05]        # 0x40b890
  3b4b8b:	4c 8b c3             	mov    r8,rbx
  3b4b8e:	48 83 c4 20          	add    rsp,0x20
  3b4b92:	5b                   	pop    rbx
  3b4b93:	e9 64 6e f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4b98..0x3b4c10
  3b4b98:	40 53                	rex push rbx
  3b4b9a:	48 83 ec 20          	sub    rsp,0x20
  3b4b9e:	8b 05 ac 6f 05 00    	mov    eax,DWORD PTR [rip+0x56fac]        # 0x40bb50
  3b4ba4:	48 8b d9             	mov    rbx,rcx
  3b4ba7:	a8 01                	test   al,0x1
  3b4ba9:	75 20                	jne    0x3b4bcb
  3b4bab:	83 c8 01             	or     eax,0x1
  3b4bae:	89 05 9c 6f 05 00    	mov    DWORD PTR [rip+0x56f9c],eax        # 0x40bb50
  3b4bb4:	e8 93 a2 f2 ff       	call   0x2dee4c
  3b4bb9:	4c 8b c0             	mov    r8,rax
  3b4bbc:	48 89 05 85 6f 05 00 	mov    QWORD PTR [rip+0x56f85],rax        # 0x40bb48
  3b4bc3:	8b 05 87 6f 05 00    	mov    eax,DWORD PTR [rip+0x56f87]        # 0x40bb50
  3b4bc9:	eb 07                	jmp    0x3b4bd2
  3b4bcb:	4c 8b 05 76 6f 05 00 	mov    r8,QWORD PTR [rip+0x56f76]        # 0x40bb48
  3b4bd2:	a8 02                	test   al,0x2
  3b4bd4:	75 1f                	jne    0x3b4bf5
  3b4bd6:	48 8b 0d 83 12 02 00 	mov    rcx,QWORD PTR [rip+0x21283]        # 0x3d5e60
  3b4bdd:	48 8d 15 7c 6f 05 00 	lea    rdx,[rip+0x56f7c]        # 0x40bb60
  3b4be4:	83 c8 02             	or     eax,0x2
  3b4be7:	45 33 c9             	xor    r9d,r9d
  3b4bea:	89 05 60 6f 05 00    	mov    DWORD PTR [rip+0x56f60],eax        # 0x40bb50
  3b4bf0:	e8 2f 71 f1 ff       	call   0x2cbd24
  3b4bf5:	48 8b 0d 64 12 02 00 	mov    rcx,QWORD PTR [rip+0x21264]        # 0x3d5e60
  3b4bfc:	48 8d 15 5d 6f 05 00 	lea    rdx,[rip+0x56f5d]        # 0x40bb60
  3b4c03:	4c 8b c3             	mov    r8,rbx
  3b4c06:	48 83 c4 20          	add    rsp,0x20
  3b4c0a:	5b                   	pop    rbx
  3b4c0b:	e9 ec 6d f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4c10..0x3b4d27
  3b4c10:	4c 8b dc             	mov    r11,rsp
  3b4c13:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b4c17:	55                   	push   rbp
  3b4c18:	56                   	push   rsi
  3b4c19:	57                   	push   rdi
  3b4c1a:	48 83 ec 60          	sub    rsp,0x60
  3b4c1e:	8b 05 5c 7b 05 00    	mov    eax,DWORD PTR [rip+0x57b5c]        # 0x40c780
  3b4c24:	48 8b e9             	mov    rbp,rcx
  3b4c27:	a8 01                	test   al,0x1
  3b4c29:	0f 85 a9 00 00 00    	jne    0x3b4cd8
  3b4c2f:	83 c8 01             	or     eax,0x1
  3b4c32:	49 8d 53 10          	lea    rdx,[r11+0x10]
  3b4c36:	49 8d 4b 10          	lea    rcx,[r11+0x10]
  3b4c3a:	89 05 40 7b 05 00    	mov    DWORD PTR [rip+0x57b40],eax        # 0x40c780
  3b4c40:	e8 eb 7a f1 ff       	call   0x2cc730
  3b4c45:	48 8b c8             	mov    rcx,rax
  3b4c48:	e8 57 90 f1 ff       	call   0x2cdca4
  3b4c4d:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  3b4c52:	48 8b f0             	mov    rsi,rax
  3b4c55:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b4c5c:	00 
  3b4c5d:	e8 5e ca ff ff       	call   0x3b16c0
  3b4c62:	48 8b c8             	mov    rcx,rax
  3b4c65:	e8 ea 38 f2 ff       	call   0x2d8554
  3b4c6a:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  3b4c6f:	48 8b f8             	mov    rdi,rax
  3b4c72:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b4c79:	00 
  3b4c7a:	e8 49 c8 ff ff       	call   0x3b14c8
  3b4c7f:	48 8b c8             	mov    rcx,rax
  3b4c82:	e8 85 91 f1 ff       	call   0x2cde0c
  3b4c87:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b4c8c:	48 8b d8             	mov    rbx,rax
  3b4c8f:	48 8d 8c 24 90 00 00 	lea    rcx,[rsp+0x90]
  3b4c96:	00 
  3b4c97:	e8 00 c5 ff ff       	call   0x3b119c
  3b4c9c:	48 8b c8             	mov    rcx,rax
  3b4c9f:	e8 78 90 f1 ff       	call   0x2cdd1c
  3b4ca4:	48 8b c8             	mov    rcx,rax
  3b4ca7:	48 8b d3             	mov    rdx,rbx
  3b4caa:	e8 75 f5 f7 ff       	call   0x334224
  3b4caf:	41 83 c8 ff          	or     r8d,0xffffffff
  3b4cb3:	48 8b c8             	mov    rcx,rax
  3b4cb6:	4c 8b ce             	mov    r9,rsi
  3b4cb9:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b4cbe:	48 8b d7             	mov    rdx,rdi
  3b4cc1:	e8 e6 fc f7 ff       	call   0x3349ac
  3b4cc6:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b4cc9:	8b 05 b1 7a 05 00    	mov    eax,DWORD PTR [rip+0x57ab1]        # 0x40c780
  3b4ccf:	4c 89 05 a2 7a 05 00 	mov    QWORD PTR [rip+0x57aa2],r8        # 0x40c778
  3b4cd6:	eb 07                	jmp    0x3b4cdf
  3b4cd8:	4c 8b 05 99 7a 05 00 	mov    r8,QWORD PTR [rip+0x57a99]        # 0x40c778
  3b4cdf:	a8 02                	test   al,0x2
  3b4ce1:	75 1f                	jne    0x3b4d02
  3b4ce3:	48 8b 0d 76 11 02 00 	mov    rcx,QWORD PTR [rip+0x21176]        # 0x3d5e60
  3b4cea:	48 8d 15 9f 7a 05 00 	lea    rdx,[rip+0x57a9f]        # 0x40c790
  3b4cf1:	83 c8 02             	or     eax,0x2
  3b4cf4:	45 33 c9             	xor    r9d,r9d
  3b4cf7:	89 05 83 7a 05 00    	mov    DWORD PTR [rip+0x57a83],eax        # 0x40c780
  3b4cfd:	e8 22 70 f1 ff       	call   0x2cbd24
  3b4d02:	48 8b 0d 57 11 02 00 	mov    rcx,QWORD PTR [rip+0x21157]        # 0x3d5e60
  3b4d09:	48 8d 15 80 7a 05 00 	lea    rdx,[rip+0x57a80]        # 0x40c790
  3b4d10:	4c 8b c5             	mov    r8,rbp
  3b4d13:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  3b4d1a:	00 
  3b4d1b:	48 83 c4 60          	add    rsp,0x60
  3b4d1f:	5f                   	pop    rdi
  3b4d20:	5e                   	pop    rsi
  3b4d21:	5d                   	pop    rbp
  3b4d22:	e9 d5 6c f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4d28..0x3b4de8
  3b4d28:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3b4d2d:	57                   	push   rdi
  3b4d2e:	48 83 ec 50          	sub    rsp,0x50
  3b4d32:	8b 05 f8 6f 05 00    	mov    eax,DWORD PTR [rip+0x56ff8]        # 0x40bd30
  3b4d38:	48 8b f9             	mov    rdi,rcx
  3b4d3b:	a8 01                	test   al,0x1
  3b4d3d:	75 5f                	jne    0x3b4d9e
  3b4d3f:	83 c8 01             	or     eax,0x1
  3b4d42:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  3b4d47:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3b4d4c:	89 05 de 6f 05 00    	mov    DWORD PTR [rip+0x56fde],eax        # 0x40bd30
  3b4d52:	e8 8d c7 ff ff       	call   0x3b14e4
  3b4d57:	48 8b c8             	mov    rcx,rax
  3b4d5a:	e8 dd e8 f2 ff       	call   0x2e363c
  3b4d5f:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  3b4d64:	48 8b d8             	mov    rbx,rax
  3b4d67:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3b4d6c:	e8 47 c4 ff ff       	call   0x3b11b8
  3b4d71:	48 8b c8             	mov    rcx,rax
  3b4d74:	e8 db 37 f2 ff       	call   0x2d8554
  3b4d79:	48 8b c8             	mov    rcx,rax
  3b4d7c:	e8 d7 62 01 00       	call   0x3cb058
  3b4d81:	48 8b c8             	mov    rcx,rax
  3b4d84:	48 8b d3             	mov    rdx,rbx
  3b4d87:	e8 44 61 01 00       	call   0x3caed0
  3b4d8c:	4c 8b c0             	mov    r8,rax
  3b4d8f:	48 89 05 92 6f 05 00 	mov    QWORD PTR [rip+0x56f92],rax        # 0x40bd28
  3b4d96:	8b 05 94 6f 05 00    	mov    eax,DWORD PTR [rip+0x56f94]        # 0x40bd30
  3b4d9c:	eb 07                	jmp    0x3b4da5
  3b4d9e:	4c 8b 05 83 6f 05 00 	mov    r8,QWORD PTR [rip+0x56f83]        # 0x40bd28
  3b4da5:	a8 02                	test   al,0x2
  3b4da7:	75 1f                	jne    0x3b4dc8
  3b4da9:	48 8b 0d b0 10 02 00 	mov    rcx,QWORD PTR [rip+0x210b0]        # 0x3d5e60
  3b4db0:	48 8d 15 89 6f 05 00 	lea    rdx,[rip+0x56f89]        # 0x40bd40
  3b4db7:	83 c8 02             	or     eax,0x2
  3b4dba:	45 33 c9             	xor    r9d,r9d
  3b4dbd:	89 05 6d 6f 05 00    	mov    DWORD PTR [rip+0x56f6d],eax        # 0x40bd30
  3b4dc3:	e8 5c 6f f1 ff       	call   0x2cbd24
  3b4dc8:	48 8b 0d 91 10 02 00 	mov    rcx,QWORD PTR [rip+0x21091]        # 0x3d5e60
  3b4dcf:	48 8d 15 6a 6f 05 00 	lea    rdx,[rip+0x56f6a]        # 0x40bd40
  3b4dd6:	4c 8b c7             	mov    r8,rdi
  3b4dd9:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  3b4dde:	48 83 c4 50          	add    rsp,0x50
  3b4de2:	5f                   	pop    rdi
  3b4de3:	e9 14 6c f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4de8..0x3b4e60
  3b4de8:	40 53                	rex push rbx
  3b4dea:	48 83 ec 20          	sub    rsp,0x20
  3b4dee:	8b 05 6c 6c 05 00    	mov    eax,DWORD PTR [rip+0x56c6c]        # 0x40ba60
  3b4df4:	48 8b d9             	mov    rbx,rcx
  3b4df7:	a8 01                	test   al,0x1
  3b4df9:	75 20                	jne    0x3b4e1b
  3b4dfb:	83 c8 01             	or     eax,0x1
  3b4dfe:	89 05 5c 6c 05 00    	mov    DWORD PTR [rip+0x56c5c],eax        # 0x40ba60
  3b4e04:	e8 d3 eb f7 ff       	call   0x3339dc
  3b4e09:	4c 8b c0             	mov    r8,rax
  3b4e0c:	48 89 05 45 6c 05 00 	mov    QWORD PTR [rip+0x56c45],rax        # 0x40ba58
  3b4e13:	8b 05 47 6c 05 00    	mov    eax,DWORD PTR [rip+0x56c47]        # 0x40ba60
  3b4e19:	eb 07                	jmp    0x3b4e22
  3b4e1b:	4c 8b 05 36 6c 05 00 	mov    r8,QWORD PTR [rip+0x56c36]        # 0x40ba58
  3b4e22:	a8 02                	test   al,0x2
  3b4e24:	75 1f                	jne    0x3b4e45
  3b4e26:	48 8b 0d 33 10 02 00 	mov    rcx,QWORD PTR [rip+0x21033]        # 0x3d5e60
  3b4e2d:	48 8d 15 3c 6c 05 00 	lea    rdx,[rip+0x56c3c]        # 0x40ba70
  3b4e34:	83 c8 02             	or     eax,0x2
  3b4e37:	45 33 c9             	xor    r9d,r9d
  3b4e3a:	89 05 20 6c 05 00    	mov    DWORD PTR [rip+0x56c20],eax        # 0x40ba60
  3b4e40:	e8 df 6e f1 ff       	call   0x2cbd24
  3b4e45:	48 8b 0d 14 10 02 00 	mov    rcx,QWORD PTR [rip+0x21014]        # 0x3d5e60
  3b4e4c:	48 8d 15 1d 6c 05 00 	lea    rdx,[rip+0x56c1d]        # 0x40ba70
  3b4e53:	4c 8b c3             	mov    r8,rbx
  3b4e56:	48 83 c4 20          	add    rsp,0x20
  3b4e5a:	5b                   	pop    rbx
  3b4e5b:	e9 9c 6b f1 ff       	jmp    0x2cb9fc
; pdata 0x3b4e60..0x3b4f86
  3b4e60:	4c 8b dc             	mov    r11,rsp
  3b4e63:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  3b4e67:	49 89 6b 10          	mov    QWORD PTR [r11+0x10],rbp
  3b4e6b:	56                   	push   rsi
  3b4e6c:	57                   	push   rdi
  3b4e6d:	41 56                	push   r14
  3b4e6f:	48 83 ec 60          	sub    rsp,0x60
  3b4e73:	8b 05 17 78 05 00    	mov    eax,DWORD PTR [rip+0x57817]        # 0x40c690
  3b4e79:	8b ea                	mov    ebp,edx
  3b4e7b:	4c 8b f1             	mov    r14,rcx
  3b4e7e:	a8 01                	test   al,0x1
  3b4e80:	0f 85 a9 00 00 00    	jne    0x3b4f2f
  3b4e86:	83 c8 01             	or     eax,0x1
  3b4e89:	49 8d 53 18          	lea    rdx,[r11+0x18]
  3b4e8d:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  3b4e91:	89 05 f9 77 05 00    	mov    DWORD PTR [rip+0x577f9],eax        # 0x40c690
  3b4e97:	e8 94 78 f1 ff       	call   0x2cc730
  3b4e9c:	48 8b c8             	mov    rcx,rax
  3b4e9f:	e8 00 8e f1 ff       	call   0x2cdca4
  3b4ea4:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  3b4ea9:	48 8b f0             	mov    rsi,rax
  3b4eac:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4eb3:	00 
  3b4eb4:	e8 1f c8 ff ff       	call   0x3b16d8
  3b4eb9:	48 8b c8             	mov    rcx,rax
  3b4ebc:	e8 7b e7 f2 ff       	call   0x2e363c
  3b4ec1:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  3b4ec6:	48 8b f8             	mov    rdi,rax
  3b4ec9:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4ed0:	00 
  3b4ed1:	e8 2a c6 ff ff       	call   0x3b1500
  3b4ed6:	48 8b c8             	mov    rcx,rax
  3b4ed9:	e8 2e 8f f1 ff       	call   0x2cde0c
  3b4ede:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3b4ee3:	48 8b d8             	mov    rbx,rax
  3b4ee6:	48 8d 8c 24 98 00 00 	lea    rcx,[rsp+0x98]
  3b4eed:	00 
  3b4eee:	e8 dd c2 ff ff       	call   0x3b11d0
  3b4ef3:	48 8b c8             	mov    rcx,rax
  3b4ef6:	e8 21 8e f1 ff       	call   0x2cdd1c
  3b4efb:	48 8b c8             	mov    rcx,rax
  3b4efe:	48 8b d3             	mov    rdx,rbx
  3b4f01:	e8 1e f3 f7 ff       	call   0x334224
  3b4f06:	41 83 c8 ff          	or     r8d,0xffffffff
  3b4f0a:	48 8b c8             	mov    rcx,rax
  3b4f0d:	4c 8b ce             	mov    r9,rsi
  3b4f10:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  3b4f15:	48 8b d7             	mov    rdx,rdi
  3b4f18:	e8 8f fa f7 ff       	call   0x3349ac
  3b4f1d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3b4f20:	8b 05 6a 77 05 00    	mov    eax,DWORD PTR [rip+0x5776a]        # 0x40c690
  3b4f26:	4c 89 05 5b 77 05 00 	mov    QWORD PTR [rip+0x5775b],r8        # 0x40c688
  3b4f2d:	eb 07                	jmp    0x3b4f36
  3b4f2f:	4c 8b 05 52 77 05 00 	mov    r8,QWORD PTR [rip+0x57752]        # 0x40c688
  3b4f36:	a8 02                	test   al,0x2
  3b4f38:	75 1f                	jne    0x3b4f59
  3b4f3a:	48 8b 0d 1f 0f 02 00 	mov    rcx,QWORD PTR [rip+0x20f1f]        # 0x3d5e60
  3b4f41:	48 8d 15 58 77 05 00 	lea    rdx,[rip+0x57758]        # 0x40c6a0
  3b4f48:	83 c8 02             	or     eax,0x2
  3b4f4b:	45 33 c9             	xor    r9d,r9d
  3b4f4e:	89 05 3c 77 05 00    	mov    DWORD PTR [rip+0x5773c],eax        # 0x40c690
  3b4f54:	e8 cb 6d f1 ff       	call   0x2cbd24
  3b4f59:	48 8b 0d 00 0f 02 00 	mov    rcx,QWORD PTR [rip+0x20f00]        # 0x3d5e60
  3b4f60:	48 8d 15 39 77 05 00 	lea    rdx,[rip+0x57739]        # 0x40c6a0
  3b4f67:	44 8b cd             	mov    r9d,ebp
  3b4f6a:	4d 8b c6             	mov    r8,r14
  3b4f6d:	4c 8d 5c 24 60       	lea    r11,[rsp+0x60]
  3b4f72:	49 8b 5b 20          	mov    rbx,QWORD PTR [r11+0x20]
  3b4f76:	49 8b 6b 28          	mov    rbp,QWORD PTR [r11+0x28]
  3b4f7a:	49 8b e3             	mov    rsp,r11
  3b4f7d:	41 5e                	pop    r14
  3b4f7f:	5f                   	pop    rdi
  3b4f80:	5e                   	pop    rsi
  3b4f81:	e9 42 62 f7 ff       	jmp    0x32b1c8
; pdata 0x3b4f94..0x3b530a
  3b4f94:	48 8b c4             	mov    rax,rsp
  3b4f97:	55                   	push   rbp
  3b4f98:	53                   	push   rbx
  3b4f99:	56                   	push   rsi
  3b4f9a:	57                   	push   rdi
  3b4f9b:	41 54                	push   r12
  3b4f9d:	41 55                	push   r13
  3b4f9f:	41 56                	push   r14
  3b4fa1:	41 57                	push   r15
  3b4fa3:	48 8d 68 a1          	lea    rbp,[rax-0x5f]
  3b4fa7:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  3b4fae:	48 8b 3d 73 0b 05 00 	mov    rdi,QWORD PTR [rip+0x50b73]        # 0x405b28
  3b4fb5:	0f 29 70 a8          	movaps XMMWORD PTR [rax-0x58],xmm6
  3b4fb9:	0f 29 78 98          	movaps XMMWORD PTR [rax-0x68],xmm7
  3b4fbd:	44 0f 29 40 88       	movaps XMMWORD PTR [rax-0x78],xmm8
  3b4fc2:	44 0f 29 88 78 ff ff 	movaps XMMWORD PTR [rax-0x88],xmm9
  3b4fc9:	ff 
  3b4fca:	44 0f 29 90 68 ff ff 	movaps XMMWORD PTR [rax-0x98],xmm10
  3b4fd1:	ff 
  3b4fd2:	44 0f 29 5c 24 70    	movaps XMMWORD PTR [rsp+0x70],xmm11
  3b4fd8:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
  3b4fdd:	e8 1e 82 fa ff       	call   0x35d200
  3b4fe2:	48 8b f0             	mov    rsi,rax
  3b4fe5:	4c 8b b0 a8 01 00 00 	mov    r14,QWORD PTR [rax+0x1a8]
  3b4fec:	e8 df 38 fe ff       	call   0x3988d0
  3b4ff1:	41 83 7e 10 01       	cmp    DWORD PTR [r14+0x10],0x1
  3b4ff6:	7e 15                	jle    0x3b500d
  3b4ff8:	e8 8f 37 fe ff       	call   0x39878c
  3b4ffd:	48 8b 96 98 02 00 00 	mov    rdx,QWORD PTR [rsi+0x298]
  3b5004:	49 8d 4e 70          	lea    rcx,[r14+0x70]
  3b5008:	e8 b7 15 ff ff       	call   0x3a65c4
  3b500d:	f3 0f 10 8e 04 01 00 	movss  xmm1,DWORD PTR [rsi+0x104]
  3b5014:	00 
  3b5015:	f3 41 0f 10 46 20    	movss  xmm0,DWORD PTR [r14+0x20]
  3b501b:	45 8b 66 04          	mov    r12d,DWORD PTR [r14+0x4]
  3b501f:	e8 d0 53 fd ff       	call   0x38a3f4
  3b5024:	0f 28 d0             	movaps xmm2,xmm0
  3b5027:	f3 41 0f 11 56 20    	movss  DWORD PTR [r14+0x20],xmm2
  3b502d:	f3 0f 11 96 04 01 00 	movss  DWORD PTR [rsi+0x104],xmm2
  3b5034:	00 
  3b5035:	41 f6 c4 10          	test   r12b,0x10
  3b5039:	75 0a                	jne    0x3b5045
  3b503b:	41 8b 46 28          	mov    eax,DWORD PTR [r14+0x28]
  3b503f:	89 86 18 01 00 00    	mov    DWORD PTR [rsi+0x118],eax
  3b5045:	32 c0                	xor    al,al
  3b5047:	88 45 67             	mov    BYTE PTR [rbp+0x67],al
  3b504a:	41 f6 c4 01          	test   r12b,0x1
  3b504e:	0f 85 1f 02 00 00    	jne    0x3b5273
  3b5054:	38 86 bb 00 00 00    	cmp    BYTE PTR [rsi+0xbb],al
  3b505a:	0f 85 13 02 00 00    	jne    0x3b5273
  3b5060:	f3 0f 10 8e 3c 02 00 	movss  xmm1,DWORD PTR [rsi+0x23c]
  3b5067:	00 
  3b5068:	f3 41 0f 10 46 24    	movss  xmm0,DWORD PTR [r14+0x24]
  3b506e:	e8 81 53 fd ff       	call   0x38a3f4
  3b5073:	f3 0f 10 8e 44 02 00 	movss  xmm1,DWORD PTR [rsi+0x244]
  3b507a:	00 
  3b507b:	44 0f 28 c8          	movaps xmm9,xmm0
  3b507f:	0f 28 c2             	movaps xmm0,xmm2
  3b5082:	e8 45 12 fc ff       	call   0x3762cc
  3b5087:	41 83 7e 10 01       	cmp    DWORD PTR [r14+0x10],0x1
  3b508c:	44 0f 28 d0          	movaps xmm10,xmm0
  3b5090:	0f 8e dd 01 00 00    	jle    0x3b5273
  3b5096:	f3 44 0f 10 05 b5 81 	movss  xmm8,DWORD PTR [rip+0xffffffffffed81b5]        # 0x28d254
  3b509d:	ed ff 
  3b509f:	49 8d 4e 60          	lea    rcx,[r14+0x60]
  3b50a3:	f3 44 0f 10 1d cc e0 	movss  xmm11,DWORD PTR [rip+0xffffffffffede0cc]        # 0x293178
  3b50aa:	ed ff 
  3b50ac:	41 83 cf ff          	or     r15d,0xffffffff
  3b50b0:	41 0f 28 f9          	movaps xmm7,xmm9
  3b50b4:	41 83 e4 02          	and    r12d,0x2
  3b50b8:	f3 41 0f 58 f8       	addss  xmm7,xmm8
  3b50bd:	45 8d 6f 02          	lea    r13d,[r15+0x2]
  3b50c1:	41 8b d5             	mov    edx,r13d
  3b50c4:	e8 df 6a fd ff       	call   0x38bba8
  3b50c9:	41 8b cd             	mov    ecx,r13d
  3b50cc:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  3b50d1:	e8 4a 02 00 00       	call   0x3b5320
  3b50d6:	41 8b 06             	mov    eax,DWORD PTR [r14]
  3b50d9:	48 8d 4d 87          	lea    rcx,[rbp-0x79]
  3b50dd:	0f 28 f0             	movaps xmm6,xmm0
  3b50e0:	41 03 c5             	add    eax,r13d
  3b50e3:	f3 0f 58 76 20       	addss  xmm6,DWORD PTR [rsi+0x20]
  3b50e8:	41 0f 28 d2          	movaps xmm2,xmm10
  3b50ec:	89 45 7f             	mov    DWORD PTR [rbp+0x7f],eax
  3b50ef:	0f 28 ce             	movaps xmm1,xmm6
  3b50f2:	f3 41 0f 58 cb       	addss  xmm1,xmm11
  3b50f7:	e8 44 72 f1 ff       	call   0x2cc340
  3b50fc:	0f 28 ce             	movaps xmm1,xmm6
  3b50ff:	48 8d 4d 8f          	lea    rcx,[rbp-0x71]
  3b5103:	f3 41 0f 5c cb       	subss  xmm1,xmm11
  3b5108:	41 0f 28 d1          	movaps xmm2,xmm9
  3b510c:	48 8b d8             	mov    rbx,rax
  3b510f:	e8 2c 72 f1 ff       	call   0x2cc340
  3b5114:	48 8b d0             	mov    rdx,rax
  3b5117:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b511b:	4c 8b c3             	mov    r8,rbx
  3b511e:	e8 65 62 f2 ff       	call   0x2db388
  3b5123:	8b 5d 7f             	mov    ebx,DWORD PTR [rbp+0x7f]
  3b5126:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b512a:	41 b9 08 00 00 00    	mov    r9d,0x8
  3b5130:	45 33 c0             	xor    r8d,r8d
  3b5133:	8b d3                	mov    edx,ebx
  3b5135:	e8 a2 f7 fd ff       	call   0x3948dc
  3b513a:	84 c0                	test   al,al
  3b513c:	0f 84 bc 00 00 00    	je     0x3b51fe
  3b5142:	32 c9                	xor    cl,cl
  3b5144:	32 c0                	xor    al,al
  3b5146:	88 4d 77             	mov    BYTE PTR [rbp+0x77],cl
  3b5149:	88 45 6f             	mov    BYTE PTR [rbp+0x6f],al
  3b514c:	45 85 e4             	test   r12d,r12d
  3b514f:	75 41                	jne    0x3b5192
  3b5151:	4c 8d 4d 6f          	lea    r9,[rbp+0x6f]
  3b5155:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
  3b515a:	4c 8d 45 77          	lea    r8,[rbp+0x77]
  3b515e:	8b d3                	mov    edx,ebx
  3b5160:	48 8d 4d a7          	lea    rcx,[rbp-0x59]
  3b5164:	e8 77 76 00 00       	call   0x3bc7e0
  3b5169:	8a 4d 77             	mov    cl,BYTE PTR [rbp+0x77]
  3b516c:	8a 45 6f             	mov    al,BYTE PTR [rbp+0x6f]
  3b516f:	84 c9                	test   cl,cl
  3b5171:	75 04                	jne    0x3b5177
  3b5173:	84 c0                	test   al,al
  3b5175:	74 1b                	je     0x3b5192
  3b5177:	c7 87 88 4a 00 00 04 	mov    DWORD PTR [rdi+0x4a88],0x4
  3b517e:	00 00 00 
  3b5181:	84 c0                	test   al,al
  3b5183:	74 0d                	je     0x3b5192
  3b5185:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  3b518a:	f6 42 08 02          	test   BYTE PTR [rdx+0x8],0x2
  3b518e:	45 0f 44 fd          	cmove  r15d,r13d
  3b5192:	f6 d9                	neg    cl
  3b5194:	ba 1e 00 00 00       	mov    edx,0x1e
  3b5199:	41 0f 28 c8          	movaps xmm1,xmm8
  3b519d:	1b c9                	sbb    ecx,ecx
  3b519f:	f7 d9                	neg    ecx
  3b51a1:	83 c1 1c             	add    ecx,0x1c
  3b51a4:	84 c0                	test   al,al
  3b51a6:	0f 45 ca             	cmovne ecx,edx
  3b51a9:	e8 ea d0 fd ff       	call   0x392298
  3b51ae:	f3 0f 2c ce          	cvttss2si ecx,xmm6
  3b51b2:	8b f8                	mov    edi,eax
  3b51b4:	41 0f 28 d2          	movaps xmm2,xmm10
  3b51b8:	66 0f 6e f1          	movd   xmm6,ecx
  3b51bc:	48 8d 4d 97          	lea    rcx,[rbp-0x69]
  3b51c0:	0f 5b f6             	cvtdq2ps xmm6,xmm6
  3b51c3:	0f 28 ce             	movaps xmm1,xmm6
  3b51c6:	e8 75 71 f1 ff       	call   0x2cc340
  3b51cb:	0f 28 d7             	movaps xmm2,xmm7
  3b51ce:	48 8d 4d 9f          	lea    rcx,[rbp-0x61]
  3b51d2:	0f 28 ce             	movaps xmm1,xmm6
  3b51d5:	48 8b d8             	mov    rbx,rax
  3b51d8:	e8 63 71 f1 ff       	call   0x2cc340
  3b51dd:	48 8b 8e 98 02 00 00 	mov    rcx,QWORD PTR [rsi+0x298]
  3b51e4:	48 8b d0             	mov    rdx,rax
  3b51e7:	44 8b cf             	mov    r9d,edi
  3b51ea:	f3 44 0f 11 44 24 20 	movss  DWORD PTR [rsp+0x20],xmm8
  3b51f1:	4c 8b c3             	mov    r8,rbx
  3b51f4:	e8 fb af fe ff       	call   0x3a01f4
  3b51f9:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  3b51fe:	41 8b 46 10          	mov    eax,DWORD PTR [r14+0x10]
  3b5202:	49 8d 4e 60          	lea    rcx,[r14+0x60]
  3b5206:	41 ff c5             	inc    r13d
  3b5209:	44 3b e8             	cmp    r13d,eax
  3b520c:	0f 8c af fe ff ff    	jl     0x3b50c1
  3b5212:	41 83 ff ff          	cmp    r15d,0xffffffff
  3b5216:	74 58                	je     0x3b5270
  3b5218:	41 80 7e 09 00       	cmp    BYTE PTR [r14+0x9],0x0
  3b521d:	75 32                	jne    0x3b5251
  3b521f:	33 ff                	xor    edi,edi
  3b5221:	ff c0                	inc    eax
  3b5223:	85 c0                	test   eax,eax
  3b5225:	7e 2a                	jle    0x3b5251
  3b5227:	8b d7                	mov    edx,edi
  3b5229:	49 8d 4e 60          	lea    rcx,[r14+0x60]
  3b522d:	e8 76 69 fd ff       	call   0x38bba8
  3b5232:	8b d7                	mov    edx,edi
  3b5234:	49 8d 4e 60          	lea    rcx,[r14+0x60]
  3b5238:	48 8b d8             	mov    rbx,rax
  3b523b:	e8 68 69 fd ff       	call   0x38bba8
  3b5240:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  3b5242:	ff c7                	inc    edi
  3b5244:	89 48 04             	mov    DWORD PTR [rax+0x4],ecx
  3b5247:	41 8b 46 10          	mov    eax,DWORD PTR [r14+0x10]
  3b524b:	ff c0                	inc    eax
  3b524d:	3b f8                	cmp    edi,eax
  3b524f:	7c d6                	jl     0x3b5227
  3b5251:	41 8b d7             	mov    edx,r15d
  3b5254:	c6 45 67 01          	mov    BYTE PTR [rbp+0x67],0x1
  3b5258:	49 8b ce             	mov    rcx,r14
  3b525b:	41 c6 46 09 01       	mov    BYTE PTR [r14+0x9],0x1
  3b5260:	e8 8b 01 00 00       	call   0x3b53f0
  3b5265:	0f 28 c8             	movaps xmm1,xmm0
  3b5268:	41 8b cf             	mov    ecx,r15d
  3b526b:	e8 e4 02 00 00       	call   0x3b5554
  3b5270:	8a 45 67             	mov    al,BYTE PTR [rbp+0x67]
  3b5273:	41 88 46 09          	mov    BYTE PTR [r14+0x9],al
  3b5277:	0f 10 86 28 02 00 00 	movups xmm0,XMMWORD PTR [rsi+0x228]
  3b527e:	f3 0f 7f 86 18 02 00 	movdqu XMMWORD PTR [rsi+0x218],xmm0
  3b5285:	00 
  3b5286:	41 0f 10 4e 4c       	movups xmm1,XMMWORD PTR [r14+0x4c]
  3b528b:	48 c7 86 a8 01 00 00 	mov    QWORD PTR [rsi+0x1a8],0x0
  3b5292:	00 00 00 00 
  3b5296:	f3 0f 10 86 44 01 00 	movss  xmm0,DWORD PTR [rsi+0x144]
  3b529d:	00 
  3b529e:	f3 0f 58 46 20       	addss  xmm0,DWORD PTR [rsi+0x20]
  3b52a3:	f3 0f 7f 8e 28 02 00 	movdqu XMMWORD PTR [rsi+0x228],xmm1
  3b52aa:	00 
  3b52ab:	c7 86 48 01 00 00 00 	mov    DWORD PTR [rsi+0x148],0x0
  3b52b2:	00 00 00 
  3b52b5:	f3 0f 58 05 8f 7f ed 	addss  xmm0,DWORD PTR [rip+0xffffffffffed7f8f]        # 0x28d24c
  3b52bc:	ff 
  3b52bd:	f3 0f 2c c0          	cvttss2si eax,xmm0
  3b52c1:	66 0f 6e c0          	movd   xmm0,eax
  3b52c5:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  3b52c8:	f3 0f 11 86 00 01 00 	movss  DWORD PTR [rsi+0x100],xmm0
  3b52cf:	00 
  3b52d0:	4c 8d 9c 24 d8 00 00 	lea    r11,[rsp+0xd8]
  3b52d7:	00 
  3b52d8:	41 0f 28 73 e8       	movaps xmm6,XMMWORD PTR [r11-0x18]
  3b52dd:	41 0f 28 7b d8       	movaps xmm7,XMMWORD PTR [r11-0x28]
  3b52e2:	45 0f 28 43 c8       	movaps xmm8,XMMWORD PTR [r11-0x38]
  3b52e7:	45 0f 28 4b b8       	movaps xmm9,XMMWORD PTR [r11-0x48]
  3b52ec:	45 0f 28 53 a8       	movaps xmm10,XMMWORD PTR [r11-0x58]
  3b52f1:	45 0f 28 5b 98       	movaps xmm11,XMMWORD PTR [r11-0x68]
  3b52f6:	49 8b e3             	mov    rsp,r11
  3b52f9:	41 5f                	pop    r15
  3b52fb:	41 5e                	pop    r14
  3b52fd:	41 5d                	pop    r13
  3b52ff:	41 5c                	pop    r12
  3b5301:	5f                   	pop    rdi
  3b5302:	5e                   	pop    rsi
  3b5303:	5b                   	pop    rbx
  3b5304:	5d                   	pop    rbp
  3b5305:	e9 e6 1d fe ff       	jmp    0x3970f0
