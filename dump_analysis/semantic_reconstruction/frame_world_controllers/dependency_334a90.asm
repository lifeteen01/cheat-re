334a90	rex push rbx
334a92	push   rbp
334a93	push   rsi
334a94	push   rdi
334a95	sub    rsp,0x28
334a99	mov    esi,r8d
334a9c	mov    rbp,rdx
334a9f	mov    rdi,rcx
334aa2	test   rcx,rcx
334aa5	je     0x334ae3
334aa7	mov    QWORD PTR [rsp+0x50],0x0
334ab0	jmp    0x334ad1
334ab2	mov    rcx,QWORD PTR [rbx+0x18]
334ab6	mov    rdx,rbp
334ab9	call   0x334ff4
334abe	test   al,al
334ac0	je     0x334ace
334ac2	mov    rcx,rbx
334ac5	call   0x335140
334aca	cmp    eax,esi
334acc	je     0x334aee
334ace	mov    rcx,rdi
334ad1	lea    rdx,[rsp+0x50]
334ad6	call   0x334660
334adb	mov    rbx,rax
334ade	test   rax,rax
334ae1	jne    0x334ab2
334ae3	xor    eax,eax
334ae5	add    rsp,0x28
334ae9	pop    rdi
334aea	pop    rsi
334aeb	pop    rbp
334aec	pop    rbx
334aed	ret
334aee	mov    rax,rbx
334af1	jmp    0x334ae5
