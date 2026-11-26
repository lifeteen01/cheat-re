
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368a84 <.data+0x368a84>:
  368a84:	40 53                	rex push rbx
  368a86:	48 83 ec 20          	sub    rsp,0x20
  368a8a:	48 8b d9             	mov    rbx,rcx
  368a8d:	e8 76 24 f6 ff       	call   0x2caf08
  368a92:	84 c0                	test   al,al
  368a94:	75 08                	jne    0x368a9e
  368a96:	33 c0                	xor    eax,eax
  368a98:	48 83 c4 20          	add    rsp,0x20
  368a9c:	5b                   	pop    rbx
  368a9d:	c3                   	ret
  368a9e:	8b 0d bc 60 09 00    	mov    ecx,DWORD PTR [rip+0x960bc]        # 0x3feb60
  368aa4:	f6 c1 01             	test   cl,0x1
  368aa7:	75 20                	jne    0x368ac9
  368aa9:	4c 8b 05 50 e4 06 00 	mov    r8,QWORD PTR [rip+0x6e450]        # 0x3d6f00
  368ab0:	83 c9 01             	or     ecx,0x1
  368ab3:	49 81 c0 00 3e f8 03 	add    r8,0x3f83e00
  368aba:	89 0d a0 60 09 00    	mov    DWORD PTR [rip+0x960a0],ecx        # 0x3feb60
  368ac0:	4c 89 05 91 60 09 00 	mov    QWORD PTR [rip+0x96091],r8        # 0x3feb58
  368ac7:	eb 07                	jmp    0x368ad0
  368ac9:	4c 8b 05 88 60 09 00 	mov    r8,QWORD PTR [rip+0x96088]        # 0x3feb58
  368ad0:	f6 c1 02             	test   cl,0x2
  368ad3:	75 1f                	jne    0x368af4
  368ad5:	83 c9 02             	or     ecx,0x2
  368ad8:	48 8d 15 91 60 09 00 	lea    rdx,[rip+0x96091]        # 0x3feb70
  368adf:	89 0d 7b 60 09 00    	mov    DWORD PTR [rip+0x9607b],ecx        # 0x3feb60
  368ae5:	45 33 c9             	xor    r9d,r9d
  368ae8:	48 8b 0d 71 d3 06 00 	mov    rcx,QWORD PTR [rip+0x6d371]        # 0x3d5e60
  368aef:	e8 30 32 f6 ff       	call   0x2cbd24
  368af4:	48 8b 0d 65 d3 06 00 	mov    rcx,QWORD PTR [rip+0x6d365]        # 0x3d5e60
  368afb:	48 8d 15 6e 60 09 00 	lea    rdx,[rip+0x9606e]        # 0x3feb70
  368b02:	4c 8b c3             	mov    r8,rbx
  368b05:	48 83 c4 20          	add    rsp,0x20
  368b09:	5b                   	pop    rbx
  368b0a:	e9 ed 2e f6 ff       	jmp    0x2cb9fc
  368b0f:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037154c <.data+0x37154c>:
  37154c:	40 53                	rex push rbx
  37154e:	48 83 ec 20          	sub    rsp,0x20
  371552:	48 8b d9             	mov    rbx,rcx
  371555:	e8 ae 99 f5 ff       	call   0x2caf08
  37155a:	84 c0                	test   al,al
  37155c:	75 08                	jne    0x371566
  37155e:	33 c0                	xor    eax,eax
  371560:	48 83 c4 20          	add    rsp,0x20
  371564:	5b                   	pop    rbx
  371565:	c3                   	ret
  371566:	8b 0d e4 f5 08 00    	mov    ecx,DWORD PTR [rip+0x8f5e4]        # 0x400b50
  37156c:	f6 c1 01             	test   cl,0x1
  37156f:	75 20                	jne    0x371591
  371571:	4c 8b 05 88 59 06 00 	mov    r8,QWORD PTR [rip+0x65988]        # 0x3d6f00
  371578:	83 c9 01             	or     ecx,0x1
  37157b:	49 81 c0 60 63 4d 04 	add    r8,0x44d6360
  371582:	89 0d c8 f5 08 00    	mov    DWORD PTR [rip+0x8f5c8],ecx        # 0x400b50
  371588:	4c 89 05 b9 f5 08 00 	mov    QWORD PTR [rip+0x8f5b9],r8        # 0x400b48
  37158f:	eb 07                	jmp    0x371598
  371591:	4c 8b 05 b0 f5 08 00 	mov    r8,QWORD PTR [rip+0x8f5b0]        # 0x400b48
  371598:	f6 c1 02             	test   cl,0x2
  37159b:	75 1f                	jne    0x3715bc
  37159d:	83 c9 02             	or     ecx,0x2
  3715a0:	48 8d 15 b9 f5 08 00 	lea    rdx,[rip+0x8f5b9]        # 0x400b60
  3715a7:	89 0d a3 f5 08 00    	mov    DWORD PTR [rip+0x8f5a3],ecx        # 0x400b50
  3715ad:	45 33 c9             	xor    r9d,r9d
  3715b0:	48 8b 0d a9 48 06 00 	mov    rcx,QWORD PTR [rip+0x648a9]        # 0x3d5e60
  3715b7:	e8 68 a7 f5 ff       	call   0x2cbd24
  3715bc:	48 8b 0d 9d 48 06 00 	mov    rcx,QWORD PTR [rip+0x6489d]        # 0x3d5e60
  3715c3:	48 8d 15 96 f5 08 00 	lea    rdx,[rip+0x8f596]        # 0x400b60
  3715ca:	4c 8b c3             	mov    r8,rbx
  3715cd:	48 83 c4 20          	add    rsp,0x20
  3715d1:	5b                   	pop    rbx
  3715d2:	e9 25 a4 f5 ff       	jmp    0x2cb9fc
  3715d7:	cc                   	int3
  3715d8:	48 83 ec 28          	sub    rsp,0x28
  3715dc:	4c 8b c1             	mov    r8,rcx
  3715df:	e8 24 99 f5 ff       	call   0x2caf08
  3715e4:	84 c0                	test   al,al
  3715e6:	75 04                	jne    0x3715ec
  3715e8:	33 c0                	xor    eax,eax
  3715ea:	eb 10                	jmp    0x3715fc
  3715ec:	ba 10 00 00 00       	mov    edx,0x10
  3715f1:	49 8b c8             	mov    rcx,r8
  3715f4:	e8 43 d8 f6 ff       	call   0x2dee3c
  3715f9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  3715fc:	48 83 c4 28          	add    rsp,0x28
  371600:	c3                   	ret
  371601:	cc                   	int3
  371602:	cc                   	int3
  371603:	cc                   	int3
  371604:	48 83 ec 28          	sub    rsp,0x28
  371608:	4c 8b c1             	mov    r8,rcx
  37160b:	e8 f8 98 f5 ff       	call   0x2caf08
  371610:	84 c0                	test   al,al
  371612:	75 05                	jne    0x371619
  371614:	83 c8 ff             	or     eax,0xffffffff
  371617:	eb 0f                	jmp    0x371628
  371619:	ba 88 00 00 00       	mov    edx,0x88
  37161e:	49 8b c8             	mov    rcx,r8
  371621:	e8 16 d8 f6 ff       	call   0x2dee3c
  371626:	8b 00                	mov    eax,DWORD PTR [rax]
  371628:	48 83 c4 28          	add    rsp,0x28
  37162c:	c3                   	ret
  37162d:	cc                   	int3
  37162e:	cc                   	int3
  37162f:	cc                   	int3
  371630:	40 53                	rex push rbx
  371632:	48 83 ec 50          	sub    rsp,0x50
  371636:	48 8b d1             	mov    rdx,rcx
  371639:	e8 ca 98 f5 ff       	call   0x2caf08
  37163e:	84 c0                	test   al,al
  371640:	74 3b                	je     0x37167d
  371642:	48 8b ca             	mov    rcx,rdx
  371645:	e8 02 ff ff ff       	call   0x37154c
  37164a:	48 8b c8             	mov    rcx,rax
  37164d:	48 8b d8             	mov    rbx,rax
  371650:	e8 b3 98 f5 ff       	call   0x2caf08
  371655:	84 c0                	test   al,al
  371657:	74 24                	je     0x37167d
  371659:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  37165e:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  371663:	e8 b0 fb ff ff       	call   0x371218
  371668:	48 8b c8             	mov    rcx,rax
  37166b:	e8 9c 0a fb ff       	call   0x32210c
  371670:	48 8b d0             	mov    rdx,rax
  371673:	48 8b cb             	mov    rcx,rbx
  371676:	e8 71 ed ff ff       	call   0x3703ec
  37167b:	eb 02                	jmp    0x37167f
  37167d:	33 c0                	xor    eax,eax
  37167f:	48 83 c4 50          	add    rsp,0x50
  371683:	5b                   	pop    rbx
  371684:	c3                   	ret
  371685:	cc                   	int3


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036b938 <.data+0x36b938>:
  36b938:	40 53                	rex push rbx
  36b93a:	48 83 ec 50          	sub    rsp,0x50
  36b93e:	48 8b d1             	mov    rdx,rcx
  36b941:	e8 c2 f5 f5 ff       	call   0x2caf08
  36b946:	84 c0                	test   al,al
  36b948:	74 4b                	je     0x36b995
  36b94a:	48 8b ca             	mov    rcx,rdx
  36b94d:	e8 62 0a 00 00       	call   0x36c3b4
  36b952:	48 8b c8             	mov    rcx,rax
  36b955:	48 8b d0             	mov    rdx,rax
  36b958:	e8 ab f5 f5 ff       	call   0x2caf08
  36b95d:	84 c0                	test   al,al
  36b95f:	74 34                	je     0x36b995
  36b961:	48 8b 5a 20          	mov    rbx,QWORD PTR [rdx+0x20]
  36b965:	48 8b cb             	mov    rcx,rbx
  36b968:	e8 9b f5 f5 ff       	call   0x2caf08
  36b96d:	84 c0                	test   al,al
  36b96f:	74 24                	je     0x36b995
  36b971:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  36b976:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  36b97b:	e8 00 fa ff ff       	call   0x36b380
  36b980:	48 8b c8             	mov    rcx,rax
  36b983:	e8 84 67 fb ff       	call   0x32210c
  36b988:	48 8b d0             	mov    rdx,rax
  36b98b:	48 8b cb             	mov    rcx,rbx
  36b98e:	e8 59 4a 00 00       	call   0x3703ec
  36b993:	eb 02                	jmp    0x36b997
  36b995:	33 c0                	xor    eax,eax
  36b997:	48 83 c4 50          	add    rsp,0x50
  36b99b:	5b                   	pop    rbx
  36b99c:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000372abc <.data+0x372abc>:
  372abc:	40 53                	rex push rbx
  372abe:	48 83 ec 40          	sub    rsp,0x40
  372ac2:	48 8b d1             	mov    rdx,rcx
  372ac5:	e8 3e 84 f5 ff       	call   0x2caf08
  372aca:	84 c0                	test   al,al
  372acc:	74 59                	je     0x372b27
  372ace:	4c 8b 42 20          	mov    r8,QWORD PTR [rdx+0x20]
  372ad2:	49 8b c8             	mov    rcx,r8
  372ad5:	e8 2e 84 f5 ff       	call   0x2caf08
  372ada:	84 c0                	test   al,al
  372adc:	74 49                	je     0x372b27
  372ade:	49 8b 48 10          	mov    rcx,QWORD PTR [r8+0x10]
  372ae2:	e8 21 84 f5 ff       	call   0x2caf08
  372ae7:	84 c0                	test   al,al
  372ae9:	74 3c                	je     0x372b27
  372aeb:	49 8b 48 10          	mov    rcx,QWORD PTR [r8+0x10]
  372aef:	e8 60 fc ff ff       	call   0x372754
  372af4:	48 8b c8             	mov    rcx,rax
  372af7:	48 8b d8             	mov    rbx,rax
  372afa:	e8 09 84 f5 ff       	call   0x2caf08
  372aff:	84 c0                	test   al,al
  372b01:	74 24                	je     0x372b27
  372b03:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  372b08:	48 8d 4c 24 58       	lea    rcx,[rsp+0x58]
  372b0d:	e8 62 fb ff ff       	call   0x372674
  372b12:	48 8b c8             	mov    rcx,rax
  372b15:	e8 6a da fa ff       	call   0x320584
  372b1a:	48 8b d0             	mov    rdx,rax
  372b1d:	48 8b cb             	mov    rcx,rbx
  372b20:	e8 13 db ff ff       	call   0x370638
  372b25:	eb 02                	jmp    0x372b29
  372b27:	33 c0                	xor    eax,eax
  372b29:	48 83 c4 40          	add    rsp,0x40
  372b2d:	5b                   	pop    rbx
  372b2e:	c3                   	ret
  372b2f:	cc                   	int3
  372b30:	40 53                	rex push rbx
  372b32:	48 83 ec 50          	sub    rsp,0x50
  372b36:	48 8b d1             	mov    rdx,rcx
  372b39:	e8 ca 83 f5 ff       	call   0x2caf08
  372b3e:	84 c0                	test   al,al
  372b40:	74 59                	je     0x372b9b
  372b42:	4c 8b 42 20          	mov    r8,QWORD PTR [rdx+0x20]
  372b46:	49 8b c8             	mov    rcx,r8
  372b49:	e8 ba 83 f5 ff       	call   0x2caf08
  372b4e:	84 c0                	test   al,al
  372b50:	74 49                	je     0x372b9b
  372b52:	49 8b 48 10          	mov    rcx,QWORD PTR [r8+0x10]
  372b56:	e8 ad 83 f5 ff       	call   0x2caf08
  372b5b:	84 c0                	test   al,al
  372b5d:	74 3c                	je     0x372b9b
  372b5f:	49 8b 48 10          	mov    rcx,QWORD PTR [r8+0x10]
  372b63:	e8 ec fb ff ff       	call   0x372754
  372b68:	48 8b c8             	mov    rcx,rax
  372b6b:	48 8b d8             	mov    rbx,rax
  372b6e:	e8 95 83 f5 ff       	call   0x2caf08
  372b73:	84 c0                	test   al,al
  372b75:	74 24                	je     0x372b9b
  372b77:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  372b7c:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  372b81:	e8 0a fb ff ff       	call   0x372690
  372b86:	48 8b c8             	mov    rcx,rax
  372b89:	e8 f6 f6 fb ff       	call   0x332284
  372b8e:	48 8b d0             	mov    rdx,rax
  372b91:	48 8b cb             	mov    rcx,rbx
  372b94:	e8 9f da ff ff       	call   0x370638
  372b99:	eb 02                	jmp    0x372b9d
  372b9b:	33 c0                	xor    eax,eax
  372b9d:	48 83 c4 50          	add    rsp,0x50
  372ba1:	5b                   	pop    rbx
  372ba2:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369324 <.data+0x369324>:
  369324:	40 53                	rex push rbx
  369326:	48 83 ec 20          	sub    rsp,0x20
  36932a:	48 8b d9             	mov    rbx,rcx
  36932d:	e8 d6 1b f6 ff       	call   0x2caf08
  369332:	84 c0                	test   al,al
  369334:	75 08                	jne    0x36933e
  369336:	33 c0                	xor    eax,eax
  369338:	48 83 c4 20          	add    rsp,0x20
  36933c:	5b                   	pop    rbx
  36933d:	c3                   	ret
  36933e:	8b 0d 3c 56 09 00    	mov    ecx,DWORD PTR [rip+0x9563c]        # 0x3fe980
  369344:	f6 c1 01             	test   cl,0x1
  369347:	75 20                	jne    0x369369
  369349:	4c 8b 05 b0 db 06 00 	mov    r8,QWORD PTR [rip+0x6dbb0]        # 0x3d6f00
  369350:	83 c9 01             	or     ecx,0x1
  369353:	49 81 c0 30 08 ee 03 	add    r8,0x3ee0830
  36935a:	89 0d 20 56 09 00    	mov    DWORD PTR [rip+0x95620],ecx        # 0x3fe980
  369360:	4c 89 05 11 56 09 00 	mov    QWORD PTR [rip+0x95611],r8        # 0x3fe978
  369367:	eb 07                	jmp    0x369370
  369369:	4c 8b 05 08 56 09 00 	mov    r8,QWORD PTR [rip+0x95608]        # 0x3fe978
  369370:	f6 c1 02             	test   cl,0x2
  369373:	75 1f                	jne    0x369394
  369375:	83 c9 02             	or     ecx,0x2
  369378:	48 8d 15 11 56 09 00 	lea    rdx,[rip+0x95611]        # 0x3fe990
  36937f:	89 0d fb 55 09 00    	mov    DWORD PTR [rip+0x955fb],ecx        # 0x3fe980
  369385:	45 33 c9             	xor    r9d,r9d
  369388:	48 8b 0d d1 ca 06 00 	mov    rcx,QWORD PTR [rip+0x6cad1]        # 0x3d5e60
  36938f:	e8 90 29 f6 ff       	call   0x2cbd24
  369394:	48 8b 0d c5 ca 06 00 	mov    rcx,QWORD PTR [rip+0x6cac5]        # 0x3d5e60
  36939b:	48 8d 15 ee 55 09 00 	lea    rdx,[rip+0x955ee]        # 0x3fe990
  3693a2:	4c 8b c3             	mov    r8,rbx
  3693a5:	48 83 c4 20          	add    rsp,0x20
  3693a9:	5b                   	pop    rbx
  3693aa:	e9 4d 26 f6 ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000037224c <.data+0x37224c>:
  37224c:	48 83 ec 28          	sub    rsp,0x28
  372250:	48 8b d1             	mov    rdx,rcx
  372253:	e8 b0 8c f5 ff       	call   0x2caf08
  372258:	84 c0                	test   al,al
  37225a:	74 15                	je     0x372271
  37225c:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
  372260:	48 8b ca             	mov    rcx,rdx
  372263:	e8 a0 8c f5 ff       	call   0x2caf08
  372268:	84 c0                	test   al,al
  37226a:	74 05                	je     0x372271
  37226c:	8b 42 18             	mov    eax,DWORD PTR [rdx+0x18]
  37226f:	eb 02                	jmp    0x372273
  372271:	33 c0                	xor    eax,eax
  372273:	48 83 c4 28          	add    rsp,0x28
  372277:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003722f0 <.data+0x3722f0>:
  3722f0:	48 83 ec 28          	sub    rsp,0x28
  3722f4:	44 8b c2             	mov    r8d,edx
  3722f7:	48 8b d1             	mov    rdx,rcx
  3722fa:	e8 09 8c f5 ff       	call   0x2caf08
  3722ff:	84 c0                	test   al,al
  372301:	74 2f                	je     0x372332
  372303:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
  372307:	48 8b ca             	mov    rcx,rdx
  37230a:	e8 f9 8b f5 ff       	call   0x2caf08
  37230f:	84 c0                	test   al,al
  372311:	74 1f                	je     0x372332
  372313:	48 8b 52 10          	mov    rdx,QWORD PTR [rdx+0x10]
  372317:	48 8b ca             	mov    rcx,rdx
  37231a:	e8 e9 8b f5 ff       	call   0x2caf08
  37231f:	84 c0                	test   al,al
  372321:	74 0f                	je     0x372332
  372323:	42 8d 0c c5 00 00 00 	lea    ecx,[r8*8+0x0]
  37232a:	00 
  37232b:	48 8b 44 11 20       	mov    rax,QWORD PTR [rcx+rdx*1+0x20]
  372330:	eb 02                	jmp    0x372334
  372332:	33 c0                	xor    eax,eax
  372334:	48 83 c4 28          	add    rsp,0x28
  372338:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000371c38 <.data+0x371c38>:
  371c38:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  371c3d:	55                   	push   rbp
  371c3e:	56                   	push   rsi
  371c3f:	57                   	push   rdi
  371c40:	48 83 ec 50          	sub    rsp,0x50
  371c44:	48 8b d1             	mov    rdx,rcx
  371c47:	e8 bc 92 f5 ff       	call   0x2caf08
  371c4c:	84 c0                	test   al,al
  371c4e:	0f 84 40 01 00 00    	je     0x371d94
  371c54:	48 8b ca             	mov    rcx,rdx
  371c57:	e8 7c f9 ff ff       	call   0x3715d8
  371c5c:	48 8b c8             	mov    rcx,rax
  371c5f:	48 8b d0             	mov    rdx,rax
  371c62:	e8 a1 92 f5 ff       	call   0x2caf08
  371c67:	84 c0                	test   al,al
  371c69:	0f 84 25 01 00 00    	je     0x371d94
  371c6f:	48 8b 6a 50          	mov    rbp,QWORD PTR [rdx+0x50]
  371c73:	48 8b cd             	mov    rcx,rbp
  371c76:	e8 8d 92 f5 ff       	call   0x2caf08
  371c7b:	84 c0                	test   al,al
  371c7d:	0f 84 11 01 00 00    	je     0x371d94
  371c83:	8b 05 b7 ef 08 00    	mov    eax,DWORD PTR [rip+0x8efb7]        # 0x400c40
  371c89:	a8 01                	test   al,0x1
  371c8b:	0f 85 ae 00 00 00    	jne    0x371d3f
  371c91:	83 c8 01             	or     eax,0x1
  371c94:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  371c99:	48 8d 4c 24 78       	lea    rcx,[rsp+0x78]
  371c9e:	89 05 9c ef 08 00    	mov    DWORD PTR [rip+0x8ef9c],eax        # 0x400c40
  371ca4:	e8 87 aa f5 ff       	call   0x2cc730
  371ca9:	48 8b c8             	mov    rcx,rax
  371cac:	e8 f3 bf f5 ff       	call   0x2cdca4
  371cb1:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  371cb6:	48 8b f0             	mov    rsi,rax
  371cb9:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  371cc0:	00 
  371cc1:	e8 b2 f5 ff ff       	call   0x371278
  371cc6:	48 8b c8             	mov    rcx,rax
  371cc9:	e8 66 c1 f5 ff       	call   0x2cde34
  371cce:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  371cd3:	48 8b f8             	mov    rdi,rax
  371cd6:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  371cdd:	00 
  371cde:	e8 79 f5 ff ff       	call   0x37125c
  371ce3:	48 8b c8             	mov    rcx,rax
  371ce6:	e8 49 c1 f5 ff       	call   0x2cde34
  371ceb:	48 8d 94 24 88 00 00 	lea    rdx,[rsp+0x88]
  371cf2:	00 
  371cf3:	48 8b d8             	mov    rbx,rax
  371cf6:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
  371cfd:	00 
  371cfe:	e8 39 f5 ff ff       	call   0x37123c
  371d03:	48 8b c8             	mov    rcx,rax
  371d06:	e8 e9 bf f5 ff       	call   0x2cdcf4
  371d0b:	48 8b c8             	mov    rcx,rax
  371d0e:	48 8b d3             	mov    rdx,rbx
  371d11:	e8 0e 25 fc ff       	call   0x334224
  371d16:	41 83 c8 ff          	or     r8d,0xffffffff
  371d1a:	48 8b c8             	mov    rcx,rax
  371d1d:	4c 8b ce             	mov    r9,rsi
  371d20:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
  371d25:	48 8b d7             	mov    rdx,rdi
  371d28:	e8 7f 2c fc ff       	call   0x3349ac
  371d2d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  371d30:	8b 05 0a ef 08 00    	mov    eax,DWORD PTR [rip+0x8ef0a]        # 0x400c40
  371d36:	4c 89 05 fb ee 08 00 	mov    QWORD PTR [rip+0x8eefb],r8        # 0x400c38
  371d3d:	eb 07                	jmp    0x371d46
  371d3f:	4c 8b 05 f2 ee 08 00 	mov    r8,QWORD PTR [rip+0x8eef2]        # 0x400c38
  371d46:	a8 02                	test   al,0x2
  371d48:	75 1f                	jne    0x371d69
  371d4a:	48 8b 0d 0f 41 06 00 	mov    rcx,QWORD PTR [rip+0x6410f]        # 0x3d5e60
  371d51:	48 8d 15 f8 ee 08 00 	lea    rdx,[rip+0x8eef8]        # 0x400c50
  371d58:	83 c8 02             	or     eax,0x2
  371d5b:	45 33 c9             	xor    r9d,r9d
  371d5e:	89 05 dc ee 08 00    	mov    DWORD PTR [rip+0x8eedc],eax        # 0x400c40
  371d64:	e8 bb 9f f5 ff       	call   0x2cbd24
  371d69:	48 8b 0d f0 40 06 00 	mov    rcx,QWORD PTR [rip+0x640f0]        # 0x3d5e60
  371d70:	48 8d 15 d9 ee 08 00 	lea    rdx,[rip+0x8eed9]        # 0x400c50
  371d77:	4c 8b c5             	mov    r8,rbp
  371d7a:	e8 7d 9c f5 ff       	call   0x2cb9fc
  371d7f:	48 8b c8             	mov    rcx,rax
  371d82:	48 8b d0             	mov    rdx,rax
  371d85:	e8 7e 91 f5 ff       	call   0x2caf08
  371d8a:	f6 d8                	neg    al
  371d8c:	48 1b c0             	sbb    rax,rax
  371d8f:	48 23 c2             	and    rax,rdx
  371d92:	eb 02                	jmp    0x371d96
  371d94:	33 c0                	xor    eax,eax
  371d96:	48 8b 5c 24 70       	mov    rbx,QWORD PTR [rsp+0x70]
  371d9b:	48 83 c4 50          	add    rsp,0x50
  371d9f:	5f                   	pop    rdi
  371da0:	5e                   	pop    rsi
  371da1:	5d                   	pop    rbp
  371da2:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368100 <.data+0x368100>:
  368100:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  368105:	57                   	push   rdi
  368106:	48 83 ec 50          	sub    rsp,0x50
  36810a:	48 8b fa             	mov    rdi,rdx
  36810d:	4c 8b c1             	mov    r8,rcx
  368110:	e8 f3 2d f6 ff       	call   0x2caf08
  368115:	84 c0                	test   al,al
  368117:	75 0a                	jne    0x368123
  368119:	48 8b ca             	mov    rcx,rdx
  36811c:	e8 9b fa 05 00       	call   0x3c7bbc
  368121:	eb 49                	jmp    0x36816c
  368123:	48 8d 54 24 3c       	lea    rdx,[rsp+0x3c]
  368128:	49 8b c8             	mov    rcx,r8
  36812b:	e8 dc 10 00 00       	call   0x36920c
  368130:	f3 0f 10 1d 1c 51 f2 	movss  xmm3,DWORD PTR [rip+0xfffffffffff2511c]        # 0x28d254
  368137:	ff 
  368138:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  36813d:	0f 57 d2             	xorps  xmm2,xmm2
  368140:	0f 57 c9             	xorps  xmm1,xmm1
  368143:	48 8b d8             	mov    rbx,rax
  368146:	e8 5d fa 05 00       	call   0x3c7ba8
  36814b:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  368150:	48 8b d7             	mov    rdx,rdi
  368153:	8b 48 08             	mov    ecx,DWORD PTR [rax+0x8]
  368156:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
  36815a:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  36815e:	48 8b cb             	mov    rcx,rbx
  368161:	f2 0f 11 44 24 20    	movsd  QWORD PTR [rsp+0x20],xmm0
  368167:	e8 c8 76 f8 ff       	call   0x2ef834
  36816c:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  368171:	48 8b c7             	mov    rax,rdi
  368174:	48 83 c4 50          	add    rsp,0x50
  368178:	5f                   	pop    rdi
  368179:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369164 <.data+0x369164>:
  369164:	40 53                	rex push rbx
  369166:	48 83 ec 20          	sub    rsp,0x20
  36916a:	48 8b da             	mov    rbx,rdx
  36916d:	4c 8b c1             	mov    r8,rcx
  369170:	e8 93 1d f6 ff       	call   0x2caf08
  369175:	84 c0                	test   al,al
  369177:	74 34                	je     0x3691ad
  369179:	80 3d c8 ec 08 00 00 	cmp    BYTE PTR [rip+0x8ecc8],0x0        # 0x3f7e48
  369180:	49 8b c8             	mov    rcx,r8
  369183:	74 07                	je     0x36918c
  369185:	e8 c2 00 00 00       	call   0x36924c
  36918a:	eb 29                	jmp    0x3691b5
  36918c:	e8 07 01 00 00       	call   0x369298
  369191:	48 8b c8             	mov    rcx,rax
  369194:	4c 8b c0             	mov    r8,rax
  369197:	e8 6c 1d f6 ff       	call   0x2caf08
  36919c:	84 c0                	test   al,al
  36919e:	74 0d                	je     0x3691ad
  3691a0:	48 8b d3             	mov    rdx,rbx
  3691a3:	49 8b c8             	mov    rcx,r8
  3691a6:	e8 bd a8 00 00       	call   0x373a68
  3691ab:	eb 08                	jmp    0x3691b5
  3691ad:	48 8b cb             	mov    rcx,rbx
  3691b0:	e8 07 ea 05 00       	call   0x3c7bbc
  3691b5:	48 8b c3             	mov    rax,rbx
  3691b8:	48 83 c4 20          	add    rsp,0x20
  3691bc:	5b                   	pop    rbx
  3691bd:	c3                   	ret
  3691be:	cc                   	int3
  3691bf:	cc                   	int3
  3691c0:	40 53                	rex push rbx
  3691c2:	48 83 ec 20          	sub    rsp,0x20
  3691c6:	48 8b da             	mov    rbx,rdx
  3691c9:	48 8b d1             	mov    rdx,rcx
  3691cc:	e8 37 1d f6 ff       	call   0x2caf08
  3691d1:	84 c0                	test   al,al
  3691d3:	74 24                	je     0x3691f9
  3691d5:	48 8b ca             	mov    rcx,rdx
  3691d8:	e8 bb 00 00 00       	call   0x369298
  3691dd:	48 8b c8             	mov    rcx,rax
  3691e0:	4c 8b c0             	mov    r8,rax
  3691e3:	e8 20 1d f6 ff       	call   0x2caf08
  3691e8:	84 c0                	test   al,al
  3691ea:	74 0d                	je     0x3691f9
  3691ec:	48 8b d3             	mov    rdx,rbx
  3691ef:	49 8b c8             	mov    rcx,r8
  3691f2:	e8 71 a8 00 00       	call   0x373a68
  3691f7:	eb 08                	jmp    0x369201
  3691f9:	48 8b cb             	mov    rcx,rbx
  3691fc:	e8 bb e9 05 00       	call   0x3c7bbc
  369201:	48 8b c3             	mov    rax,rbx
  369204:	48 83 c4 20          	add    rsp,0x20
  369208:	5b                   	pop    rbx
  369209:	c3                   	ret
  36920a:	cc                   	int3
  36920b:	cc                   	int3
  36920c:	40 53                	rex push rbx
  36920e:	48 83 ec 20          	sub    rsp,0x20
  369212:	48 8b da             	mov    rbx,rdx
  369215:	48 8b d1             	mov    rdx,rcx
  369218:	e8 eb 1c f6 ff       	call   0x2caf08
  36921d:	84 c0                	test   al,al
  36921f:	74 22                	je     0x369243
  369221:	48 8b ca             	mov    rcx,rdx
  369224:	e8 6f 00 00 00       	call   0x369298
  369229:	48 8b c8             	mov    rcx,rax
  36922c:	4c 8b c0             	mov    r8,rax
  36922f:	e8 d4 1c f6 ff       	call   0x2caf08
  369234:	84 c0                	test   al,al
  369236:	74 0b                	je     0x369243
  369238:	48 8b d3             	mov    rdx,rbx
  36923b:	49 8b c8             	mov    rcx,r8
  36923e:	e8 81 a7 00 00       	call   0x3739c4
  369243:	48 8b c3             	mov    rax,rbx
  369246:	48 83 c4 20          	add    rsp,0x20
  36924a:	5b                   	pop    rbx
  36924b:	c3                   	ret
  36924c:	40 53                	rex push rbx
  36924e:	48 83 ec 20          	sub    rsp,0x20
  369252:	48 8b da             	mov    rbx,rdx
  369255:	48 8b d1             	mov    rdx,rcx
  369258:	e8 ab 1c f6 ff       	call   0x2caf08
  36925d:	84 c0                	test   al,al
  36925f:	74 24                	je     0x369285
  369261:	48 8b 92 e8 04 00 00 	mov    rdx,QWORD PTR [rdx+0x4e8]
  369268:	48 8b ca             	mov    rcx,rdx
  36926b:	e8 98 1c f6 ff       	call   0x2caf08
  369270:	84 c0                	test   al,al
  369272:	74 11                	je     0x369285
  369274:	f2 0f 10 42 18       	movsd  xmm0,QWORD PTR [rdx+0x18]
  369279:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  36927d:	8b 42 20             	mov    eax,DWORD PTR [rdx+0x20]
  369280:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  369283:	eb 08                	jmp    0x36928d
  369285:	48 8b cb             	mov    rcx,rbx
  369288:	e8 2f e9 05 00       	call   0x3c7bbc
  36928d:	48 8b c3             	mov    rax,rbx
  369290:	48 83 c4 20          	add    rsp,0x20
  369294:	5b                   	pop    rbx
  369295:	c3                   	ret
  369296:	cc                   	int3
  369297:	cc                   	int3
  369298:	40 53                	rex push rbx
  36929a:	48 83 ec 20          	sub    rsp,0x20
  36929e:	48 8b d9             	mov    rbx,rcx
  3692a1:	e8 62 1c f6 ff       	call   0x2caf08
  3692a6:	84 c0                	test   al,al
  3692a8:	75 08                	jne    0x3692b2
  3692aa:	33 c0                	xor    eax,eax
  3692ac:	48 83 c4 20          	add    rsp,0x20
  3692b0:	5b                   	pop    rbx
  3692b1:	c3                   	ret
  3692b2:	8b 0d b8 57 09 00    	mov    ecx,DWORD PTR [rip+0x957b8]        # 0x3fea70
  3692b8:	f6 c1 01             	test   cl,0x1
  3692bb:	75 20                	jne    0x3692dd
  3692bd:	4c 8b 05 3c dc 06 00 	mov    r8,QWORD PTR [rip+0x6dc3c]        # 0x3d6f00
  3692c4:	83 c9 01             	or     ecx,0x1
  3692c7:	49 81 c0 60 c7 f1 03 	add    r8,0x3f1c760
  3692ce:	89 0d 9c 57 09 00    	mov    DWORD PTR [rip+0x9579c],ecx        # 0x3fea70
  3692d4:	4c 89 05 8d 57 09 00 	mov    QWORD PTR [rip+0x9578d],r8        # 0x3fea68
  3692db:	eb 07                	jmp    0x3692e4
  3692dd:	4c 8b 05 84 57 09 00 	mov    r8,QWORD PTR [rip+0x95784]        # 0x3fea68
  3692e4:	f6 c1 02             	test   cl,0x2
  3692e7:	75 1f                	jne    0x369308
  3692e9:	83 c9 02             	or     ecx,0x2
  3692ec:	48 8d 15 8d 57 09 00 	lea    rdx,[rip+0x9578d]        # 0x3fea80
  3692f3:	89 0d 77 57 09 00    	mov    DWORD PTR [rip+0x95777],ecx        # 0x3fea70
  3692f9:	45 33 c9             	xor    r9d,r9d
  3692fc:	48 8b 0d 5d cb 06 00 	mov    rcx,QWORD PTR [rip+0x6cb5d]        # 0x3d5e60
  369303:	e8 1c 2a f6 ff       	call   0x2cbd24
  369308:	48 8b 0d 51 cb 06 00 	mov    rcx,QWORD PTR [rip+0x6cb51]        # 0x3d5e60
  36930f:	48 8d 15 6a 57 09 00 	lea    rdx,[rip+0x9576a]        # 0x3fea80
  369316:	4c 8b c3             	mov    r8,rbx
  369319:	48 83 c4 20          	add    rsp,0x20
  36931d:	5b                   	pop    rbx
  36931e:	e9 d9 26 f6 ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000369c1c <.data+0x369c1c>:
  369c1c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  369c21:	57                   	push   rdi
  369c22:	48 83 ec 30          	sub    rsp,0x30
  369c26:	48 8b da             	mov    rbx,rdx
  369c29:	48 8b f9             	mov    rdi,rcx
  369c2c:	e8 d7 12 f6 ff       	call   0x2caf08
  369c31:	84 c0                	test   al,al
  369c33:	75 0d                	jne    0x369c42
  369c35:	48 8b ca             	mov    rcx,rdx
  369c38:	e8 7f df 05 00       	call   0x3c7bbc
  369c3d:	e9 8c 00 00 00       	jmp    0x369cce
  369c42:	8b 0d 48 4c 09 00    	mov    ecx,DWORD PTR [rip+0x94c48]        # 0x3fe890
  369c48:	f6 c1 01             	test   cl,0x1
  369c4b:	75 20                	jne    0x369c6d
  369c4d:	4c 8b 05 ac d2 06 00 	mov    r8,QWORD PTR [rip+0x6d2ac]        # 0x3d6f00
  369c54:	83 c9 01             	or     ecx,0x1
  369c57:	49 81 c0 80 51 93 03 	add    r8,0x3935180
  369c5e:	89 0d 2c 4c 09 00    	mov    DWORD PTR [rip+0x94c2c],ecx        # 0x3fe890
  369c64:	4c 89 05 1d 4c 09 00 	mov    QWORD PTR [rip+0x94c1d],r8        # 0x3fe888
  369c6b:	eb 07                	jmp    0x369c74
  369c6d:	4c 8b 05 14 4c 09 00 	mov    r8,QWORD PTR [rip+0x94c14]        # 0x3fe888
  369c74:	f6 c1 02             	test   cl,0x2
  369c77:	75 1f                	jne    0x369c98
  369c79:	83 c9 02             	or     ecx,0x2
  369c7c:	48 8d 15 1d 4c 09 00 	lea    rdx,[rip+0x94c1d]        # 0x3fe8a0
  369c83:	89 0d 07 4c 09 00    	mov    DWORD PTR [rip+0x94c07],ecx        # 0x3fe890
  369c89:	45 33 c9             	xor    r9d,r9d
  369c8c:	48 8b 0d cd c1 06 00 	mov    rcx,QWORD PTR [rip+0x6c1cd]        # 0x3d5e60
  369c93:	e8 8c 20 f6 ff       	call   0x2cbd24
  369c98:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  369c9d:	e8 1a df 05 00       	call   0x3c7bbc
  369ca2:	48 8b 0d b7 c1 06 00 	mov    rcx,QWORD PTR [rip+0x6c1b7]        # 0x3d5e60
  369ca9:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  369cae:	4c 8b cf             	mov    r9,rdi
  369cb1:	48 8d 15 e8 4b 09 00 	lea    rdx,[rip+0x94be8]        # 0x3fe8a0
  369cb8:	e8 d7 83 f6 ff       	call   0x2d2094
  369cbd:	f2 0f 10 44 24 20    	movsd  xmm0,QWORD PTR [rsp+0x20]
  369cc3:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  369cc7:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  369ccb:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  369cce:	48 8b c3             	mov    rax,rbx
  369cd1:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  369cd6:	48 83 c4 30          	add    rsp,0x30
  369cda:	5f                   	pop    rdi
  369cdb:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000368b9c <.data+0x368b9c>:
  368b9c:	40 53                	rex push rbx
  368b9e:	48 83 ec 20          	sub    rsp,0x20
  368ba2:	48 8b da             	mov    rbx,rdx
  368ba5:	48 8b d1             	mov    rdx,rcx
  368ba8:	e8 5b 23 f6 ff       	call   0x2caf08
  368bad:	84 c0                	test   al,al
  368baf:	74 24                	je     0x368bd5
  368bb1:	48 8b 92 e8 04 00 00 	mov    rdx,QWORD PTR [rdx+0x4e8]
  368bb8:	48 8b ca             	mov    rcx,rdx
  368bbb:	e8 48 23 f6 ff       	call   0x2caf08
  368bc0:	84 c0                	test   al,al
  368bc2:	74 11                	je     0x368bd5
  368bc4:	f2 0f 10 42 30       	movsd  xmm0,QWORD PTR [rdx+0x30]
  368bc9:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  368bcd:	8b 42 38             	mov    eax,DWORD PTR [rdx+0x38]
  368bd0:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  368bd3:	eb 08                	jmp    0x368bdd
  368bd5:	48 8b cb             	mov    rcx,rbx
  368bd8:	e8 df ef 05 00       	call   0x3c7bbc
  368bdd:	48 8b c3             	mov    rax,rbx
  368be0:	48 83 c4 20          	add    rsp,0x20
  368be4:	5b                   	pop    rbx
  368be5:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036b244 <.data+0x36b244>:
  36b244:	40 53                	rex push rbx
  36b246:	48 83 ec 20          	sub    rsp,0x20
  36b24a:	48 8b d9             	mov    rbx,rcx
  36b24d:	e8 b6 fc f5 ff       	call   0x2caf08
  36b252:	84 c0                	test   al,al
  36b254:	74 2a                	je     0x36b280
  36b256:	48 8d 0d 53 ae 07 00 	lea    rcx,[rip+0x7ae53]        # 0x3e60b0
  36b25d:	e8 b2 54 fb ff       	call   0x320714
  36b262:	84 c0                	test   al,al
  36b264:	75 1a                	jne    0x36b280
  36b266:	48 8d 54 24 38       	lea    rdx,[rsp+0x38]
  36b26b:	48 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],rbx
  36b270:	48 8d 0d 39 ae 07 00 	lea    rcx,[rip+0x7ae39]        # 0x3e60b0
  36b277:	e8 1c c6 ff ff       	call   0x367898
  36b27c:	8a 00                	mov    al,BYTE PTR [rax]
  36b27e:	eb 02                	jmp    0x36b282
  36b280:	32 c0                	xor    al,al
  36b282:	48 83 c4 20          	add    rsp,0x20
  36b286:	5b                   	pop    rbx
  36b287:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036942c <.data+0x36942c>:
  36942c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  369431:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
  369436:	55                   	push   rbp
  369437:	48 8b ec             	mov    rbp,rsp
  36943a:	48 83 ec 40          	sub    rsp,0x40
  36943e:	48 8b d1             	mov    rdx,rcx
  369441:	e8 c2 1a f6 ff       	call   0x2caf08
  369446:	84 c0                	test   al,al
  369448:	0f 84 80 02 00 00    	je     0x3696ce
  36944e:	48 8b ca             	mov    rcx,rdx
  369451:	e8 ba f6 ff ff       	call   0x368b10
  369456:	48 8b c8             	mov    rcx,rax
  369459:	48 8b d0             	mov    rdx,rax
  36945c:	e8 a7 1a f6 ff       	call   0x2caf08
  369461:	84 c0                	test   al,al
  369463:	0f 84 65 02 00 00    	je     0x3696ce
  369469:	48 8b 4a 38          	mov    rcx,QWORD PTR [rdx+0x38]
  36946d:	e8 96 1a f6 ff       	call   0x2caf08
  369472:	84 c0                	test   al,al
  369474:	0f 84 54 02 00 00    	je     0x3696ce
  36947a:	48 8b 4a 38          	mov    rcx,QWORD PTR [rdx+0x38]
  36947e:	e8 d1 c5 f7 ff       	call   0x2e5a54
  369483:	48 8b c8             	mov    rcx,rax
  369486:	48 8b d0             	mov    rdx,rax
  369489:	e8 7a 1a f6 ff       	call   0x2caf08
  36948e:	84 c0                	test   al,al
  369490:	0f 84 38 02 00 00    	je     0x3696ce
  369496:	48 8b ca             	mov    rcx,rdx
  369499:	e8 b6 ce f6 ff       	call   0x2d6354
  36949e:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3694a2:	48 8b d8             	mov    rbx,rax
  3694a5:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3694a9:	e8 8e e5 ff ff       	call   0x367a3c
  3694ae:	48 8b c8             	mov    rcx,rax
  3694b1:	e8 fe 06 f8 ff       	call   0x2e9bb4
  3694b6:	48 bf 25 23 22 84 e4 	movabs rdi,0xcbf29ce484222325
  3694bd:	9c f2 cb 
  3694c0:	48 8b c8             	mov    rcx,rax
  3694c3:	48 8b d7             	mov    rdx,rdi
  3694c6:	e8 81 c6 f7 ff       	call   0x2e5b4c
  3694cb:	48 3b d8             	cmp    rbx,rax
  3694ce:	0f 84 f0 01 00 00    	je     0x3696c4
  3694d4:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3694d8:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3694dc:	e8 3f e7 ff ff       	call   0x367c20
  3694e1:	48 8b c8             	mov    rcx,rax
  3694e4:	e8 6b 07 f8 ff       	call   0x2e9c54
  3694e9:	48 8b c8             	mov    rcx,rax
  3694ec:	48 8b d7             	mov    rdx,rdi
  3694ef:	e8 58 c6 f7 ff       	call   0x2e5b4c
  3694f4:	48 3b d8             	cmp    rbx,rax
  3694f7:	0f 84 c7 01 00 00    	je     0x3696c4
  3694fd:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  369501:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369505:	e8 76 e8 ff ff       	call   0x367d80
  36950a:	48 8b c8             	mov    rcx,rax
  36950d:	e8 fa 6f fb ff       	call   0x32050c
  369512:	48 8b c8             	mov    rcx,rax
  369515:	48 8b d7             	mov    rdx,rdi
  369518:	e8 2f c6 f7 ff       	call   0x2e5b4c
  36951d:	48 3b d8             	cmp    rbx,rax
  369520:	0f 84 9e 01 00 00    	je     0x3696c4
  369526:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  36952a:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  36952e:	e8 0d e9 ff ff       	call   0x367e40
  369533:	48 8b c8             	mov    rcx,rax
  369536:	e8 31 f1 f6 ff       	call   0x2d866c
  36953b:	48 8b c8             	mov    rcx,rax
  36953e:	48 8b d7             	mov    rdx,rdi
  369541:	e8 06 c6 f7 ff       	call   0x2e5b4c
  369546:	48 3b d8             	cmp    rbx,rax
  369549:	0f 84 75 01 00 00    	je     0x3696c4
  36954f:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  369553:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369557:	e8 60 e9 ff ff       	call   0x367ebc
  36955c:	48 8b c8             	mov    rcx,rax
  36955f:	e8 28 06 f8 ff       	call   0x2e9b8c
  369564:	48 8b c8             	mov    rcx,rax
  369567:	48 8b d7             	mov    rdx,rdi
  36956a:	e8 dd c5 f7 ff       	call   0x2e5b4c
  36956f:	48 3b d8             	cmp    rbx,rax
  369572:	0f 84 4c 01 00 00    	je     0x3696c4
  369578:	48 8d 55 18          	lea    rdx,[rbp+0x18]
  36957c:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369580:	e8 6f e9 ff ff       	call   0x367ef4
  369585:	48 8b c8             	mov    rcx,rax
  369588:	e8 3f 47 f6 ff       	call   0x2cdccc
  36958d:	48 8b c8             	mov    rcx,rax
  369590:	48 8b d7             	mov    rdx,rdi
  369593:	e8 b4 c5 f7 ff       	call   0x2e5b4c
  369598:	48 3b d8             	cmp    rbx,rax
  36959b:	0f 84 19 01 00 00    	je     0x3696ba
  3695a1:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  3695a5:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3695a9:	e8 7a e9 ff ff       	call   0x367f28
  3695ae:	48 8b c8             	mov    rcx,rax
  3695b1:	e8 3e f0 f6 ff       	call   0x2d85f4
  3695b6:	48 8b c8             	mov    rcx,rax
  3695b9:	48 8b d7             	mov    rdx,rdi
  3695bc:	e8 8b c5 f7 ff       	call   0x2e5b4c
  3695c1:	48 3b d8             	cmp    rbx,rax
  3695c4:	0f 84 f0 00 00 00    	je     0x3696ba
  3695ca:	48 8d 55 18          	lea    rdx,[rbp+0x18]
  3695ce:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3695d2:	e8 99 e9 ff ff       	call   0x367f70
  3695d7:	48 8b c8             	mov    rcx,rax
  3695da:	e8 fd ee f6 ff       	call   0x2d84dc
  3695df:	48 8b c8             	mov    rcx,rax
  3695e2:	48 8b d7             	mov    rdx,rdi
  3695e5:	e8 62 c5 f7 ff       	call   0x2e5b4c
  3695ea:	48 3b d8             	cmp    rbx,rax
  3695ed:	0f 84 c7 00 00 00    	je     0x3696ba
  3695f3:	48 8d 55 18          	lea    rdx,[rbp+0x18]
  3695f7:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  3695fb:	e8 ac e9 ff ff       	call   0x367fac
  369600:	48 8b c8             	mov    rcx,rax
  369603:	e8 c4 46 f6 ff       	call   0x2cdccc
  369608:	48 8b c8             	mov    rcx,rax
  36960b:	48 8b d7             	mov    rdx,rdi
  36960e:	e8 39 c5 f7 ff       	call   0x2e5b4c
  369613:	48 3b d8             	cmp    rbx,rax
  369616:	0f 84 9e 00 00 00    	je     0x3696ba
  36961c:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  369620:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369624:	e8 9f e2 ff ff       	call   0x3678c8
  369629:	48 8b c8             	mov    rcx,rax
  36962c:	e8 8b 6e fb ff       	call   0x3204bc
  369631:	48 8b c8             	mov    rcx,rax
  369634:	48 8b d7             	mov    rdx,rdi
  369637:	e8 10 c5 f7 ff       	call   0x2e5b4c
  36963c:	48 3b d8             	cmp    rbx,rax
  36963f:	74 79                	je     0x3696ba
  369641:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  369645:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369649:	e8 b2 e2 ff ff       	call   0x367900
  36964e:	48 8b c8             	mov    rcx,rax
  369651:	e8 3e 6e fb ff       	call   0x320494
  369656:	48 8b c8             	mov    rcx,rax
  369659:	48 8b d7             	mov    rdx,rdi
  36965c:	e8 eb c4 f7 ff       	call   0x2e5b4c
  369661:	48 3b d8             	cmp    rbx,rax
  369664:	74 54                	je     0x3696ba
  369666:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  36966a:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  36966e:	e8 c1 e2 ff ff       	call   0x367934
  369673:	48 8b c8             	mov    rcx,rax
  369676:	e8 d9 05 f8 ff       	call   0x2e9c54
  36967b:	48 8b c8             	mov    rcx,rax
  36967e:	48 8b d7             	mov    rdx,rdi
  369681:	e8 c6 c4 f7 ff       	call   0x2e5b4c
  369686:	48 3b d8             	cmp    rbx,rax
  369689:	74 2f                	je     0x3696ba
  36968b:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  36968f:	48 8d 4d 18          	lea    rcx,[rbp+0x18]
  369693:	e8 d4 e2 ff ff       	call   0x36796c
  369698:	48 8b c8             	mov    rcx,rax
  36969b:	e8 54 ef f6 ff       	call   0x2d85f4
  3696a0:	48 8b c8             	mov    rcx,rax
  3696a3:	48 8b d7             	mov    rdx,rdi
  3696a6:	e8 a1 c4 f7 ff       	call   0x2e5b4c
  3696ab:	48 3b d8             	cmp    rbx,rax
  3696ae:	75 1e                	jne    0x3696ce
  3696b0:	f3 0f 10 05 28 4b f2 	movss  xmm0,DWORD PTR [rip+0xfffffffffff24b28]        # 0x28e1e0
  3696b7:	ff 
  3696b8:	eb 17                	jmp    0x3696d1
  3696ba:	f3 0f 10 05 12 9b f2 	movss  xmm0,DWORD PTR [rip+0xfffffffffff29b12]        # 0x2931d4
  3696c1:	ff 
  3696c2:	eb 0d                	jmp    0x3696d1
  3696c4:	f3 0f 10 05 60 44 f2 	movss  xmm0,DWORD PTR [rip+0xfffffffffff24460]        # 0x28db2c
  3696cb:	ff 
  3696cc:	eb 03                	jmp    0x3696d1
  3696ce:	0f 57 c0             	xorps  xmm0,xmm0
  3696d1:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
  3696d6:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
  3696db:	48 83 c4 40          	add    rsp,0x40
  3696df:	5d                   	pop    rbp
  3696e0:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032b2b4 <.data+0x32b2b4>:
  32b2b4:	48 83 ec 28          	sub    rsp,0x28
  32b2b8:	48 8b 05 41 bc 0a 00 	mov    rax,QWORD PTR [rip+0xabc41]        # 0x3d6f00
  32b2bf:	48 8b 90 90 e4 0e 0f 	mov    rdx,QWORD PTR [rax+0xf0ee490]
  32b2c6:	48 8b ca             	mov    rcx,rdx
  32b2c9:	e8 3a fc f9 ff       	call   0x2caf08
  32b2ce:	84 c0                	test   al,al
  32b2d0:	74 2d                	je     0x32b2ff
  32b2d2:	4c 8b 82 b8 00 00 00 	mov    r8,QWORD PTR [rdx+0xb8]
  32b2d9:	49 8b c8             	mov    rcx,r8
  32b2dc:	e8 27 fc f9 ff       	call   0x2caf08
  32b2e1:	84 c0                	test   al,al
  32b2e3:	74 1a                	je     0x32b2ff
  32b2e5:	49 8b 48 18          	mov    rcx,QWORD PTR [r8+0x18]
  32b2e9:	e8 1a fc f9 ff       	call   0x2caf08
  32b2ee:	84 c0                	test   al,al
  32b2f0:	74 0d                	je     0x32b2ff
  32b2f2:	49 8b 48 18          	mov    rcx,QWORD PTR [r8+0x18]
  32b2f6:	48 83 c4 28          	add    rsp,0x28
  32b2fa:	e9 51 e6 fc ff       	jmp    0x2f9950
  32b2ff:	33 c0                	xor    eax,eax
  32b301:	48 83 c4 28          	add    rsp,0x28
  32b305:	c3                   	ret
  32b306:	cc                   	int3
  32b307:	cc                   	int3
  32b308:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  32b30d:	57                   	push   rdi
  32b30e:	48 83 ec 20          	sub    rsp,0x20
  32b312:	8b f9                	mov    edi,ecx
  32b314:	e8 9b ff ff ff       	call   0x32b2b4
  32b319:	48 8b c8             	mov    rcx,rax
  32b31c:	48 8b d8             	mov    rbx,rax
  32b31f:	e8 e4 fb f9 ff       	call   0x2caf08
  32b324:	84 c0                	test   al,al
  32b326:	75 04                	jne    0x32b32c
  32b328:	33 c0                	xor    eax,eax
  32b32a:	eb 6f                	jmp    0x32b39b
  32b32c:	8b 0d e6 c4 0c 00    	mov    ecx,DWORD PTR [rip+0xcc4e6]        # 0x3f7818
  32b332:	f6 c1 01             	test   cl,0x1
  32b335:	75 20                	jne    0x32b357
  32b337:	4c 8b 05 c2 bb 0a 00 	mov    r8,QWORD PTR [rip+0xabbc2]        # 0x3d6f00
  32b33e:	83 c9 01             	or     ecx,0x1
  32b341:	49 81 c0 20 df 00 03 	add    r8,0x300df20
  32b348:	89 0d ca c4 0c 00    	mov    DWORD PTR [rip+0xcc4ca],ecx        # 0x3f7818
  32b34e:	4c 89 05 bb c4 0c 00 	mov    QWORD PTR [rip+0xcc4bb],r8        # 0x3f7810
  32b355:	eb 07                	jmp    0x32b35e
  32b357:	4c 8b 05 b2 c4 0c 00 	mov    r8,QWORD PTR [rip+0xcc4b2]        # 0x3f7810
  32b35e:	f6 c1 02             	test   cl,0x2
  32b361:	75 1f                	jne    0x32b382
  32b363:	83 c9 02             	or     ecx,0x2
  32b366:	48 8d 15 b3 c4 0c 00 	lea    rdx,[rip+0xcc4b3]        # 0x3f7820
  32b36d:	89 0d a5 c4 0c 00    	mov    DWORD PTR [rip+0xcc4a5],ecx        # 0x3f7818
  32b373:	45 33 c9             	xor    r9d,r9d
  32b376:	48 8b 0d e3 aa 0a 00 	mov    rcx,QWORD PTR [rip+0xaaae3]        # 0x3d5e60
  32b37d:	e8 a2 09 fa ff       	call   0x2cbd24
  32b382:	48 8b 0d d7 aa 0a 00 	mov    rcx,QWORD PTR [rip+0xaaad7]        # 0x3d5e60
  32b389:	48 8d 15 90 c4 0c 00 	lea    rdx,[rip+0xcc490]        # 0x3f7820
  32b390:	44 8b cf             	mov    r9d,edi
  32b393:	4c 8b c3             	mov    r8,rbx
  32b396:	e8 2d fe ff ff       	call   0x32b1c8
  32b39b:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
  32b3a0:	48 83 c4 20          	add    rsp,0x20
  32b3a4:	5f                   	pop    rdi
  32b3a5:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003703ec <.data+0x3703ec>:
  3703ec:	40 53                	rex push rbx
  3703ee:	55                   	push   rbp
  3703ef:	56                   	push   rsi
  3703f0:	57                   	push   rdi
  3703f1:	48 83 ec 68          	sub    rsp,0x68
  3703f5:	48 8b e9             	mov    rbp,rcx
  3703f8:	48 8b ca             	mov    rcx,rdx
  3703fb:	e8 a4 06 00 00       	call   0x370aa4
  370400:	48 85 c0             	test   rax,rax
  370403:	0f 84 f4 00 00 00    	je     0x3704fd
  370409:	48 8b c8             	mov    rcx,rax
  37040c:	e8 73 04 00 00       	call   0x370884
  370411:	48 8b f0             	mov    rsi,rax
  370414:	48 85 c0             	test   rax,rax
  370417:	0f 84 e0 00 00 00    	je     0x3704fd
  37041d:	8b 0d 9d 00 09 00    	mov    ecx,DWORD PTR [rip+0x9009d]        # 0x4004c0
  370423:	f6 c1 01             	test   cl,0x1
  370426:	0f 85 8b 00 00 00    	jne    0x3704b7
  37042c:	83 c9 01             	or     ecx,0x1
  37042f:	48 8d 54 24 3a       	lea    rdx,[rsp+0x3a]
  370434:	89 0d 86 00 09 00    	mov    DWORD PTR [rip+0x90086],ecx        # 0x4004c0
  37043a:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  370441:	00 
  370442:	e8 dd fe ff ff       	call   0x370324
  370447:	48 8b c8             	mov    rcx,rax
  37044a:	e8 e5 d9 f5 ff       	call   0x2cde34
  37044f:	48 8d 54 24 46       	lea    rdx,[rsp+0x46]
  370454:	48 8b f8             	mov    rdi,rax
  370457:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  37045e:	00 
  37045f:	e8 10 fe ff ff       	call   0x370274
  370464:	48 8b c8             	mov    rcx,rax
  370467:	e8 88 81 f6 ff       	call   0x2d85f4
  37046c:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  370471:	48 8b d8             	mov    rbx,rax
  370474:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  37047b:	00 
  37047c:	e8 4f fd ff ff       	call   0x3701d0
  370481:	48 8b c8             	mov    rcx,rax
  370484:	e8 bb d8 f5 ff       	call   0x2cdd44
  370489:	48 8b c8             	mov    rcx,rax
  37048c:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
  370493:	00 
  370494:	41 b9 01 00 00 00    	mov    r9d,0x1
  37049a:	4c 8b c7             	mov    r8,rdi
  37049d:	48 8b d3             	mov    rdx,rbx
  3704a0:	e8 c7 3c fc ff       	call   0x33416c
  3704a5:	8b 0d 15 00 09 00    	mov    ecx,DWORD PTR [rip+0x90015]        # 0x4004c0
  3704ab:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3704ae:	4c 89 05 03 00 09 00 	mov    QWORD PTR [rip+0x90003],r8        # 0x4004b8
  3704b5:	eb 07                	jmp    0x3704be
  3704b7:	4c 8b 05 fa ff 08 00 	mov    r8,QWORD PTR [rip+0x8fffa]        # 0x4004b8
  3704be:	f6 c1 02             	test   cl,0x2
  3704c1:	75 1f                	jne    0x3704e2
  3704c3:	83 c9 02             	or     ecx,0x2
  3704c6:	48 8d 15 03 00 09 00 	lea    rdx,[rip+0x90003]        # 0x4004d0
  3704cd:	89 0d ed ff 08 00    	mov    DWORD PTR [rip+0x8ffed],ecx        # 0x4004c0
  3704d3:	45 33 c9             	xor    r9d,r9d
  3704d6:	48 8b 0d 83 59 06 00 	mov    rcx,QWORD PTR [rip+0x65983]        # 0x3d5e60
  3704dd:	e8 42 b8 f5 ff       	call   0x2cbd24
  3704e2:	48 8b 0d 77 59 06 00 	mov    rcx,QWORD PTR [rip+0x65977]        # 0x3d5e60
  3704e9:	48 8d 15 e0 ff 08 00 	lea    rdx,[rip+0x8ffe0]        # 0x4004d0
  3704f0:	4c 8b ce             	mov    r9,rsi
  3704f3:	4c 8b c5             	mov    r8,rbp
  3704f6:	e8 99 1b f6 ff       	call   0x2d2094
  3704fb:	eb 02                	jmp    0x3704ff
  3704fd:	33 c0                	xor    eax,eax
  3704ff:	48 83 c4 68          	add    rsp,0x68
  370503:	5f                   	pop    rdi
  370504:	5e                   	pop    rsi
  370505:	5d                   	pop    rbp
  370506:	5b                   	pop    rbx
  370507:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000370638 <.data+0x370638>:
  370638:	40 53                	rex push rbx
  37063a:	55                   	push   rbp
  37063b:	56                   	push   rsi
  37063c:	57                   	push   rdi
  37063d:	48 83 ec 68          	sub    rsp,0x68
  370641:	48 8b e9             	mov    rbp,rcx
  370644:	48 8b ca             	mov    rcx,rdx
  370647:	e8 58 04 00 00       	call   0x370aa4
  37064c:	48 85 c0             	test   rax,rax
  37064f:	0f 84 f4 00 00 00    	je     0x370749
  370655:	48 8b c8             	mov    rcx,rax
  370658:	e8 27 02 00 00       	call   0x370884
  37065d:	48 8b f0             	mov    rsi,rax
  370660:	48 85 c0             	test   rax,rax
  370663:	0f 84 e0 00 00 00    	je     0x370749
  370669:	8b 0d 41 ff 08 00    	mov    ecx,DWORD PTR [rip+0x8ff41]        # 0x4005b0
  37066f:	f6 c1 01             	test   cl,0x1
  370672:	0f 85 8b 00 00 00    	jne    0x370703
  370678:	83 c9 01             	or     ecx,0x1
  37067b:	48 8d 54 24 3b       	lea    rdx,[rsp+0x3b]
  370680:	89 0d 2a ff 08 00    	mov    DWORD PTR [rip+0x8ff2a],ecx        # 0x4005b0
  370686:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  37068d:	00 
  37068e:	e8 dd fc ff ff       	call   0x370370
  370693:	48 8b c8             	mov    rcx,rax
  370696:	e8 99 d7 f5 ff       	call   0x2cde34
  37069b:	48 8d 54 24 47       	lea    rdx,[rsp+0x47]
  3706a0:	48 8b f8             	mov    rdi,rax
  3706a3:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3706aa:	00 
  3706ab:	e8 04 fc ff ff       	call   0x3702b4
  3706b0:	48 8b c8             	mov    rcx,rax
  3706b3:	e8 3c 7f f6 ff       	call   0x2d85f4
  3706b8:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3706bd:	48 8b d8             	mov    rbx,rax
  3706c0:	48 8d 8c 24 a0 00 00 	lea    rcx,[rsp+0xa0]
  3706c7:	00 
  3706c8:	e8 3b fb ff ff       	call   0x370208
  3706cd:	48 8b c8             	mov    rcx,rax
  3706d0:	e8 7f 95 f7 ff       	call   0x2e9c54
  3706d5:	48 8b c8             	mov    rcx,rax
  3706d8:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
  3706df:	00 
  3706e0:	41 b9 01 00 00 00    	mov    r9d,0x1
  3706e6:	4c 8b c7             	mov    r8,rdi
  3706e9:	48 8b d3             	mov    rdx,rbx
  3706ec:	e8 7b 3a fc ff       	call   0x33416c
  3706f1:	8b 0d b9 fe 08 00    	mov    ecx,DWORD PTR [rip+0x8feb9]        # 0x4005b0
  3706f7:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3706fa:	4c 89 05 a7 fe 08 00 	mov    QWORD PTR [rip+0x8fea7],r8        # 0x4005a8
  370701:	eb 07                	jmp    0x37070a
  370703:	4c 8b 05 9e fe 08 00 	mov    r8,QWORD PTR [rip+0x8fe9e]        # 0x4005a8
  37070a:	f6 c1 02             	test   cl,0x2
  37070d:	75 1f                	jne    0x37072e
  37070f:	83 c9 02             	or     ecx,0x2
  370712:	48 8d 15 a7 fe 08 00 	lea    rdx,[rip+0x8fea7]        # 0x4005c0
  370719:	89 0d 91 fe 08 00    	mov    DWORD PTR [rip+0x8fe91],ecx        # 0x4005b0
  37071f:	45 33 c9             	xor    r9d,r9d
  370722:	48 8b 0d 37 57 06 00 	mov    rcx,QWORD PTR [rip+0x65737]        # 0x3d5e60
  370729:	e8 f6 b5 f5 ff       	call   0x2cbd24
  37072e:	48 8b 0d 2b 57 06 00 	mov    rcx,QWORD PTR [rip+0x6572b]        # 0x3d5e60
  370735:	48 8d 15 84 fe 08 00 	lea    rdx,[rip+0x8fe84]        # 0x4005c0
  37073c:	4c 8b ce             	mov    r9,rsi
  37073f:	4c 8b c5             	mov    r8,rbp
  370742:	e8 4d 19 f6 ff       	call   0x2d2094
  370747:	eb 02                	jmp    0x37074b
  370749:	33 c0                	xor    eax,eax
  37074b:	48 83 c4 68          	add    rsp,0x68
  37074f:	5f                   	pop    rdi
  370750:	5e                   	pop    rsi
  370751:	5d                   	pop    rbp
  370752:	5b                   	pop    rbx
  370753:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000370884 <.data+0x370884>:
  370884:	40 53                	rex push rbx
  370886:	56                   	push   rsi
  370887:	57                   	push   rdi
  370888:	48 83 ec 40          	sub    rsp,0x40
  37088c:	8b 05 6e f8 08 00    	mov    eax,DWORD PTR [rip+0x8f86e]        # 0x400100
  370892:	48 8b f1             	mov    rsi,rcx
  370895:	a8 01                	test   al,0x1
  370897:	0f 85 82 00 00 00    	jne    0x37091f
  37089d:	83 c8 01             	or     eax,0x1
  3708a0:	48 8d 54 24 78       	lea    rdx,[rsp+0x78]
  3708a5:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3708aa:	89 05 50 f8 08 00    	mov    DWORD PTR [rip+0x8f850],eax        # 0x400100
  3708b0:	e8 fb fa ff ff       	call   0x3703b0
  3708b5:	48 8b c8             	mov    rcx,rax
  3708b8:	e8 53 c8 f6 ff       	call   0x2dd110
  3708bd:	48 8d 54 24 30       	lea    rdx,[rsp+0x30]
  3708c2:	48 8b f8             	mov    rdi,rax
  3708c5:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3708ca:	e8 25 fa ff ff       	call   0x3702f4
  3708cf:	48 8b c8             	mov    rcx,rax
  3708d2:	e8 61 c8 f6 ff       	call   0x2dd138
  3708d7:	48 8d 54 24 70       	lea    rdx,[rsp+0x70]
  3708dc:	48 8b d8             	mov    rbx,rax
  3708df:	48 8d 4c 24 68       	lea    rcx,[rsp+0x68]
  3708e4:	e8 57 f9 ff ff       	call   0x370240
  3708e9:	48 8b c8             	mov    rcx,rax
  3708ec:	e8 fb 2c f7 ff       	call   0x2e35ec
  3708f1:	48 8b c8             	mov    rcx,rax
  3708f4:	c7 44 24 20 00 00 00 	mov    DWORD PTR [rsp+0x20],0x0
  3708fb:	00 
  3708fc:	41 b9 01 00 00 00    	mov    r9d,0x1
  370902:	4c 8b c7             	mov    r8,rdi
  370905:	48 8b d3             	mov    rdx,rbx
  370908:	e8 5f 38 fc ff       	call   0x33416c
  37090d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  370910:	8b 05 ea f7 08 00    	mov    eax,DWORD PTR [rip+0x8f7ea]        # 0x400100
  370916:	4c 89 05 db f7 08 00 	mov    QWORD PTR [rip+0x8f7db],r8        # 0x4000f8
  37091d:	eb 07                	jmp    0x370926
  37091f:	4c 8b 05 d2 f7 08 00 	mov    r8,QWORD PTR [rip+0x8f7d2]        # 0x4000f8
  370926:	a8 02                	test   al,0x2
  370928:	75 1f                	jne    0x370949
  37092a:	48 8b 0d 2f 55 06 00 	mov    rcx,QWORD PTR [rip+0x6552f]        # 0x3d5e60
  370931:	48 8d 15 d8 f7 08 00 	lea    rdx,[rip+0x8f7d8]        # 0x400110
  370938:	83 c8 02             	or     eax,0x2
  37093b:	45 33 c9             	xor    r9d,r9d
  37093e:	89 05 bc f7 08 00    	mov    DWORD PTR [rip+0x8f7bc],eax        # 0x400100
  370944:	e8 db b3 f5 ff       	call   0x2cbd24
  370949:	48 8b 0d 10 55 06 00 	mov    rcx,QWORD PTR [rip+0x65510]        # 0x3d5e60
  370950:	48 8d 15 b9 f7 08 00 	lea    rdx,[rip+0x8f7b9]        # 0x400110
  370957:	4c 8b c6             	mov    r8,rsi
  37095a:	48 83 c4 40          	add    rsp,0x40
  37095e:	5f                   	pop    rdi
  37095f:	5e                   	pop    rsi
  370960:	5b                   	pop    rbx
  370961:	e9 96 b0 f5 ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000370aa4 <.data+0x370aa4>:
  370aa4:	40 53                	rex push rbx
  370aa6:	48 83 ec 20          	sub    rsp,0x20
  370aaa:	8b 05 60 f5 08 00    	mov    eax,DWORD PTR [rip+0x8f560]        # 0x400010
  370ab0:	48 8b d9             	mov    rbx,rcx
  370ab3:	a8 01                	test   al,0x1
  370ab5:	75 20                	jne    0x370ad7
  370ab7:	83 c8 01             	or     eax,0x1
  370aba:	89 05 50 f5 08 00    	mov    DWORD PTR [rip+0x8f550],eax        # 0x400010
  370ac0:	e8 9f b6 f5 ff       	call   0x2cc164
  370ac5:	4c 8b c0             	mov    r8,rax
  370ac8:	48 89 05 39 f5 08 00 	mov    QWORD PTR [rip+0x8f539],rax        # 0x400008
  370acf:	8b 05 3b f5 08 00    	mov    eax,DWORD PTR [rip+0x8f53b]        # 0x400010
  370ad5:	eb 07                	jmp    0x370ade
  370ad7:	4c 8b 05 2a f5 08 00 	mov    r8,QWORD PTR [rip+0x8f52a]        # 0x400008
  370ade:	a8 02                	test   al,0x2
  370ae0:	75 1f                	jne    0x370b01
  370ae2:	48 8b 0d 77 53 06 00 	mov    rcx,QWORD PTR [rip+0x65377]        # 0x3d5e60
  370ae9:	48 8d 15 30 f5 08 00 	lea    rdx,[rip+0x8f530]        # 0x400020
  370af0:	83 c8 02             	or     eax,0x2
  370af3:	45 33 c9             	xor    r9d,r9d
  370af6:	89 05 14 f5 08 00    	mov    DWORD PTR [rip+0x8f514],eax        # 0x400010
  370afc:	e8 23 b2 f5 ff       	call   0x2cbd24
  370b01:	48 8b 0d 58 53 06 00 	mov    rcx,QWORD PTR [rip+0x65358]        # 0x3d5e60
  370b08:	48 8d 15 11 f5 08 00 	lea    rdx,[rip+0x8f511]        # 0x400020
  370b0f:	4c 8b c3             	mov    r8,rbx
  370b12:	48 83 c4 20          	add    rsp,0x20
  370b16:	5b                   	pop    rbx
  370b17:	e9 e0 ae f5 ff       	jmp    0x2cb9fc


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003739c4 <.data+0x3739c4>:
  3739c4:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3739c9:	57                   	push   rdi
  3739ca:	48 83 ec 30          	sub    rsp,0x30
  3739ce:	48 8b da             	mov    rbx,rdx
  3739d1:	48 8b f9             	mov    rdi,rcx
  3739d4:	e8 2f 75 f5 ff       	call   0x2caf08
  3739d9:	84 c0                	test   al,al
  3739db:	74 7a                	je     0x373a57
  3739dd:	8b 0d 8d de 08 00    	mov    ecx,DWORD PTR [rip+0x8de8d]        # 0x401870
  3739e3:	f6 c1 01             	test   cl,0x1
  3739e6:	75 20                	jne    0x373a08
  3739e8:	4c 8b 05 11 35 06 00 	mov    r8,QWORD PTR [rip+0x63511]        # 0x3d6f00
  3739ef:	83 c9 01             	or     ecx,0x1
  3739f2:	49 81 c0 50 db 9e 01 	add    r8,0x19edb50
  3739f9:	89 0d 71 de 08 00    	mov    DWORD PTR [rip+0x8de71],ecx        # 0x401870
  3739ff:	4c 89 05 62 de 08 00 	mov    QWORD PTR [rip+0x8de62],r8        # 0x401868
  373a06:	eb 07                	jmp    0x373a0f
  373a08:	4c 8b 05 59 de 08 00 	mov    r8,QWORD PTR [rip+0x8de59]        # 0x401868
  373a0f:	f6 c1 02             	test   cl,0x2
  373a12:	75 1f                	jne    0x373a33
  373a14:	83 c9 02             	or     ecx,0x2
  373a17:	48 8d 15 62 de 08 00 	lea    rdx,[rip+0x8de62]        # 0x401880
  373a1e:	89 0d 4c de 08 00    	mov    DWORD PTR [rip+0x8de4c],ecx        # 0x401870
  373a24:	45 33 c9             	xor    r9d,r9d
  373a27:	48 8b 0d 32 24 06 00 	mov    rcx,QWORD PTR [rip+0x62432]        # 0x3d5e60
  373a2e:	e8 f1 82 f5 ff       	call   0x2cbd24
  373a33:	48 8b 0d 26 24 06 00 	mov    rcx,QWORD PTR [rip+0x62426]        # 0x3d5e60
  373a3a:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  373a3f:	4c 8b cf             	mov    r9,rdi
  373a42:	48 8d 15 37 de 08 00 	lea    rdx,[rip+0x8de37]        # 0x401880
  373a49:	e8 46 e6 f5 ff       	call   0x2d2094
  373a4e:	0f 10 44 24 20       	movups xmm0,XMMWORD PTR [rsp+0x20]
  373a53:	f3 0f 7f 03          	movdqu XMMWORD PTR [rbx],xmm0
  373a57:	48 8b c3             	mov    rax,rbx
  373a5a:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  373a5f:	48 83 c4 30          	add    rsp,0x30
  373a63:	5f                   	pop    rdi
  373a64:	c3                   	ret
  373a65:	cc                   	int3
  373a66:	cc                   	int3
  373a67:	cc                   	int3
  373a68:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  373a6d:	57                   	push   rdi
  373a6e:	48 83 ec 30          	sub    rsp,0x30
  373a72:	48 8b da             	mov    rbx,rdx
  373a75:	48 8b f9             	mov    rdi,rcx
  373a78:	e8 8b 74 f5 ff       	call   0x2caf08
  373a7d:	84 c0                	test   al,al
  373a7f:	75 0d                	jne    0x373a8e
  373a81:	48 8b ca             	mov    rcx,rdx
  373a84:	e8 33 41 05 00       	call   0x3c7bbc
  373a89:	e9 8c 00 00 00       	jmp    0x373b1a
  373a8e:	8b 0d bc df 08 00    	mov    ecx,DWORD PTR [rip+0x8dfbc]        # 0x401a50
  373a94:	f6 c1 01             	test   cl,0x1
  373a97:	75 20                	jne    0x373ab9
  373a99:	4c 8b 05 60 34 06 00 	mov    r8,QWORD PTR [rip+0x63460]        # 0x3d6f00
  373aa0:	83 c9 01             	or     ecx,0x1
  373aa3:	49 81 c0 00 0a 9f 01 	add    r8,0x19f0a00
  373aaa:	89 0d a0 df 08 00    	mov    DWORD PTR [rip+0x8dfa0],ecx        # 0x401a50
  373ab0:	4c 89 05 91 df 08 00 	mov    QWORD PTR [rip+0x8df91],r8        # 0x401a48
  373ab7:	eb 07                	jmp    0x373ac0
  373ab9:	4c 8b 05 88 df 08 00 	mov    r8,QWORD PTR [rip+0x8df88]        # 0x401a48
  373ac0:	f6 c1 02             	test   cl,0x2
  373ac3:	75 1f                	jne    0x373ae4
  373ac5:	83 c9 02             	or     ecx,0x2
  373ac8:	48 8d 15 91 df 08 00 	lea    rdx,[rip+0x8df91]        # 0x401a60
  373acf:	89 0d 7b df 08 00    	mov    DWORD PTR [rip+0x8df7b],ecx        # 0x401a50
  373ad5:	45 33 c9             	xor    r9d,r9d
  373ad8:	48 8b 0d 81 23 06 00 	mov    rcx,QWORD PTR [rip+0x62381]        # 0x3d5e60
  373adf:	e8 40 82 f5 ff       	call   0x2cbd24
  373ae4:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  373ae9:	e8 ce 40 05 00       	call   0x3c7bbc
  373aee:	48 8b 0d 6b 23 06 00 	mov    rcx,QWORD PTR [rip+0x6236b]        # 0x3d5e60
  373af5:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
  373afa:	4c 8b cf             	mov    r9,rdi
  373afd:	48 8d 15 5c df 08 00 	lea    rdx,[rip+0x8df5c]        # 0x401a60
  373b04:	e8 8b e5 f5 ff       	call   0x2d2094
  373b09:	f2 0f 10 44 24 20    	movsd  xmm0,QWORD PTR [rsp+0x20]
  373b0f:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
  373b13:	f2 0f 11 03          	movsd  QWORD PTR [rbx],xmm0
  373b17:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  373b1a:	48 8b c3             	mov    rax,rbx
  373b1d:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  373b22:	48 83 c4 30          	add    rsp,0x30
  373b26:	5f                   	pop    rdi
  373b27:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002ef834 <.data+0x2ef834>:
  2ef834:	48 8b c4             	mov    rax,rsp
  2ef837:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  2ef83b:	57                   	push   rdi
  2ef83c:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  2ef843:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [rcx+0x4]
  2ef848:	49 8b d8             	mov    rbx,r8
  2ef84b:	0f 29 70 e8          	movaps XMMWORD PTR [rax-0x18],xmm6
  2ef84f:	48 8b fa             	mov    rdi,rdx
  2ef852:	0f 29 78 d8          	movaps XMMWORD PTR [rax-0x28],xmm7
  2ef856:	44 0f 29 40 c8       	movaps XMMWORD PTR [rax-0x38],xmm8
  2ef85b:	44 0f 29 48 b8       	movaps XMMWORD PTR [rax-0x48],xmm9
  2ef860:	f3 44 0f 10 49 08    	movss  xmm9,DWORD PTR [rcx+0x8]
  2ef866:	44 0f 29 50 a8       	movaps XMMWORD PTR [rax-0x58],xmm10
  2ef86b:	f3 45 0f 58 c9       	addss  xmm9,xmm9
  2ef870:	44 0f 29 58 98       	movaps XMMWORD PTR [rax-0x68],xmm11
  2ef875:	44 0f 29 60 88       	movaps XMMWORD PTR [rax-0x78],xmm12
  2ef87a:	44 0f 29 6c 24 30    	movaps XMMWORD PTR [rsp+0x30],xmm13
  2ef880:	44 0f 28 e8          	movaps xmm13,xmm0
  2ef884:	44 0f 29 74 24 20    	movaps XMMWORD PTR [rsp+0x20],xmm14
  2ef88a:	f3 44 0f 58 e8       	addss  xmm13,xmm0
  2ef88f:	f3 44 0f 10 31       	movss  xmm14,DWORD PTR [rcx]
  2ef894:	41 0f 28 f1          	movaps xmm6,xmm9
  2ef898:	f3 0f 59 71 08       	mulss  xmm6,DWORD PTR [rcx+0x8]
  2ef89d:	f3 45 0f 58 f6       	addss  xmm14,xmm14
  2ef8a2:	45 0f 28 d1          	movaps xmm10,xmm9
  2ef8a6:	45 0f 28 c1          	movaps xmm8,xmm9
  2ef8aa:	f3 44 0f 59 11       	mulss  xmm10,DWORD PTR [rcx]
  2ef8af:	41 0f 28 fd          	movaps xmm7,xmm13
  2ef8b3:	f3 0f 59 39          	mulss  xmm7,DWORD PTR [rcx]
  2ef8b7:	45 0f 28 dd          	movaps xmm11,xmm13
  2ef8bb:	f3 44 0f 59 69 0c    	mulss  xmm13,DWORD PTR [rcx+0xc]
  2ef8c1:	45 0f 28 e6          	movaps xmm12,xmm14
  2ef8c5:	f3 44 0f 59 21       	mulss  xmm12,DWORD PTR [rcx]
  2ef8ca:	f3 44 0f 59 71 0c    	mulss  xmm14,DWORD PTR [rcx+0xc]
  2ef8d0:	f3 44 0f 59 49 0c    	mulss  xmm9,DWORD PTR [rcx+0xc]
  2ef8d6:	48 8b ca             	mov    rcx,rdx
  2ef8d9:	f3 44 0f 59 d8       	mulss  xmm11,xmm0
  2ef8de:	f3 44 0f 59 c0       	mulss  xmm8,xmm0
  2ef8e3:	e8 d4 82 0d 00       	call   0x3c7bbc
  2ef8e8:	f3 0f 10 1d 64 d9 f9 	movss  xmm3,DWORD PTR [rip+0xfffffffffff9d964]        # 0x28d254
  2ef8ef:	ff 
  2ef8f0:	4c 8d 9c 24 b0 00 00 	lea    r11,[rsp+0xb0]
  2ef8f7:	00 
  2ef8f8:	0f 28 c6             	movaps xmm0,xmm6
  2ef8fb:	0f 28 d3             	movaps xmm2,xmm3
  2ef8fe:	f3 41 0f 58 c3       	addss  xmm0,xmm11
  2ef903:	41 0f 28 cd          	movaps xmm1,xmm13
  2ef907:	f3 41 0f 58 ca       	addss  xmm1,xmm10
  2ef90c:	48 8b c7             	mov    rax,rdi
  2ef90f:	f3 41 0f 58 f4       	addss  xmm6,xmm12
  2ef914:	f3 45 0f 5c d5       	subss  xmm10,xmm13
  2ef919:	f3 45 0f 58 dc       	addss  xmm11,xmm12
  2ef91e:	f3 0f 5c d0          	subss  xmm2,xmm0
  2ef922:	0f 28 c7             	movaps xmm0,xmm7
  2ef925:	f3 0f 59 4b 08       	mulss  xmm1,DWORD PTR [rbx+0x8]
  2ef92a:	f3 41 0f 5c c1       	subss  xmm0,xmm9
  2ef92f:	f3 44 0f 59 13       	mulss  xmm10,DWORD PTR [rbx]
  2ef934:	f3 44 0f 58 cf       	addss  xmm9,xmm7
  2ef939:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  2ef93e:	f3 0f 59 43 04       	mulss  xmm0,DWORD PTR [rbx+0x4]
  2ef943:	f3 0f 59 13          	mulss  xmm2,DWORD PTR [rbx]
  2ef947:	f3 44 0f 59 0b       	mulss  xmm9,DWORD PTR [rbx]
  2ef94c:	f3 0f 58 d0          	addss  xmm2,xmm0
  2ef950:	41 0f 28 c0          	movaps xmm0,xmm8
  2ef954:	f3 41 0f 5c c6       	subss  xmm0,xmm14
  2ef959:	f3 45 0f 58 f0       	addss  xmm14,xmm8
  2ef95e:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  2ef963:	f3 0f 58 d1          	addss  xmm2,xmm1
  2ef967:	0f 28 cb             	movaps xmm1,xmm3
  2ef96a:	f3 0f 59 43 08       	mulss  xmm0,DWORD PTR [rbx+0x8]
  2ef96f:	f3 0f 5c ce          	subss  xmm1,xmm6
  2ef973:	f3 44 0f 59 73 04    	mulss  xmm14,DWORD PTR [rbx+0x4]
  2ef979:	f3 41 0f 5c db       	subss  xmm3,xmm11
  2ef97e:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  2ef983:	f3 0f 59 4b 04       	mulss  xmm1,DWORD PTR [rbx+0x4]
  2ef988:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  2ef98d:	f3 45 0f 58 f2       	addss  xmm14,xmm10
  2ef992:	f3 0f 59 5b 08       	mulss  xmm3,DWORD PTR [rbx+0x8]
  2ef997:	49 8b 5b 10          	mov    rbx,QWORD PTR [r11+0x10]
  2ef99b:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  2ef9a0:	f3 41 0f 58 c9       	addss  xmm1,xmm9
  2ef9a5:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  2ef9aa:	f3 44 0f 58 f3       	addss  xmm14,xmm3
  2ef9af:	f3 0f 11 17          	movss  DWORD PTR [rdi],xmm2
  2ef9b3:	f3 0f 58 c8          	addss  xmm1,xmm0
  2ef9b7:	f3 44 0f 11 77 08    	movss  DWORD PTR [rdi+0x8],xmm14
  2ef9bd:	f3 0f 11 4f 04       	movss  DWORD PTR [rdi+0x4],xmm1
  2ef9c2:	45 0f 28 63 90       	movaps xmm12,XMMWORD PTR [r11-0x70]
  2ef9c7:	45 0f 28 6b 80       	movaps xmm13,XMMWORD PTR [r11-0x80]
  2ef9cc:	44 0f 28 74 24 20    	movaps xmm14,XMMWORD PTR [rsp+0x20]
  2ef9d2:	49 8b e3             	mov    rsp,r11
  2ef9d5:	5f                   	pop    rdi
  2ef9d6:	c3                   	ret


/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000367684 <.data+0x367684>:
  367684:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
  367689:	55                   	push   rbp
  36768a:	56                   	push   rsi
  36768b:	57                   	push   rdi
  36768c:	41 56                	push   r14
  36768e:	41 57                	push   r15
  367690:	48 8b ec             	mov    rbp,rsp
  367693:	48 83 ec 60          	sub    rsp,0x60
  367697:	4c 8b f2             	mov    r14,rdx
  36769a:	49 8b d8             	mov    rbx,r8
  36769d:	49 8b d0             	mov    rdx,r8
  3676a0:	48 8b f1             	mov    rsi,rcx
  3676a3:	e8 fc 30 f8 ff       	call   0x2ea7a4
  3676a8:	4c 8b c8             	mov    r9,rax
  3676ab:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  3676af:	4c 8b c3             	mov    r8,rbx
  3676b2:	48 8b ce             	mov    rcx,rsi
  3676b5:	4c 8b f8             	mov    r15,rax
  3676b8:	e8 3b 47 f8 ff       	call   0x2ebdf8
  3676bd:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  3676c2:	74 19                	je     0x3676dd
  3676c4:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  3676c8:	c6 45 30 00          	mov    BYTE PTR [rbp+0x30],0x0
  3676cc:	48 8d 55 d8          	lea    rdx,[rbp-0x28]
  3676d0:	49 8b ce             	mov    rcx,r14
  3676d3:	e8 30 77 f6 ff       	call   0x2cee08
  3676d8:	e9 c6 00 00 00       	jmp    0x3677a3
  3676dd:	48 8b ce             	mov    rcx,rsi
  3676e0:	e8 6b 21 fb ff       	call   0x319850
  3676e5:	48 8b cb             	mov    rcx,rbx
  3676e8:	e8 b7 3c f6 ff       	call   0x2cb3a4
  3676ed:	48 8b d0             	mov    rdx,rax
  3676f0:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  3676f4:	e8 97 75 f7 ff       	call   0x2dec90
  3676f9:	48 8d 4d 30          	lea    rcx,[rbp+0x30]
  3676fd:	48 8b f8             	mov    rdi,rax
  367700:	e8 9f 3c f6 ff       	call   0x2cb3a4
  367705:	48 8d 4e 08          	lea    rcx,[rsi+0x8]
  367709:	48 8b d8             	mov    rbx,rax
  36770c:	e8 13 5c f6 ff       	call   0x2cd324
  367711:	48 8b d0             	mov    rdx,rax
  367714:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  367719:	4c 8b cf             	mov    r9,rdi
  36771c:	4c 8d 05 d9 61 f2 ff 	lea    r8,[rip+0xfffffffffff261d9]        # 0x28d8fc
  367723:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  367727:	e8 ec 2b f8 ff       	call   0x2ea318
  36772c:	48 8b ce             	mov    rcx,rsi
  36772f:	e8 10 f6 f6 ff       	call   0x2d6d44
  367734:	84 c0                	test   al,al
  367736:	74 2f                	je     0x367767
  367738:	48 8b ce             	mov    rcx,rsi
  36773b:	e8 60 29 fb ff       	call   0x31a0a0
  367740:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  367744:	48 83 c1 10          	add    rcx,0x10
  367748:	e8 57 3c f6 ff       	call   0x2cb3a4
  36774d:	4c 8b c0             	mov    r8,rax
  367750:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  367754:	4d 8b cf             	mov    r9,r15
  367757:	48 8b ce             	mov    rcx,rsi
  36775a:	e8 99 46 f8 ff       	call   0x2ebdf8
  36775f:	0f 10 00             	movups xmm0,XMMWORD PTR [rax]
  367762:	f3 0f 7f 45 d0       	movdqu XMMWORD PTR [rbp-0x30],xmm0
  367767:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  36776b:	e8 c8 fe f6 ff       	call   0x2d7638
  367770:	4c 8b 45 d0          	mov    r8,QWORD PTR [rbp-0x30]
  367774:	4c 8b c8             	mov    r9,rax
  367777:	49 8b d7             	mov    rdx,r15
  36777a:	48 8b ce             	mov    rcx,rsi
  36777d:	e8 a6 fb f6 ff       	call   0x2d7328
  367782:	4c 8d 45 30          	lea    r8,[rbp+0x30]
  367786:	48 89 45 40          	mov    QWORD PTR [rbp+0x40],rax
  36778a:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  36778e:	c6 45 30 01          	mov    BYTE PTR [rbp+0x30],0x1
  367792:	49 8b ce             	mov    rcx,r14
  367795:	e8 6e 76 f6 ff       	call   0x2cee08
  36779a:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  36779e:	e8 01 7c f8 ff       	call   0x2ef3a4
  3677a3:	48 8b 9c 24 98 00 00 	mov    rbx,QWORD PTR [rsp+0x98]
  3677aa:	00 
  3677ab:	49 8b c6             	mov    rax,r14
  3677ae:	48 83 c4 60          	add    rsp,0x60
  3677b2:	41 5f                	pop    r15
  3677b4:	41 5e                	pop    r14
  3677b6:	5f                   	pop    rdi
  3677b7:	5e                   	pop    rsi
  3677b8:	5d                   	pop    rbp
  3677b9:	c3                   	ret
