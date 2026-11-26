
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/36b0c8.bin:     file format binary


Disassembly of section .data:

000000000036b0c8 <.data>:
  36b0c8:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  36b0cd:	57                   	push   rdi
  36b0ce:	48 83 ec 70          	sub    rsp,0x70
  36b0d2:	8b 15 f0 34 09 00    	mov    edx,DWORD PTR [rip+0x934f0]        # 0x3fe5c8
  36b0d8:	49 8b d8             	mov    rbx,r8
  36b0db:	0f 29 74 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm6
  36b0e0:	0f 28 f3             	movaps xmm6,xmm3
  36b0e3:	0f 29 7c 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm7
  36b0e8:	0f 28 f9             	movaps xmm7,xmm1
  36b0eb:	48 8b f9             	mov    rdi,rcx
  36b0ee:	f6 c2 01             	test   dl,0x1
  36b0f1:	75 20                	jne    0x36b113
  36b0f3:	4c 8b 05 06 be 06 00 	mov    r8,QWORD PTR [rip+0x6be06]        # 0x3d6f00
  36b0fa:	83 ca 01             	or     edx,0x1
  36b0fd:	49 81 c0 80 d6 11 03 	add    r8,0x311d680
  36b104:	89 15 be 34 09 00    	mov    DWORD PTR [rip+0x934be],edx        # 0x3fe5c8
  36b10a:	4c 89 05 af 34 09 00 	mov    QWORD PTR [rip+0x934af],r8        # 0x3fe5c0
  36b111:	eb 07                	jmp    0x36b11a
  36b113:	4c 8b 05 a6 34 09 00 	mov    r8,QWORD PTR [rip+0x934a6]        # 0x3fe5c0
  36b11a:	f6 c2 02             	test   dl,0x2
  36b11d:	75 1f                	jne    0x36b13e
  36b11f:	48 8b 0d 3a ad 06 00 	mov    rcx,QWORD PTR [rip+0x6ad3a]        # 0x3d5e60
  36b126:	83 ca 02             	or     edx,0x2
  36b129:	89 15 99 34 09 00    	mov    DWORD PTR [rip+0x93499],edx        # 0x3fe5c8
  36b12f:	45 33 c9             	xor    r9d,r9d
  36b132:	48 8d 15 97 34 09 00 	lea    rdx,[rip+0x93497]        # 0x3fe5d0
  36b139:	e8 e6 0b f6 ff       	call   0x2cbd24
  36b13e:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [rsp+0xa8]
  36b145:	48 8d 15 84 34 09 00 	lea    rdx,[rip+0x93484]        # 0x3fe5d0
  36b14c:	48 8b 0d 0d ad 06 00 	mov    rcx,QWORD PTR [rip+0x6ad0d]        # 0x3d5e60
  36b153:	0f 28 df             	movaps xmm3,xmm7
  36b156:	c7 44 24 40 00 00 00 	mov    DWORD PTR [rsp+0x40],0x0
  36b15d:	00 
  36b15e:	4c 8b c7             	mov    r8,rdi
  36b161:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  36b165:	8b 84 24 a0 00 00 00 	mov    eax,DWORD PTR [rsp+0xa0]
  36b16c:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
  36b170:	f3 0f 11 74 24 28    	movss  DWORD PTR [rsp+0x28],xmm6
  36b176:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
  36b17b:	e8 3c c6 ff ff       	call   0x3677bc
  36b180:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  36b187:	00 
  36b188:	84 c0                	test   al,al
  36b18a:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  36b18f:	0f 28 7c 24 50       	movaps xmm7,XMMWORD PTR [rsp+0x50]
  36b194:	0f 95 c0             	setne  al
  36b197:	48 83 c4 70          	add    rsp,0x70
  36b19b:	5f                   	pop    rdi
  36b19c:	c3                   	ret
