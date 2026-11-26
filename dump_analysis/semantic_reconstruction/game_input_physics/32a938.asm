
dump_analysis/semantic_reconstruction/game_input_physics/32a938.bin:     file format binary


Disassembly of section .data:

000000000032a938 <.data>:
  32a938:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  32a93d:	57                                              	push   rdi
  32a93e:	48 83 ec 50                                     	sub    rsp,0x50
  32a942:	8b 05 f8 7e 0c 00                               	mov    eax,DWORD PTR [rip+0xc7ef8]        # 0x3f2840
  32a948:	48 8b f9                                        	mov    rdi,rcx
  32a94b:	a8 01                                           	test   al,0x1
  32a94d:	75 5f                                           	jne    0x32a9ae
  32a94f:	83 c8 01                                        	or     eax,0x1
  32a952:	48 8d 54 24 31                                  	lea    rdx,[rsp+0x31]
  32a957:	48 8d 4c 24 68                                  	lea    rcx,[rsp+0x68]
  32a95c:	89 05 de 7e 0c 00                               	mov    DWORD PTR [rip+0xc7ede],eax        # 0x3f2840
  32a962:	e8 f1 91 ff ff                                  	call   0x323b58
  32a967:	48 8b c8                                        	mov    rcx,rax
  32a96a:	e8 cd 8c fb ff                                  	call   0x2e363c
  32a96f:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  32a974:	48 8b d8                                        	mov    rbx,rax
  32a977:	48 8d 4c 24 68                                  	lea    rcx,[rsp+0x68]
  32a97c:	e8 ab 8f ff ff                                  	call   0x32392c
  32a981:	48 8b c8                                        	mov    rcx,rax
  32a984:	e8 cb db fa ff                                  	call   0x2d8554
  32a989:	48 8b c8                                        	mov    rcx,rax
  32a98c:	e8 c7 06 0a 00                                  	call   0x3cb058
  32a991:	48 8b c8                                        	mov    rcx,rax
  32a994:	48 8b d3                                        	mov    rdx,rbx
  32a997:	e8 34 05 0a 00                                  	call   0x3caed0
  32a99c:	4c 8b c0                                        	mov    r8,rax
  32a99f:	48 89 05 92 7e 0c 00                            	mov    QWORD PTR [rip+0xc7e92],rax        # 0x3f2838
  32a9a6:	8b 05 94 7e 0c 00                               	mov    eax,DWORD PTR [rip+0xc7e94]        # 0x3f2840
  32a9ac:	eb 07                                           	jmp    0x32a9b5
  32a9ae:	4c 8b 05 83 7e 0c 00                            	mov    r8,QWORD PTR [rip+0xc7e83]        # 0x3f2838
  32a9b5:	a8 02                                           	test   al,0x2
  32a9b7:	75 1f                                           	jne    0x32a9d8
  32a9b9:	48 8b 0d a0 b4 0a 00                            	mov    rcx,QWORD PTR [rip+0xab4a0]        # 0x3d5e60
  32a9c0:	48 8d 15 89 7e 0c 00                            	lea    rdx,[rip+0xc7e89]        # 0x3f2850
  32a9c7:	83 c8 02                                        	or     eax,0x2
  32a9ca:	45 33 c9                                        	xor    r9d,r9d
  32a9cd:	89 05 6d 7e 0c 00                               	mov    DWORD PTR [rip+0xc7e6d],eax        # 0x3f2840
  32a9d3:	e8 4c 13 fa ff                                  	call   0x2cbd24
  32a9d8:	48 8b 0d 81 b4 0a 00                            	mov    rcx,QWORD PTR [rip+0xab481]        # 0x3d5e60
  32a9df:	48 8d 15 6a 7e 0c 00                            	lea    rdx,[rip+0xc7e6a]        # 0x3f2850
  32a9e6:	4c 8b c7                                        	mov    r8,rdi
  32a9e9:	48 8b 5c 24 60                                  	mov    rbx,QWORD PTR [rsp+0x60]
  32a9ee:	48 83 c4 50                                     	add    rsp,0x50
  32a9f2:	5f                                              	pop    rdi
  32a9f3:	e9 04 10 fa ff                                  	jmp    0x2cb9fc
