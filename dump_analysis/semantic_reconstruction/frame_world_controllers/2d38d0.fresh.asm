
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2d38d0.bin:     file format binary


Disassembly of section .data:

00000000002d38d0 <.data>:
  2d38d0:	40 55                	rex push rbp
  2d38d2:	53                   	push   rbx
  2d38d3:	56                   	push   rsi
  2d38d4:	57                   	push   rdi
  2d38d5:	48 8b ec             	mov    rbp,rsp
  2d38d8:	48 83 ec 78          	sub    rsp,0x78
  2d38dc:	48 8b f9             	mov    rdi,rcx
  2d38df:	49 8b d8             	mov    rbx,r8
  2d38e2:	48 8b ca             	mov    rcx,rdx
  2d38e5:	e8 02 9f ff ff       	call   0x2cd7ec
  2d38ea:	48 8b c8             	mov    rcx,rax
  2d38ed:	e8 62 2a 00 00       	call   0x2d6354
  2d38f2:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  2d38f6:	48 8b f0             	mov    rsi,rax
  2d38f9:	e8 62 0c 00 00       	call   0x2d4560
  2d38fe:	48 8b cb             	mov    rcx,rbx
  2d3901:	e8 9a 4d 00 00       	call   0x2d86a0
  2d3906:	84 c0                	test   al,al
  2d3908:	74 26                	je     0x2d3930
  2d390a:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  2d390e:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d3912:	e8 91 18 00 00       	call   0x2d51a8
  2d3917:	48 8b c8             	mov    rcx,rax
  2d391a:	e8 bd 4b 00 00       	call   0x2d84dc
  2d391f:	48 8b d0             	mov    rdx,rax
  2d3922:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  2d3926:	e8 3d 13 00 00       	call   0x2d4c68
  2d392b:	e9 87 00 00 00       	jmp    0x2d39b7
  2d3930:	33 d2                	xor    edx,edx
  2d3932:	48 8b cb             	mov    rcx,rbx
  2d3935:	e8 e6 13 00 00       	call   0x2d4d20
  2d393a:	48 8b d0             	mov    rdx,rax
  2d393d:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  2d3941:	e8 de 12 00 00       	call   0x2d4c24
  2d3946:	48 8d 55 a8          	lea    rdx,[rbp-0x58]
  2d394a:	48 8b cb             	mov    rcx,rbx
  2d394d:	e8 3e 44 00 00       	call   0x2d7d90
  2d3952:	48 8b c8             	mov    rcx,rax
  2d3955:	48 8d 55 40          	lea    rdx,[rbp+0x40]
  2d3959:	41 b8 01 00 00 00    	mov    r8d,0x1
  2d395f:	e8 50 15 00 00       	call   0x2d4eb4
  2d3964:	eb 35                	jmp    0x2d399b
  2d3966:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d396a:	e8 79 14 00 00       	call   0x2d4de8
  2d396f:	4c 8b c0             	mov    r8,rax
  2d3972:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  2d3976:	b2 3b                	mov    dl,0x3b
  2d3978:	e8 e7 b6 ff ff       	call   0x2cf064
  2d397d:	48 8b d0             	mov    rdx,rax
  2d3980:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  2d3984:	e8 5b 1c 00 00       	call   0x2d55e4
  2d3989:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  2d398d:	e8 62 8b ff ff       	call   0x2cc4f4
  2d3992:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d3996:	e8 85 14 00 00       	call   0x2d4e20
  2d399b:	48 8d 55 a8          	lea    rdx,[rbp-0x58]
  2d399f:	48 8b cb             	mov    rcx,rbx
  2d39a2:	e8 09 4e 00 00       	call   0x2d87b0
  2d39a7:	48 8b d0             	mov    rdx,rax
  2d39aa:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2d39ae:	e8 81 8b ff ff       	call   0x2cc534
  2d39b3:	84 c0                	test   al,al
  2d39b5:	74 af                	je     0x2d3966
  2d39b7:	4c 8d 45 b0          	lea    r8,[rbp-0x50]
  2d39bb:	8b d6                	mov    edx,esi
  2d39bd:	48 8b cf             	mov    rcx,rdi
  2d39c0:	e8 63 59 00 00       	call   0x2d9328
  2d39c5:	48 8d 4d b0          	lea    rcx,[rbp-0x50]
  2d39c9:	e8 26 8b ff ff       	call   0x2cc4f4
  2d39ce:	48 8b cb             	mov    rcx,rbx
  2d39d1:	e8 aa 10 00 00       	call   0x2d4a80
  2d39d6:	48 83 c4 78          	add    rsp,0x78
  2d39da:	5f                   	pop    rdi
  2d39db:	5e                   	pop    rsi
  2d39dc:	5b                   	pop    rbx
  2d39dd:	5d                   	pop    rbp
  2d39de:	c3                   	ret
