
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a93c0 <.data+0x3a93c0>:
  3a93c0:	48 63 11                                        	movsxd rdx,DWORD PTR [rcx]
  3a93c3:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a93c7:	48 8d 04 90                                     	lea    rax,[rax+rdx*4]
  3a93cb:	c3                                              	ret
  3a93cc:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a93d1:	57                                              	push   rdi
  3a93d2:	48 83 ec 20                                     	sub    rsp,0x20
  3a93d6:	4c 8b 41 08                                     	mov    r8,QWORD PTR [rcx+0x8]
  3a93da:	48 8b f9                                        	mov    rdi,rcx
  3a93dd:	49 2b d0                                        	sub    rdx,r8
  3a93e0:	48 b8 25 49 92 24 49 92 24 49                   	movabs rax,0x4924924924924925
  3a93ea:	48 f7 ea                                        	imul   rdx
  3a93ed:	48 c1 fa 04                                     	sar    rdx,0x4
  3a93f1:	48 8b c2                                        	mov    rax,rdx
  3a93f4:	48 c1 e8 3f                                     	shr    rax,0x3f
  3a93f8:	48 03 d0                                        	add    rdx,rax
  3a93fb:	48 63 07                                        	movsxd rax,DWORD PTR [rdi]
  3a93fe:	48 6b                                       	imul   rbx,rdx,0x38
