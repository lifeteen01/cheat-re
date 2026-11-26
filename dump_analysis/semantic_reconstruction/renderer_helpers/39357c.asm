
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039357c <.data+0x39357c>:
  39357c:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  393581:	48 89 54 24 10                                  	mov    QWORD PTR [rsp+0x10],rdx
  393586:	48 89 4c 24 08                                  	mov    QWORD PTR [rsp+0x8],rcx
  39358b:	48 83 ec 78                                     	sub    rsp,0x78
  39358f:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  393597:	0f b6 00                                        	movzx  eax,BYTE PTR [rax]
  39359a:	c1 f8 03                                        	sar    eax,0x3
  39359d:	48 98                                           	cdqe
  39359f:	48 8d 0d 0a 6a f1 ff                            	lea    rcx,[rip+0xfffffffffff16a0a]        # 0x2a9fb0
  3935a6:	0f be 04 01                                     	movsx  eax,BYTE PTR [rcx+rax*1]
  3935aa:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3935ae:	83 7c 24 28 00                                  	cmp    DWORD PTR [rsp+0x28],0x0
  3935b3:	74 0a                                           	je     0x3935bf
  3935b5:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [rsp+0x30],0x0
  3935bd:	eb 08                                           	jmp    0x3935c7
  3935bf:	c7 44 24 30 01 00 00 00                         	mov    DWORD PTR [rsp+0x30],0x1
  3935c7:	8b 44 24 30                                     	mov    eax,DWORD PTR [rsp+0x30]
  3935cb:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [rsp+0x28]
  3935cf:	03 c8                                           	add    ecx,eax
  3935d1:	8b c1                                           	mov    eax,ecx
  3935d3:	89 44 24 2c                                     	mov    DWORD PTR [rsp+0x2c],eax
  3935d7:	48 83 bc 24 90 00 00 00 00                      	cmp    QWORD PTR [rsp+0x90],0x0
  3935e0:	75 1b                                           	jne    0x3935fd
  3935e2:	48 63 44 24 2c                                  	movsxd rax,DWORD PTR [rsp+0x2c]
  3935e7:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3935ef:	48 03 c8                                        	add    rcx,rax
  3935f2:	48 8b c1                                        	mov    rax,rcx
  3935f5:	48 89 84 24 90 00 00 00                         	mov    QWORD PTR [rsp+0x90],rax
  3935fd:	48 8b 84 24 90 00 00 00                         	mov    rax,QWORD PTR [rsp+0x90]
  393605:	48 39 84 24 88 00 00 00                         	cmp    QWORD PTR [rsp+0x88],rax
  39360d:	73 1b                                           	jae    0x39362a
  39360f:	b8 01 00 00 00                                  	mov    eax,0x1
  393614:	48 6b c0 00                                     	imul   rax,rax,0x0
  393618:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  393620:	0f be 04 01                                     	movsx  eax,BYTE PTR [rcx+rax*1]
  393624:	89 44 24 34                                     	mov    DWORD PTR [rsp+0x34],eax
  393628:	eb 08                                           	jmp    0x393632
  39362a:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [rsp+0x34],0x0
  393632:	b8 01 00 00 00                                  	mov    eax,0x1
  393637:	48 6b c0 00                                     	imul   rax,rax,0x0
  39363b:	8a 4c 24 34                                     	mov    cl,BYTE PTR [rsp+0x34]
  39363f:	88 4c 04 24                                     	mov    BYTE PTR [rsp+rax*1+0x24],cl
  393643:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  39364b:	48 ff c0                                        	inc    rax
  39364e:	48 3b 84 24 90 00 00 00                         	cmp    rax,QWORD PTR [rsp+0x90]
  393656:	73 1b                                           	jae    0x393673
  393658:	b8 01 00 00 00                                  	mov    eax,0x1
  39365d:	48 6b c0 01                                     	imul   rax,rax,0x1
  393661:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  393669:	0f be 04 01                                     	movsx  eax,BYTE PTR [rcx+rax*1]
  39366d:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  393671:	eb 08                                           	jmp    0x39367b
  393673:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [rsp+0x38],0x0
  39367b:	b8 01 00 00 00                                  	mov    eax,0x1
  393680:	48 6b c0 01                                     	imul   rax,rax,0x1
  393684:	8a 4c 24 38                                     	mov    cl,BYTE PTR [rsp+0x38]
  393688:	88 4c 04 24                                     	mov    BYTE PTR [rsp+rax*1+0x24],cl
  39368c:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  393694:	48 83 c0 02                                     	add    rax,0x2
  393698:	48 3b 84 24 90 00 00 00                         	cmp    rax,QWORD PTR [rsp+0x90]
  3936a0:	73 1b                                           	jae    0x3936bd
  3936a2:	b8 01 00 00 00                                  	mov    eax,0x1
  3936a7:	48 6b c0 02                                     	imul   rax,rax,0x2
  3936ab:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3936b3:	0f be 04 01                                     	movsx  eax,BYTE PTR [rcx+rax*1]
  3936b7:	89 44 24 3c                                     	mov    DWORD PTR [rsp+0x3c],eax
  3936bb:	eb 08                                           	jmp    0x3936c5
  3936bd:	c7 44 24 3c 00 00 00 00                         	mov    DWORD PTR [rsp+0x3c],0x0
  3936c5:	b8 01 00 00 00                                  	mov    eax,0x1
  3936ca:	48 6b c0 02                                     	imul   rax,rax,0x2
  3936ce:	8a 4c 24 3c                                     	mov    cl,BYTE PTR [rsp+0x3c]
  3936d2:	88 4c 04 24                                     	mov    BYTE PTR [rsp+rax*1+0x24],cl
  3936d6:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3936de:	48 83 c0 03                                     	add    rax,0x3
  3936e2:	48 3b 84 24 90 00 00 00                         	cmp    rax,QWORD PTR [rsp+0x90]
  3936ea:	73 1b                                           	jae    0x393707
  3936ec:	b8 01 00 00 00                                  	mov    eax,0x1
  3936f1:	48 6b c0 03                                     	imul   rax,rax,0x3
  3936f5:	48 8b 8c 24 88 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x88]
  3936fd:	0f be 04 01                                     	movsx  eax,BYTE PTR [rcx+rax*1]
  393701:	89 44 24 40                                     	mov    DWORD PTR [rsp+0x40],eax
  393705:	eb 08                                           	jmp    0x39370f
  393707:	c7 44 24 40 00 00 00 00                         	mov    DWORD PTR [rsp+0x40],0x0
  39370f:	b8 01 00 00 00                                  	mov    eax,0x1
  393714:	48 6b c0 03                                     	imul   rax,rax,0x3
  393718:	8a 4c 24 40                                     	mov    cl,BYTE PTR [rsp+0x40]
  39371c:	88 4c 04 24                                     	mov    BYTE PTR [rsp+rax*1+0x24],cl
  393720:	b8 01 00 00 00                                  	mov    eax,0x1
  393725:	48 6b c0 00                                     	imul   rax,rax,0x0
  393729:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  39372e:	48 63 4c 24 28                                  	movsxd rcx,DWORD PTR [rsp+0x28]
  393733:	48 8d 15 96 68 f1 ff                            	lea    rdx,[rip+0xfffffffffff16896]        # 0x2a9fd0
  39373a:	23 04 8a                                        	and    eax,DWORD PTR [rdx+rcx*4]
  39373d:	c1 e0 12                                        	shl    eax,0x12
  393740:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  393748:	89 01                                           	mov    DWORD PTR [rcx],eax
  39374a:	b8 01 00 00 00                                  	mov    eax,0x1
  39374f:	48 6b c0 01                                     	imul   rax,rax,0x1
  393753:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  393758:	83 e0 3f                                        	and    eax,0x3f
  39375b:	c1 e0 0c                                        	shl    eax,0xc
  39375e:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  393766:	8b 09                                           	mov    ecx,DWORD PTR [rcx]
  393768:	0b c8                                           	or     ecx,eax
  39376a:	8b c1                                           	mov    eax,ecx
  39376c:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  393774:	89 01                                           	mov    DWORD PTR [rcx],eax
  393776:	b8 01 00 00 00                                  	mov    eax,0x1
  39377b:	48 6b c0 02                                     	imul   rax,rax,0x2
  39377f:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  393784:	83 e0 3f                                        	and    eax,0x3f
  393787:	c1 e0 06                                        	shl    eax,0x6
  39378a:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  393792:	8b 09                                           	mov    ecx,DWORD PTR [rcx]
  393794:	0b c8                                           	or     ecx,eax
  393796:	8b c1                                           	mov    eax,ecx
  393798:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  3937a0:	89 01                                           	mov    DWORD PTR [rcx],eax
  3937a2:	b8 01 00 00 00                                  	mov    eax,0x1
  3937a7:	48 6b c0 03                                     	imul   rax,rax,0x3
  3937ab:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  3937b0:	83 e0 3f                                        	and    eax,0x3f
  3937b3:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  3937bb:	8b 09                                           	mov    ecx,DWORD PTR [rcx]
  3937bd:	0b c8                                           	or     ecx,eax
  3937bf:	8b c1                                           	mov    eax,ecx
  3937c1:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  3937c9:	89 01                                           	mov    DWORD PTR [rcx],eax
  3937cb:	48 63 44 24 28                                  	movsxd rax,DWORD PTR [rsp+0x28]
  3937d0:	48 8d 0d 29 68 f1 ff                            	lea    rcx,[rip+0xfffffffffff16829]        # 0x2aa000
  3937d7:	8b 04 81                                        	mov    eax,DWORD PTR [rcx+rax*4]
  3937da:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  3937e2:	48 89 4c 24 60                                  	mov    QWORD PTR [rsp+0x60],rcx
  3937e7:	8a c8                                           	mov    cl,al
  3937e9:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
  3937ee:	8b 00                                           	mov    eax,DWORD PTR [rax]
  3937f0:	d3 e8                                           	shr    eax,cl
  3937f2:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  3937fa:	89 01                                           	mov    DWORD PTR [rcx],eax
  3937fc:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  393804:	48 63 44 24 28                                  	movsxd rax,DWORD PTR [rsp+0x28]
  393809:	48 8d 0d d8 67 f1 ff                            	lea    rcx,[rip+0xfffffffffff167d8]        # 0x2a9fe8
  393810:	48 8b 94 24 80 00 00 00                         	mov    rdx,QWORD PTR [rsp+0x80]
  393818:	8b 04 81                                        	mov    eax,DWORD PTR [rcx+rax*4]
  39381b:	39 02                                           	cmp    DWORD PTR [rdx],eax
  39381d:	73 0a                                           	jae    0x393829
  39381f:	c7 44 24 44 01 00 00 00                         	mov    DWORD PTR [rsp+0x44],0x1
  393827:	eb 08                                           	jmp    0x393831
  393829:	c7 44 24 44 00 00 00 00                         	mov    DWORD PTR [rsp+0x44],0x0
  393831:	8b 44 24 44                                     	mov    eax,DWORD PTR [rsp+0x44]
  393835:	c1 e0 06                                        	shl    eax,0x6
  393838:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  39383c:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  393844:	8b 00                                           	mov    eax,DWORD PTR [rax]
  393846:	c1 e8 0b                                        	shr    eax,0xb
  393849:	83 f8 1b                                        	cmp    eax,0x1b
  39384c:	75 0a                                           	jne    0x393858
  39384e:	c7 44 24 48 01 00 00 00                         	mov    DWORD PTR [rsp+0x48],0x1
  393856:	eb 08                                           	jmp    0x393860
  393858:	c7 44 24 48 00 00 00 00                         	mov    DWORD PTR [rsp+0x48],0x0
  393860:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  393864:	c1 e0 07                                        	shl    eax,0x7
  393867:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [rsp+0x20]
  39386b:	0b c8                                           	or     ecx,eax
  39386d:	8b c1                                           	mov    eax,ecx
  39386f:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  393873:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  39387b:	81 38 ff ff 00 00                               	cmp    DWORD PTR [rax],0xffff
  393881:	76 0a                                           	jbe    0x39388d
  393883:	c7 44 24 4c 01 00 00 00                         	mov    DWORD PTR [rsp+0x4c],0x1
  39388b:	eb 08                                           	jmp    0x393895
  39388d:	c7 44 24 4c 00 00 00 00                         	mov    DWORD PTR [rsp+0x4c],0x0
  393895:	8b 44 24 4c                                     	mov    eax,DWORD PTR [rsp+0x4c]
  393899:	c1 e0 08                                        	shl    eax,0x8
  39389c:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [rsp+0x20]
  3938a0:	0b c8                                           	or     ecx,eax
  3938a2:	8b c1                                           	mov    eax,ecx
  3938a4:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3938a8:	b8 01 00 00 00                                  	mov    eax,0x1
  3938ad:	48 6b c0 01                                     	imul   rax,rax,0x1
  3938b1:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  3938b6:	25 c0 00 00 00                                  	and    eax,0xc0
  3938bb:	c1 f8 02                                        	sar    eax,0x2
  3938be:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [rsp+0x20]
  3938c2:	0b c8                                           	or     ecx,eax
  3938c4:	8b c1                                           	mov    eax,ecx
  3938c6:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3938ca:	b8 01 00 00 00                                  	mov    eax,0x1
  3938cf:	48 6b c0 02                                     	imul   rax,rax,0x2
  3938d3:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  3938d8:	25 c0 00 00 00                                  	and    eax,0xc0
  3938dd:	c1 f8 04                                        	sar    eax,0x4
  3938e0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [rsp+0x20]
  3938e4:	0b c8                                           	or     ecx,eax
  3938e6:	8b c1                                           	mov    eax,ecx
  3938e8:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3938ec:	b8 01 00 00 00                                  	mov    eax,0x1
  3938f1:	48 6b c0 03                                     	imul   rax,rax,0x3
  3938f5:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  3938fa:	c1 f8 06                                        	sar    eax,0x6
  3938fd:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [rsp+0x20]
  393901:	0b c8                                           	or     ecx,eax
  393903:	8b c1                                           	mov    eax,ecx
  393905:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  393909:	8b 44 24 20                                     	mov    eax,DWORD PTR [rsp+0x20]
  39390d:	83 f0 2a                                        	xor    eax,0x2a
  393910:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  393914:	48 63 44 24 28                                  	movsxd rax,DWORD PTR [rsp+0x28]
  393919:	48 8d 0d f8 66 f1 ff                            	lea    rcx,[rip+0xfffffffffff166f8]        # 0x2aa018
  393920:	8b 04 81                                        	mov    eax,DWORD PTR [rcx+rax*4]
  393923:	8a c8                                           	mov    cl,al
  393925:	8b 44 24 20                                     	mov    eax,DWORD PTR [rsp+0x20]
  393929:	d3 f8                                           	sar    eax,cl
  39392b:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  39392f:	83 7c 24 20 00                                  	cmp    DWORD PTR [rsp+0x20],0x0
  393934:	0f 84 c1 00 00 00                               	je     0x3939fb
  39393a:	b8 01 00 00 00                                  	mov    eax,0x1
  39393f:	48 6b c0 00                                     	imul   rax,rax,0x0
  393943:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  393948:	85 c0                                           	test   eax,eax
  39394a:	74 0a                                           	je     0x393956
  39394c:	c7 44 24 54 01 00 00 00                         	mov    DWORD PTR [rsp+0x54],0x1
  393954:	eb 08                                           	jmp    0x39395e
  393956:	c7 44 24 54 00 00 00 00                         	mov    DWORD PTR [rsp+0x54],0x0
  39395e:	b8 01 00 00 00                                  	mov    eax,0x1
  393963:	48 6b c0 01                                     	imul   rax,rax,0x1
  393967:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  39396c:	85 c0                                           	test   eax,eax
  39396e:	74 0a                                           	je     0x39397a
  393970:	c7 44 24 50 01 00 00 00                         	mov    DWORD PTR [rsp+0x50],0x1
  393978:	eb 08                                           	jmp    0x393982
  39397a:	c7 44 24 50 00 00 00 00                         	mov    DWORD PTR [rsp+0x50],0x0
  393982:	b8 01 00 00 00                                  	mov    eax,0x1
  393987:	48 6b c0 02                                     	imul   rax,rax,0x2
  39398b:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  393990:	85 c0                                           	test   eax,eax
  393992:	74 0a                                           	je     0x39399e
  393994:	c7 44 24 58 01 00 00 00                         	mov    DWORD PTR [rsp+0x58],0x1
  39399c:	eb 08                                           	jmp    0x3939a6
  39399e:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [rsp+0x58],0x0
  3939a6:	b8 01 00 00 00                                  	mov    eax,0x1
  3939ab:	48 6b c0 03                                     	imul   rax,rax,0x3
  3939af:	0f b6 44 04 24                                  	movzx  eax,BYTE PTR [rsp+rax*1+0x24]
  3939b4:	85 c0                                           	test   eax,eax
  3939b6:	74 0a                                           	je     0x3939c2
  3939b8:	c7 44 24 5c 01 00 00 00                         	mov    DWORD PTR [rsp+0x5c],0x1
  3939c0:	eb 08                                           	jmp    0x3939ca
  3939c2:	c7 44 24 5c 00 00 00 00                         	mov    DWORD PTR [rsp+0x5c],0x0
  3939ca:	8b 44 24 50                                     	mov    eax,DWORD PTR [rsp+0x50]
  3939ce:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [rsp+0x54]
  3939d2:	03 c8                                           	add    ecx,eax
  3939d4:	8b c1                                           	mov    eax,ecx
  3939d6:	03 44 24 58                                     	add    eax,DWORD PTR [rsp+0x58]
  3939da:	03 44 24 5c                                     	add    eax,DWORD PTR [rsp+0x5c]
  3939de:	8b d0                                           	mov    edx,eax
  3939e0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [rsp+0x2c]
  3939e4:	e8 b3 c7 fe ff                                  	call   0x38019c
  3939e9:	89 44 24 2c                                     	mov    DWORD PTR [rsp+0x2c],eax
  3939ed:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  3939f5:	c7 00 fd ff 00 00                               	mov    DWORD PTR [rax],0xfffd
  3939fb:	8b 44 24 2c                                     	mov    eax,DWORD PTR [rsp+0x2c]
  3939ff:	48 83 c4 78                                     	add    rsp,0x78
  393a03:	c3                                              	ret
