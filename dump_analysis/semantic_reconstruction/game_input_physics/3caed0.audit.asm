
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3caed0.audit.bin:     file format binary


Disassembly of section .data:

00000000003caed0 <.data>:
  3caed0:	40 53                                           	rex push rbx
  3caed2:	55                                              	push   rbp
  3caed3:	56                                              	push   rsi
  3caed4:	57                                              	push   rdi
  3caed5:	41 56                                           	push   r14
  3caed7:	41 57                                           	push   r15
  3caed9:	48 63 41 3c                                     	movsxd rax,DWORD PTR [rcx+0x3c]
  3caedd:	48 8b da                                        	mov    rbx,rdx
  3caee0:	4c 8b c1                                        	mov    r8,rcx
  3caee3:	44 8b 8c 08 88 00 00 00                         	mov    r9d,DWORD PTR [rax+rcx*1+0x88]
  3caeeb:	45 8b 5c 09 18                                  	mov    r11d,DWORD PTR [r9+rcx*1+0x18]
  3caef0:	45 85 db                                        	test   r11d,r11d
  3caef3:	74 49                                           	je     0x3caf3e
  3caef5:	45 8b 74 09 24                                  	mov    r14d,DWORD PTR [r9+rcx*1+0x24]
  3caefa:	45 33 d2                                        	xor    r10d,r10d
  3caefd:	45 8b 7c 09 20                                  	mov    r15d,DWORD PTR [r9+rcx*1+0x20]
  3caf02:	40 8a 2a                                        	mov    bpl,BYTE PTR [rdx]
  3caf05:	4b 8d 04 56                                     	lea    rax,[r14+r10*2]
  3caf09:	33 d2                                           	xor    edx,edx
  3caf0b:	41 0f b7 34 00                                  	movzx  esi,WORD PTR [r8+rax*1]
  3caf10:	4b 8d 04 97                                     	lea    rax,[r15+r10*4]
  3caf14:	41 8b 3c 00                                     	mov    edi,DWORD PTR [r8+rax*1]
  3caf18:	49 03 f8                                        	add    rdi,r8
  3caf1b:	40 38 2f                                        	cmp    BYTE PTR [rdi],bpl
  3caf1e:	75 16                                           	jne    0x3caf36
  3caf20:	48 63 c2                                        	movsxd rax,edx
  3caf23:	80 3c 07 00                                     	cmp    BYTE PTR [rdi+rax*1],0x0
  3caf27:	74 20                                           	je     0x3caf49
  3caf29:	ff c2                                           	inc    edx
  3caf2b:	48 63 ca                                        	movsxd rcx,edx
  3caf2e:	8a 04 0b                                        	mov    al,BYTE PTR [rbx+rcx*1]
  3caf31:	38 04 0f                                        	cmp    BYTE PTR [rdi+rcx*1],al
  3caf34:	74 ea                                           	je     0x3caf20
  3caf36:	41 ff c2                                        	inc    r10d
  3caf39:	45 3b d3                                        	cmp    r10d,r11d
  3caf3c:	72 c7                                           	jb     0x3caf05
  3caf3e:	33 c0                                           	xor    eax,eax
  3caf40:	41 5f                                           	pop    r15
  3caf42:	41 5e                                           	pop    r14
  3caf44:	5f                                              	pop    rdi
  3caf45:	5e                                              	pop    rsi
  3caf46:	5d                                              	pop    rbp
  3caf47:	5b                                              	pop    rbx
  3caf48:	c3                                              	ret
  3caf49:	43 8b 4c 01 1c                                  	mov    ecx,DWORD PTR [r9+r8*1+0x1c]
  3caf4e:	49 03 c8                                        	add    rcx,r8
  3caf51:	8b 04 b1                                        	mov    eax,DWORD PTR [rcx+rsi*4]
  3caf54:	49 03 c0                                        	add    rax,r8
  3caf57:	eb e7                                           	jmp    0x3caf40
