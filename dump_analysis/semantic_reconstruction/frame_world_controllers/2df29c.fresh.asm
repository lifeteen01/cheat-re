
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2df29c.bin:     file format binary


Disassembly of section .data:

00000000002df29c <.data>:
  2df29c:	40 53                	rex push rbx
  2df29e:	55                   	push   rbp
  2df29f:	56                   	push   rsi
  2df2a0:	57                   	push   rdi
  2df2a1:	48 83 ec 28          	sub    rsp,0x28
  2df2a5:	49 8b f0             	mov    rsi,r8
  2df2a8:	48 8b da             	mov    rbx,rdx
  2df2ab:	48 8b e9             	mov    rbp,rcx
  2df2ae:	e8 09 89 0e 00       	call   0x3c7bbc
  2df2b3:	48 8d 4d 0c          	lea    rcx,[rbp+0xc]
  2df2b7:	e8 00 89 0e 00       	call   0x3c7bbc
  2df2bc:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  2df2bf:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  2df2c3:	f2 0f 11 45 00       	movsd  QWORD PTR [rbp+0x0],xmm0
  2df2c8:	f2 0f 10 06          	movsd  xmm0,QWORD PTR [rsi]
  2df2cc:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
  2df2cf:	8b 46 08             	mov    eax,DWORD PTR [rsi+0x8]
  2df2d2:	f2 0f 11 45 0c       	movsd  QWORD PTR [rbp+0xc],xmm0
  2df2d7:	89 45 14             	mov    DWORD PTR [rbp+0x14],eax
  2df2da:	48 8b c5             	mov    rax,rbp
  2df2dd:	48 83 c4 28          	add    rsp,0x28
  2df2e1:	5f                   	pop    rdi
  2df2e2:	5e                   	pop    rsi
  2df2e3:	5d                   	pop    rbp
  2df2e4:	5b                   	pop    rbx
  2df2e5:	c3                   	ret
