
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d91c4.bin:     file format binary


Disassembly of section .data:

00000000002d91c4 <.data>:
  2d91c4:	40 55                	rex push rbp
  2d91c6:	53                   	push   rbx
  2d91c7:	57                   	push   rdi
  2d91c8:	48 8b ec             	mov    rbp,rsp
  2d91cb:	48 83 ec 50          	sub    rsp,0x50
  2d91cf:	48 8d 0d 3a f5 f3 ff 	lea    rcx,[rip+0xfffffffffff3f53a]        # 0x218710
  2d91d6:	e8 11 46 ff ff       	call   0x2cd7ec
  2d91db:	48 8b c8             	mov    rcx,rax
  2d91de:	e8 f1 c5 ff ff       	call   0x2d57d4
  2d91e3:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  2d91e7:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2d91eb:	e8 98 bf ff ff       	call   0x2d5188
  2d91f0:	48 8b c8             	mov    rcx,rax
  2d91f3:	e8 bc f2 ff ff       	call   0x2d84b4
  2d91f8:	48 8d 0d 11 f5 f3 ff 	lea    rcx,[rip+0xfffffffffff3f511]        # 0x218710
  2d91ff:	48 8b d8             	mov    rbx,rax
  2d9202:	e8 e5 45 ff ff       	call   0x2cd7ec
  2d9207:	48 8b d0             	mov    rdx,rax
  2d920a:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d920e:	4c 8b c3             	mov    r8,rbx
  2d9211:	e8 6e cd ff ff       	call   0x2d5f84
  2d9216:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  2d921a:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d921e:	e8 8d f5 ff ff       	call   0x2d87b0
  2d9223:	48 8d 55 28          	lea    rdx,[rbp+0x28]
  2d9227:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d922b:	48 8b 38             	mov    rdi,QWORD PTR [rax]
  2d922e:	e8 7d f5 ff ff       	call   0x2d87b0
  2d9233:	48 8d 55 30          	lea    rdx,[rbp+0x30]
  2d9237:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d923b:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  2d923e:	e8 4d eb ff ff       	call   0x2d7d90
  2d9243:	44 8a 4d 20          	mov    r9b,BYTE PTR [rbp+0x20]
  2d9247:	48 8d 4d 38          	lea    rcx,[rbp+0x38]
  2d924b:	4c 8b c3             	mov    r8,rbx
  2d924e:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  2d9251:	e8 8a a3 ff ff       	call   0x2d35e0
  2d9256:	4c 8b cf             	mov    r9,rdi
  2d9259:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  2d925d:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d9261:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  2d9264:	e8 b3 f5 ff ff       	call   0x2d881c
  2d9269:	48 8d 3d e0 f4 f3 ff 	lea    rdi,[rip+0xfffffffffff3f4e0]        # 0x218750
  2d9270:	48 8b cf             	mov    rcx,rdi
  2d9273:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  2d9277:	e8 f4 b9 ff ff       	call   0x2d4c70
  2d927c:	48 8d 55 20          	lea    rdx,[rbp+0x20]
  2d9280:	48 8b cf             	mov    rcx,rdi
  2d9283:	e8 28 f5 ff ff       	call   0x2d87b0
  2d9288:	48 8d 55 28          	lea    rdx,[rbp+0x28]
  2d928c:	48 8b cf             	mov    rcx,rdi
  2d928f:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  2d9292:	e8 f9 ea ff ff       	call   0x2d7d90
  2d9297:	44 8a 45 20          	mov    r8b,BYTE PTR [rbp+0x20]
  2d929b:	48 8b d3             	mov    rdx,rbx
  2d929e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  2d92a1:	e8 be ab ff ff       	call   0x2d3e64
  2d92a6:	48 8d 0d 83 f4 f3 ff 	lea    rcx,[rip+0xfffffffffff3f483]        # 0x218730
  2d92ad:	e8 12 d2 ff ff       	call   0x2d64c4
  2d92b2:	84 c0                	test   al,al
  2d92b4:	75 24                	jne    0x2d92da
  2d92b6:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
  2d92ba:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2d92be:	e8 49 c2 ff ff       	call   0x2d550c
  2d92c3:	48 8b c8             	mov    rcx,rax
  2d92c6:	e8 79 f3 ff ff       	call   0x2d8644
  2d92cb:	48 8b d0             	mov    rdx,rax
  2d92ce:	48 8d 0d 5b f4 f3 ff 	lea    rcx,[rip+0xfffffffffff3f45b]        # 0x218730
  2d92d5:	e8 8e b9 ff ff       	call   0x2d4c68
  2d92da:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2d92de:	e8 9d b7 ff ff       	call   0x2d4a80
  2d92e3:	48 83 c4 50          	add    rsp,0x50
  2d92e7:	5f                   	pop    rdi
  2d92e8:	5b                   	pop    rbx
  2d92e9:	5d                   	pop    rbp
  2d92ea:	c3                   	ret
