
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/368f50.bin:     file format binary


Disassembly of section .data:

0000000000368f50 <.data>:
  368f50:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
  368f55:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
  368f5a:	57                   	push   rdi
  368f5b:	48 83 ec 30          	sub    rsp,0x30
  368f5f:	0f 29 74 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm6
  368f64:	e8 33 4b f7 ff       	call   0x2dda9c
  368f69:	48 8b c8             	mov    rcx,rax
  368f6c:	48 8b d0             	mov    rdx,rax
  368f6f:	e8 94 1f f6 ff       	call   0x2caf08
  368f74:	84 c0                	test   al,al
  368f76:	0f 84 a9 00 00 00    	je     0x369025
  368f7c:	48 8b ca             	mov    rcx,rdx
  368f7f:	e8 a0 03 00 00       	call   0x369324
  368f84:	48 8b c8             	mov    rcx,rax
  368f87:	48 8b d0             	mov    rdx,rax
  368f8a:	e8 79 1f f6 ff       	call   0x2caf08
  368f8f:	84 c0                	test   al,al
  368f91:	0f 84 8e 00 00 00    	je     0x369025
  368f97:	48 8b ca             	mov    rcx,rdx
  368f9a:	e8 81 ae 00 00       	call   0x373e20
  368f9f:	48 8b c8             	mov    rcx,rax
  368fa2:	48 8b f0             	mov    rsi,rax
  368fa5:	e8 5e 1f f6 ff       	call   0x2caf08
  368faa:	84 c0                	test   al,al
  368fac:	74 77                	je     0x369025
  368fae:	48 8b ce             	mov    rcx,rsi
  368fb1:	e8 96 92 00 00       	call   0x37224c
  368fb6:	8b f8                	mov    edi,eax
  368fb8:	85 c0                	test   eax,eax
  368fba:	7e 69                	jle    0x369025
  368fbc:	0f 57 f6             	xorps  xmm6,xmm6
  368fbf:	33 db                	xor    ebx,ebx
  368fc1:	8b d3                	mov    edx,ebx
  368fc3:	48 8b ce             	mov    rcx,rsi
  368fc6:	e8 25 93 00 00       	call   0x3722f0
  368fcb:	48 8b c8             	mov    rcx,rax
  368fce:	48 8b d0             	mov    rdx,rax
  368fd1:	e8 32 1f f6 ff       	call   0x2caf08
  368fd6:	84 c0                	test   al,al
  368fd8:	74 4b                	je     0x369025
  368fda:	48 8b 52 10          	mov    rdx,QWORD PTR [rdx+0x10]
  368fde:	48 8b ca             	mov    rcx,rdx
  368fe1:	e8 22 1f f6 ff       	call   0x2caf08
  368fe6:	84 c0                	test   al,al
  368fe8:	74 3b                	je     0x369025
  368fea:	48 8b 92 b8 01 00 00 	mov    rdx,QWORD PTR [rdx+0x1b8]
  368ff1:	48 8b ca             	mov    rcx,rdx
  368ff4:	e8 0f 1f f6 ff       	call   0x2caf08
  368ff9:	84 c0                	test   al,al
  368ffb:	74 28                	je     0x369025
  368ffd:	48 8b 52 50          	mov    rdx,QWORD PTR [rdx+0x50]
  369001:	48 8b ca             	mov    rcx,rdx
  369004:	e8 ff 1e f6 ff       	call   0x2caf08
  369009:	84 c0                	test   al,al
  36900b:	74 18                	je     0x369025
  36900d:	f3 0f 58 72 18       	addss  xmm6,DWORD PTR [rdx+0x18]
  369012:	ff c3                	inc    ebx
  369014:	3b df                	cmp    ebx,edi
  369016:	7c a9                	jl     0x368fc1
  369018:	0f 57 c9             	xorps  xmm1,xmm1
  36901b:	0f 28 c6             	movaps xmm0,xmm6
  36901e:	e8 4d 82 f7 ff       	call   0x2e1270
  369023:	eb 03                	jmp    0x369028
  369025:	0f 57 c0             	xorps  xmm0,xmm0
  369028:	48 8b 5c 24 40       	mov    rbx,QWORD PTR [rsp+0x40]
  36902d:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
  369032:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
  369037:	48 83 c4 30          	add    rsp,0x30
  36903b:	5f                   	pop    rdi
  36903c:	c3                   	ret
