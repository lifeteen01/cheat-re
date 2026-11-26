
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab1b4 <.data+0x3ab1b4>:
  3ab1b4:	48 83 ec 28                                     	sub    rsp,0x28
  3ab1b8:	4c 8b c9                                        	mov    r9,rcx
  3ab1bb:	e8 b4 fd ff ff                                  	call   0x3aaf74
  3ab1c0:	49 8b c9                                        	mov    rcx,r9
  3ab1c3:	3c 1e                                           	cmp    al,0x1e
  3ab1c5:	75 3b                                           	jne    0x3ab202
  3ab1c7:	ba 01 00 00 00                                  	mov    edx,0x1
  3ab1cc:	e8 23 fe ff ff                                  	call   0x3aaff4
  3ab1d1:	eb 20                                           	jmp    0x3ab1f3
  3ab1d3:	49 8b c9                                        	mov    rcx,r9
  3ab1d6:	e8 41 fd ff ff                                  	call   0x3aaf1c
  3ab1db:	44 0f b6 d0                                     	movzx  r10d,al
  3ab1df:	41 8b c2                                        	mov    eax,r10d
  3ab1e2:	83 e0 0f                                        	and    eax,0xf
  3ab1e5:	3c 0f                                           	cmp    al,0xf
  3ab1e7:	74 1e                                           	je     0x3ab207
  3ab1e9:	41 c1 ea 04                                     	shr    r10d,0x4
  3ab1ed:	41 83 fa 0f                                     	cmp    r10d,0xf
  3ab1f1:	74 14                                           	je     0x3ab207
  3ab1f3:	41 8b 41 0c                                     	mov    eax,DWORD PTR [r9+0xc]
  3ab1f7:	41 39 41 08                                     	cmp    DWORD PTR [r9+0x8],eax
  3ab1fb:	7c d6                                           	jl     0x3ab1d3
  3ab1fd:	48 83 c4 28                                     	add    rsp,0x28
  3ab201:	c3                                              	ret
  3ab202:	e8 15 ff ff ff                                  	call   0x3ab11c
  3ab207:	48 83 c4 28                                     	add    rsp,0x28
  3ab20b:	c3                                              	ret
