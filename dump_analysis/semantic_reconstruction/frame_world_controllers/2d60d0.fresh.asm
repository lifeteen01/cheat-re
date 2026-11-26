
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d60d0.bin:     file format binary


Disassembly of section .data:

00000000002d60d0 <.data>:
  2d60d0:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  2d60d5:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  2d60da:	57                   	push   rdi
  2d60db:	48 83 ec 50          	sub    rsp,0x50
  2d60df:	48 8b d9             	mov    rbx,rcx
  2d60e2:	e8 91 b8 ff ff       	call   0x2d1978
  2d60e7:	48 8b cb             	mov    rcx,rbx
  2d60ea:	48 8b f8             	mov    rdi,rax
  2d60ed:	e8 ce 18 00 00       	call   0x2d79c0
  2d60f2:	48 8b f0             	mov    rsi,rax
  2d60f5:	48 3b f8             	cmp    rdi,rax
  2d60f8:	0f 84 9d 00 00 00    	je     0x2d619b
  2d60fe:	48 8b d7             	mov    rdx,rdi
  2d6101:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d6106:	e8 dd e6 ff ff       	call   0x2d47e8
  2d610b:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
  2d610f:	85 d2                	test   edx,edx
  2d6111:	74 4a                	je     0x2d615d
  2d6113:	83 ea 01             	sub    edx,0x1
  2d6116:	74 1c                	je     0x2d6134
  2d6118:	83 fa 01             	cmp    edx,0x1
  2d611b:	75 67                	jne    0x2d6184
  2d611d:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d6122:	e8 c5 76 ff ff       	call   0x2cd7ec
  2d6127:	48 8b d0             	mov    rdx,rax
  2d612a:	48 8b cb             	mov    rcx,rbx
  2d612d:	e8 e6 f7 ff ff       	call   0x2d5918
  2d6132:	eb 50                	jmp    0x2d6184
  2d6134:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d6139:	e8 56 25 00 00       	call   0x2d8694
  2d613e:	84 c0                	test   al,al
  2d6140:	74 04                	je     0x2d6146
  2d6142:	33 c0                	xor    eax,eax
  2d6144:	eb 0a                	jmp    0x2d6150
  2d6146:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d614b:	e8 9c 76 ff ff       	call   0x2cd7ec
  2d6150:	48 8b d0             	mov    rdx,rax
  2d6153:	48 8b cb             	mov    rcx,rbx
  2d6156:	e8 2d 03 00 00       	call   0x2d6488
  2d615b:	eb 27                	jmp    0x2d6184
  2d615d:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d6162:	e8 2d 25 00 00       	call   0x2d8694
  2d6167:	84 c0                	test   al,al
  2d6169:	74 04                	je     0x2d616f
  2d616b:	33 c0                	xor    eax,eax
  2d616d:	eb 0a                	jmp    0x2d6179
  2d616f:	48 8d 4c 24 28       	lea    rcx,[rsp+0x28]
  2d6174:	e8 73 76 ff ff       	call   0x2cd7ec
  2d6179:	48 8b d0             	mov    rdx,rax
  2d617c:	48 8b cb             	mov    rcx,rbx
  2d617f:	e8 e4 fe ff ff       	call   0x2d6068
  2d6184:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2d6189:	e8 ca e8 ff ff       	call   0x2d4a58
  2d618e:	48 83 c7 28          	add    rdi,0x28
  2d6192:	48 3b fe             	cmp    rdi,rsi
  2d6195:	0f 85 63 ff ff ff    	jne    0x2d60fe
  2d619b:	48 8b cb             	mov    rcx,rbx
  2d619e:	48 8b 5c 24 60       	mov    rbx,QWORD PTR [rsp+0x60]
  2d61a3:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
  2d61a8:	48 83 c4 50          	add    rsp,0x50
  2d61ac:	5f                   	pop    rdi
  2d61ad:	e9 fe 1d 00 00       	jmp    0x2d7fb0
