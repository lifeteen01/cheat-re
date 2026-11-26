3738cc	mov    QWORD PTR [rsp+0x10],rbx
3738d1	push   rbp
3738d2	push   rsi
3738d3	push   rdi
3738d4	sub    rsp,0x40
3738d8	mov    eax,DWORD PTR [rip+0x8dea2]        # 0x401780
3738de	mov    rbp,rdx
3738e1	mov    rsi,rcx
3738e4	test   al,0x1
3738e6	jne    0x373971
3738ec	or     eax,0x1
3738ef	lea    rdx,[rsp+0x70]
3738f4	lea    rcx,[rsp+0x60]
3738f9	mov    DWORD PTR [rip+0x8de81],eax        # 0x401780
3738ff	call   0x3738b8
373904	mov    rcx,rax
373907	call   0x2dd138
37390c	lea    rdx,[rsp+0x2b]
373911	mov    rdi,rax
373914	lea    rcx,[rsp+0x60]
373919	call   0x37389c   ; STR "UnityEngine"
37391e	mov    rcx,rax
373921	call   0x2cde0c
373926	lea    rdx,[rsp+0x20]
37392b	mov    rbx,rax
37392e	lea    rcx,[rsp+0x60]
373933	call   0x373880   ; STR "Quaternion"
373938	mov    rcx,rax
37393b	call   0x2d85cc
373940	mov    rcx,rax
373943	mov    rdx,rbx
373946	call   0x334224
37394b	mov    rcx,rax
37394e	mov    r9b,0x1
373951	mov    r8d,0x1
373957	mov    rdx,rdi
37395a	call   0x334a90
37395f	mov    r8,QWORD PTR [rax]
373962	mov    eax,DWORD PTR [rip+0x8de18]        # 0x401780
373968	mov    QWORD PTR [rip+0x8de09],r8        # 0x401778
37396f	jmp    0x373978
373971	mov    r8,QWORD PTR [rip+0x8de00]        # 0x401778
373978	test   al,0x2
37397a	jne    0x37399b
37397c	mov    rcx,QWORD PTR [rip+0x624dd]        # 0x3d5e60
373983	lea    rdx,[rip+0x8de06]        # 0x401790
37398a	or     eax,0x2
37398d	xor    r9d,r9d
373990	mov    DWORD PTR [rip+0x8ddea],eax        # 0x401780
373996	call   0x2cbd24
37399b	mov    rcx,QWORD PTR [rip+0x624be]        # 0x3d5e60
3739a2	lea    rdx,[rip+0x8dde7]        # 0x401790
3739a9	mov    r9,rbp
3739ac	mov    r8,rsi
3739af	call   0x2d2094
3739b4	mov    rbx,QWORD PTR [rsp+0x68]
3739b9	mov    rax,rsi
3739bc	add    rsp,0x40
3739c0	pop    rdi
3739c1	pop    rsi
3739c2	pop    rbp
3739c3	ret
