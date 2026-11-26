330504	mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a	movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330512	movsd  QWORD PTR [rdx],xmm0
330516	mov    DWORD PTR [rdx+0x8],eax
330519	movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520	mov    WORD PTR [rdx+0xc],ax
330524	mov    rax,rdx
330527	ret
