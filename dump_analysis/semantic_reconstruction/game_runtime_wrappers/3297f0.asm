3297f0	mov    QWORD PTR [rsp+0x8],rbx
3297f5	push   rbp
3297f6	push   rsi
3297f7	push   rdi
3297f8	sub    rsp,0x60
3297fc	mov    rbp,rcx
3297ff	call   0x2caf08
329804	test   al,al
329806	jne    0x32980f
329808	xor    eax,eax
32980a	jmp    0x32990e
32980f	mov    eax,DWORD PTR [rip+0xc93fb]        # 0x3f2c10
329815	test   al,0x1
329817	jne    0x3298ce
32981d	or     eax,0x1
329820	lea    rdx,[rsp+0x88]
329828	lea    rcx,[rsp+0x88]
329830	mov    DWORD PTR [rip+0xc93da],eax        # 0x3f2c10
329836	call   0x2cc730
32983b	mov    rcx,rax
32983e	call   0x2cdca4
329843	lea    rdx,[rsp+0x46]
329848	mov    rsi,rax
32984b	lea    rcx,[rsp+0x90]
329853	call   0x323d7c   ; STR "get_transform"
329858	mov    rcx,rax
32985b	call   0x2d861c
329860	lea    rdx,[rsp+0x3a]
329865	mov    rdi,rax
329868	lea    rcx,[rsp+0x90]
329870	call   0x323b04   ; STR "UnityEngine"
329875	mov    rcx,rax
329878	call   0x2cde0c
32987d	lea    rdx,[rsp+0x30]
329882	mov    rbx,rax
329885	lea    rcx,[rsp+0x90]
32988d	call   0x3238bc   ; STR "Component"
329892	mov    rcx,rax
329895	call   0x2cdd1c
32989a	mov    rcx,rax
32989d	mov    rdx,rbx
3298a0	call   0x334224
3298a5	or     r8d,0xffffffff
3298a9	mov    rcx,rax
3298ac	mov    r9,rsi
3298af	mov    DWORD PTR [rsp+0x20],r8d
3298b4	mov    rdx,rdi
3298b7	call   0x3349ac
3298bc	mov    r8,QWORD PTR [rax]
3298bf	mov    eax,DWORD PTR [rip+0xc934b]        # 0x3f2c10
3298c5	mov    QWORD PTR [rip+0xc933c],r8        # 0x3f2c08
3298cc	jmp    0x3298d5
3298ce	mov    r8,QWORD PTR [rip+0xc9333]        # 0x3f2c08
3298d5	test   al,0x2
3298d7	jne    0x3298f8
3298d9	mov    rcx,QWORD PTR [rip+0xac580]        # 0x3d5e60
3298e0	lea    rdx,[rip+0xc9339]        # 0x3f2c20
3298e7	or     eax,0x2
3298ea	xor    r9d,r9d
3298ed	mov    DWORD PTR [rip+0xc931d],eax        # 0x3f2c10
3298f3	call   0x2cbd24
3298f8	mov    rcx,QWORD PTR [rip+0xac561]        # 0x3d5e60
3298ff	lea    rdx,[rip+0xc931a]        # 0x3f2c20
329906	mov    r8,rbp
329909	call   0x2cb9fc
32990e	mov    rbx,QWORD PTR [rsp+0x80]
329916	add    rsp,0x60
32991a	pop    rdi
32991b	pop    rsi
32991c	pop    rbp
32991d	ret
