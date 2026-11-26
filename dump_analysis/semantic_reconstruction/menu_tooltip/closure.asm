; closure independent pdata/next-pdata extent 3811c4..38128c unwind3d4604
3811c4 mov    QWORD PTR [rsp+0x8],rbx
3811c9 push   rbp
3811ca mov    rbp,rsp
3811cd sub    rsp,0x50
3811d1 mov    QWORD PTR [rbp-0x20],r8
3811d5 mov    r8d,edx
3811d8 xor    edx,edx
3811da call   0x39334c
3811df mov    DWORD PTR [rbp+0x28],eax
3811e2 lea    rbx,[rip+0x84697]        # 0x405880
3811e9 mov    eax,DWORD PTR [rip+0x846d1]        # 0x4058c0
3811ef test   al,0x1
3811f1 jne    0x381210
3811f3 or     eax,0x1
3811f6 mov    rcx,rbx
3811f9 mov    DWORD PTR [rip+0x846c1],eax        # 0x4058c0
3811ff call   0x3826b4
381204 lea    rcx,[rip+0x4fad1]        # 0x3d0cdc
38120b call   0x2cd32c
381210 lea    r8,[rbp+0x28]
381214 mov    rcx,rbx
381217 lea    rdx,[rbp-0x30]
38121b call   0x37e96c
381220 lea    rdx,[rbp-0x18]
381224 mov    rcx,rbx
381227 call   0x37e930
38122c mov    rdx,rax
38122f lea    rcx,[rbp-0x30]
381233 call   0x2cc534
381238 test   al,al
38123a je     0x381274
38123c lea    r8,[rbp-0x20]
381240 lea    rdx,[rbp+0x28]
381244 lea    rcx,[rbp-0x18]
381248 call   0x37ff14
38124d lea    r8,[rbp-0x18]
381251 mov    rcx,rbx
381254 lea    rdx,[rbp-0x30]
381258 call   0x387614
38125d lea    r8,[rbp+0x28]
381261 mov    rcx,rbx
381264 lea    rdx,[rbp-0x18]
381268 call   0x37e96c
38126d mov    rcx,QWORD PTR [rax]
381270 mov    QWORD PTR [rbp-0x30],rcx
381274 lea    rcx,[rbp-0x30]
381278 call   0x37c9cc
38127d mov    rbx,QWORD PTR [rsp+0x60]
381282 add    rax,0x4
381286 add    rsp,0x50
38128a pop    rbp
38128b ret

; closure independent pdata/next-pdata extent 364f20..364f4e unwind3d2038
364f20 rex push rbx
364f22 sub    rsp,0x20
364f26 movss  xmm1,DWORD PTR [rip+0xffffffffffee3fba]        # 0x248ee8
364f2d 
364f2e mov    rbx,rdx
364f31 movaps xmm2,xmm1
364f34 mulss  xmm1,DWORD PTR [rcx]
364f38 mulss  xmm2,DWORD PTR [rcx+0x4]
364f3d mov    rcx,rdx
364f40 call   0x2cc340
364f45 mov    rax,rbx
364f48 add    rsp,0x20
364f4c pop    rbx
364f4d ret

; closure independent pdata/next-pdata extent 335e48..335ea6 unwind3d3d84
335e48 rex push rbx
335e4a sub    rsp,0x50
335e4e movaps XMMWORD PTR [rsp+0x40],xmm6
335e53 mov    bl,r9b
335e56 movaps XMMWORD PTR [rsp+0x30],xmm7
335e5b movaps xmm6,xmm2
335e5e movaps XMMWORD PTR [rsp+0x20],xmm8
335e64 movaps xmm7,xmm1
335e67 movaps xmm8,xmm0
335e6b call   0x3926ac
335e70 movss  xmm2,DWORD PTR [rsp+0x80]
335e77 
335e79 mulss  xmm2,DWORD PTR [rax+0x10]
335e7e test   bl,bl
335e80 jne    0x335e85
335e82 movaps xmm6,xmm7
335e85 movaps xmm1,xmm6
335e88 movaps xmm0,xmm8
335e8c movaps xmm6,XMMWORD PTR [rsp+0x40]
335e91 movaps xmm7,XMMWORD PTR [rsp+0x30]
335e96 movaps xmm8,XMMWORD PTR [rsp+0x20]
335e9c add    rsp,0x50
335ea0 pop    rbx
335ea1 jmp    0x33565c

; closure independent pdata/next-pdata extent 3795a4..3795d2 unwind3d2318
3795a4 rex push rbx
3795a6 sub    rsp,0x30
3795aa mov    rbx,rcx
3795ad lea    rcx,[rsp+0x20]
3795b2 call   0x37898c
3795b7 mov    rcx,rax
3795ba call   0x39045c
3795bf mov    edx,eax
3795c1 mov    rcx,rbx
3795c4 call   0x3364d4
3795c9 mov    rax,rbx
3795cc add    rsp,0x30
3795d0 pop    rbx
3795d1 ret

; closure independent pdata/next-pdata extent 3925a4..3925c9 unwind3d2064
3925a4 sub    rsp,0x28
3925a8 mov    rcx,QWORD PTR [rip+0x73579]        # 0x405b28
3925af xor    edx,edx
3925b1 add    rcx,0x48d8
3925b8 call   0x38bb84
3925bd mov    rcx,QWORD PTR [rax]
3925c0 add    rsp,0x28
3925c4 jmp    0x39256c

; closure independent pdata/next-pdata extent 3925cc..3925e8 unwind0
3925cc mov    rax,QWORD PTR [rip+0x73555]        # 0x405b28
3925d3 movss  xmm0,DWORD PTR [rax+0x3810]
3925da 
3925db addss  xmm0,xmm0
3925df addss  xmm0,DWORD PTR [rax+0x3c30]
3925e6 
3925e7 ret

; closure independent pdata/next-pdata extent 39256c..3925a2 unwind3d2318
39256c rex push rbx
39256e sub    rsp,0x30
392572 mov    rbx,rcx
392575 lea    rdx,[rsp+0x20]
39257a lea    rcx,[rsp+0x48]
39257f call   0x38c6f0
392584 mov    rcx,rax
392587 call   0x39eb2c
39258c mov    r8,rax
39258f mov    edx,0x1
392594 mov    rcx,rbx
392597 call   0x392dcc
39259c add    rsp,0x30
3925a0 pop    rbx
3925a1 ret

; closure independent pdata/next-pdata extent 38bb84..38bbdc unwind0
38bb84 mov    rax,QWORD PTR [rcx+0x8]
38bb88 movsxd rdx,edx
38bb8b lea    rax,[rax+rdx*8]
38bb8f ret
38bb90 movsxd rax,edx
38bb93 imul   rax,rax,0x38
38bb97 add    rax,QWORD PTR [rcx+0x8]
38bb9b ret
38bb9c movsxd rax,edx
38bb9f shl    rax,0x5
38bba3 add    rax,QWORD PTR [rcx+0x8]
38bba7 ret
38bba8 movsxd rax,edx
38bbab imul   rax,rax,0x1c
38bbaf add    rax,QWORD PTR [rcx+0x8]
38bbb3 ret
38bbb4 movsxd rax,edx
38bbb7 imul   rax,rax,0x70
38bbbb add    rax,QWORD PTR [rcx+0x8]
38bbbf ret
38bbc0 movsxd rax,edx
38bbc3 imul   rax,rax,0x58
38bbc7 add    rax,QWORD PTR [rcx+0x8]
38bbcb ret
38bbcc lea    rax,[rcx+rdx*4]
38bbd0 ret
38bbd1 int3
38bbd2 int3
38bbd3 int3
38bbd4 movss  xmm0,DWORD PTR [rcx+rdx*4]
38bbd9 ret
38bbda int3
38bbdb int3

; closure independent pdata/next-pdata extent 33565c..33567c unwind0
33565c subss  xmm1,xmm0
335660 mulss  xmm1,xmm2
335664 addss  xmm1,xmm0
335668 movaps xmm0,xmm1
33566b ret
33566c mov    rdx,QWORD PTR [rdx]
33566f jmp    0x362f28
335674 mov    rdx,QWORD PTR [rdx]
335677 jmp    0x362f40

; closure independent pdata/next-pdata extent 37898c..3789f9 unwind3d2318
37898c rex push rbx
37898e sub    rsp,0x30
378992 movss  xmm0,DWORD PTR [r8+0xc]
378998 movaps xmm4,xmm3
37899b subss  xmm0,DWORD PTR [rdx+0xc]
3789a0 movss  xmm3,DWORD PTR [r8+0x8]
3789a6 mov    rbx,rcx
3789a9 subss  xmm3,DWORD PTR [rdx+0x8]
3789ae movss  xmm2,DWORD PTR [r8+0x4]
3789b4 subss  xmm2,DWORD PTR [rdx+0x4]
3789b9 movss  xmm1,DWORD PTR [r8]
3789be subss  xmm1,DWORD PTR [rdx]
3789c2 mulss  xmm0,xmm4
3789c6 mulss  xmm3,xmm4
3789ca addss  xmm0,DWORD PTR [rdx+0xc]
3789cf mulss  xmm2,xmm4
3789d3 addss  xmm3,DWORD PTR [rdx+0x8]
3789d8 mulss  xmm1,xmm4
3789dc addss  xmm2,DWORD PTR [rdx+0x4]
3789e1 movss  DWORD PTR [rsp+0x20],xmm0
3789e7 addss  xmm1,DWORD PTR [rdx]
3789eb call   0x2cc350
3789f0 mov    rax,rbx
3789f3 add    rsp,0x30
3789f7 pop    rbx
3789f8 ret
