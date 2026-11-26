
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3213cc.bin:     file format binary


Disassembly of section .data:

00000000003213cc <.data>:
  3213cc:	40 53                	rex push rbx
  3213ce:	48 83 ec 20          	sub    rsp,0x20
  3213d2:	48 8b d9             	mov    rbx,rcx
  3213d5:	e8 72 fa fb ff       	call   0x2e0e4c
  3213da:	84 c0                	test   al,al
  3213dc:	0f 85 96 00 00 00    	jne    0x321478
  3213e2:	e8 b5 f2 fb ff       	call   0x2e069c
  3213e7:	48 8b c8             	mov    rcx,rax
  3213ea:	e8 19 9b fa ff       	call   0x2caf08
  3213ef:	84 c0                	test   al,al
  3213f1:	0f 84 81 00 00 00    	je     0x321478
  3213f7:	e8 a0 c6 fb ff       	call   0x2dda9c
  3213fc:	48 8b c8             	mov    rcx,rax
  3213ff:	e8 04 9b fa ff       	call   0x2caf08
  321404:	84 c0                	test   al,al
  321406:	74 70                	je     0x321478
  321408:	48 85 db             	test   rbx,rbx
  32140b:	74 6b                	je     0x321478
  32140d:	48 83 c3 08          	add    rbx,0x8
  321411:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  321414:	48 85 c9             	test   rcx,rcx
  321417:	74 5f                	je     0x321478
  321419:	e8 7e fa fb ff       	call   0x2e0e9c
  32141e:	84 c0                	test   al,al
  321420:	75 5e                	jne    0x321480
  321422:	38 05 f0 83 0c 00    	cmp    BYTE PTR [rip+0xc83f0],al        # 0x3e9818
  321428:	74 4e                	je     0x321478
  32142a:	48 8b d3             	mov    rdx,rbx
  32142d:	48 8d 0d bc 4d 0c 00 	lea    rcx,[rip+0xc4dbc]        # 0x3e61f0
  321434:	e8 3b e3 fc ff       	call   0x2ef774
  321439:	80 38 00             	cmp    BYTE PTR [rax],0x0
  32143c:	74 3a                	je     0x321478
  32143e:	48 8b d3             	mov    rdx,rbx
  321441:	48 8d 0d 28 4d 0c 00 	lea    rcx,[rip+0xc4d28]        # 0x3e6170
  321448:	e8 07 e3 fc ff       	call   0x2ef754
  32144d:	4c 8b 00             	mov    r8,QWORD PTR [rax]
  321450:	49 8b c8             	mov    rcx,r8
  321453:	e8 b0 9a fa ff       	call   0x2caf08
  321458:	84 c0                	test   al,al
  32145a:	74 1c                	je     0x321478
  32145c:	33 d2                	xor    edx,edx
  32145e:	49 8b c8             	mov    rcx,r8
  321461:	e8 ca 48 05 00       	call   0x375d30
  321466:	48 8b d3             	mov    rdx,rbx
  321469:	48 8d 0d 80 4d 0c 00 	lea    rcx,[rip+0xc4d80]        # 0x3e61f0
  321470:	e8 ff e2 fc ff       	call   0x2ef774
  321475:	c6 00 00             	mov    BYTE PTR [rax],0x0
  321478:	32 c0                	xor    al,al
  32147a:	48 83 c4 20          	add    rsp,0x20
  32147e:	5b                   	pop    rbx
  32147f:	c3                   	ret
  321480:	b0 01                	mov    al,0x1
  321482:	eb f6                	jmp    0x32147a
