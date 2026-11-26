
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d8d74.bin:     file format binary


Disassembly of section .data:

00000000002d8d74 <.data>:
  2d8d74:	4c 8b dc             	mov    r11,rsp
  2d8d77:	49 89 5b 08          	mov    QWORD PTR [r11+0x8],rbx
  2d8d7b:	49 89 73 10          	mov    QWORD PTR [r11+0x10],rsi
  2d8d7f:	57                   	push   rdi
  2d8d80:	48 83 ec 50          	sub    rsp,0x50
  2d8d84:	8b 05 ce d7 0f 00    	mov    eax,DWORD PTR [rip+0xfd7ce]        # 0x3d6558
  2d8d8a:	48 8b fa             	mov    rdi,rdx
  2d8d8d:	48 8b f1             	mov    rsi,rcx
  2d8d90:	a8 01                	test   al,0x1
  2d8d92:	75 5d                	jne    0x2d8df1
  2d8d94:	83 c8 01             	or     eax,0x1
  2d8d97:	49 8d 53 c8          	lea    rdx,[r11-0x38]
  2d8d9b:	49 8d 4b 18          	lea    rcx,[r11+0x18]
  2d8d9f:	89 05 b3 d7 0f 00    	mov    DWORD PTR [rip+0xfd7b3],eax        # 0x3d6558
  2d8da5:	e8 62 c5 ff ff       	call   0x2d530c
  2d8daa:	48 8b c8             	mov    rcx,rax
  2d8dad:	e8 a2 f7 ff ff       	call   0x2d8554
  2d8db2:	48 8d 54 24 31       	lea    rdx,[rsp+0x31]
  2d8db7:	48 8b d8             	mov    rbx,rax
  2d8dba:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
  2d8dbf:	e8 68 c3 ff ff       	call   0x2d512c
  2d8dc4:	48 8b c8             	mov    rcx,rax
  2d8dc7:	e8 88 f7 ff ff       	call   0x2d8554
  2d8dcc:	48 8b c8             	mov    rcx,rax
  2d8dcf:	e8 84 22 0f 00       	call   0x3cb058
  2d8dd4:	48 8b c8             	mov    rcx,rax
  2d8dd7:	48 8b d3             	mov    rdx,rbx
  2d8dda:	e8 f1 20 0f 00       	call   0x3caed0
  2d8ddf:	4c 8b c0             	mov    r8,rax
  2d8de2:	48 89 05 67 d7 0f 00 	mov    QWORD PTR [rip+0xfd767],rax        # 0x3d6550
  2d8de9:	8b 05 69 d7 0f 00    	mov    eax,DWORD PTR [rip+0xfd769]        # 0x3d6558
  2d8def:	eb 07                	jmp    0x2d8df8
  2d8df1:	4c 8b 05 58 d7 0f 00 	mov    r8,QWORD PTR [rip+0xfd758]        # 0x3d6550
  2d8df8:	a8 02                	test   al,0x2
  2d8dfa:	75 1f                	jne    0x2d8e1b
  2d8dfc:	48 8b 0d 5d d0 0f 00 	mov    rcx,QWORD PTR [rip+0xfd05d]        # 0x3d5e60
  2d8e03:	48 8d 15 56 d7 0f 00 	lea    rdx,[rip+0xfd756]        # 0x3d6560
  2d8e0a:	83 c8 02             	or     eax,0x2
  2d8e0d:	45 33 c9             	xor    r9d,r9d
  2d8e10:	89 05 42 d7 0f 00    	mov    DWORD PTR [rip+0xfd742],eax        # 0x3d6558
  2d8e16:	e8 09 2f ff ff       	call   0x2cbd24
  2d8e1b:	48 8b 0d 3e d0 0f 00 	mov    rcx,QWORD PTR [rip+0xfd03e]        # 0x3d5e60
  2d8e22:	48 8d 15 37 d7 0f 00 	lea    rdx,[rip+0xfd737]        # 0x3d6560
  2d8e29:	4c 8b cf             	mov    r9,rdi
  2d8e2c:	4c 8b c6             	mov    r8,rsi
  2d8e2f:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  2d8e34:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
  2d8e39:	48 83 c4 50          	add    rsp,0x50
  2d8e3d:	5f                   	pop    rdi
  2d8e3e:	e9 51 92 ff ff       	jmp    0x2d2094
