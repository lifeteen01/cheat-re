392298	sub    rsp,0x38
39229c	mov    rdx,QWORD PTR [rip+0x73885]        # 0x405b28
3922a3	movsxd rax,ecx
3922a6	lea    rcx,[rsp+0x20]
3922ab	add    rax,rax
3922ae	mulss  xmm1,DWORD PTR [rdx+0x37d0]
3922b6	movdqu xmm0,XMMWORD PTR [rdx+rax*8+0x38b8]
3922bf	movups XMMWORD PTR [rsp+0x20],xmm0
3922c4	shufps xmm0,xmm0,0xff
3922c8	mulss  xmm0,xmm1
3922cc	movss  DWORD PTR [rsp+0x2c],xmm0
3922d2	call   0x39045c
3922d7	add    rsp,0x38
3922db	ret
