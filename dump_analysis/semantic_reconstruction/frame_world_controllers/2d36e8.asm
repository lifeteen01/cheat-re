2d36e8	mov    QWORD PTR [rsp+0x8],rbx
2d36ed	push   rdi
2d36ee	sub    rsp,0x50
2d36f2	mov    rdi,rcx
2d36f5	movaps XMMWORD PTR [rsp+0x40],xmm6
2d36fa	mov    rcx,rdx
2d36fd	movaps xmm6,xmm2
2d3700	call   0x2cd7ec
2d3705	mov    rcx,rax
2d3708	call   0x2d6354
2d370d	lea    rcx,[rsp+0x20]
2d3712	movaps xmm1,xmm6
2d3715	mov    rbx,rax
2d3718	call   0x2d9540
2d371d	mov    r8,rax
2d3720	mov    edx,ebx
2d3722	mov    rcx,rdi
2d3725	call   0x2d9328
2d372a	lea    rcx,[rsp+0x20]
2d372f	call   0x2cc4f4
2d3734	mov    rbx,QWORD PTR [rsp+0x60]
2d3739	movaps xmm6,XMMWORD PTR [rsp+0x40]
2d373e	add    rsp,0x50
2d3742	pop    rdi
2d3743	ret
