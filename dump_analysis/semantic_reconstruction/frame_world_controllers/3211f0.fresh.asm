
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3211f0.bin:     file format binary


Disassembly of section .data:

00000000003211f0 <.data>:
  3211f0:	40 55                	rex push rbp
  3211f2:	53                   	push   rbx
  3211f3:	56                   	push   rsi
  3211f4:	57                   	push   rdi
  3211f5:	41 56                	push   r14
  3211f7:	48 8b ec             	mov    rbp,rsp
  3211fa:	48 83 ec 30          	sub    rsp,0x30
  3211fe:	48 8b f1             	mov    rsi,rcx
  321201:	4c 8d 71 18          	lea    r14,[rcx+0x18]
  321205:	e8 92 f4 fb ff       	call   0x2e069c
  32120a:	48 8b c8             	mov    rcx,rax
  32120d:	e8 f6 9c fa ff       	call   0x2caf08
  321212:	84 c0                	test   al,al
  321214:	0f 84 8c 01 00 00    	je     0x3213a6
  32121a:	e8 2d fc fb ff       	call   0x2e0e4c
  32121f:	84 c0                	test   al,al
  321221:	0f 85 7f 01 00 00    	jne    0x3213a6
  321227:	49 8b ce             	mov    rcx,r14
  32122a:	e8 91 67 fb ff       	call   0x2d79c0
  32122f:	49 8b ce             	mov    rcx,r14
  321232:	48 8b f8             	mov    rdi,rax
  321235:	e8 3e 07 fb ff       	call   0x2d1978
  32123a:	48 8b d8             	mov    rbx,rax
  32123d:	48 3b c7             	cmp    rax,rdi
  321240:	74 14                	je     0x321256
  321242:	48 8b cb             	mov    rcx,rbx
  321245:	e8 3a 02 00 00       	call   0x321484
  32124a:	88 43 09             	mov    BYTE PTR [rbx+0x9],al
  32124d:	48 83 c3 10          	add    rbx,0x10
  321251:	48 3b df             	cmp    rbx,rdi
  321254:	75 ec                	jne    0x321242
  321256:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  32125a:	49 8b ce             	mov    rcx,r14
  32125d:	e8 16 98 ff ff       	call   0x31aa78
  321262:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  321266:	49 8b ce             	mov    rcx,r14
  321269:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  32126c:	e8 3f 75 fb ff       	call   0x2d87b0
  321271:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  321275:	49 8b ce             	mov    rcx,r14
  321278:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  32127b:	e8 10 6b fb ff       	call   0x2d7d90
  321280:	44 8a 4d 38          	mov    r9b,BYTE PTR [rbp+0x38]
  321284:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  321288:	4c 8b c3             	mov    r8,rbx
  32128b:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  32128e:	e8 c5 d3 fc ff       	call   0x2ee658
  321293:	4c 8b cf             	mov    r9,rdi
  321296:	48 8d 55 f8          	lea    rdx,[rbp-0x8]
  32129a:	49 8b ce             	mov    rcx,r14
  32129d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  3212a0:	e8 bb f4 ff ff       	call   0x320760
  3212a5:	48 8b ce             	mov    rcx,rsi
  3212a8:	e8 13 67 fb ff       	call   0x2d79c0
  3212ad:	48 8b ce             	mov    rcx,rsi
  3212b0:	48 8b f8             	mov    rdi,rax
  3212b3:	e8 c0 06 fb ff       	call   0x2d1978
  3212b8:	48 8b d8             	mov    rbx,rax
  3212bb:	48 3b c7             	cmp    rax,rdi
  3212be:	74 14                	je     0x3212d4
  3212c0:	48 8b cb             	mov    rcx,rbx
  3212c3:	e8 bc 01 00 00       	call   0x321484
  3212c8:	88 43 09             	mov    BYTE PTR [rbx+0x9],al
  3212cb:	48 83 c3 10          	add    rbx,0x10
  3212cf:	48 3b df             	cmp    rbx,rdi
  3212d2:	75 ec                	jne    0x3212c0
  3212d4:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  3212d8:	48 8b ce             	mov    rcx,rsi
  3212db:	e8 98 97 ff ff       	call   0x31aa78
  3212e0:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  3212e4:	48 8b ce             	mov    rcx,rsi
  3212e7:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  3212ea:	e8 c1 74 fb ff       	call   0x2d87b0
  3212ef:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  3212f3:	48 8b ce             	mov    rcx,rsi
  3212f6:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  3212f9:	e8 92 6a fb ff       	call   0x2d7d90
  3212fe:	44 8a 4d 38          	mov    r9b,BYTE PTR [rbp+0x38]
  321302:	48 8d 4d f8          	lea    rcx,[rbp-0x8]
  321306:	4c 8b c3             	mov    r8,rbx
  321309:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  32130c:	e8 47 d3 fc ff       	call   0x2ee658
  321311:	4c 8b cf             	mov    r9,rdi
  321314:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  321318:	48 8b ce             	mov    rcx,rsi
  32131b:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32131e:	e8 3d f4 ff ff       	call   0x320760
  321323:	48 83 c6 30          	add    rsi,0x30
  321327:	48 8b ce             	mov    rcx,rsi
  32132a:	e8 91 66 fb ff       	call   0x2d79c0
  32132f:	48 8b ce             	mov    rcx,rsi
  321332:	48 8b f8             	mov    rdi,rax
  321335:	e8 3e 06 fb ff       	call   0x2d1978
  32133a:	48 8b d8             	mov    rbx,rax
  32133d:	48 3b c7             	cmp    rax,rdi
  321340:	74 13                	je     0x321355
  321342:	48 8b cb             	mov    rcx,rbx
  321345:	e8 82 00 00 00       	call   0x3213cc
  32134a:	88 03                	mov    BYTE PTR [rbx],al
  32134c:	48 83 c3 40          	add    rbx,0x40
  321350:	48 3b df             	cmp    rbx,rdi
  321353:	75 ed                	jne    0x321342
  321355:	48 8d 55 38          	lea    rdx,[rbp+0x38]
  321359:	48 8b ce             	mov    rcx,rsi
  32135c:	e8 17 97 ff ff       	call   0x31aa78
  321361:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  321365:	48 8b ce             	mov    rcx,rsi
  321368:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  32136b:	e8 40 74 fb ff       	call   0x2d87b0
  321370:	48 8d 55 48          	lea    rdx,[rbp+0x48]
  321374:	48 8b ce             	mov    rcx,rsi
  321377:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  32137a:	e8 11 6a fb ff       	call   0x2d7d90
  32137f:	44 8a 4d 38          	mov    r9b,BYTE PTR [rbp+0x38]
  321383:	48 8d 4d f8          	lea    rcx,[rbp-0x8]
  321387:	4c 8b c3             	mov    r8,rbx
  32138a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  32138d:	e8 0e d2 fc ff       	call   0x2ee5a0
  321392:	4c 8b cf             	mov    r9,rdi
  321395:	48 8d 55 f0          	lea    rdx,[rbp-0x10]
  321399:	48 8b ce             	mov    rcx,rsi
  32139c:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  32139f:	e8 14 f4 ff ff       	call   0x3207b8
  3213a4:	eb 19                	jmp    0x3213bf
  3213a6:	48 8b ce             	mov    rcx,rsi
  3213a9:	e8 b6 98 ff ff       	call   0x31ac64
  3213ae:	49 8b ce             	mov    rcx,r14
  3213b1:	e8 ae 98 ff ff       	call   0x31ac64
  3213b6:	48 8d 4e 30          	lea    rcx,[rsi+0x30]
  3213ba:	e8 b5 98 ff ff       	call   0x31ac74
  3213bf:	48 83 c4 30          	add    rsp,0x30
  3213c3:	41 5e                	pop    r14
  3213c5:	5f                   	pop    rdi
  3213c6:	5e                   	pop    rsi
  3213c7:	5b                   	pop    rbx
  3213c8:	5d                   	pop    rbp
  3213c9:	c3                   	ret
