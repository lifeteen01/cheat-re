
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_runtime_wrappers/3738cc.bin:     file format binary


Disassembly of section .data:

00000000003738cc <.data>:
  3738cc:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  3738d1:	55                   	push   rbp
  3738d2:	56                   	push   rsi
  3738d3:	57                   	push   rdi
  3738d4:	48 83 ec 40          	sub    rsp,0x40
  3738d8:	8b 05 a2 de 08 00    	mov    eax,DWORD PTR [rip+0x8dea2]        # 0x401780
  3738de:	48 8b ea             	mov    rbp,rdx
  3738e1:	48 8b f1             	mov    rsi,rcx
  3738e4:	a8 01                	test   al,0x1
  3738e6:	0f 85 85 00 00 00    	jne    0x373971
  3738ec:	83 c8 01             	or     eax,0x1
  3738ef:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3738f4:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  3738f9:	89 05 81 de 08 00    	mov    DWORD PTR [rip+0x8de81],eax        # 0x401780
  3738ff:	e8 b4 ff ff ff       	call   0x3738b8
  373904:	48 8b c8             	mov    rcx,rax
  373907:	e8 2c 98 f6 ff       	call   0x2dd138
  37390c:	48 8d 54 24 2b       	lea    rdx,[rsp+0x2b]
  373911:	48 8b f8             	mov    rdi,rax
  373914:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  373919:	e8 7e ff ff ff       	call   0x37389c
  37391e:	48 8b c8             	mov    rcx,rax
  373921:	e8 e6 a4 f5 ff       	call   0x2cde0c
  373926:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  37392b:	48 8b d8             	mov    rbx,rax
  37392e:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  373933:	e8 48 ff ff ff       	call   0x373880
  373938:	48 8b c8             	mov    rcx,rax
  37393b:	e8 8c 4c f6 ff       	call   0x2d85cc
  373940:	48 8b c8             	mov    rcx,rax
  373943:	48 8b d3             	mov    rdx,rbx
  373946:	e8 d9 08 fc ff       	call   0x334224
  37394b:	48 8b c8             	mov    rcx,rax
  37394e:	41 b1 01             	mov    r9b,0x1
  373951:	41 b8 01 00 00 00    	mov    r8d,0x1
  373957:	48 8b d7             	mov    rdx,rdi
  37395a:	e8 31 11 fc ff       	call   0x334a90
  37395f:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  373962:	8b 05 18 de 08 00    	mov    eax,DWORD PTR [rip+0x8de18]        # 0x401780
  373968:	4c 89 05 09 de 08 00 	mov    QWORD PTR [rip+0x8de09],r8        # 0x401778
  37396f:	eb 07                	jmp    0x373978
  373971:	4c 8b 05 00 de 08 00 	mov    r8,QWORD PTR [rip+0x8de00]        # 0x401778
  373978:	a8 02                	test   al,0x2
  37397a:	75 1f                	jne    0x37399b
  37397c:	48 8b 0d dd 24 06 00 	mov    rcx,QWORD PTR [rip+0x624dd]        # 0x3d5e60
  373983:	48 8d 15 06 de 08 00 	lea    rdx,[rip+0x8de06]        # 0x401790
  37398a:	83 c8 02             	or     eax,0x2
  37398d:	45 33 c9             	xor    r9d,r9d
  373990:	89 05 ea dd 08 00    	mov    DWORD PTR [rip+0x8ddea],eax        # 0x401780
  373996:	e8 89 83 f5 ff       	call   0x2cbd24
  37399b:	48 8b 0d be 24 06 00 	mov    rcx,QWORD PTR [rip+0x624be]        # 0x3d5e60
  3739a2:	48 8d 15 e7 dd 08 00 	lea    rdx,[rip+0x8dde7]        # 0x401790
  3739a9:	4c 8b cd             	mov    r9,rbp
  3739ac:	4c 8b c6             	mov    r8,rsi
  3739af:	e8 e0 e6 f5 ff       	call   0x2d2094
  3739b4:	48 8b 5c 24 68       	mov    rbx,QWORD PTR [rsp+0x68]
  3739b9:	48 8b c6             	mov    rax,rsi
  3739bc:	48 83 c4 40          	add    rsp,0x40
  3739c0:	5f                   	pop    rdi
  3739c1:	5e                   	pop    rsi
  3739c2:	5d                   	pop    rbp
  3739c3:	c3                   	ret
