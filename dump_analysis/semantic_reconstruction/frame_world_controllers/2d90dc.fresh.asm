
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d90dc.bin:     file format binary


Disassembly of section .data:

00000000002d90dc <.data>:
  2d90dc:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
  2d90e1:	48 89 74 24 20       	mov    QWORD PTR [rsp+0x20],rsi
  2d90e6:	57                   	push   rdi
  2d90e7:	48 83 ec 40          	sub    rsp,0x40
  2d90eb:	48 8d 71 20          	lea    rsi,[rcx+0x20]
  2d90ef:	48 8b f9             	mov    rdi,rcx
  2d90f2:	48 8b ce             	mov    rcx,rsi
  2d90f5:	e8 7a ee ff ff       	call   0x2d7f74
  2d90fa:	48 8d 5f 40          	lea    rbx,[rdi+0x40]
  2d90fe:	48 8b cb             	mov    rcx,rbx
  2d9101:	e8 b6 02 00 00       	call   0x2d93bc
  2d9106:	48 8b ce             	mov    rcx,rsi
  2d9109:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  2d910d:	48 c1 e2 02          	shl    rdx,0x2
  2d9111:	e8 d6 01 00 00       	call   0x2d92ec
  2d9116:	48 8d 54 24 50       	lea    rdx,[rsp+0x50]
  2d911b:	48 8b cb             	mov    rcx,rbx
  2d911e:	e8 09 e8 ff ff       	call   0x2d792c
  2d9123:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  2d9128:	48 8b cb             	mov    rcx,rbx
  2d912b:	e8 3c e8 ff ff       	call   0x2d796c
  2d9130:	eb 67                	jmp    0x2d9199
  2d9132:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d9137:	e8 84 bc ff ff       	call   0x2d4dc0
  2d913c:	48 8b c8             	mov    rcx,rax
  2d913f:	48 8b d8             	mov    rbx,rax
  2d9142:	e8 5d 22 ff ff       	call   0x2cb3a4
  2d9147:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d914c:	8b 10                	mov    edx,DWORD PTR [rax]
  2d914e:	e8 d5 03 00 00       	call   0x2d9528
  2d9153:	48 8b d0             	mov    rdx,rax
  2d9156:	48 8b ce             	mov    rcx,rsi
  2d9159:	e8 86 c4 ff ff       	call   0x2d55e4
  2d915e:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d9163:	e8 8c 33 ff ff       	call   0x2cc4f4
  2d9168:	b2 3d                	mov    dl,0x3d
  2d916a:	48 8b ce             	mov    rcx,rsi
  2d916d:	e8 7a c4 ff ff       	call   0x2d55ec
  2d9172:	48 8b cb             	mov    rcx,rbx
  2d9175:	e8 c2 9a ff ff       	call   0x2d2c3c
  2d917a:	48 8b d0             	mov    rdx,rax
  2d917d:	48 8b ce             	mov    rcx,rsi
  2d9180:	e8 5f c4 ff ff       	call   0x2d55e4
  2d9185:	b2 0a                	mov    dl,0xa
  2d9187:	48 8b ce             	mov    rcx,rsi
  2d918a:	e8 5d c4 ff ff       	call   0x2d55ec
  2d918f:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d9194:	e8 67 bc ff ff       	call   0x2d4e00
  2d9199:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
  2d919e:	48 8d 4c 24 50       	lea    rcx,[rsp+0x50]
  2d91a3:	e8 8c 33 ff ff       	call   0x2cc534
  2d91a8:	84 c0                	test   al,al
  2d91aa:	74 86                	je     0x2d9132
  2d91ac:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  2d91b1:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
  2d91b6:	c6 87 84 00 00 00 00 	mov    BYTE PTR [rdi+0x84],0x0
  2d91bd:	48 83 c4 40          	add    rsp,0x40
  2d91c1:	5f                   	pop    rdi
  2d91c2:	c3                   	ret
