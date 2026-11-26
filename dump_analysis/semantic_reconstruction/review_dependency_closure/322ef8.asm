322ef8	rex push rbx
322efa	sub    rsp,0x30
322efe	mov    rbx,rcx
322f01	lea    rdx,[rsp+0x20]
322f06	lea    rcx,[rsp+0x48]
322f0b	call   0x3229d8   ; STR "CapsuleCollider"
322f10	mov    rcx,rax
322f13	call   0x2dd160
322f18	mov    rdx,rax
322f1b	lea    r8,[rip+0xcf56e]        # 0x3f2490
322f22	mov    rcx,rbx
322f25	call   0x322f30
322f2a	add    rsp,0x30
322f2e	pop    rbx
322f2f	ret
