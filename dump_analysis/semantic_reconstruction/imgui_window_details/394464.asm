394464	mov    rdx,QWORD PTR [rip+0x716bd]        # 0x405b28
39446b	xorps  xmm0,xmm0
39446e	comiss xmm0,xmm1
394471	jbe    0x394478
394473	movss  xmm1,DWORD PTR [rdx+0x38]
394478	movsxd rax,ecx
39447b	mulss  xmm1,xmm1
39447f	movss  xmm0,DWORD PTR [rdx+rax*4+0x37a0]
394488	comiss xmm0,xmm1
39448b	setae  al
39448e	ret
