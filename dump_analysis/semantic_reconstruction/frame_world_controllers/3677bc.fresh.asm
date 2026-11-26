
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3677bc.bin:     file format binary


Disassembly of section .data:

00000000003677bc <.data>:
  3677bc:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  3677c1:	55                   	push   rbp
  3677c2:	48 8b ec             	mov    rbp,rsp
  3677c5:	48 83 ec 70          	sub    rsp,0x70
  3677c9:	48 8b da             	mov    rbx,rdx
  3677cc:	0f 29 74 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm6
  3677d1:	49 8b d0             	mov    rdx,r8
  3677d4:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  3677d8:	0f 28 f3             	movaps xmm6,xmm3
  3677db:	e8 88 4a f6 ff       	call   0x2cc268
  3677e0:	0f 28 ce             	movaps xmm1,xmm6
  3677e3:	48 8d 4d b8          	lea    rcx,[rbp-0x48]
  3677e7:	e8 0c 64 f7 ff       	call   0x2ddbf8
  3677ec:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
  3677f0:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  3677f4:	e8 6f 4a f6 ff       	call   0x2cc268
  3677f9:	f3 0f 10 4d 38       	movss  xmm1,DWORD PTR [rbp+0x38]
  3677fe:	48 8d 4d c8          	lea    rcx,[rbp-0x38]
  367802:	e8 f1 63 f7 ff       	call   0x2ddbf8
  367807:	8b 55 40             	mov    edx,DWORD PTR [rbp+0x40]
  36780a:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  36780e:	e8 5d 7b f7 ff       	call   0x2df370
  367813:	8b 55 48             	mov    edx,DWORD PTR [rbp+0x48]
  367816:	48 8d 4d d8          	lea    rcx,[rbp-0x28]
  36781a:	e8 51 7b f7 ff       	call   0x2df370
  36781f:	8b 55 50             	mov    edx,DWORD PTR [rbp+0x50]
  367822:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  367826:	e8 45 7b f7 ff       	call   0x2df370
  36782b:	0f 10 45 b0          	movups xmm0,XMMWORD PTR [rbp-0x50]
  36782f:	c7 45 18 00 01 00 01 	mov    DWORD PTR [rbp+0x18],0x1000100
  367836:	48 8b cb             	mov    rcx,rbx
  367839:	0f 10 4d c0          	movups xmm1,XMMWORD PTR [rbp-0x40]
  36783d:	8b 45 18             	mov    eax,DWORD PTR [rbp+0x18]
  367840:	0f 11 83 88 00 00 00 	movups XMMWORD PTR [rbx+0x88],xmm0
  367847:	89 83 d0 00 00 00    	mov    DWORD PTR [rbx+0xd0],eax
  36784d:	48 8d 45 08          	lea    rax,[rbp+0x8]
  367851:	0f 10 45 d0          	movups xmm0,XMMWORD PTR [rbp-0x30]
  367855:	48 c7 83 80 00 00 00 	mov    QWORD PTR [rbx+0x80],0x7
  36785c:	07 00 00 00 
  367860:	0f 11 8b 98 00 00 00 	movups XMMWORD PTR [rbx+0x98],xmm1
  367867:	48 89 43 78          	mov    QWORD PTR [rbx+0x78],rax
  36786b:	f2 0f 10 4d e0       	movsd  xmm1,QWORD PTR [rbp-0x20]
  367870:	0f 11 83 a8 00 00 00 	movups XMMWORD PTR [rbx+0xa8],xmm0
  367877:	f2 0f 11 8b b8 00 00 	movsd  QWORD PTR [rbx+0xb8],xmm1
  36787e:	00 
  36787f:	48 8b 9c 24 80 00 00 	mov    rbx,QWORD PTR [rsp+0x80]
  367886:	00 
  367887:	0f 28 74 24 60       	movaps xmm6,XMMWORD PTR [rsp+0x60]
  36788c:	48 83 c4 70          	add    rsp,0x70
  367890:	5d                   	pop    rbp
  367891:	e9 3e 63 06 00       	jmp    0x3cdbd4
