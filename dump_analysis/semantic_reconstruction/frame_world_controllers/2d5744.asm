2d5744	mov    QWORD PTR [rsp+0x8],rbx
2d5749	push   rbp
2d574a	push   rsi
2d574b	push   rdi
2d574c	sub    rsp,0x30
2d5750	mov    rsi,rdx
2d5753	mov    rbp,rcx
2d5756	lea    rdx,[rsp+0x20]
2d575b	lea    rcx,[rsp+0x60]
2d5760	call   0x2d520c   ; STR "System"
2d5765	mov    rcx,rax
2d5768	call   0x2cdcf4
2d576d	lea    rdx,[rsp+0x68]
2d5772	mov    rbx,rax
2d5775	lea    rcx,[rsp+0x60]
2d577a	call   0x2d5028   ; STR "Byte"
2d577f	mov    rcx,rax
2d5782	call   0x2cdccc
2d5787	mov    rcx,rax
2d578a	mov    rdx,rbx
2d578d	call   0x334224
2d5792	mov    rcx,rax
2d5795	mov    rdx,rsi
2d5798	call   0x2d8d74
2d579d	mov    rdi,rax
2d57a0	test   rax,rax
2d57a3	je     0x2d57c6
2d57a5	xor    ebx,ebx
2d57a7	test   rsi,rsi
2d57aa	je     0x2d57c3
2d57ac	mov    edx,ebx
2d57ae	mov    rcx,rdi
2d57b1	call   0x2d56a8
2d57b6	mov    cl,BYTE PTR [rbx+rbp*1]
2d57b9	inc    rbx
2d57bc	mov    BYTE PTR [rax],cl
2d57be	cmp    rbx,rsi
2d57c1	jb     0x2d57ac
2d57c3	mov    rax,rdi
2d57c6	mov    rbx,QWORD PTR [rsp+0x50]
2d57cb	add    rsp,0x30
2d57cf	pop    rdi
2d57d0	pop    rsi
2d57d1	pop    rbp
2d57d2	ret
