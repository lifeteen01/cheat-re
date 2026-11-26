
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ab324 <.data+0x3ab324>:
  3ab324:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3ab329:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  3ab32e:	57                   	push   rdi
  3ab32f:	48 83 ec 30          	sub    rsp,0x30
  3ab333:	48 63 fa             	movsxd rdi,edx
  3ab336:	48 8b f1             	mov    rsi,rcx
  3ab339:	45 85 c9             	test   r9d,r9d
  3ab33c:	74 48                	je     0x3ab386
  3ab33e:	8b 5c 24 78          	mov    ebx,DWORD PTR [rsp+0x78]
  3ab342:	41 b2 03             	mov    r10b,0x3
  3ab345:	44 8b 5c 24 70       	mov    r11d,DWORD PTR [rsp+0x70]
  3ab34a:	45 85 c0             	test   r8d,r8d
  3ab34d:	74 58                	je     0x3ab3a7
  3ab34f:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [rsp+0x88]
  3ab356:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [rsp+0x80]
  3ab35d:	48 6b cf 0e          	imul   rcx,rdi,0xe
  3ab361:	44 8d 0c 13          	lea    r9d,[rbx+rdx*1]
  3ab365:	89 54 24 28          	mov    DWORD PTR [rsp+0x28],edx
  3ab369:	ff c7                	inc    edi
  3ab36b:	41 d1 f9             	sar    r9d,1
  3ab36e:	45 8d 04 03          	lea    r8d,[r11+rax*1]
  3ab372:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  3ab376:	48 03 ce             	add    rcx,rsi
  3ab379:	41 d1 f8             	sar    r8d,1
  3ab37c:	41 8a d2             	mov    dl,r10b
  3ab37f:	e8 d0 29 00 00       	call   0x3add54
  3ab384:	eb 21                	jmp    0x3ab3a7
  3ab386:	45 85 c0             	test   r8d,r8d
  3ab389:	74 14                	je     0x3ab39f
  3ab38b:	44 8b 9c 24 80 00 00 	mov    r11d,DWORD PTR [rsp+0x80]
  3ab392:	00 
  3ab393:	41 b2 03             	mov    r10b,0x3
  3ab396:	8b 9c 24 88 00 00 00 	mov    ebx,DWORD PTR [rsp+0x88]
  3ab39d:	eb 08                	jmp    0x3ab3a7
  3ab39f:	45 33 db             	xor    r11d,r11d
  3ab3a2:	41 b2 02             	mov    r10b,0x2
  3ab3a5:	33 db                	xor    ebx,ebx
  3ab3a7:	44 8b 4c 24 68       	mov    r9d,DWORD PTR [rsp+0x68]
  3ab3ac:	41 8a d2             	mov    dl,r10b
  3ab3af:	44 8b 44 24 60       	mov    r8d,DWORD PTR [rsp+0x60]
  3ab3b4:	48 63 c7             	movsxd rax,edi
  3ab3b7:	48 6b c8 0e          	imul   rcx,rax,0xe
  3ab3bb:	89 5c 24 28          	mov    DWORD PTR [rsp+0x28],ebx
  3ab3bf:	48 03 ce             	add    rcx,rsi
  3ab3c2:	44 89 5c 24 20       	mov    DWORD PTR [rsp+0x20],r11d
  3ab3c7:	e8 88 29 00 00       	call   0x3add54
  3ab3cc:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  3ab3d1:	8d 47 01             	lea    eax,[rdi+0x1]
  3ab3d4:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  3ab3d9:	48 83 c4 30          	add    rsp,0x30
  3ab3dd:	5f                   	pop    rdi
  3ab3de:	c3                   	ret
