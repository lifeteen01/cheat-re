2d550c	mov    eax,DWORD PTR [rip+0xfffffffffffb7f66]        # 0x28d478
2d5512	movsd  xmm0,QWORD PTR [rip+0xfffffffffffb7f56]        # 0x28d470
2d551a	movsd  QWORD PTR [rdx],xmm0
2d551e	mov    DWORD PTR [rdx+0x8],eax
2d5521	movzx  eax,WORD PTR [rip+0xfffffffffffb7f54]        # 0x28d47c
2d5528	mov    WORD PTR [rdx+0xc],ax
2d552c	mov    al,BYTE PTR [rip+0xfffffffffffb7f4c]        # 0x28d47e
2d5532	mov    BYTE PTR [rdx+0xe],al
2d5535	mov    rax,rdx
2d5538	ret
