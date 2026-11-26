320760	mov    QWORD PTR [rsp+0x8],rbx
320765	mov    QWORD PTR [rsp+0x10],rsi
32076a	push   rdi
32076b	sub    rsp,0x20
32076f	mov    rbx,r8
320772	mov    rsi,rdx
320775	mov    rdi,rcx
320778	cmp    r8,r9
32077b	je     0x32078d
32077d	mov    rdx,QWORD PTR [rcx+0x8]
320781	mov    rcx,r9
320784	call   0x2ec324
320789	mov    QWORD PTR [rdi+0x8],rax
32078d	mov    rcx,rdi
320790	call   0x2cb3a4
320795	mov    r8,rax
320798	mov    rdx,rbx
32079b	mov    rcx,rsi
32079e	call   0x2d3fe0
3207a3	mov    rbx,QWORD PTR [rsp+0x30]
3207a8	mov    rax,rsi
3207ab	mov    rsi,QWORD PTR [rsp+0x38]
3207b0	add    rsp,0x20
3207b4	pop    rdi
3207b5	ret
