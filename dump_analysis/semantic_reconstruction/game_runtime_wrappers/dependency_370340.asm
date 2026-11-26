370340	mov    eax,DWORD PTR [rip+0xfffffffffff386ea]        # 0x2a8a30
370346	movsd  xmm0,QWORD PTR [rip+0xfffffffffff386da]        # 0x2a8a28
37034e	movsd  QWORD PTR [rdx],xmm0
370352	mov    DWORD PTR [rdx+0x8],eax
370355	movzx  eax,WORD PTR [rip+0xfffffffffff386d8]        # 0x2a8a34
37035c	mov    WORD PTR [rdx+0xc],ax
370360	mov    al,BYTE PTR [rip+0xfffffffffff386d0]        # 0x2a8a36
370366	mov    BYTE PTR [rdx+0xe],al
370369	mov    rax,rdx
37036c	ret
