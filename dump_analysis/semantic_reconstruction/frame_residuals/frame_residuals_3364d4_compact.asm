3364d4 mov    QWORD PTR [rsp+0x8],rbx
3364d9 push   rdi
3364da sub    rsp,0x20
3364de mov    ebx,edx
3364e0 mov    rdi,rcx
3364e3 call   0x2db3a0
3364e8 movss  xmm1,DWORD PTR [rip+0xfffffffffff571f0]        # 0x28d6e0 ; f32=0.00392157
3364f0 xorps  xmm0,xmm0
3364f3 movzx  eax,bl
3364f6 cvtsi2ss xmm0,rax
3364fb mov    eax,ebx
3364fd shr    eax,0x8
336500 movzx  eax,al
336503 mulss  xmm0,xmm1
336507 movss  DWORD PTR [rdi],xmm0
33650b xorps  xmm0,xmm0
33650e cvtsi2ss xmm0,rax
336513 mov    eax,ebx
336515 shr    eax,0x10
336518 movzx  eax,al
33651b shr    ebx,0x18
33651e mulss  xmm0,xmm1
336522 movss  DWORD PTR [rdi+0x4],xmm0
336527 xorps  xmm0,xmm0
33652a cvtsi2ss xmm0,rax
33652f mov    eax,ebx
336531 mov    rbx,QWORD PTR [rsp+0x30]
336536 mulss  xmm0,xmm1
33653a movss  DWORD PTR [rdi+0x8],xmm0
33653f xorps  xmm0,xmm0
336542 cvtsi2ss xmm0,rax
336547 mov    rax,rdi
33654a mulss  xmm0,xmm1
33654e movss  DWORD PTR [rdi+0xc],xmm0
336553 add    rsp,0x20
336557 pop    rdi
336558 ret
