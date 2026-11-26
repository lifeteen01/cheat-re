; explicit leaf/assembly range 0x2df5dc..0x2df607 unwind=0x0
2df5dc  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2df5e0  0f 2e 02                       ucomiss xmm0,DWORD PTR [rdx]
2df5e3  7a 1f                          jp     0x2df604
2df5e5  75 1d                          jne    0x2df604
2df5e7  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2df5ec  0f 2e 42 04                    ucomiss xmm0,DWORD PTR [rdx+0x4]
2df5f0  7a 12                          jp     0x2df604
2df5f2  75 10                          jne    0x2df604
2df5f4  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
2df5f9  0f 2e 42 08                    ucomiss xmm0,DWORD PTR [rdx+0x8]
2df5fd  7a 05                          jp     0x2df604
2df5ff  75 03                          jne    0x2df604
2df601  32 c0                          xor    al,al
2df603  c3                             ret
2df604  b0 01                          mov    al,0x1
2df606  c3                             ret

; explicit leaf/assembly range 0x334ff4..0x33503e unwind=0x0
334ff4  4c 8b c9                       mov    r9,rcx
334ff7  48 85 c9                       test   rcx,rcx
334ffa  74 33                          je     0x33502f
334ffc  48 85 d2                       test   rdx,rdx
334fff  74 38                          je     0x335039
335001  0f b6 02                       movzx  eax,BYTE PTR [rdx]
335004  44 0f b6 01                    movzx  r8d,BYTE PTR [rcx]
335008  44 2b c0                       sub    r8d,eax
33500b  75 1b                          jne    0x335028
33500d  41 8d 48 01                    lea    ecx,[r8+0x1]
335011  80 3a 00                       cmp    BYTE PTR [rdx],0x0
335014  74 12                          je     0x335028
335016  4c 03 c9                       add    r9,rcx
335019  48 03 d1                       add    rdx,rcx
33501c  0f b6 02                       movzx  eax,BYTE PTR [rdx]
33501f  45 0f b6 01                    movzx  r8d,BYTE PTR [r9]
335023  44 2b c0                       sub    r8d,eax
335026  74 e9                          je     0x335011
335028  45 85 c0                       test   r8d,r8d
33502b  0f 94 c0                       sete   al
33502e  c3                             ret
33502f  48 85 d2                       test   rdx,rdx
335032  75 05                          jne    0x335039
335034  8d 4a 01                       lea    ecx,[rdx+0x1]
335037  eb 02                          jmp    0x33503b
335039  32 c9                          xor    cl,cl
33503b  8a c1                          mov    al,cl
33503d  c3                             ret

; explicit leaf/assembly range 0x3ca884..0x3ca8b5 unwind=0x0
3ca884  8a 02                          mov    al,BYTE PTR [rdx]
3ca886  45 33 c0                       xor    r8d,r8d
3ca889  38 01                          cmp    BYTE PTR [rcx],al
3ca88b  75 18                          jne    0x3ca8a5
3ca88d  4d 8d 0c 08                    lea    r9,[r8+rcx*1]
3ca891  41 80 39 00                    cmp    BYTE PTR [r9],0x0
3ca895  74 1b                          je     0x3ca8b2
3ca897  41 8a 44 10 01                 mov    al,BYTE PTR [r8+rdx*1+0x1]
3ca89c  49 ff c0                       inc    r8
3ca89f  41 38 41 01                    cmp    BYTE PTR [r9+0x1],al
3ca8a3  74 e8                          je     0x3ca88d
3ca8a5  41 0f be 04 08                 movsx  eax,BYTE PTR [r8+rcx*1]
3ca8aa  41 0f be 0c 10                 movsx  ecx,BYTE PTR [r8+rdx*1]
3ca8af  2b c1                          sub    eax,ecx
3ca8b1  c3                             ret
3ca8b2  33 c0                          xor    eax,eax
3ca8b4  c3                             ret

