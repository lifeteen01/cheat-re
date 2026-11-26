394dd4	mov    QWORD PTR [rsp+0x8],rbx
394dd9	push   rdi
394dda	sub    rsp,0x20
394dde	mov    rbx,QWORD PTR [rip+0x70d43]        # 0x405b28
394de5	cmp    BYTE PTR [rbx+0x5c90],0x0
394dec	je     0x394e4e
394dee	lea    rcx,[rip+0xfffffffffff15337]        # 0x2aa12c
394df5	call   0x395038
394dfa	cmp    DWORD PTR [rbx+0x5c94],0x4
394e01	jne    0x394e26
394e03	lea    rdi,[rbx+0x5ca0]
394e0a	mov    rcx,rdi
394e0d	call   0x39eba4
394e12	test   al,al
394e14	jne    0x394e26
394e16	mov    rcx,rdi
394e19	call   0x39e3a4
394e1e	mov    rcx,rax
394e21	call   0x39b1f8
394e26	lea    rcx,[rbx+0x5ca0]
394e2d	mov    BYTE PTR [rbx+0x5c90],0x0
394e34	mov    DWORD PTR [rbx+0x5c94],0x0
394e3e	mov    QWORD PTR [rbx+0x5c98],0x0
394e49	call   0x3788ec
394e4e	mov    rbx,QWORD PTR [rsp+0x30]
394e53	add    rsp,0x20
394e57	pop    rdi
394e58	ret
