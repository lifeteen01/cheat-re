
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3cae50.audit.bin:     file format binary


Disassembly of section .data:

00000000003cae50 <.data>:
  3cae50:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3cae55:	33 db                                           	xor    ebx,ebx
  3cae57:	45 8a d8                                        	mov    r11b,r8b
  3cae5a:	4c 8b c9                                        	mov    r9,rcx
  3cae5d:	48 85 c9                                        	test   rcx,rcx
  3cae60:	74 63                                           	je     0x3caec5
  3cae62:	48 85 d2                                        	test   rdx,rdx
  3cae65:	74 5e                                           	je     0x3caec5
  3cae67:	41 0f be 01                                     	movsx  eax,BYTE PTR [r9]
  3cae6b:	44 0f b7 02                                     	movzx  r8d,WORD PTR [rdx]
  3cae6f:	0f b7 c8                                        	movzx  ecx,ax
  3cae72:	2c 41                                           	sub    al,0x41
  3cae74:	3c 19                                           	cmp    al,0x19
  3cae76:	0f b7 02                                        	movzx  eax,WORD PTR [rdx]
  3cae79:	44 8d 51 20                                     	lea    r10d,[rcx+0x20]
  3cae7d:	66 44 0f 47 d1                                  	cmova  r10w,cx
  3cae82:	66 41 83 c0 20                                  	add    r8w,0x20
  3cae87:	66 83 e8 41                                     	sub    ax,0x41
  3cae8b:	66 83 f8 19                                     	cmp    ax,0x19
  3cae8f:	66 44 0f 47 02                                  	cmova  r8w,WORD PTR [rdx]
  3cae94:	66 45 85 d2                                     	test   r10w,r10w
  3cae98:	75 18                                           	jne    0x3caeb2
  3cae9a:	66 45 85 c0                                     	test   r8w,r8w
  3cae9e:	8b cb                                           	mov    ecx,ebx
  3caea0:	b8 01 00 00 00                                  	mov    eax,0x1
  3caea5:	0f 94 c1                                        	sete   cl
  3caea8:	45 84 db                                        	test   r11b,r11b
  3caeab:	0f 45 c1                                        	cmovne eax,ecx
  3caeae:	85 c0                                           	test   eax,eax
  3caeb0:	75 0f                                           	jne    0x3caec1
  3caeb2:	66 45 3b d0                                     	cmp    r10w,r8w
  3caeb6:	75 0d                                           	jne    0x3caec5
  3caeb8:	49 ff c1                                        	inc    r9
  3caebb:	48 83 c2 02                                     	add    rdx,0x2
  3caebf:	eb a6                                           	jmp    0x3cae67
  3caec1:	b0 01                                           	mov    al,0x1
  3caec3:	eb 02                                           	jmp    0x3caec7
  3caec5:	32 c0                                           	xor    al,al
  3caec7:	48 8b 5c 24 08                                  	mov    rbx,QWORD PTR [rsp+0x8]
  3caecc:	c3                                              	ret
