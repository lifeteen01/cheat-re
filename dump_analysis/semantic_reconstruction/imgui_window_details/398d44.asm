398d44	rex push rbx
398d46	sub    rsp,0x30
398d4a	movss  xmm0,DWORD PTR [rcx+0x24]
398d4f	mov    rbx,rdx
398d52	movss  xmm3,DWORD PTR [rcx+0x20]
398d57	addss  xmm0,DWORD PTR [rcx+0x2c]
398d5c	addss  xmm3,DWORD PTR [rcx+0x28]
398d61	movss  xmm2,DWORD PTR [rcx+0x24]
398d66	movss  xmm1,DWORD PTR [rcx+0x20]
398d6b	mov    rcx,rdx
398d6e	movss  DWORD PTR [rsp+0x20],xmm0
398d74	call   0x38baf4
398d79	mov    rax,rbx
398d7c	add    rsp,0x30
398d80	pop    rbx
398d81	ret
