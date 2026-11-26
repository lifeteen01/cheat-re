
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e4030.audit.bin:     file format binary


Disassembly of section .data:

00000000002e4030 <.data>:
  2e4030:	40 53                                           	rex push rbx
  2e4032:	55                                              	push   rbp
  2e4033:	56                                              	push   rsi
  2e4034:	57                                              	push   rdi
  2e4035:	41 56                                           	push   r14
  2e4037:	48 83 ec 30                                     	sub    rsp,0x30
  2e403b:	49 8b d9                                        	mov    rbx,r9
  2e403e:	49 8b e8                                        	mov    rbp,r8
  2e4041:	4c 8b f1                                        	mov    r14,rcx
  2e4044:	e8 77 81 fe ff                                  	call   0x2cc1c0
  2e4049:	49 8b ce                                        	mov    rcx,r14
  2e404c:	e8 af 52 00 00                                  	call   0x2e9300
  2e4051:	48 8b 8c 24 80 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x80]
  2e4059:	e8 46 73 fe ff                                  	call   0x2cb3a4
  2e405e:	48 8b cb                                        	mov    rcx,rbx
  2e4061:	48 8b f0                                        	mov    rsi,rax
  2e4064:	e8 3b 73 fe ff                                  	call   0x2cb3a4
  2e4069:	48 8b cd                                        	mov    rcx,rbp
  2e406c:	48 8b f8                                        	mov    rdi,rax
  2e406f:	e8 30 73 fe ff                                  	call   0x2cb3a4
  2e4074:	49 8b 4e 08                                     	mov    rcx,QWORD PTR [r14+0x8]
  2e4078:	48 8b d8                                        	mov    rbx,rax
  2e407b:	48 83 c1 10                                     	add    rcx,0x10
  2e407f:	e8 20 73 fe ff                                  	call   0x2cb3a4
  2e4084:	49 8b 0e                                        	mov    rcx,QWORD PTR [r14]
  2e4087:	48 8b d0                                        	mov    rdx,rax
  2e408a:	4c 8b cf                                        	mov    r9,rdi
  2e408d:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  2e4092:	4c 8b c3                                        	mov    r8,rbx
  2e4095:	e8 7e 09 00 00                                  	call   0x2e4a18
  2e409a:	49 8b c6                                        	mov    rax,r14
  2e409d:	48 83 c4 30                                     	add    rsp,0x30
  2e40a1:	41 5e                                           	pop    r14
  2e40a3:	5f                                              	pop    rdi
  2e40a4:	5e                                              	pop    rsi
  2e40a5:	5d                                              	pop    rbp
  2e40a6:	5b                                              	pop    rbx
  2e40a7:	c3                                              	ret
