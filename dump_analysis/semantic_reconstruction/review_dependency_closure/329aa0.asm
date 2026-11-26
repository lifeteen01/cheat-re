329aa0	mov    r11,rsp
329aa3	mov    QWORD PTR [r11+0x8],rbx
329aa7	mov    QWORD PTR [r11+0x10],rsi
329aab	push   rdi
329aac	sub    rsp,0x60
329ab0	mov    eax,DWORD PTR [rip+0xc8e7a]        # 0x3f2930
329ab6	mov    bl,r8b
329ab9	mov    edi,edx
329abb	mov    esi,ecx
329abd	test   al,0x1
329abf	jne    0x329af9
329ac1	or     eax,0x1
329ac4	lea    rdx,[r11-0x38]
329ac8	lea    rcx,[r11+0x20]
329acc	mov    DWORD PTR [rip+0xc8e5e],eax        # 0x3f2930
329ad2	call   0x3238f4   ; STR "UnityEngine.Physics::IgnoreLayerCollision()"
329ad7	mov    rcx,rax
329ada	call   0x32a8fc
329adf	mov    rcx,rax
329ae2	call   0x32a938
329ae7	mov    r8,rax
329aea	mov    QWORD PTR [rip+0xc8e37],rax        # 0x3f2928
329af1	mov    eax,DWORD PTR [rip+0xc8e39]        # 0x3f2930
329af7	jmp    0x329b00
329af9	mov    r8,QWORD PTR [rip+0xc8e28]        # 0x3f2928
329b00	test   al,0x2
329b02	jne    0x329b23
329b04	mov    rcx,QWORD PTR [rip+0xac355]        # 0x3d5e60
329b0b	lea    rdx,[rip+0xc8e2e]        # 0x3f2940
329b12	or     eax,0x2
329b15	xor    r9d,r9d
329b18	mov    DWORD PTR [rip+0xc8e12],eax        # 0x3f2930
329b1e	call   0x2cbd24
329b23	mov    rcx,QWORD PTR [rip+0xac336]        # 0x3d5e60
329b2a	lea    rdx,[rip+0xc8e0f]        # 0x3f2940
329b31	mov    r9d,edi
329b34	mov    BYTE PTR [rsp+0x20],bl
329b38	mov    r8d,esi
329b3b	call   0x3232d0
329b40	mov    rbx,QWORD PTR [rsp+0x70]
329b45	mov    rsi,QWORD PTR [rsp+0x78]
329b4a	add    rsp,0x60
329b4e	pop    rdi
329b4f	ret
