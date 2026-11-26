
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/329aa0.audit.bin:     file format binary


Disassembly of section .data:

0000000000329aa0 <.data>:
  329aa0:	4c 8b dc                                        	mov    r11,rsp
  329aa3:	49 89 5b 08                                     	mov    QWORD PTR [r11+0x8],rbx
  329aa7:	49 89 73 10                                     	mov    QWORD PTR [r11+0x10],rsi
  329aab:	57                                              	push   rdi
  329aac:	48 83 ec 60                                     	sub    rsp,0x60
  329ab0:	8b 05 7a 8e 0c 00                               	mov    eax,DWORD PTR [rip+0xc8e7a]        # 0x3f2930
  329ab6:	41 8a d8                                        	mov    bl,r8b
  329ab9:	8b fa                                           	mov    edi,edx
  329abb:	8b f1                                           	mov    esi,ecx
  329abd:	a8 01                                           	test   al,0x1
  329abf:	75 38                                           	jne    0x329af9
  329ac1:	83 c8 01                                        	or     eax,0x1
  329ac4:	49 8d 53 c8                                     	lea    rdx,[r11-0x38]
  329ac8:	49 8d 4b 20                                     	lea    rcx,[r11+0x20]
  329acc:	89 05 5e 8e 0c 00                               	mov    DWORD PTR [rip+0xc8e5e],eax        # 0x3f2930
  329ad2:	e8 1d 9e ff ff                                  	call   0x3238f4
  329ad7:	48 8b c8                                        	mov    rcx,rax
  329ada:	e8 1d 0e 00 00                                  	call   0x32a8fc
  329adf:	48 8b c8                                        	mov    rcx,rax
  329ae2:	e8 51 0e 00 00                                  	call   0x32a938
  329ae7:	4c 8b c0                                        	mov    r8,rax
  329aea:	48 89 05 37 8e 0c 00                            	mov    QWORD PTR [rip+0xc8e37],rax        # 0x3f2928
  329af1:	8b 05 39 8e 0c 00                               	mov    eax,DWORD PTR [rip+0xc8e39]        # 0x3f2930
  329af7:	eb 07                                           	jmp    0x329b00
  329af9:	4c 8b 05 28 8e 0c 00                            	mov    r8,QWORD PTR [rip+0xc8e28]        # 0x3f2928
  329b00:	a8 02                                           	test   al,0x2
  329b02:	75 1f                                           	jne    0x329b23
  329b04:	48 8b 0d 55 c3 0a 00                            	mov    rcx,QWORD PTR [rip+0xac355]        # 0x3d5e60
  329b0b:	48 8d 15 2e 8e 0c 00                            	lea    rdx,[rip+0xc8e2e]        # 0x3f2940
  329b12:	83 c8 02                                        	or     eax,0x2
  329b15:	45 33 c9                                        	xor    r9d,r9d
  329b18:	89 05 12 8e 0c 00                               	mov    DWORD PTR [rip+0xc8e12],eax        # 0x3f2930
  329b1e:	e8 01 22 fa ff                                  	call   0x2cbd24
  329b23:	48 8b 0d 36 c3 0a 00                            	mov    rcx,QWORD PTR [rip+0xac336]        # 0x3d5e60
  329b2a:	48 8d 15 0f 8e 0c 00                            	lea    rdx,[rip+0xc8e0f]        # 0x3f2940
  329b31:	44 8b cf                                        	mov    r9d,edi
  329b34:	88 5c 24 20                                     	mov    BYTE PTR [rsp+0x20],bl
  329b38:	44 8b c6                                        	mov    r8d,esi
  329b3b:	e8 90 97 ff ff                                  	call   0x3232d0
  329b40:	48 8b 5c 24 70                                  	mov    rbx,QWORD PTR [rsp+0x70]
  329b45:	48 8b 74 24 78                                  	mov    rsi,QWORD PTR [rsp+0x78]
  329b4a:	48 83 c4 60                                     	add    rsp,0x60
  329b4e:	5f                                              	pop    rdi
  329b4f:	c3                                              	ret
