2ea7fc	cmp    BYTE PTR [rdx+0x9],0x0
2ea800	sete   al
2ea803	ret
2ea804	movss  xmm0,DWORD PTR [rip+0x104b6c]        # 0x3ef378
2ea80c	movss  DWORD PTR [rcx+0x1b4],xmm0
2ea814	movss  xmm1,DWORD PTR [rip+0x104b60]        # 0x3ef37c
2ea81c	movss  DWORD PTR [rcx+0x1b8],xmm1
2ea824	movss  xmm0,DWORD PTR [rip+0x104b54]        # 0x3ef380
2ea82c	movss  DWORD PTR [rcx+0x1bc],xmm0
2ea834	movss  xmm1,DWORD PTR [rip+0x104b48]        # 0x3ef384
2ea83c	movss  DWORD PTR [rcx+0x1c0],xmm1
2ea844	movss  xmm0,DWORD PTR [rip+0x104b3c]        # 0x3ef388
2ea84c	movss  DWORD PTR [rcx+0x1c4],xmm0
2ea854	movss  xmm1,DWORD PTR [rip+0x104b30]        # 0x3ef38c
2ea85c	movss  DWORD PTR [rcx+0x1c8],xmm1
2ea864	movss  xmm0,DWORD PTR [rip+0x104b24]        # 0x3ef390
2ea86c	movss  DWORD PTR [rcx+0x1cc],xmm0
2ea874	movss  xmm1,DWORD PTR [rip+0x104b18]        # 0x3ef394
2ea87c	movss  DWORD PTR [rcx+0x1d0],xmm1
2ea884	movups xmm0,XMMWORD PTR [rip+0x104b0d]        # 0x3ef398
2ea88b	movdqu XMMWORD PTR [rcx+0x1d4],xmm0
2ea893	movups xmm1,XMMWORD PTR [rip+0x104b0e]        # 0x3ef3a8
2ea89a	movdqu XMMWORD PTR [rcx+0x1e4],xmm1
2ea8a2	movups xmm0,XMMWORD PTR [rip+0x104b0f]        # 0x3ef3b8
2ea8a9	movdqu XMMWORD PTR [rcx+0x1f4],xmm0
2ea8b1	movups xmm1,XMMWORD PTR [rip+0x104b10]        # 0x3ef3c8
2ea8b8	movdqu XMMWORD PTR [rcx+0x204],xmm1
2ea8c0	movups xmm0,XMMWORD PTR [rip+0x104b11]        # 0x3ef3d8
2ea8c7	movdqu XMMWORD PTR [rcx+0x214],xmm0
2ea8cf	movups xmm1,XMMWORD PTR [rip+0x104b12]        # 0x3ef3e8
2ea8d6	movdqu XMMWORD PTR [rcx+0x224],xmm1
2ea8de	movups xmm0,XMMWORD PTR [rip+0x104b13]        # 0x3ef3f8
2ea8e5	movdqu XMMWORD PTR [rcx+0x234],xmm0
2ea8ed	movups xmm1,XMMWORD PTR [rip+0x104b14]        # 0x3ef408
2ea8f4	movdqu XMMWORD PTR [rcx+0x244],xmm1
2ea8fc	movups xmm0,XMMWORD PTR [rip+0x104b15]        # 0x3ef418
2ea903	movdqu XMMWORD PTR [rcx+0x254],xmm0
2ea90b	ret
2ea90c	rex push rbx
2ea90e	push   rbp
2ea90f	push   rsi
2ea910	push   rdi
2ea911	sub    rsp,0x38
2ea915	mov    rdi,r9
2ea918	mov    rsi,r8
2ea91b	mov    rbp,rdx
2ea91e	mov    rbx,rcx
2ea921	call   0x3164fc
2ea926	test   al,al
2ea928	je     0x2ea92e
2ea92a	mov    al,0x1
2ea92c	jmp    0x2ea96c
2ea92e	mov    r8,QWORD PTR [rsp+0x80]
2ea936	or     r9d,0xffffffff
2ea93a	mov    rdx,rsi
2ea93d	mov    DWORD PTR [rsp+0x20],0x0
2ea945	mov    rcx,rbp
2ea948	call   0x33416c
2ea94d	mov    QWORD PTR [rbx+0x8],rax
2ea951	test   rax,rax
2ea954	je     0x2ea96c
2ea956	mov    rcx,QWORD PTR [rax]
2ea959	mov    QWORD PTR [rbx],rcx
2ea95c	mov    QWORD PTR [rbx+0x28],rdi
2ea960	mov    QWORD PTR [rax],rdi
2ea963	mov    DWORD PTR [rbx+0x30],0x1
2ea96a	jmp    0x2ea92a
2ea96c	add    rsp,0x38
2ea970	pop    rdi
2ea971	pop    rsi
2ea972	pop    rbp
2ea973	pop    rbx
2ea974	ret
