2ddc4c	sub    rsp,0x38
2ddc50	movsd  xmm0,QWORD PTR [rcx+0x48]
2ddc55	lea    rdx,[rcx+0x8]
2ddc59	mov    eax,DWORD PTR [rcx+0x50]
2ddc5c	lea    r8,[rsp+0x20]
2ddc61	lea    rcx,[rip+0xf9168]        # 0x3d6dd0
2ddc68	movsd  QWORD PTR [rsp+0x20],xmm0
2ddc6e	mov    DWORD PTR [rsp+0x28],eax
2ddc72	call   0x2d3c84
2ddc77	add    rsp,0x38
2ddc7b	ret
