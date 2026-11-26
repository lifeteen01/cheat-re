
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/318f34.bin:     file format binary


Disassembly of section .data:

0000000000318f34 <.data>:
  318f34:	40 53                	rex push rbx
  318f36:	48 83 ec 30          	sub    rsp,0x30
  318f3a:	48 8b ca             	mov    rcx,rdx
  318f3d:	0f 29 74 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm6
  318f42:	48 8b da             	mov    rbx,rdx
  318f45:	e8 be 1f fb ff       	call   0x2caf08
  318f4a:	84 c0                	test   al,al
  318f4c:	0f 84 c5 00 00 00    	je     0x319017
  318f52:	48 8b ca             	mov    rcx,rdx
  318f55:	e8 42 7f fc ff       	call   0x2e0e9c
  318f5a:	84 c0                	test   al,al
  318f5c:	0f 84 b5 00 00 00    	je     0x319017
  318f62:	80 3d 2f 10 0d 00 00 	cmp    BYTE PTR [rip+0xd102f],0x0        # 0x3e9f98
  318f69:	0f 84 8b 00 00 00    	je     0x318ffa
  318f6f:	f3 0f 10 0d 21 d1 0c 	movss  xmm1,DWORD PTR [rip+0xcd121]        # 0x3e6098
  318f76:	00 
  318f77:	f3 0f 58 0d f9 a1 f7 	addss  xmm1,DWORD PTR [rip+0xfffffffffff7a1f9]        # 0x293178
  318f7e:	ff 
  318f7f:	f3 0f 10 05 d1 4c 0d 	movss  xmm0,DWORD PTR [rip+0xd4cd1]        # 0x3edc58
  318f86:	00 
  318f87:	0f 2f c1             	comiss xmm0,xmm1
  318f8a:	76 6e                	jbe    0x318ffa
  318f8c:	48 8b cb             	mov    rcx,rbx
  318f8f:	e8 a4 12 05 00       	call   0x36a238
  318f94:	84 c0                	test   al,al
  318f96:	75 62                	jne    0x318ffa
  318f98:	48 8b cb             	mov    rcx,rbx
  318f9b:	e8 e8 22 05 00       	call   0x36b288
  318fa0:	84 c0                	test   al,al
  318fa2:	75 56                	jne    0x318ffa
  318fa4:	8b 0d 4e 69 0d 00    	mov    ecx,DWORD PTR [rip+0xd694e]        # 0x3ef8f8
  318faa:	b2 01                	mov    dl,0x1
  318fac:	e8 9b ce fc ff       	call   0x2e5e4c
  318fb1:	84 c0                	test   al,al
  318fb3:	74 0a                	je     0x318fbf
  318fb5:	f3 0f 10 35 3b 4d 0d 	movss  xmm6,DWORD PTR [rip+0xd4d3b]        # 0x3edcf8
  318fbc:	00 
  318fbd:	eb 03                	jmp    0x318fc2
  318fbf:	0f 57 f6             	xorps  xmm6,xmm6
  318fc2:	8b 0d 90 69 0d 00    	mov    ecx,DWORD PTR [rip+0xd6990]        # 0x3ef958
  318fc8:	b2 01                	mov    dl,0x1
  318fca:	e8 7d ce fc ff       	call   0x2e5e4c
  318fcf:	f3 0f 10 05 c9 a2 f7 	movss  xmm0,DWORD PTR [rip+0xfffffffffff7a2c9]        # 0x2932a0
  318fd6:	ff 
  318fd7:	84 c0                	test   al,al
  318fd9:	74 0b                	je     0x318fe6
  318fdb:	f3 0f 10 35 c5 4c 0d 	movss  xmm6,DWORD PTR [rip+0xd4cc5]        # 0x3edca8
  318fe2:	00 
  318fe3:	0f 57 f0             	xorps  xmm6,xmm0
  318fe6:	0f 57 f0             	xorps  xmm6,xmm0
  318fe9:	c6 05 88 79 0d 00 01 	mov    BYTE PTR [rip+0xd7988],0x1        # 0x3f0978
  318ff0:	f3 0f 11 b3 f8 07 00 	movss  DWORD PTR [rbx+0x7f8],xmm6
  318ff7:	00 
  318ff8:	eb 1d                	jmp    0x319017
  318ffa:	80 3d 77 79 0d 00 00 	cmp    BYTE PTR [rip+0xd7977],0x0        # 0x3f0978
  319001:	74 14                	je     0x319017
  319003:	e8 48 ff 04 00       	call   0x368f50
  319008:	f3 0f 11 83 f8 07 00 	movss  DWORD PTR [rbx+0x7f8],xmm0
  31900f:	00 
  319010:	c6 05 61 79 0d 00 00 	mov    BYTE PTR [rip+0xd7961],0x0        # 0x3f0978
  319017:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
  31901c:	48 83 c4 30          	add    rsp,0x30
  319020:	5b                   	pop    rbx
  319021:	c3                   	ret
