
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a9330 <.data+0x3a9330>:
  3a9330:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3a9332:	ff c8                                           	dec    eax
  3a9334:	48 98                                           	cdqe
  3a9336:	48 8d 14 80                                     	lea    rdx,[rax+rax*4]
  3a933a:	48 8b 41 08                                     	mov    rax,QWORD PTR [rcx+0x8]
  3a933e:	48 8d 04 d0                                     	lea    rax,[rax+rdx*8]
  3a9342:	c3                                              	ret
  3a9343:	cc                                              	int3
  3a9344:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a9349:	57                                              	push   rdi
  3a934a:	48 83 ec 20                                     	sub    rsp,0x20
  3a934e:	33 ff                                           	xor    edi,edi
  3a9350:	48 8b d9                                        	mov    rbx,rcx
  3a9353:	39 39                                           	cmp    DWORD PTR [rcx],edi
  3a9355:	7e 16                                           	jle    0x3a936d
  3a9357:	48 8b 4b 08                                     	mov    rcx,QWORD PTR [rbx+0x8]
  3a935b:	48 63 c7                                        	movsxd rax,edi
  3a935e:	48 8b 0c c1                                     	mov    rcx,QWORD PTR [rcx+rax*8]
  3a9362:	e8 01 5f ff ff                                  	call   0x39f268
  3a9367:	ff c7                                           	inc    edi
  3a9369:	3b 3b                                           	cmp    edi,DWORD PTR [rbx]
  3a936b:	7c ea                                           	jl     0x3a9357
  3a936d:	48 8b cb                                        	mov    rcx,rbx
