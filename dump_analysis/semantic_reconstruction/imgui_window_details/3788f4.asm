3788f4	rex push rbx
3788f6	sub    rsp,0x20
3788fa	movss  xmm2,DWORD PTR [rcx+0xc]
3788ff	mov    rbx,rdx
378902	movss  xmm1,DWORD PTR [rcx+0x8]
378907	addss  xmm2,DWORD PTR [rcx+0x4]
37890c	addss  xmm1,DWORD PTR [rcx]
378910	movss  xmm0,DWORD PTR [rip+0xfffffffffff14938]        # 0x28d250
378918	mov    rcx,rdx
37891b	mulss  xmm2,xmm0
37891f	mulss  xmm1,xmm0
378923	call   0x2cc340
378928	mov    rax,rbx
37892b	add    rsp,0x20
37892f	pop    rbx
378930	ret
