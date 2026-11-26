3901b8	mov    QWORD PTR [rsp+0x10],rbx
3901bd	push   rdi
3901be	sub    rsp,0x20
3901c2	mov    rdi,rdx
3901c5	mov    r8,rdx
3901c8	mov    rdx,rcx
3901cb	mov    rbx,rcx
3901ce	lea    rcx,[rsp+0x30]
3901d3	call   0x383044
3901d8	lea    r8,[rdi+0x8]
3901dc	lea    rdx,[rbx+0x8]
3901e0	lea    rcx,[rsp+0x30]
3901e5	movsd  xmm0,QWORD PTR [rax]
3901e9	movsd  QWORD PTR [rbx],xmm0
3901ed	call   0x383070
3901f2	movsd  xmm0,QWORD PTR [rax]
3901f6	movsd  QWORD PTR [rbx+0x8],xmm0
3901fb	mov    rbx,QWORD PTR [rsp+0x38]
390200	add    rsp,0x20
390204	pop    rdi
390205	ret
