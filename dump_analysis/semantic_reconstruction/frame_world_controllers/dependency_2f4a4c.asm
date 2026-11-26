2f4a4c	mov    eax,DWORD PTR [rip+0xfffffffffff9dd0a]        # 0x29275c
2f4a52	mov    DWORD PTR [rdx],eax
2f4a54	movzx  eax,WORD PTR [rip+0xfffffffffff9dd05]        # 0x292760
2f4a5b	mov    WORD PTR [rdx+0x4],ax
2f4a5f	mov    al,BYTE PTR [rip+0xfffffffffff9dcfd]        # 0x292762
2f4a65	mov    BYTE PTR [rdx+0x6],al
2f4a68	mov    rax,rdx
2f4a6b	ret
2f4a6c	mov    eax,DWORD PTR [rip+0xfffffffffff9c406]        # 0x290e78
2f4a72	movsd  xmm0,QWORD PTR [rip+0xfffffffffff9c3f6]        # 0x290e70
2f4a7a	movsd  QWORD PTR [rdx],xmm0
2f4a7e	mov    DWORD PTR [rdx+0x8],eax
2f4a81	mov    rax,rdx
2f4a84	ret
