COMMAND: objdump -D -b binary -m i386:x86-64 -M intel -w --start-address=3329863 --stop-address=3330046 /home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll

/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000032cf47 <.data+0x32cf47>:
  32cf47:	48 8b 0d 12 8f 0a 00 	mov    rcx,QWORD PTR [rip+0xa8f12]        # 0x3d5e60
  32cf4e:	48 8d 15 2b b5 0c 00 	lea    rdx,[rip+0xcb52b]        # 0x3f8480
  32cf55:	4c 8b c7             	mov    r8,rdi
  32cf58:	e8 9f ea f9 ff       	call   0x2cb9fc
  32cf5d:	48 8b 15 9c 9f 0a 00 	mov    rdx,QWORD PTR [rip+0xa9f9c]        # 0x3d6f00
  32cf64:	48 8b 4d 58          	mov    rcx,QWORD PTR [rbp+0x58]
  32cf68:	48 81 c2 37 4a fe 03 	add    rdx,0x3fe4a37
  32cf6f:	89 45 68             	mov    DWORD PTR [rbp+0x68],eax
  32cf72:	48 3b ca             	cmp    rcx,rdx
  32cf75:	74 07                	je     0x32cf7e
  32cf77:	84 c0                	test   al,al
  32cf79:	e9 dd 0b 00 00       	jmp    0x32db5b
  32cf7e:	e8 c9 3e fb ff       	call   0x2e0e4c
  32cf83:	33 ff                	xor    edi,edi
  32cf85:	84 c0                	test   al,al
  32cf87:	0f 85 b0 0b 00 00    	jne    0x32db3d
  32cf8d:	e8 0a 37 fb ff       	call   0x2e069c
  32cf92:	48 8b c8             	mov    rcx,rax
  32cf95:	e8 6e df f9 ff       	call   0x2caf08
  32cf9a:	84 c0                	test   al,al
  32cf9c:	0f 84 9b 0b 00 00    	je     0x32db3d
  32cfa2:	e8 f5 0a fb ff       	call   0x2dda9c
  32cfa7:	48 8b c8             	mov    rcx,rax
  32cfaa:	48 8b f0             	mov    rsi,rax
  32cfad:	e8 56 df f9 ff       	call   0x2caf08
  32cfb2:	84 c0                	test   al,al
  32cfb4:	0f 84 83 0b 00 00    	je     0x32db3d
  32cfba:	e8 5d 88 fe ff       	call   0x31581c
  32cfbf:	0f 28 f0             	movaps xmm6,xmm0
  32cfc2:	0f 57 ff             	xorps  xmm7,xmm7
  32cfc5:	f3 0f 5c 35 57 51 0c 00 	subss  xmm6,DWORD PTR [rip+0xc5157]        # 0x3f2124
  32cfcd:	f3 0f 5d 35 7f 02 f6 ff 	minss  xmm6,DWORD PTR [rip+0xfffffffffff6027f]        # 0x28d254
  32cfd5:	0f 2f fe             	comiss xmm7,xmm6
  32cfd8:	76 03                	jbe    0x32cfdd
  32cfda:	0f 57 f6             	xorps  xmm6,xmm6
  32cfdd:	f3 0f 11 35 07 a3 0a 00 	movss  DWORD PTR [rip+0xaa307],xmm6        # 0x3d72ec
  32cfe5:	e8 32 88 fe ff       	call   0x31581c
  32cfea:	40 38 3d 57 ae 0c 00 	cmp    BYTE PTR [rip+0xcae57],dil        # 0x3f7e48
  32cff1:	44 0f 28 c0          	movaps xmm8,xmm0
  32cff5:	f3 44 0f 5c 05 26 51 0c 00 	subss  xmm8,DWORD PTR [rip+0xc5126]        # 0x3f2124
