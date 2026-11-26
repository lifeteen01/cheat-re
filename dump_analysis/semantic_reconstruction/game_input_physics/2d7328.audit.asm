
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2d7328.audit.bin:     file format binary


Disassembly of section .data:

00000000002d7328 <.data>:
  2d7328:	4c 8b dc                                        	mov    r11,rsp
  2d732b:	49 89 5b 10                                     	mov    QWORD PTR [r11+0x10],rbx
  2d732f:	49 89 73 20                                     	mov    QWORD PTR [r11+0x20],rsi
  2d7333:	4d 89 43 18                                     	mov    QWORD PTR [r11+0x18],r8
  2d7337:	57                                              	push   rdi
  2d7338:	48 83 ec 20                                     	sub    rsp,0x20
  2d733c:	49 8b 40 08                                     	mov    rax,QWORD PTR [r8+0x8]
  2d7340:	48 8b da                                        	mov    rbx,rdx
  2d7343:	48 ff 41 10                                     	inc    QWORD PTR [rcx+0x10]
  2d7347:	49 8d 53 18                                     	lea    rdx,[r11+0x18]
  2d734b:	48 8b f9                                        	mov    rdi,rcx
  2d734e:	49 89 43 08                                     	mov    QWORD PTR [r11+0x8],rax
  2d7352:	49 8b c9                                        	mov    rcx,r9
  2d7355:	49 8b f1                                        	mov    rsi,r9
  2d7358:	e8 97 3f ff ff                                  	call   0x2cb2f4
  2d735d:	48 8d 4e 08                                     	lea    rcx,[rsi+0x8]
  2d7361:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2d7366:	e8 89 3f ff ff                                  	call   0x2cb2f4
  2d736b:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
  2d7370:	48 89 30                                        	mov    QWORD PTR [rax],rsi
  2d7373:	48 8b 44 24 40                                  	mov    rax,QWORD PTR [rsp+0x40]
  2d7378:	48 89 70 08                                     	mov    QWORD PTR [rax+0x8],rsi
  2d737c:	48 8b 4f 30                                     	mov    rcx,QWORD PTR [rdi+0x30]
  2d7380:	48 8b 57 18                                     	mov    rdx,QWORD PTR [rdi+0x18]
  2d7384:	48 23 cb                                        	and    rcx,rbx
  2d7387:	48 03 c9                                        	add    rcx,rcx
  2d738a:	48 8b 04 ca                                     	mov    rax,QWORD PTR [rdx+rcx*8]
  2d738e:	48 3b 47 08                                     	cmp    rax,QWORD PTR [rdi+0x8]
  2d7392:	75 06                                           	jne    0x2d739a
  2d7394:	48 89 34 ca                                     	mov    QWORD PTR [rdx+rcx*8],rsi
  2d7398:	eb 19                                           	jmp    0x2d73b3
  2d739a:	48 3b 44 24 40                                  	cmp    rax,QWORD PTR [rsp+0x40]
  2d739f:	75 06                                           	jne    0x2d73a7
  2d73a1:	48 89 34 ca                                     	mov    QWORD PTR [rdx+rcx*8],rsi
  2d73a5:	eb 11                                           	jmp    0x2d73b8
  2d73a7:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
  2d73ac:	48 39 44 ca 08                                  	cmp    QWORD PTR [rdx+rcx*8+0x8],rax
  2d73b1:	75 05                                           	jne    0x2d73b8
  2d73b3:	48 89 74 ca 08                                  	mov    QWORD PTR [rdx+rcx*8+0x8],rsi
  2d73b8:	48 8b 5c 24 38                                  	mov    rbx,QWORD PTR [rsp+0x38]
  2d73bd:	48 8b c6                                        	mov    rax,rsi
  2d73c0:	48 8b 74 24 48                                  	mov    rsi,QWORD PTR [rsp+0x48]
  2d73c5:	48 83 c4 20                                     	add    rsp,0x20
  2d73c9:	5f                                              	pop    rdi
  2d73ca:	c3                                              	ret
