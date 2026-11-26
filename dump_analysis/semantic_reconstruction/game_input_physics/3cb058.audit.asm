
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/3cb058.audit.bin:     file format binary


Disassembly of section .data:

00000000003cb058 <.data>:
  3cb058:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3cb05d:	48 89 74 24 10                                  	mov    QWORD PTR [rsp+0x10],rsi
  3cb062:	57                                              	push   rdi
  3cb063:	48 83 ec 20                                     	sub    rsp,0x20
  3cb067:	65 48 8b 04 25 30 00 00 00                      	mov    rax,QWORD PTR gs:0x30
  3cb070:	48 8b f1                                        	mov    rsi,rcx
  3cb073:	48 8b 50 60                                     	mov    rdx,QWORD PTR [rax+0x60]
  3cb077:	48 8b 7a 18                                     	mov    rdi,QWORD PTR [rdx+0x18]
  3cb07b:	48 83 c7 20                                     	add    rdi,0x20
  3cb07f:	48 8b 1f                                        	mov    rbx,QWORD PTR [rdi]
  3cb082:	48 3b df                                        	cmp    rbx,rdi
  3cb085:	74 20                                           	je     0x3cb0a7
  3cb087:	48 85 c9                                        	test   rcx,rcx
  3cb08a:	74 2d                                           	je     0x3cb0b9
  3cb08c:	48 8b 53 50                                     	mov    rdx,QWORD PTR [rbx+0x50]
  3cb090:	45 33 c0                                        	xor    r8d,r8d
  3cb093:	48 8b ce                                        	mov    rcx,rsi
  3cb096:	e8 b5 fd ff ff                                  	call   0x3cae50
  3cb09b:	84 c0                                           	test   al,al
  3cb09d:	75 1a                                           	jne    0x3cb0b9
  3cb09f:	48 8b 1b                                        	mov    rbx,QWORD PTR [rbx]
  3cb0a2:	48 3b df                                        	cmp    rbx,rdi
  3cb0a5:	75 e5                                           	jne    0x3cb08c
  3cb0a7:	33 c0                                           	xor    eax,eax
  3cb0a9:	48 8b 5c 24 30                                  	mov    rbx,QWORD PTR [rsp+0x30]
  3cb0ae:	48 8b 74 24 38                                  	mov    rsi,QWORD PTR [rsp+0x38]
  3cb0b3:	48 83 c4 20                                     	add    rsp,0x20
  3cb0b7:	5f                                              	pop    rdi
  3cb0b8:	c3                                              	ret
  3cb0b9:	48 8b 43 20                                     	mov    rax,QWORD PTR [rbx+0x20]
  3cb0bd:	eb ea                                           	jmp    0x3cb0a9
