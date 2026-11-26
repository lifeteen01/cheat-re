
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d65dc.bin:     file format binary


Disassembly of section .data:

00000000002d65dc <.data>:
  2d65dc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d65e1:	55                   	push   rbp
  2d65e2:	56                   	push   rsi
  2d65e3:	57                   	push   rdi
  2d65e4:	48 83 ec 40          	sub    rsp,0x40
  2d65e8:	8b 05 f2 05 10 00    	mov    eax,DWORD PTR [rip+0x1005f2]        # 0x3d6be0
  2d65ee:	48 8b f2             	mov    rsi,rdx
  2d65f1:	48 8b e9             	mov    rbp,rcx
  2d65f4:	a8 01                	test   al,0x1
  2d65f6:	0f 85 83 00 00 00    	jne    0x2d667f
  2d65fc:	83 c8 01             	or     eax,0x1
  2d65ff:	48 8d 54 24 2a       	lea    rdx,[rsp+0x2a]
  2d6604:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2d6609:	89 05 d1 05 10 00    	mov    DWORD PTR [rip+0x1005d1],eax        # 0x3d6be0
  2d660f:	e8 18 ee ff ff       	call   0x2d542c
  2d6614:	48 8b c8             	mov    rcx,rax
  2d6617:	e8 88 1f 00 00       	call   0x2d85a4
  2d661c:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2d6621:	48 8b f8             	mov    rdi,rax
  2d6624:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2d6629:	e8 a6 ec ff ff       	call   0x2d52d4
  2d662e:	48 8b c8             	mov    rcx,rax
  2d6631:	e8 0e 77 ff ff       	call   0x2cdd44
  2d6636:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  2d663b:	48 8b d8             	mov    rbx,rax
  2d663e:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2d6643:	e8 b4 ea ff ff       	call   0x2d50fc
  2d6648:	48 8b c8             	mov    rcx,rax
  2d664b:	e8 7c 76 ff ff       	call   0x2cdccc
  2d6650:	48 8b c8             	mov    rcx,rax
  2d6653:	48 8b d3             	mov    rdx,rbx
  2d6656:	e8 c9 db 05 00       	call   0x334224
  2d665b:	45 33 c9             	xor    r9d,r9d
  2d665e:	48 8b c8             	mov    rcx,rax
  2d6661:	48 8b d7             	mov    rdx,rdi
  2d6664:	45 8d 41 02          	lea    r8d,[r9+0x2]
  2d6668:	e8 23 e4 05 00       	call   0x334a90
  2d666d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2d6670:	8b 05 6a 05 10 00    	mov    eax,DWORD PTR [rip+0x10056a]        # 0x3d6be0
  2d6676:	4c 89 05 5b 05 10 00 	mov    QWORD PTR [rip+0x10055b],r8        # 0x3d6bd8
  2d667d:	eb 07                	jmp    0x2d6686
  2d667f:	4c 8b 05 52 05 10 00 	mov    r8,QWORD PTR [rip+0x100552]        # 0x3d6bd8
  2d6686:	a8 02                	test   al,0x2
  2d6688:	75 1f                	jne    0x2d66a9
  2d668a:	48 8b 0d cf f7 0f 00 	mov    rcx,QWORD PTR [rip+0xff7cf]        # 0x3d5e60
  2d6691:	48 8d 15 58 05 10 00 	lea    rdx,[rip+0x100558]        # 0x3d6bf0
  2d6698:	83 c8 02             	or     eax,0x2
  2d669b:	45 33 c9             	xor    r9d,r9d
  2d669e:	89 05 3c 05 10 00    	mov    DWORD PTR [rip+0x10053c],eax        # 0x3d6be0
  2d66a4:	e8 7b 56 ff ff       	call   0x2cbd24
  2d66a9:	48 8b cd             	mov    rcx,rbp
  2d66ac:	e8 2b 7f ff ff       	call   0x2ce5dc
  2d66b1:	48 8b 0d a8 f7 0f 00 	mov    rcx,QWORD PTR [rip+0xff7a8]        # 0x3d5e60
  2d66b8:	48 8d 15 31 05 10 00 	lea    rdx,[rip+0x100531]        # 0x3d6bf0
  2d66bf:	4c 8b ce             	mov    r9,rsi
  2d66c2:	4c 8b c0             	mov    r8,rax
  2d66c5:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  2d66ca:	48 83 c4 40          	add    rsp,0x40
  2d66ce:	5f                   	pop    rdi
  2d66cf:	5e                   	pop    rsi
  2d66d0:	5d                   	pop    rbp
  2d66d1:	e9 be b9 ff ff       	jmp    0x2d2094
