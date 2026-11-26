
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/2dd634.bin:     file format binary


Disassembly of section .data:

00000000002dd634 <.data>:
  2dd634:	40 55                	rex push rbp
  2dd636:	53                   	push   rbx
  2dd637:	56                   	push   rsi
  2dd638:	57                   	push   rdi
  2dd639:	41 54                	push   r12
  2dd63b:	41 56                	push   r14
  2dd63d:	41 57                	push   r15
  2dd63f:	48 8d ac 24 60 ff ff 	lea    rbp,[rsp-0xa0]
  2dd646:	ff 
  2dd647:	48 81 ec a0 01 00 00 	sub    rsp,0x1a0
  2dd64e:	48 8d 0d 53 98 0f 00 	lea    rcx,[rip+0xf9853]        # 0x3d6ea8
  2dd655:	e8 3e f9 ff ff       	call   0x2dcf98
  2dd65a:	48 8d 0d 57 97 0f 00 	lea    rcx,[rip+0xf9757]        # 0x3d6db8
  2dd661:	e8 5a a3 ff ff       	call   0x2d79c0
  2dd666:	48 8d 0d 4b 97 0f 00 	lea    rcx,[rip+0xf974b]        # 0x3d6db8
  2dd66d:	4c 8b e0             	mov    r12,rax
  2dd670:	e8 03 43 ff ff       	call   0x2d1978
  2dd675:	4c 8b f8             	mov    r15,rax
  2dd678:	49 3b c4             	cmp    rax,r12
  2dd67b:	0f 84 63 01 00 00    	je     0x2dd7e4
  2dd681:	f3 41 0f 10 4f 28    	movss  xmm1,DWORD PTR [r15+0x28]
  2dd687:	48 8d 8d 80 00 00 00 	lea    rcx,[rbp+0x80]
  2dd68e:	e8 ad be ff ff       	call   0x2d9540
  2dd693:	f3 41 0f 10 4f 24    	movss  xmm1,DWORD PTR [r15+0x24]
  2dd699:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  2dd69d:	4c 8b f0             	mov    r14,rax
  2dd6a0:	e8 9b be ff ff       	call   0x2d9540
  2dd6a5:	41 0f b6 57 2c       	movzx  edx,BYTE PTR [r15+0x2c]
  2dd6aa:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2dd6ae:	48 8b f0             	mov    rsi,rax
  2dd6b1:	e8 5a be ff ff       	call   0x2d9510
  2dd6b6:	41 8b 57 20          	mov    edx,DWORD PTR [r15+0x20]
  2dd6ba:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2dd6be:	48 8b f8             	mov    rdi,rax
  2dd6c1:	e8 4a be ff ff       	call   0x2d9510
  2dd6c6:	4c 8d 05 13 ff fa ff 	lea    r8,[rip+0xfffffffffffaff13]        # 0x28d5e0
  2dd6cd:	49 8b d7             	mov    rdx,r15
  2dd6d0:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  2dd6d4:	48 8b d8             	mov    rbx,rax
  2dd6d7:	e8 f8 18 ff ff       	call   0x2cefd4
  2dd6dc:	48 8b d0             	mov    rdx,rax
  2dd6df:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2dd6e3:	4c 8b c3             	mov    r8,rbx
  2dd6e6:	e8 55 18 ff ff       	call   0x2cef40
  2dd6eb:	48 8b d0             	mov    rdx,rax
  2dd6ee:	4c 8d 05 eb fe fa ff 	lea    r8,[rip+0xfffffffffffafeeb]        # 0x28d5e0
  2dd6f5:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  2dd6f9:	e8 3a d6 fe ff       	call   0x2cad38
  2dd6fe:	48 8b d0             	mov    rdx,rax
  2dd701:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  2dd705:	4c 8b c7             	mov    r8,rdi
  2dd708:	e8 33 18 ff ff       	call   0x2cef40
  2dd70d:	48 8b d0             	mov    rdx,rax
  2dd710:	4c 8d 05 c9 fe fa ff 	lea    r8,[rip+0xfffffffffffafec9]        # 0x28d5e0
  2dd717:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  2dd71b:	e8 18 d6 fe ff       	call   0x2cad38
  2dd720:	48 8b d0             	mov    rdx,rax
  2dd723:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2dd728:	4c 8b c6             	mov    r8,rsi
  2dd72b:	e8 10 18 ff ff       	call   0x2cef40
  2dd730:	48 8b d0             	mov    rdx,rax
  2dd733:	4c 8d 05 a6 fe fa ff 	lea    r8,[rip+0xfffffffffffafea6]        # 0x28d5e0
  2dd73a:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2dd73f:	e8 f4 d5 fe ff       	call   0x2cad38
  2dd744:	48 8b d0             	mov    rdx,rax
  2dd747:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2dd74c:	4d 8b c6             	mov    r8,r14
  2dd74f:	e8 ec 17 ff ff       	call   0x2cef40
  2dd754:	48 8d 4c 24 40       	lea    rcx,[rsp+0x40]
  2dd759:	e8 96 ed fe ff       	call   0x2cc4f4
  2dd75e:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
  2dd763:	e8 8c ed fe ff       	call   0x2cc4f4
  2dd768:	48 8d 4d 80          	lea    rcx,[rbp-0x80]
  2dd76c:	e8 83 ed fe ff       	call   0x2cc4f4
  2dd771:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  2dd775:	e8 7a ed fe ff       	call   0x2cc4f4
  2dd77a:	48 8d 4d c0          	lea    rcx,[rbp-0x40]
  2dd77e:	e8 71 ed fe ff       	call   0x2cc4f4
  2dd783:	48 8d 4d e0          	lea    rcx,[rbp-0x20]
  2dd787:	e8 68 ed fe ff       	call   0x2cc4f4
  2dd78c:	48 8d 4d 00          	lea    rcx,[rbp+0x0]
  2dd790:	e8 5f ed fe ff       	call   0x2cc4f4
  2dd795:	48 8d 4d 20          	lea    rcx,[rbp+0x20]
  2dd799:	e8 56 ed fe ff       	call   0x2cc4f4
  2dd79e:	48 8d 4d 40          	lea    rcx,[rbp+0x40]
  2dd7a2:	e8 4d ed fe ff       	call   0x2cc4f4
  2dd7a7:	48 8d 4d 60          	lea    rcx,[rbp+0x60]
  2dd7ab:	e8 44 ed fe ff       	call   0x2cc4f4
  2dd7b0:	48 8d 8d 80 00 00 00 	lea    rcx,[rbp+0x80]
  2dd7b7:	e8 38 ed fe ff       	call   0x2cc4f4
  2dd7bc:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  2dd7c1:	48 8d 0d e0 96 0f 00 	lea    rcx,[rip+0xf96e0]        # 0x3d6ea8
  2dd7c8:	e8 4f b8 ff ff       	call   0x2d901c
  2dd7cd:	48 8d 4c 24 20       	lea    rcx,[rsp+0x20]
  2dd7d2:	e8 1d ed fe ff       	call   0x2cc4f4
  2dd7d7:	49 83 c7 68          	add    r15,0x68
  2dd7db:	4d 3b fc             	cmp    r15,r12
  2dd7de:	0f 85 9d fe ff ff    	jne    0x2dd681
  2dd7e4:	48 8d 0d ad af f3 ff 	lea    rcx,[rip+0xfffffffffff3afad]        # 0x218798
  2dd7eb:	e8 d0 a1 ff ff       	call   0x2d79c0
  2dd7f0:	48 8d 0d a1 af f3 ff 	lea    rcx,[rip+0xfffffffffff3afa1]        # 0x218798
  2dd7f7:	48 8b f8             	mov    rdi,rax
  2dd7fa:	e8 79 41 ff ff       	call   0x2d1978
  2dd7ff:	48 8b d8             	mov    rbx,rax
  2dd802:	48 3b c7             	cmp    rax,rdi
  2dd805:	74 12                	je     0x2dd819
  2dd807:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  2dd80a:	48 8b 11             	mov    rdx,QWORD PTR [rcx]
  2dd80d:	ff 52 08             	call   QWORD PTR [rdx+0x8]
  2dd810:	48 83 c3 08          	add    rbx,0x8
  2dd814:	48 3b df             	cmp    rbx,rdi
  2dd817:	75 ee                	jne    0x2dd807
  2dd819:	48 81 c4 a0 01 00 00 	add    rsp,0x1a0
  2dd820:	41 5f                	pop    r15
  2dd822:	41 5e                	pop    r14
  2dd824:	41 5c                	pop    r12
  2dd826:	5f                   	pop    rdi
  2dd827:	5e                   	pop    rsi
  2dd828:	5b                   	pop    rbx
  2dd829:	5d                   	pop    rbp
  2dd82a:	e9 9d 01 00 00       	jmp    0x2dd9cc
