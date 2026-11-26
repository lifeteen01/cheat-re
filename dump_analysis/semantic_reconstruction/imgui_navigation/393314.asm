
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

0000000000393314 <.data+0x393314>:
  393314:	4c 8b c9                                        	mov    r9,rcx
  393317:	41 f7 d0                                        	not    r8d
  39331a:	48 85 d2                                        	test   rdx,rdx
  39331d:	74 23                                           	je     0x393342
  39331f:	41 0f b6 01                                     	movzx  eax,BYTE PTR [r9]
  393323:	49 ff c1                                        	inc    r9
  393326:	41 0f b6 c8                                     	movzx  ecx,r8b
  39332a:	48 33 c8                                        	xor    rcx,rax
  39332d:	41 c1 e8 08                                     	shr    r8d,0x8
  393331:	48 8d 05 f8 61 f1 ff                            	lea    rax,[rip+0xfffffffffff161f8]        # 0x2a9530
  393338:	44 33 04 88                                     	xor    r8d,DWORD PTR [rax+rcx*4]
  39333c:	48 83 ea 01                                     	sub    rdx,0x1
  393340:	75 dd                                           	jne    0x39331f
  393342:	41 f7 d0                                        	not    r8d
  393345:	41 8b c0                                        	mov    eax,r8d
  393348:	c3                                              	ret
