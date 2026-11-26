; pdata function 0x3b464c..0x3b4688 unwind=0x0
3b464c  4c 8b d2                       mov    r10,rdx
3b464f  4c 8b d9                       mov    r11,rcx
3b4652  45 33 c9                       xor    r9d,r9d
3b4655  b8 dd 47 70 1f                 mov    eax,0x1f7047dd
3b465a  41 f7 e1                       mul    r9d
3b465d  41 8b c1                       mov    eax,r9d
3b4660  2b c2                          sub    eax,edx
3b4662  d1 e8                          shr    eax,1
3b4664  03 c2                          add    eax,edx
3b4666  c1 e8 05                       shr    eax,0x5
3b4669  0f be c0                       movsx  eax,al
3b466c  6b c8 39                       imul   ecx,eax,0x39
3b466f  41 8a c1                       mov    al,r9b
3b4672  2a c1                          sub    al,cl
3b4674  04 37                          add    al,0x37
3b4676  43 32 04 0a                    xor    al,BYTE PTR [r10+r9*1]
3b467a  43 88 04 0b                    mov    BYTE PTR [r11+r9*1],al
3b467e  41 ff c1                       inc    r9d
3b4681  41 83 f9 24                    cmp    r9d,0x24
3b4685  7c ce                          jl     0x3b4655
3b4687  c3                             ret
