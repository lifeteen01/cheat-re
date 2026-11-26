
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000039045c <.data+0x39045c>:
  39045c:	48 83 ec 28                                     	sub    rsp,0x28
  390460:	f3 0f 10 41 0c                                  	movss  xmm0,DWORD PTR [rcx+0xc]
  390465:	4c 8b c1                                        	mov    r8,rcx
  390468:	e8 8f 85 fe ff                                  	call   0x3789fc
  39046d:	f3 0f 10 1d 6f d2 ef ff                         	movss  xmm3,DWORD PTR [rip+0xffffffffffefd26f]        # 0x28d6e4
  390475:	f3 0f 10 15 d3 cd ef ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffefcdd3]        # 0x28d250
  39047d:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  390481:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  390485:	f3 0f 2c d0                                     	cvttss2si edx,xmm0
  390489:	f3 0f 10 41 08                                  	movss  xmm0,DWORD PTR [rcx+0x8]
  39048e:	c1 e2 08                                        	shl    edx,0x8
  390491:	e8 66 85 fe ff                                  	call   0x3789fc
  390496:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  39049a:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  39049e:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3904a2:	f3 0f 10 41 04                                  	movss  xmm0,DWORD PTR [rcx+0x4]
  3904a7:	0b c2                                           	or     eax,edx
  3904a9:	c1 e0 08                                        	shl    eax,0x8
  3904ac:	e8 4b 85 fe ff                                  	call   0x3789fc
  3904b1:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  3904b5:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3904b9:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  3904bd:	f3 41 0f 10 00                                  	movss  xmm0,DWORD PTR [r8]
  3904c2:	0b c1                                           	or     eax,ecx
  3904c4:	c1 e0 08                                        	shl    eax,0x8
  3904c7:	e8 30 85 fe ff                                  	call   0x3789fc
  3904cc:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  3904d0:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3904d4:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  3904d8:	0b c1                                           	or     eax,ecx
  3904da:	48 83 c4 28                                     	add    rsp,0x28
  3904de:	c3                                              	ret
