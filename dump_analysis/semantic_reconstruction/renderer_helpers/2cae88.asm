
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002cae88 <.data+0x2cae88>:
  2cae88:	40 53                                           	rex push rbx
  2cae8a:	48 83 ec 20                                     	sub    rsp,0x20
  2cae8e:	8b 05 dc b4 10 00                               	mov    eax,DWORD PTR [rip+0x10b4dc]        # 0x3d6370
  2cae94:	48 8b d9                                        	mov    rbx,rcx
  2cae97:	a8 01                                           	test   al,0x1
  2cae99:	75 25                                           	jne    0x2caec0
  2cae9b:	83 c8 01                                        	or     eax,0x1
  2cae9e:	b9 35 cd 81 3a                                  	mov    ecx,0x3a81cd35
  2caea3:	89 05 c7 b4 10 00                               	mov    DWORD PTR [rip+0x10b4c7],eax        # 0x3d6370
  2caea9:	e8 62 8e 06 00                                  	call   0x333d10
  2caeae:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  2caeb1:	8b 05 b9 b4 10 00                               	mov    eax,DWORD PTR [rip+0x10b4b9]        # 0x3d6370
  2caeb7:	4c 89 05 aa b4 10 00                            	mov    QWORD PTR [rip+0x10b4aa],r8        # 0x3d6368
  2caebe:	eb 07                                           	jmp    0x2caec7
  2caec0:	4c 8b 05 a1 b4 10 00                            	mov    r8,QWORD PTR [rip+0x10b4a1]        # 0x3d6368
  2caec7:	a8 02                                           	test   al,0x2
  2caec9:	75 1f                                           	jne    0x2caeea
  2caecb:	48 8b 0d 8e af 10 00                            	mov    rcx,QWORD PTR [rip+0x10af8e]        # 0x3d5e60
  2caed2:	48 8d 15 a7 b4 10 00                            	lea    rdx,[rip+0x10b4a7]        # 0x3d6380
  2caed9:	83 c8 02                                        	or     eax,0x2
  2caedc:	45 33 c9                                        	xor    r9d,r9d
  2caedf:	89 05 8b b4 10 00                               	mov    DWORD PTR [rip+0x10b48b],eax        # 0x3d6370
  2caee5:	e8 3a 0e 00 00                                  	call   0x2cbd24
  2caeea:	48 8b 0d 6f af 10 00                            	mov    rcx,QWORD PTR [rip+0x10af6f]        # 0x3d5e60
  2caef1:	48 8d 15 88 b4 10 00                            	lea    rdx,[rip+0x10b488]        # 0x3d6380
  2caef8:	4c 8b c3                                        	mov    r8,rbx
  2caefb:	48 83 c4 20                                     	add    rsp,0x20
  2caeff:	5b                                              	pop    rbx
  2caf00:	e9 f7 0a 00 00                                  	jmp    0x2cb9fc
