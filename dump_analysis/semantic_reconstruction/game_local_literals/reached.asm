; reached independent pdata/next-pdata extent 2cd9e4..2cdc3c unwind0
2cd9e4 mov    r10,rdx
2cd9e7 mov    r11,rcx
2cd9ea xor    r9d,r9d
2cd9ed mov    eax,0x24924925
2cd9f2 mul    r9d
2cd9f5 mov    eax,r9d
2cd9f8 sub    eax,edx
2cd9fa shr    eax,1
2cd9fc add    eax,edx
2cd9fe shr    eax,0x5
2cda01 movsx  eax,al
2cda04 imul   ecx,eax,0x38
2cda07 mov    al,r9b
2cda0a sub    al,cl
2cda0c add    al,0x37
2cda0e xor    al,BYTE PTR [r10+r9*1]
2cda12 mov    BYTE PTR [r11+r9*1],al
2cda16 inc    r9d
2cda19 cmp    r9d,0x5
2cda1d jl     0x2cd9ed
2cda1f ret
2cda20 mov    r10,rdx
2cda23 mov    r11,rcx
2cda26 xor    r9d,r9d
2cda29 mov    eax,0x24924925
2cda2e mul    r9d
2cda31 mov    eax,r9d
2cda34 sub    eax,edx
2cda36 shr    eax,1
2cda38 add    eax,edx
2cda3a shr    eax,0x5
2cda3d movsx  eax,al
2cda40 imul   ecx,eax,0x38
2cda43 mov    al,r9b
2cda46 sub    al,cl
2cda48 add    al,0x37
2cda4a xor    al,BYTE PTR [r10+r9*1]
2cda4e mov    BYTE PTR [r11+r9*1],al
2cda52 inc    r9d
2cda55 cmp    r9d,0x7
2cda59 jl     0x2cda29
2cda5b ret
2cda5c mov    r10,rdx
2cda5f xor    r9d,r9d
2cda62 mov    eax,0x4ec4ec4f
2cda67 mul    r9d
2cda6a shr    edx,0x4
2cda6d movsx  eax,dl
2cda70 imul   edx,eax,0x34
2cda73 mov    al,r9b
2cda76 sub    al,dl
2cda78 add    al,0x37
2cda7a xor    al,BYTE PTR [r10+r9*1]
2cda7e mov    BYTE PTR [rcx+r9*1],al
2cda82 inc    r9d
2cda85 cmp    r9d,0xa
2cda89 jl     0x2cda62
2cda8b ret
2cda8c mov    r10,rdx
2cda8f mov    r11,rcx
2cda92 xor    r9d,r9d
2cda95 mov    eax,0x24924925
2cda9a mul    r9d
2cda9d mov    eax,r9d
2cdaa0 sub    eax,edx
2cdaa2 shr    eax,1
2cdaa4 add    eax,edx
2cdaa6 shr    eax,0x5
2cdaa9 movsx  eax,al
2cdaac imul   ecx,eax,0x38
2cdaaf mov    al,r9b
2cdab2 sub    al,cl
2cdab4 add    al,0x37
2cdab6 xor    al,BYTE PTR [r10+r9*1]
2cdaba mov    BYTE PTR [r11+r9*1],al
2cdabe inc    r9d
2cdac1 cmp    r9d,0xa
2cdac5 jl     0x2cda95
2cdac7 ret
2cdac8 mov    r10,rdx
2cdacb xor    r9d,r9d
2cdace mov    eax,0x4ec4ec4f
2cdad3 mul    r9d
2cdad6 shr    edx,0x4
2cdad9 movsx  eax,dl
2cdadc imul   edx,eax,0x34
2cdadf mov    al,r9b
2cdae2 sub    al,dl
2cdae4 add    al,0x37
2cdae6 xor    al,BYTE PTR [r10+r9*1]
2cdaea mov    BYTE PTR [rcx+r9*1],al
2cdaee inc    r9d
2cdaf1 cmp    r9d,0x13
2cdaf5 jl     0x2cdace
2cdaf7 ret
2cdaf8 mov    r10,rdx
2cdafb mov    r11,rcx
2cdafe xor    r9d,r9d
2cdb01 mov    eax,0x24924925
2cdb06 mul    r9d
2cdb09 mov    eax,r9d
2cdb0c sub    eax,edx
2cdb0e shr    eax,1
2cdb10 add    eax,edx
2cdb12 shr    eax,0x5
2cdb15 movsx  eax,al
2cdb18 imul   ecx,eax,0x38
2cdb1b mov    al,r9b
2cdb1e sub    al,cl
2cdb20 add    al,0x37
2cdb22 xor    al,BYTE PTR [r10+r9*1]
2cdb26 mov    BYTE PTR [r11+r9*1],al
2cdb2a inc    r9d
2cdb2d cmp    r9d,0x13
2cdb31 jl     0x2cdb01
2cdb33 ret
2cdb34 mov    r10,rdx
2cdb37 xor    r9d,r9d
2cdb3a mov    eax,0x4ec4ec4f
2cdb3f mul    r9d
2cdb42 shr    edx,0x4
2cdb45 movsx  eax,dl
2cdb48 imul   edx,eax,0x34
2cdb4b mov    al,r9b
2cdb4e sub    al,dl
2cdb50 add    al,0x37
2cdb52 xor    al,BYTE PTR [r10+r9*1]
2cdb56 mov    BYTE PTR [rcx+r9*1],al
2cdb5a inc    r9d
2cdb5d cmp    r9d,0x14
2cdb61 jl     0x2cdb3a
2cdb63 ret
2cdb64 mov    r10,rdx
2cdb67 mov    r11,rcx
2cdb6a xor    r9d,r9d
2cdb6d mov    eax,0x24924925
2cdb72 mul    r9d
2cdb75 mov    eax,r9d
2cdb78 sub    eax,edx
2cdb7a shr    eax,1
2cdb7c add    eax,edx
2cdb7e shr    eax,0x5
2cdb81 movsx  eax,al
2cdb84 imul   ecx,eax,0x38
2cdb87 mov    al,r9b
2cdb8a sub    al,cl
2cdb8c add    al,0x37
2cdb8e xor    al,BYTE PTR [r10+r9*1]
2cdb92 mov    BYTE PTR [r11+r9*1],al
2cdb96 inc    r9d
2cdb99 cmp    r9d,0x1b
2cdb9d jl     0x2cdb6d
2cdb9f ret
2cdba0 mov    r10,rdx
2cdba3 xor    r9d,r9d
2cdba6 mov    eax,0x4ec4ec4f
2cdbab mul    r9d
2cdbae shr    edx,0x4
2cdbb1 movsx  eax,dl
2cdbb4 imul   edx,eax,0x34
2cdbb7 mov    al,r9b
2cdbba sub    al,dl
2cdbbc add    al,0x37
2cdbbe xor    al,BYTE PTR [r10+r9*1]
2cdbc2 mov    BYTE PTR [rcx+r9*1],al
2cdbc6 inc    r9d
2cdbc9 cmp    r9d,0xc
2cdbcd jl     0x2cdba6
2cdbcf ret
2cdbd0 mov    r10,rdx
2cdbd3 mov    r11,rcx
2cdbd6 xor    r9d,r9d
2cdbd9 mov    eax,0x24924925
2cdbde mul    r9d
2cdbe1 mov    eax,r9d
2cdbe4 sub    eax,edx
2cdbe6 shr    eax,1
2cdbe8 add    eax,edx
2cdbea shr    eax,0x5
2cdbed movsx  eax,al
2cdbf0 imul   ecx,eax,0x38
2cdbf3 mov    al,r9b
2cdbf6 sub    al,cl
2cdbf8 add    al,0x37
2cdbfa xor    al,BYTE PTR [r10+r9*1]
2cdbfe mov    BYTE PTR [r11+r9*1],al
2cdc02 inc    r9d
2cdc05 cmp    r9d,0xc
2cdc09 jl     0x2cdbd9
2cdc0b ret
2cdc0c mov    r10,rdx
2cdc0f xor    r9d,r9d
2cdc12 mov    eax,0x4ec4ec4f
2cdc17 mul    r9d
2cdc1a shr    edx,0x4
2cdc1d movsx  eax,dl
2cdc20 imul   edx,eax,0x34
2cdc23 mov    al,r9b
2cdc26 sub    al,dl
2cdc28 add    al,0x37
2cdc2a xor    al,BYTE PTR [r10+r9*1]
2cdc2e mov    BYTE PTR [rcx+r9*1],al
2cdc32 inc    r9d
2cdc35 cmp    r9d,0xd
2cdc39 jl     0x2cdc12
2cdc3b ret

; reached independent pdata/next-pdata extent 2cda20..2cdc3c unwind0
2cda20 mov    r10,rdx
2cda23 mov    r11,rcx
2cda26 xor    r9d,r9d
2cda29 mov    eax,0x24924925
2cda2e mul    r9d
2cda31 mov    eax,r9d
2cda34 sub    eax,edx
2cda36 shr    eax,1
2cda38 add    eax,edx
2cda3a shr    eax,0x5
2cda3d movsx  eax,al
2cda40 imul   ecx,eax,0x38
2cda43 mov    al,r9b
2cda46 sub    al,cl
2cda48 add    al,0x37
2cda4a xor    al,BYTE PTR [r10+r9*1]
2cda4e mov    BYTE PTR [r11+r9*1],al
2cda52 inc    r9d
2cda55 cmp    r9d,0x7
2cda59 jl     0x2cda29
2cda5b ret
2cda5c mov    r10,rdx
2cda5f xor    r9d,r9d
2cda62 mov    eax,0x4ec4ec4f
2cda67 mul    r9d
2cda6a shr    edx,0x4
2cda6d movsx  eax,dl
2cda70 imul   edx,eax,0x34
2cda73 mov    al,r9b
2cda76 sub    al,dl
2cda78 add    al,0x37
2cda7a xor    al,BYTE PTR [r10+r9*1]
2cda7e mov    BYTE PTR [rcx+r9*1],al
2cda82 inc    r9d
2cda85 cmp    r9d,0xa
2cda89 jl     0x2cda62
2cda8b ret
2cda8c mov    r10,rdx
2cda8f mov    r11,rcx
2cda92 xor    r9d,r9d
2cda95 mov    eax,0x24924925
2cda9a mul    r9d
2cda9d mov    eax,r9d
2cdaa0 sub    eax,edx
2cdaa2 shr    eax,1
2cdaa4 add    eax,edx
2cdaa6 shr    eax,0x5
2cdaa9 movsx  eax,al
2cdaac imul   ecx,eax,0x38
2cdaaf mov    al,r9b
2cdab2 sub    al,cl
2cdab4 add    al,0x37
2cdab6 xor    al,BYTE PTR [r10+r9*1]
2cdaba mov    BYTE PTR [r11+r9*1],al
2cdabe inc    r9d
2cdac1 cmp    r9d,0xa
2cdac5 jl     0x2cda95
2cdac7 ret
2cdac8 mov    r10,rdx
2cdacb xor    r9d,r9d
2cdace mov    eax,0x4ec4ec4f
2cdad3 mul    r9d
2cdad6 shr    edx,0x4
2cdad9 movsx  eax,dl
2cdadc imul   edx,eax,0x34
2cdadf mov    al,r9b
2cdae2 sub    al,dl
2cdae4 add    al,0x37
2cdae6 xor    al,BYTE PTR [r10+r9*1]
2cdaea mov    BYTE PTR [rcx+r9*1],al
2cdaee inc    r9d
2cdaf1 cmp    r9d,0x13
2cdaf5 jl     0x2cdace
2cdaf7 ret
2cdaf8 mov    r10,rdx
2cdafb mov    r11,rcx
2cdafe xor    r9d,r9d
2cdb01 mov    eax,0x24924925
2cdb06 mul    r9d
2cdb09 mov    eax,r9d
2cdb0c sub    eax,edx
2cdb0e shr    eax,1
2cdb10 add    eax,edx
2cdb12 shr    eax,0x5
2cdb15 movsx  eax,al
2cdb18 imul   ecx,eax,0x38
2cdb1b mov    al,r9b
2cdb1e sub    al,cl
2cdb20 add    al,0x37
2cdb22 xor    al,BYTE PTR [r10+r9*1]
2cdb26 mov    BYTE PTR [r11+r9*1],al
2cdb2a inc    r9d
2cdb2d cmp    r9d,0x13
2cdb31 jl     0x2cdb01
2cdb33 ret
2cdb34 mov    r10,rdx
2cdb37 xor    r9d,r9d
2cdb3a mov    eax,0x4ec4ec4f
2cdb3f mul    r9d
2cdb42 shr    edx,0x4
2cdb45 movsx  eax,dl
2cdb48 imul   edx,eax,0x34
2cdb4b mov    al,r9b
2cdb4e sub    al,dl
2cdb50 add    al,0x37
2cdb52 xor    al,BYTE PTR [r10+r9*1]
2cdb56 mov    BYTE PTR [rcx+r9*1],al
2cdb5a inc    r9d
2cdb5d cmp    r9d,0x14
2cdb61 jl     0x2cdb3a
2cdb63 ret
2cdb64 mov    r10,rdx
2cdb67 mov    r11,rcx
2cdb6a xor    r9d,r9d
2cdb6d mov    eax,0x24924925
2cdb72 mul    r9d
2cdb75 mov    eax,r9d
2cdb78 sub    eax,edx
2cdb7a shr    eax,1
2cdb7c add    eax,edx
2cdb7e shr    eax,0x5
2cdb81 movsx  eax,al
2cdb84 imul   ecx,eax,0x38
2cdb87 mov    al,r9b
2cdb8a sub    al,cl
2cdb8c add    al,0x37
2cdb8e xor    al,BYTE PTR [r10+r9*1]
2cdb92 mov    BYTE PTR [r11+r9*1],al
2cdb96 inc    r9d
2cdb99 cmp    r9d,0x1b
2cdb9d jl     0x2cdb6d
2cdb9f ret
2cdba0 mov    r10,rdx
2cdba3 xor    r9d,r9d
2cdba6 mov    eax,0x4ec4ec4f
2cdbab mul    r9d
2cdbae shr    edx,0x4
2cdbb1 movsx  eax,dl
2cdbb4 imul   edx,eax,0x34
2cdbb7 mov    al,r9b
2cdbba sub    al,dl
2cdbbc add    al,0x37
2cdbbe xor    al,BYTE PTR [r10+r9*1]
2cdbc2 mov    BYTE PTR [rcx+r9*1],al
2cdbc6 inc    r9d
2cdbc9 cmp    r9d,0xc
2cdbcd jl     0x2cdba6
2cdbcf ret
2cdbd0 mov    r10,rdx
2cdbd3 mov    r11,rcx
2cdbd6 xor    r9d,r9d
2cdbd9 mov    eax,0x24924925
2cdbde mul    r9d
2cdbe1 mov    eax,r9d
2cdbe4 sub    eax,edx
2cdbe6 shr    eax,1
2cdbe8 add    eax,edx
2cdbea shr    eax,0x5
2cdbed movsx  eax,al
2cdbf0 imul   ecx,eax,0x38
2cdbf3 mov    al,r9b
2cdbf6 sub    al,cl
2cdbf8 add    al,0x37
2cdbfa xor    al,BYTE PTR [r10+r9*1]
2cdbfe mov    BYTE PTR [r11+r9*1],al
2cdc02 inc    r9d
2cdc05 cmp    r9d,0xc
2cdc09 jl     0x2cdbd9
2cdc0b ret
2cdc0c mov    r10,rdx
2cdc0f xor    r9d,r9d
2cdc12 mov    eax,0x4ec4ec4f
2cdc17 mul    r9d
2cdc1a shr    edx,0x4
2cdc1d movsx  eax,dl
2cdc20 imul   edx,eax,0x34
2cdc23 mov    al,r9b
2cdc26 sub    al,dl
2cdc28 add    al,0x37
2cdc2a xor    al,BYTE PTR [r10+r9*1]
2cdc2e mov    BYTE PTR [rcx+r9*1],al
2cdc32 inc    r9d
2cdc35 cmp    r9d,0xd
2cdc39 jl     0x2cdc12
2cdc3b ret

; reached independent pdata/next-pdata extent 2cda8c..2cdc3c unwind0
2cda8c mov    r10,rdx
2cda8f mov    r11,rcx
2cda92 xor    r9d,r9d
2cda95 mov    eax,0x24924925
2cda9a mul    r9d
2cda9d mov    eax,r9d
2cdaa0 sub    eax,edx
2cdaa2 shr    eax,1
2cdaa4 add    eax,edx
2cdaa6 shr    eax,0x5
2cdaa9 movsx  eax,al
2cdaac imul   ecx,eax,0x38
2cdaaf mov    al,r9b
2cdab2 sub    al,cl
2cdab4 add    al,0x37
2cdab6 xor    al,BYTE PTR [r10+r9*1]
2cdaba mov    BYTE PTR [r11+r9*1],al
2cdabe inc    r9d
2cdac1 cmp    r9d,0xa
2cdac5 jl     0x2cda95
2cdac7 ret
2cdac8 mov    r10,rdx
2cdacb xor    r9d,r9d
2cdace mov    eax,0x4ec4ec4f
2cdad3 mul    r9d
2cdad6 shr    edx,0x4
2cdad9 movsx  eax,dl
2cdadc imul   edx,eax,0x34
2cdadf mov    al,r9b
2cdae2 sub    al,dl
2cdae4 add    al,0x37
2cdae6 xor    al,BYTE PTR [r10+r9*1]
2cdaea mov    BYTE PTR [rcx+r9*1],al
2cdaee inc    r9d
2cdaf1 cmp    r9d,0x13
2cdaf5 jl     0x2cdace
2cdaf7 ret
2cdaf8 mov    r10,rdx
2cdafb mov    r11,rcx
2cdafe xor    r9d,r9d
2cdb01 mov    eax,0x24924925
2cdb06 mul    r9d
2cdb09 mov    eax,r9d
2cdb0c sub    eax,edx
2cdb0e shr    eax,1
2cdb10 add    eax,edx
2cdb12 shr    eax,0x5
2cdb15 movsx  eax,al
2cdb18 imul   ecx,eax,0x38
2cdb1b mov    al,r9b
2cdb1e sub    al,cl
2cdb20 add    al,0x37
2cdb22 xor    al,BYTE PTR [r10+r9*1]
2cdb26 mov    BYTE PTR [r11+r9*1],al
2cdb2a inc    r9d
2cdb2d cmp    r9d,0x13
2cdb31 jl     0x2cdb01
2cdb33 ret
2cdb34 mov    r10,rdx
2cdb37 xor    r9d,r9d
2cdb3a mov    eax,0x4ec4ec4f
2cdb3f mul    r9d
2cdb42 shr    edx,0x4
2cdb45 movsx  eax,dl
2cdb48 imul   edx,eax,0x34
2cdb4b mov    al,r9b
2cdb4e sub    al,dl
2cdb50 add    al,0x37
2cdb52 xor    al,BYTE PTR [r10+r9*1]
2cdb56 mov    BYTE PTR [rcx+r9*1],al
2cdb5a inc    r9d
2cdb5d cmp    r9d,0x14
2cdb61 jl     0x2cdb3a
2cdb63 ret
2cdb64 mov    r10,rdx
2cdb67 mov    r11,rcx
2cdb6a xor    r9d,r9d
2cdb6d mov    eax,0x24924925
2cdb72 mul    r9d
2cdb75 mov    eax,r9d
2cdb78 sub    eax,edx
2cdb7a shr    eax,1
2cdb7c add    eax,edx
2cdb7e shr    eax,0x5
2cdb81 movsx  eax,al
2cdb84 imul   ecx,eax,0x38
2cdb87 mov    al,r9b
2cdb8a sub    al,cl
2cdb8c add    al,0x37
2cdb8e xor    al,BYTE PTR [r10+r9*1]
2cdb92 mov    BYTE PTR [r11+r9*1],al
2cdb96 inc    r9d
2cdb99 cmp    r9d,0x1b
2cdb9d jl     0x2cdb6d
2cdb9f ret
2cdba0 mov    r10,rdx
2cdba3 xor    r9d,r9d
2cdba6 mov    eax,0x4ec4ec4f
2cdbab mul    r9d
2cdbae shr    edx,0x4
2cdbb1 movsx  eax,dl
2cdbb4 imul   edx,eax,0x34
2cdbb7 mov    al,r9b
2cdbba sub    al,dl
2cdbbc add    al,0x37
2cdbbe xor    al,BYTE PTR [r10+r9*1]
2cdbc2 mov    BYTE PTR [rcx+r9*1],al
2cdbc6 inc    r9d
2cdbc9 cmp    r9d,0xc
2cdbcd jl     0x2cdba6
2cdbcf ret
2cdbd0 mov    r10,rdx
2cdbd3 mov    r11,rcx
2cdbd6 xor    r9d,r9d
2cdbd9 mov    eax,0x24924925
2cdbde mul    r9d
2cdbe1 mov    eax,r9d
2cdbe4 sub    eax,edx
2cdbe6 shr    eax,1
2cdbe8 add    eax,edx
2cdbea shr    eax,0x5
2cdbed movsx  eax,al
2cdbf0 imul   ecx,eax,0x38
2cdbf3 mov    al,r9b
2cdbf6 sub    al,cl
2cdbf8 add    al,0x37
2cdbfa xor    al,BYTE PTR [r10+r9*1]
2cdbfe mov    BYTE PTR [r11+r9*1],al
2cdc02 inc    r9d
2cdc05 cmp    r9d,0xc
2cdc09 jl     0x2cdbd9
2cdc0b ret
2cdc0c mov    r10,rdx
2cdc0f xor    r9d,r9d
2cdc12 mov    eax,0x4ec4ec4f
2cdc17 mul    r9d
2cdc1a shr    edx,0x4
2cdc1d movsx  eax,dl
2cdc20 imul   edx,eax,0x34
2cdc23 mov    al,r9b
2cdc26 sub    al,dl
2cdc28 add    al,0x37
2cdc2a xor    al,BYTE PTR [r10+r9*1]
2cdc2e mov    BYTE PTR [rcx+r9*1],al
2cdc32 inc    r9d
2cdc35 cmp    r9d,0xd
2cdc39 jl     0x2cdc12
2cdc3b ret

; reached independent pdata/next-pdata extent 2cdccc..2cdcf2 unwind3d2038
2cdccc rex push rbx
2cdcce sub    rsp,0x20
2cdcd2 mov    rbx,rcx
2cdcd5 call   0x2ce564
2cdcda test   al,al
2cdcdc je     0x2cdce9
2cdcde mov    rdx,rbx
2cdce1 mov    rcx,rbx
2cdce4 call   0x2cd9e4
2cdce9 mov    rax,rbx
2cdcec add    rsp,0x20
2cdcf0 pop    rbx
2cdcf1 ret

; reached independent pdata/next-pdata extent 2cdcf4..2cdd1a unwind3d2038
2cdcf4 rex push rbx
2cdcf6 sub    rsp,0x20
2cdcfa mov    rbx,rcx
2cdcfd call   0x2ce56c
2cdd02 test   al,al
2cdd04 je     0x2cdd11
2cdd06 mov    rdx,rbx
2cdd09 mov    rcx,rbx
2cdd0c call   0x2cda20
2cdd11 mov    rax,rbx
2cdd14 add    rsp,0x20
2cdd18 pop    rbx
2cdd19 ret

; reached independent pdata/next-pdata extent 2cdd44..2cdd6a unwind3d2038
2cdd44 rex push rbx
2cdd46 sub    rsp,0x20
2cdd4a mov    rbx,rcx
2cdd4d call   0x2ce574
2cdd52 test   al,al
2cdd54 je     0x2cdd61
2cdd56 mov    rdx,rbx
2cdd59 mov    rcx,rbx
2cdd5c call   0x2cda8c
2cdd61 mov    rax,rbx
2cdd64 add    rsp,0x20
2cdd68 pop    rbx
2cdd69 ret

; reached independent pdata/next-pdata extent 2ce564..2ce5a8 unwind0
2ce564 cmp    BYTE PTR [rcx+0x4],0x0
2ce568 setne  al
2ce56b ret
2ce56c cmp    BYTE PTR [rcx+0x6],0x0
2ce570 setne  al
2ce573 ret
2ce574 cmp    BYTE PTR [rcx+0x9],0x0
2ce578 setne  al
2ce57b ret
2ce57c cmp    BYTE PTR [rcx+0x12],0x0
2ce580 setne  al
2ce583 ret
2ce584 cmp    BYTE PTR [rcx+0x13],0x0
2ce588 setne  al
2ce58b ret
2ce58c cmp    BYTE PTR [rcx+0x1a],0x0
2ce590 setne  al
2ce593 ret
2ce594 cmp    BYTE PTR [rcx+0xb],0x0
2ce598 setne  al
2ce59b ret
2ce59c cmp    BYTE PTR [rcx+0xc],0x0
2ce5a0 setne  al
2ce5a3 ret
2ce5a4 xor    al,al
2ce5a6 ret
2ce5a7 int3

; reached independent pdata/next-pdata extent 2ce56c..2ce5a8 unwind0
2ce56c cmp    BYTE PTR [rcx+0x6],0x0
2ce570 setne  al
2ce573 ret
2ce574 cmp    BYTE PTR [rcx+0x9],0x0
2ce578 setne  al
2ce57b ret
2ce57c cmp    BYTE PTR [rcx+0x12],0x0
2ce580 setne  al
2ce583 ret
2ce584 cmp    BYTE PTR [rcx+0x13],0x0
2ce588 setne  al
2ce58b ret
2ce58c cmp    BYTE PTR [rcx+0x1a],0x0
2ce590 setne  al
2ce593 ret
2ce594 cmp    BYTE PTR [rcx+0xb],0x0
2ce598 setne  al
2ce59b ret
2ce59c cmp    BYTE PTR [rcx+0xc],0x0
2ce5a0 setne  al
2ce5a3 ret
2ce5a4 xor    al,al
2ce5a6 ret
2ce5a7 int3

; reached independent pdata/next-pdata extent 2ce574..2ce5a8 unwind0
2ce574 cmp    BYTE PTR [rcx+0x9],0x0
2ce578 setne  al
2ce57b ret
2ce57c cmp    BYTE PTR [rcx+0x12],0x0
2ce580 setne  al
2ce583 ret
2ce584 cmp    BYTE PTR [rcx+0x13],0x0
2ce588 setne  al
2ce58b ret
2ce58c cmp    BYTE PTR [rcx+0x1a],0x0
2ce590 setne  al
2ce593 ret
2ce594 cmp    BYTE PTR [rcx+0xb],0x0
2ce598 setne  al
2ce59b ret
2ce59c cmp    BYTE PTR [rcx+0xc],0x0
2ce5a0 setne  al
2ce5a3 ret
2ce5a4 xor    al,al
2ce5a6 ret
2ce5a7 int3

; reached independent pdata/next-pdata extent 2ce584..2ce5a8 unwind0
2ce584 cmp    BYTE PTR [rcx+0x13],0x0
2ce588 setne  al
2ce58b ret
2ce58c cmp    BYTE PTR [rcx+0x1a],0x0
2ce590 setne  al
2ce593 ret
2ce594 cmp    BYTE PTR [rcx+0xb],0x0
2ce598 setne  al
2ce59b ret
2ce59c cmp    BYTE PTR [rcx+0xc],0x0
2ce5a0 setne  al
2ce5a3 ret
2ce5a4 xor    al,al
2ce5a6 ret
2ce5a7 int3

; reached independent pdata/next-pdata extent 2ce59c..2ce5a8 unwind0
2ce59c cmp    BYTE PTR [rcx+0xc],0x0
2ce5a0 setne  al
2ce5a3 ret
2ce5a4 xor    al,al
2ce5a6 ret
2ce5a7 int3

; reached independent pdata/next-pdata extent 2d6354..2d6384 unwind0
2d6354 movabs rdx,0xcbf29ce484222325
2d635b 
2d635e jmp    0x2d6378
2d6360 movsx  rax,BYTE PTR [rcx]
2d6364 movabs r8,0x100000001b3
2d636b 
2d636e xor    rdx,rax
2d6371 inc    rcx
2d6374 imul   rdx,r8
2d6378 cmp    BYTE PTR [rcx],0x0
2d637b jne    0x2d6360
2d637d mov    rax,rdx
2d6380 ret
2d6381 int3
2d6382 int3
2d6383 int3

; reached independent pdata/next-pdata extent 2d8144..2d8384 unwind0
2d8144 mov    r10,rdx
2d8147 mov    r11,rcx
2d814a xor    r9d,r9d
2d814d mov    eax,0x24924925
2d8152 mul    r9d
2d8155 mov    eax,r9d
2d8158 sub    eax,edx
2d815a shr    eax,1
2d815c add    eax,edx
2d815e shr    eax,0x5
2d8161 movsx  eax,al
2d8164 imul   ecx,eax,0x38
2d8167 mov    al,r9b
2d816a sub    al,cl
2d816c add    al,0x37
2d816e xor    al,BYTE PTR [r10+r9*1]
2d8172 mov    BYTE PTR [r11+r9*1],al
2d8176 inc    r9d
2d8179 cmp    r9d,0x6
2d817d jl     0x2d814d
2d817f ret
2d8180 mov    r10,rdx
2d8183 xor    r9d,r9d
2d8186 mov    eax,0x4ec4ec4f
2d818b mul    r9d
2d818e shr    edx,0x4
2d8191 movsx  eax,dl
2d8194 imul   edx,eax,0x34
2d8197 mov    al,r9b
2d819a sub    al,dl
2d819c add    al,0x37
2d819e xor    al,BYTE PTR [r10+r9*1]
2d81a2 mov    BYTE PTR [rcx+r9*1],al
2d81a6 inc    r9d
2d81a9 cmp    r9d,0x9
2d81ad jl     0x2d8186
2d81af ret
2d81b0 mov    r10,rdx
2d81b3 xor    r9d,r9d
2d81b6 mov    eax,0x4ec4ec4f
2d81bb mul    r9d
2d81be shr    edx,0x4
2d81c1 movsx  eax,dl
2d81c4 imul   edx,eax,0x34
2d81c7 mov    al,r9b
2d81ca sub    al,dl
2d81cc add    al,0x37
2d81ce xor    al,BYTE PTR [r10+r9*1]
2d81d2 mov    BYTE PTR [rcx+r9*1],al
2d81d6 inc    r9d
2d81d9 cmp    r9d,0x10
2d81dd jl     0x2d81b6
2d81df ret
2d81e0 mov    r10,rdx
2d81e3 xor    r9d,r9d
2d81e6 mov    eax,0x4ec4ec4f
2d81eb mul    r9d
2d81ee shr    edx,0x4
2d81f1 movsx  eax,dl
2d81f4 imul   edx,eax,0x34
2d81f7 mov    al,r9b
2d81fa sub    al,dl
2d81fc add    al,0x37
2d81fe xor    al,BYTE PTR [r10+r9*1]
2d8202 mov    BYTE PTR [rcx+r9*1],al
2d8206 inc    r9d
2d8209 cmp    r9d,0x11
2d820d jl     0x2d81e6
2d820f ret
2d8210 mov    r10,rdx
2d8213 xor    r9d,r9d
2d8216 mov    eax,0x4ec4ec4f
2d821b mul    r9d
2d821e shr    edx,0x4
2d8221 movsx  eax,dl
2d8224 imul   edx,eax,0x34
2d8227 mov    al,r9b
2d822a sub    al,dl
2d822c add    al,0x37
2d822e xor    al,BYTE PTR [r10+r9*1]
2d8232 mov    BYTE PTR [rcx+r9*1],al
2d8236 inc    r9d
2d8239 cmp    r9d,0x12
2d823d jl     0x2d8216
2d823f ret
2d8240 mov    r10,rdx
2d8243 mov    r11,rcx
2d8246 xor    r9d,r9d
2d8249 mov    eax,0x24924925
2d824e mul    r9d
2d8251 mov    eax,r9d
2d8254 sub    eax,edx
2d8256 shr    eax,1
2d8258 add    eax,edx
2d825a shr    eax,0x5
2d825d movsx  eax,al
2d8260 imul   ecx,eax,0x38
2d8263 mov    al,r9b
2d8266 sub    al,cl
2d8268 add    al,0x37
2d826a xor    al,BYTE PTR [r10+r9*1]
2d826e mov    BYTE PTR [r11+r9*1],al
2d8272 inc    r9d
2d8275 cmp    r9d,0x16
2d8279 jl     0x2d8249
2d827b ret
2d827c mov    r10,rdx
2d827f xor    r9d,r9d
2d8282 mov    eax,0x4ec4ec4f
2d8287 mul    r9d
2d828a shr    edx,0x4
2d828d movsx  eax,dl
2d8290 imul   edx,eax,0x34
2d8293 mov    al,r9b
2d8296 sub    al,dl
2d8298 add    al,0x37
2d829a xor    al,BYTE PTR [r10+r9*1]
2d829e mov    BYTE PTR [rcx+r9*1],al
2d82a2 inc    r9d
2d82a5 cmp    r9d,0xb
2d82a9 jl     0x2d8282
2d82ab ret
2d82ac mov    r10,rdx
2d82af mov    r11,rcx
2d82b2 xor    r9d,r9d
2d82b5 mov    eax,0x24924925
2d82ba mul    r9d
2d82bd mov    eax,r9d
2d82c0 sub    eax,edx
2d82c2 shr    eax,1
2d82c4 add    eax,edx
2d82c6 shr    eax,0x5
2d82c9 movsx  eax,al
2d82cc imul   ecx,eax,0x38
2d82cf mov    al,r9b
2d82d2 sub    al,cl
2d82d4 add    al,0x37
2d82d6 xor    al,BYTE PTR [r10+r9*1]
2d82da mov    BYTE PTR [r11+r9*1],al
2d82de inc    r9d
2d82e1 cmp    r9d,0xd
2d82e5 jl     0x2d82b5
2d82e7 ret
2d82e8 mov    r10,rdx
2d82eb xor    r9d,r9d
2d82ee mov    eax,0x4ec4ec4f
2d82f3 mul    r9d
2d82f6 shr    edx,0x4
2d82f9 movsx  eax,dl
2d82fc imul   edx,eax,0x34
2d82ff mov    al,r9b
2d8302 sub    al,dl
2d8304 add    al,0x37
2d8306 xor    al,BYTE PTR [r10+r9*1]
2d830a mov    BYTE PTR [rcx+r9*1],al
2d830e inc    r9d
2d8311 cmp    r9d,0xe
2d8315 jl     0x2d82ee
2d8317 ret
2d8318 mov    r10,rdx
2d831b xor    r9d,r9d
2d831e mov    eax,0x4ec4ec4f
2d8323 mul    r9d
2d8326 shr    edx,0x4
2d8329 movsx  eax,dl
2d832c imul   edx,eax,0x34
2d832f mov    al,r9b
2d8332 sub    al,dl
2d8334 add    al,0x37
2d8336 xor    al,BYTE PTR [r10+r9*1]
2d833a mov    BYTE PTR [rcx+r9*1],al
2d833e inc    r9d
2d8341 cmp    r9d,0xf
2d8345 jl     0x2d831e
2d8347 ret
2d8348 mov    r10,rdx
2d834b mov    r11,rcx
2d834e xor    r9d,r9d
2d8351 mov    eax,0x24924925
2d8356 mul    r9d
2d8359 mov    eax,r9d
2d835c sub    eax,edx
2d835e shr    eax,1
2d8360 add    eax,edx
2d8362 shr    eax,0x5
2d8365 movsx  eax,al
2d8368 imul   ecx,eax,0x38
2d836b mov    al,r9b
2d836e sub    al,cl
2d8370 add    al,0x37
2d8372 xor    al,BYTE PTR [r10+r9*1]
2d8376 mov    BYTE PTR [r11+r9*1],al
2d837a inc    r9d
2d837d cmp    r9d,0xf
2d8381 jl     0x2d8351
2d8383 ret

; reached independent pdata/next-pdata extent 2d82ac..2d8384 unwind0
2d82ac mov    r10,rdx
2d82af mov    r11,rcx
2d82b2 xor    r9d,r9d
2d82b5 mov    eax,0x24924925
2d82ba mul    r9d
2d82bd mov    eax,r9d
2d82c0 sub    eax,edx
2d82c2 shr    eax,1
2d82c4 add    eax,edx
2d82c6 shr    eax,0x5
2d82c9 movsx  eax,al
2d82cc imul   ecx,eax,0x38
2d82cf mov    al,r9b
2d82d2 sub    al,cl
2d82d4 add    al,0x37
2d82d6 xor    al,BYTE PTR [r10+r9*1]
2d82da mov    BYTE PTR [r11+r9*1],al
2d82de inc    r9d
2d82e1 cmp    r9d,0xd
2d82e5 jl     0x2d82b5
2d82e7 ret
2d82e8 mov    r10,rdx
2d82eb xor    r9d,r9d
2d82ee mov    eax,0x4ec4ec4f
2d82f3 mul    r9d
2d82f6 shr    edx,0x4
2d82f9 movsx  eax,dl
2d82fc imul   edx,eax,0x34
2d82ff mov    al,r9b
2d8302 sub    al,dl
2d8304 add    al,0x37
2d8306 xor    al,BYTE PTR [r10+r9*1]
2d830a mov    BYTE PTR [rcx+r9*1],al
2d830e inc    r9d
2d8311 cmp    r9d,0xe
2d8315 jl     0x2d82ee
2d8317 ret
2d8318 mov    r10,rdx
2d831b xor    r9d,r9d
2d831e mov    eax,0x4ec4ec4f
2d8323 mul    r9d
2d8326 shr    edx,0x4
2d8329 movsx  eax,dl
2d832c imul   edx,eax,0x34
2d832f mov    al,r9b
2d8332 sub    al,dl
2d8334 add    al,0x37
2d8336 xor    al,BYTE PTR [r10+r9*1]
2d833a mov    BYTE PTR [rcx+r9*1],al
2d833e inc    r9d
2d8341 cmp    r9d,0xf
2d8345 jl     0x2d831e
2d8347 ret
2d8348 mov    r10,rdx
2d834b mov    r11,rcx
2d834e xor    r9d,r9d
2d8351 mov    eax,0x24924925
2d8356 mul    r9d
2d8359 mov    eax,r9d
2d835c sub    eax,edx
2d835e shr    eax,1
2d8360 add    eax,edx
2d8362 shr    eax,0x5
2d8365 movsx  eax,al
2d8368 imul   ecx,eax,0x38
2d836b mov    al,r9b
2d836e sub    al,cl
2d8370 add    al,0x37
2d8372 xor    al,BYTE PTR [r10+r9*1]
2d8376 mov    BYTE PTR [r11+r9*1],al
2d837a inc    r9d
2d837d cmp    r9d,0xf
2d8381 jl     0x2d8351
2d8383 ret

; reached independent pdata/next-pdata extent 2d8348..2d8384 unwind0
2d8348 mov    r10,rdx
2d834b mov    r11,rcx
2d834e xor    r9d,r9d
2d8351 mov    eax,0x24924925
2d8356 mul    r9d
2d8359 mov    eax,r9d
2d835c sub    eax,edx
2d835e shr    eax,1
2d8360 add    eax,edx
2d8362 shr    eax,0x5
2d8365 movsx  eax,al
2d8368 imul   ecx,eax,0x38
2d836b mov    al,r9b
2d836e sub    al,cl
2d8370 add    al,0x37
2d8372 xor    al,BYTE PTR [r10+r9*1]
2d8376 mov    BYTE PTR [r11+r9*1],al
2d837a inc    r9d
2d837d cmp    r9d,0xf
2d8381 jl     0x2d8351
2d8383 ret

; reached independent pdata/next-pdata extent 2d84dc..2d8502 unwind3d2038
2d84dc rex push rbx
2d84de sub    rsp,0x20
2d84e2 mov    rbx,rcx
2d84e5 call   0x2d8a88
2d84ea test   al,al
2d84ec je     0x2d84f9
2d84ee mov    rdx,rbx
2d84f1 mov    rcx,rbx
2d84f4 call   0x2d8144
2d84f9 mov    rax,rbx
2d84fc add    rsp,0x20
2d8500 pop    rbx
2d8501 ret

; reached independent pdata/next-pdata extent 2d85f4..2d861a unwind3d2038
2d85f4 rex push rbx
2d85f6 sub    rsp,0x20
2d85fa mov    rbx,rcx
2d85fd call   0x2ce59c
2d8602 test   al,al
2d8604 je     0x2d8611
2d8606 mov    rdx,rbx
2d8609 mov    rcx,rbx
2d860c call   0x2d82ac
2d8611 mov    rax,rbx
2d8614 add    rsp,0x20
2d8618 pop    rbx
2d8619 ret

; reached independent pdata/next-pdata extent 2d866c..2d8692 unwind3d2038
2d866c rex push rbx
2d866e sub    rsp,0x20
2d8672 mov    rbx,rcx
2d8675 call   0x2d8ac8
2d867a test   al,al
2d867c je     0x2d8689
2d867e mov    rdx,rbx
2d8681 mov    rcx,rbx
2d8684 call   0x2d8348
2d8689 mov    rax,rbx
2d868c add    rsp,0x20
2d8690 pop    rbx
2d8691 ret

; reached independent pdata/next-pdata extent 2d8a88..2d8ae0 unwind0
2d8a88 cmp    BYTE PTR [rcx+0x5],0x0
2d8a8c setne  al
2d8a8f ret
2d8a90 cmp    BYTE PTR [rcx+0x8],0x0
2d8a94 setne  al
2d8a97 ret
2d8a98 cmp    BYTE PTR [rcx+0xf],0x0
2d8a9c setne  al
2d8a9f ret
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8a90..2d8ae0 unwind0
2d8a90 cmp    BYTE PTR [rcx+0x8],0x0
2d8a94 setne  al
2d8a97 ret
2d8a98 cmp    BYTE PTR [rcx+0xf],0x0
2d8a9c setne  al
2d8a9f ret
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8a98..2d8ae0 unwind0
2d8a98 cmp    BYTE PTR [rcx+0xf],0x0
2d8a9c setne  al
2d8a9f ret
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8aa0..2d8ae0 unwind0
2d8aa0 cmp    BYTE PTR [rcx+0x10],0x0
2d8aa4 setne  al
2d8aa7 ret
2d8aa8 cmp    BYTE PTR [rcx+0x11],0x0
2d8aac setne  al
2d8aaf ret
2d8ab0 cmp    BYTE PTR [rcx+0x15],0x0
2d8ab4 setne  al
2d8ab7 ret
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8ab8..2d8ae0 unwind0
2d8ab8 cmp    BYTE PTR [rcx+0xa],0x0
2d8abc setne  al
2d8abf ret
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8ac0..2d8ae0 unwind0
2d8ac0 cmp    BYTE PTR [rcx+0xd],0x0
2d8ac4 setne  al
2d8ac7 ret
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2d8ac8..2d8ae0 unwind0
2d8ac8 cmp    BYTE PTR [rcx+0xe],0x0
2d8acc setne  al
2d8acf ret
2d8ad0 jmp    0x3cab84
2d8ad5 int3
2d8ad6 int3
2d8ad7 int3
2d8ad8 mov    rax,QWORD PTR [rcx+0x10]
2d8adc ret
2d8add int3
2d8ade int3
2d8adf int3

; reached independent pdata/next-pdata extent 2dd064..2dd0e8 unwind0
2dd064 mov    r10,rdx
2dd067 mov    r11,rcx
2dd06a xor    r9d,r9d
2dd06d mov    eax,0x24924925
2dd072 mul    r9d
2dd075 mov    eax,r9d
2dd078 sub    eax,edx
2dd07a shr    eax,1
2dd07c add    eax,edx
2dd07e shr    eax,0x5
2dd081 movsx  eax,al
2dd084 imul   ecx,eax,0x38
2dd087 mov    al,r9b
2dd08a sub    al,cl
2dd08c add    al,0x37
2dd08e xor    al,BYTE PTR [r10+r9*1]
2dd092 mov    BYTE PTR [r11+r9*1],al
2dd096 inc    r9d
2dd099 cmp    r9d,0x10
2dd09d jl     0x2dd06d
2dd09f ret
2dd0a0 mov    r10,rdx
2dd0a3 mov    r11,rcx
2dd0a6 xor    r9d,r9d
2dd0a9 mov    eax,0x24924925
2dd0ae mul    r9d
2dd0b1 mov    eax,r9d
2dd0b4 sub    eax,edx
2dd0b6 shr    eax,1
2dd0b8 add    eax,edx
2dd0ba shr    eax,0x5
2dd0bd movsx  eax,al
2dd0c0 imul   ecx,eax,0x38
2dd0c3 mov    al,r9b
2dd0c6 sub    al,cl
2dd0c8 add    al,0x37
2dd0ca xor    al,BYTE PTR [r10+r9*1]
2dd0ce mov    BYTE PTR [r11+r9*1],al
2dd0d2 inc    r9d
2dd0d5 cmp    r9d,0xe
2dd0d9 jl     0x2dd0a9
2dd0db ret
2dd0dc mov    rcx,rdx
2dd0df imul   rdx,r8,0x68
2dd0e3 jmp    0x2cb3a8

; reached independent pdata/next-pdata extent 2dd0a0..2dd0e8 unwind0
2dd0a0 mov    r10,rdx
2dd0a3 mov    r11,rcx
2dd0a6 xor    r9d,r9d
2dd0a9 mov    eax,0x24924925
2dd0ae mul    r9d
2dd0b1 mov    eax,r9d
2dd0b4 sub    eax,edx
2dd0b6 shr    eax,1
2dd0b8 add    eax,edx
2dd0ba shr    eax,0x5
2dd0bd movsx  eax,al
2dd0c0 imul   ecx,eax,0x38
2dd0c3 mov    al,r9b
2dd0c6 sub    al,cl
2dd0c8 add    al,0x37
2dd0ca xor    al,BYTE PTR [r10+r9*1]
2dd0ce mov    BYTE PTR [r11+r9*1],al
2dd0d2 inc    r9d
2dd0d5 cmp    r9d,0xe
2dd0d9 jl     0x2dd0a9
2dd0db ret
2dd0dc mov    rcx,rdx
2dd0df imul   rdx,r8,0x68
2dd0e3 jmp    0x2cb3a8

; reached independent pdata/next-pdata extent 2dd160..2dd186 unwind3d2038
2dd160 rex push rbx
2dd162 sub    rsp,0x20
2dd166 mov    rbx,rcx
2dd169 call   0x2d8a98
2dd16e test   al,al
2dd170 je     0x2dd17d
2dd172 mov    rdx,rbx
2dd175 mov    rcx,rbx
2dd178 call   0x2dd064
2dd17d mov    rax,rbx
2dd180 add    rsp,0x20
2dd184 pop    rbx
2dd185 ret

; reached independent pdata/next-pdata extent 2dd188..2dd1ae unwind3d2038
2dd188 rex push rbx
2dd18a sub    rsp,0x20
2dd18e mov    rbx,rcx
2dd191 call   0x2d8ac0
2dd196 test   al,al
2dd198 je     0x2dd1a5
2dd19a mov    rdx,rbx
2dd19d mov    rcx,rbx
2dd1a0 call   0x2dd0a0
2dd1a5 mov    rax,rbx
2dd1a8 add    rsp,0x20
2dd1ac pop    rbx
2dd1ad ret

; reached independent pdata/next-pdata extent 2dd2e4..2dd2ec unwind0
2dd2e4 cmp    BYTE PTR [rcx+0x7],0x0
2dd2e8 setne  al
2dd2eb ret

; reached independent pdata/next-pdata extent 2dfbcc..2dfdcc unwind0
2dfbcc movabs rax,0x3e5e55495f575d70
2dfbd3 
2dfbd6 mov    QWORD PTR [rdx],rax
2dfbd9 mov    rax,rdx
2dfbdc ret
2dfbdd int3
2dfbde int3
2dfbdf int3
2dfbe0 mov    eax,DWORD PTR [rip+0xfffffffffffadb4a]        # 0x28d730
2dfbe6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffadb3a]        # 0x28d728
2dfbed 
2dfbee movsd  QWORD PTR [rdx],xmm0
2dfbf2 mov    DWORD PTR [rdx+0x8],eax
2dfbf5 movzx  eax,WORD PTR [rip+0xfffffffffffadb38]        # 0x28d734
2dfbfc mov    WORD PTR [rdx+0xc],ax
2dfc00 mov    al,BYTE PTR [rip+0xfffffffffffadb30]        # 0x28d736
2dfc06 mov    BYTE PTR [rdx+0xe],al
2dfc09 mov    rax,rdx
2dfc0c ret
2dfc0d int3
2dfc0e int3
2dfc0f int3
2dfc10 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb71]        # 0x28d788
2dfc17 mov    rax,rdx
2dfc1a movdqu XMMWORD PTR [rdx],xmm0
2dfc1e ret
2dfc1f int3
2dfc20 mov    eax,DWORD PTR [rip+0xfffffffffffadbaa]        # 0x28d7d0
2dfc26 movsd  xmm0,QWORD PTR [rip+0xfffffffffffadb9a]        # 0x28d7c8
2dfc2d 
2dfc2e movsd  QWORD PTR [rdx],xmm0
2dfc32 mov    DWORD PTR [rdx+0x8],eax
2dfc35 movzx  eax,WORD PTR [rip+0xfffffffffffadb98]        # 0x28d7d4
2dfc3c mov    WORD PTR [rdx+0xc],ax
2dfc40 mov    rax,rdx
2dfc43 ret
2dfc44 movabs rax,0x3e0f57585b4d4c56
2dfc4b 
2dfc4e mov    QWORD PTR [rdx],rax
2dfc51 mov    rax,rdx
2dfc54 ret
2dfc55 int3
2dfc56 int3
2dfc57 int3
2dfc58 mov    eax,DWORD PTR [rip+0xfffffffffffadb82]        # 0x28d7e0
2dfc5e movsd  xmm0,QWORD PTR [rip+0xfffffffffffadb72]        # 0x28d7d8
2dfc65 
2dfc66 movsd  QWORD PTR [rdx],xmm0
2dfc6a mov    DWORD PTR [rdx+0x8],eax
2dfc6d mov    al,BYTE PTR [rip+0xfffffffffffadb71]        # 0x28d7e4
2dfc73 mov    BYTE PTR [rdx+0xc],al
2dfc76 mov    rax,rdx
2dfc79 ret
2dfc7a int3
2dfc7b int3
2dfc7c mov    eax,DWORD PTR [rip+0xfffffffffffadb76]        # 0x28d7f8
2dfc82 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb5f]        # 0x28d7e8
2dfc89 movups XMMWORD PTR [rdx],xmm0
2dfc8c mov    DWORD PTR [rdx+0x10],eax
2dfc8f mov    rax,rdx
2dfc92 ret
2dfc93 int3
2dfc94 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb65]        # 0x28d800
2dfc9b mov    rax,rdx
2dfc9e movups xmm1,XMMWORD PTR [rip+0xfffffffffffadb64]        # 0x28d809
2dfca5 movups XMMWORD PTR [rdx],xmm0
2dfca8 movups XMMWORD PTR [rdx+0x9],xmm1
2dfcac ret
2dfcad int3
2dfcae int3
2dfcaf int3
2dfcb0 mov    al,BYTE PTR [rip+0xfffffffffffadb7a]        # 0x28d830
2dfcb6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb63]        # 0x28d820
2dfcbd movups XMMWORD PTR [rdx],xmm0
2dfcc0 mov    BYTE PTR [rdx+0x10],al
2dfcc3 mov    rax,rdx
2dfcc6 ret
2dfcc7 int3
2dfcc8 mov    al,BYTE PTR [rip+0xfffffffffffadb7a]        # 0x28d848
2dfcce movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb63]        # 0x28d838
2dfcd5 movups XMMWORD PTR [rdx],xmm0
2dfcd8 mov    BYTE PTR [rdx+0x10],al
2dfcdb mov    rax,rdx
2dfcde ret
2dfcdf int3
2dfce0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb69]        # 0x28d850
2dfce7 mov    rax,rdx
2dfcea movsd  xmm1,QWORD PTR [rip+0xfffffffffffadb6b]        # 0x28d85d
2dfcf1 
2dfcf2 movups XMMWORD PTR [rdx],xmm0
2dfcf5 movsd  QWORD PTR [rdx+0xd],xmm1
2dfcfa ret
2dfcfb int3
2dfcfc mov    eax,DWORD PTR [rip+0xfffffffffffaddc2]        # 0x28dac4
2dfd02 mov    DWORD PTR [rdx],eax
2dfd04 movzx  eax,WORD PTR [rip+0xfffffffffffaddbd]        # 0x28dac8
2dfd0b mov    WORD PTR [rdx+0x4],ax
2dfd0f mov    rax,rdx
2dfd12 ret
2dfd13 int3
2dfd14 movzx  eax,WORD PTR [rip+0xfffffffffffadb5d]        # 0x28d878
2dfd1b movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb46]        # 0x28d868
2dfd22 movups XMMWORD PTR [rdx],xmm0
2dfd25 mov    WORD PTR [rdx+0x10],ax
2dfd29 mov    rax,rdx
2dfd2c ret
2dfd2d int3
2dfd2e int3
2dfd2f int3
2dfd30 mov    eax,DWORD PTR [rip+0xfffffffffffadbc2]        # 0x28d8f8
2dfd36 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadbab]        # 0x28d8e8
2dfd3d movups XMMWORD PTR [rdx],xmm0
2dfd40 mov    DWORD PTR [rdx+0x10],eax
2dfd43 mov    rax,rdx
2dfd46 ret
2dfd47 int3
2dfd48 movzx  eax,WORD PTR [rip+0xfffffffffffadb69]        # 0x28d8b8
2dfd4f movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb52]        # 0x28d8a8
2dfd56 movups XMMWORD PTR [rdx],xmm0
2dfd59 mov    WORD PTR [rdx+0x10],ax
2dfd5d mov    rax,rdx
2dfd60 ret
2dfd61 int3
2dfd62 int3
2dfd63 int3
2dfd64 mov    eax,DWORD PTR [rip+0xfffffffffffad98e]        # 0x28d6f8
2dfd6a movups xmm0,XMMWORD PTR [rip+0xfffffffffffad977]        # 0x28d6e8
2dfd71 movups XMMWORD PTR [rdx],xmm0
2dfd74 mov    DWORD PTR [rdx+0x10],eax
2dfd77 mov    rax,rdx
2dfd7a ret
2dfd7b int3
2dfd7c movups xmm0,XMMWORD PTR [rip+0xfffffffffffad97d]        # 0x28d700
2dfd83 mov    rax,rdx
2dfd86 movsd  xmm1,QWORD PTR [rip+0xfffffffffffad981]        # 0x28d70f
2dfd8d 
2dfd8e movups XMMWORD PTR [rdx],xmm0
2dfd91 movsd  QWORD PTR [rdx+0xf],xmm1
2dfd96 ret
2dfd97 int3
2dfd98 jmp    0x2e2b78
2dfd9d int3
2dfd9e int3
2dfd9f int3
2dfda0 mov    rcx,rdx
2dfda3 mov    rdx,r8
2dfda6 jmp    0x2cef30
2dfdab int3
2dfdac movss  xmm0,DWORD PTR [rdx]
2dfdb0 mov    rax,rcx
2dfdb3 addss  xmm0,DWORD PTR [rcx]
2dfdb7 movss  DWORD PTR [rcx],xmm0
2dfdbb movss  xmm1,DWORD PTR [rdx+0x4]
2dfdc0 addss  xmm1,DWORD PTR [rcx+0x4]
2dfdc5 movss  DWORD PTR [rcx+0x4],xmm1
2dfdca ret
2dfdcb int3

; reached independent pdata/next-pdata extent 2dfc44..2dfdcc unwind0
2dfc44 movabs rax,0x3e0f57585b4d4c56
2dfc4b 
2dfc4e mov    QWORD PTR [rdx],rax
2dfc51 mov    rax,rdx
2dfc54 ret
2dfc55 int3
2dfc56 int3
2dfc57 int3
2dfc58 mov    eax,DWORD PTR [rip+0xfffffffffffadb82]        # 0x28d7e0
2dfc5e movsd  xmm0,QWORD PTR [rip+0xfffffffffffadb72]        # 0x28d7d8
2dfc65 
2dfc66 movsd  QWORD PTR [rdx],xmm0
2dfc6a mov    DWORD PTR [rdx+0x8],eax
2dfc6d mov    al,BYTE PTR [rip+0xfffffffffffadb71]        # 0x28d7e4
2dfc73 mov    BYTE PTR [rdx+0xc],al
2dfc76 mov    rax,rdx
2dfc79 ret
2dfc7a int3
2dfc7b int3
2dfc7c mov    eax,DWORD PTR [rip+0xfffffffffffadb76]        # 0x28d7f8
2dfc82 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb5f]        # 0x28d7e8
2dfc89 movups XMMWORD PTR [rdx],xmm0
2dfc8c mov    DWORD PTR [rdx+0x10],eax
2dfc8f mov    rax,rdx
2dfc92 ret
2dfc93 int3
2dfc94 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb65]        # 0x28d800
2dfc9b mov    rax,rdx
2dfc9e movups xmm1,XMMWORD PTR [rip+0xfffffffffffadb64]        # 0x28d809
2dfca5 movups XMMWORD PTR [rdx],xmm0
2dfca8 movups XMMWORD PTR [rdx+0x9],xmm1
2dfcac ret
2dfcad int3
2dfcae int3
2dfcaf int3
2dfcb0 mov    al,BYTE PTR [rip+0xfffffffffffadb7a]        # 0x28d830
2dfcb6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb63]        # 0x28d820
2dfcbd movups XMMWORD PTR [rdx],xmm0
2dfcc0 mov    BYTE PTR [rdx+0x10],al
2dfcc3 mov    rax,rdx
2dfcc6 ret
2dfcc7 int3
2dfcc8 mov    al,BYTE PTR [rip+0xfffffffffffadb7a]        # 0x28d848
2dfcce movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb63]        # 0x28d838
2dfcd5 movups XMMWORD PTR [rdx],xmm0
2dfcd8 mov    BYTE PTR [rdx+0x10],al
2dfcdb mov    rax,rdx
2dfcde ret
2dfcdf int3
2dfce0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb69]        # 0x28d850
2dfce7 mov    rax,rdx
2dfcea movsd  xmm1,QWORD PTR [rip+0xfffffffffffadb6b]        # 0x28d85d
2dfcf1 
2dfcf2 movups XMMWORD PTR [rdx],xmm0
2dfcf5 movsd  QWORD PTR [rdx+0xd],xmm1
2dfcfa ret
2dfcfb int3
2dfcfc mov    eax,DWORD PTR [rip+0xfffffffffffaddc2]        # 0x28dac4
2dfd02 mov    DWORD PTR [rdx],eax
2dfd04 movzx  eax,WORD PTR [rip+0xfffffffffffaddbd]        # 0x28dac8
2dfd0b mov    WORD PTR [rdx+0x4],ax
2dfd0f mov    rax,rdx
2dfd12 ret
2dfd13 int3
2dfd14 movzx  eax,WORD PTR [rip+0xfffffffffffadb5d]        # 0x28d878
2dfd1b movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb46]        # 0x28d868
2dfd22 movups XMMWORD PTR [rdx],xmm0
2dfd25 mov    WORD PTR [rdx+0x10],ax
2dfd29 mov    rax,rdx
2dfd2c ret
2dfd2d int3
2dfd2e int3
2dfd2f int3
2dfd30 mov    eax,DWORD PTR [rip+0xfffffffffffadbc2]        # 0x28d8f8
2dfd36 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadbab]        # 0x28d8e8
2dfd3d movups XMMWORD PTR [rdx],xmm0
2dfd40 mov    DWORD PTR [rdx+0x10],eax
2dfd43 mov    rax,rdx
2dfd46 ret
2dfd47 int3
2dfd48 movzx  eax,WORD PTR [rip+0xfffffffffffadb69]        # 0x28d8b8
2dfd4f movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb52]        # 0x28d8a8
2dfd56 movups XMMWORD PTR [rdx],xmm0
2dfd59 mov    WORD PTR [rdx+0x10],ax
2dfd5d mov    rax,rdx
2dfd60 ret
2dfd61 int3
2dfd62 int3
2dfd63 int3
2dfd64 mov    eax,DWORD PTR [rip+0xfffffffffffad98e]        # 0x28d6f8
2dfd6a movups xmm0,XMMWORD PTR [rip+0xfffffffffffad977]        # 0x28d6e8
2dfd71 movups XMMWORD PTR [rdx],xmm0
2dfd74 mov    DWORD PTR [rdx+0x10],eax
2dfd77 mov    rax,rdx
2dfd7a ret
2dfd7b int3
2dfd7c movups xmm0,XMMWORD PTR [rip+0xfffffffffffad97d]        # 0x28d700
2dfd83 mov    rax,rdx
2dfd86 movsd  xmm1,QWORD PTR [rip+0xfffffffffffad981]        # 0x28d70f
2dfd8d 
2dfd8e movups XMMWORD PTR [rdx],xmm0
2dfd91 movsd  QWORD PTR [rdx+0xf],xmm1
2dfd96 ret
2dfd97 int3
2dfd98 jmp    0x2e2b78
2dfd9d int3
2dfd9e int3
2dfd9f int3
2dfda0 mov    rcx,rdx
2dfda3 mov    rdx,r8
2dfda6 jmp    0x2cef30
2dfdab int3
2dfdac movss  xmm0,DWORD PTR [rdx]
2dfdb0 mov    rax,rcx
2dfdb3 addss  xmm0,DWORD PTR [rcx]
2dfdb7 movss  DWORD PTR [rcx],xmm0
2dfdbb movss  xmm1,DWORD PTR [rdx+0x4]
2dfdc0 addss  xmm1,DWORD PTR [rcx+0x4]
2dfdc5 movss  DWORD PTR [rcx+0x4],xmm1
2dfdca ret
2dfdcb int3

; reached independent pdata/next-pdata extent 2dfcfc..2dfdcc unwind0
2dfcfc mov    eax,DWORD PTR [rip+0xfffffffffffaddc2]        # 0x28dac4
2dfd02 mov    DWORD PTR [rdx],eax
2dfd04 movzx  eax,WORD PTR [rip+0xfffffffffffaddbd]        # 0x28dac8
2dfd0b mov    WORD PTR [rdx+0x4],ax
2dfd0f mov    rax,rdx
2dfd12 ret
2dfd13 int3
2dfd14 movzx  eax,WORD PTR [rip+0xfffffffffffadb5d]        # 0x28d878
2dfd1b movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb46]        # 0x28d868
2dfd22 movups XMMWORD PTR [rdx],xmm0
2dfd25 mov    WORD PTR [rdx+0x10],ax
2dfd29 mov    rax,rdx
2dfd2c ret
2dfd2d int3
2dfd2e int3
2dfd2f int3
2dfd30 mov    eax,DWORD PTR [rip+0xfffffffffffadbc2]        # 0x28d8f8
2dfd36 movups xmm0,XMMWORD PTR [rip+0xfffffffffffadbab]        # 0x28d8e8
2dfd3d movups XMMWORD PTR [rdx],xmm0
2dfd40 mov    DWORD PTR [rdx+0x10],eax
2dfd43 mov    rax,rdx
2dfd46 ret
2dfd47 int3
2dfd48 movzx  eax,WORD PTR [rip+0xfffffffffffadb69]        # 0x28d8b8
2dfd4f movups xmm0,XMMWORD PTR [rip+0xfffffffffffadb52]        # 0x28d8a8
2dfd56 movups XMMWORD PTR [rdx],xmm0
2dfd59 mov    WORD PTR [rdx+0x10],ax
2dfd5d mov    rax,rdx
2dfd60 ret
2dfd61 int3
2dfd62 int3
2dfd63 int3
2dfd64 mov    eax,DWORD PTR [rip+0xfffffffffffad98e]        # 0x28d6f8
2dfd6a movups xmm0,XMMWORD PTR [rip+0xfffffffffffad977]        # 0x28d6e8
2dfd71 movups XMMWORD PTR [rdx],xmm0
2dfd74 mov    DWORD PTR [rdx+0x10],eax
2dfd77 mov    rax,rdx
2dfd7a ret
2dfd7b int3
2dfd7c movups xmm0,XMMWORD PTR [rip+0xfffffffffffad97d]        # 0x28d700
2dfd83 mov    rax,rdx
2dfd86 movsd  xmm1,QWORD PTR [rip+0xfffffffffffad981]        # 0x28d70f
2dfd8d 
2dfd8e movups XMMWORD PTR [rdx],xmm0
2dfd91 movsd  QWORD PTR [rdx+0xf],xmm1
2dfd96 ret
2dfd97 int3
2dfd98 jmp    0x2e2b78
2dfd9d int3
2dfd9e int3
2dfd9f int3
2dfda0 mov    rcx,rdx
2dfda3 mov    rdx,r8
2dfda6 jmp    0x2cef30
2dfdab int3
2dfdac movss  xmm0,DWORD PTR [rdx]
2dfdb0 mov    rax,rcx
2dfdb3 addss  xmm0,DWORD PTR [rcx]
2dfdb7 movss  DWORD PTR [rcx],xmm0
2dfdbb movss  xmm1,DWORD PTR [rdx+0x4]
2dfdc0 addss  xmm1,DWORD PTR [rcx+0x4]
2dfdc5 movss  DWORD PTR [rcx+0x4],xmm1
2dfdca ret
2dfdcb int3

; reached independent pdata/next-pdata extent 2e3400..2e3568 unwind0
2e3400 mov    r10,rdx
2e3403 mov    r11,rcx
2e3406 xor    r9d,r9d
2e3409 mov    eax,0x24924925
2e340e mul    r9d
2e3411 mov    eax,r9d
2e3414 sub    eax,edx
2e3416 shr    eax,1
2e3418 add    eax,edx
2e341a shr    eax,0x5
2e341d movsx  eax,al
2e3420 imul   ecx,eax,0x38
2e3423 mov    al,r9b
2e3426 sub    al,cl
2e3428 add    al,0x37
2e342a xor    al,BYTE PTR [r10+r9*1]
2e342e mov    BYTE PTR [r11+r9*1],al
2e3432 inc    r9d
2e3435 cmp    r9d,0x8
2e3439 jl     0x2e3409
2e343b ret
2e343c mov    r10,rdx
2e343f xor    r9d,r9d
2e3442 mov    eax,0x4ec4ec4f
2e3447 mul    r9d
2e344a shr    edx,0x4
2e344d movsx  eax,dl
2e3450 imul   edx,eax,0x34
2e3453 mov    al,r9b
2e3456 sub    al,dl
2e3458 add    al,0x37
2e345a xor    al,BYTE PTR [r10+r9*1]
2e345e mov    BYTE PTR [rcx+r9*1],al
2e3462 inc    r9d
2e3465 cmp    r9d,0x15
2e3469 jl     0x2e3442
2e346b ret
2e346c mov    r10,rdx
2e346f xor    r9d,r9d
2e3472 mov    eax,0x4ec4ec4f
2e3477 mul    r9d
2e347a shr    edx,0x4
2e347d movsx  eax,dl
2e3480 imul   edx,eax,0x34
2e3483 mov    al,r9b
2e3486 sub    al,dl
2e3488 add    al,0x37
2e348a xor    al,BYTE PTR [r10+r9*1]
2e348e mov    BYTE PTR [rcx+r9*1],al
2e3492 inc    r9d
2e3495 cmp    r9d,0x16
2e3499 jl     0x2e3472
2e349b ret
2e349c mov    r10,rdx
2e349f xor    r9d,r9d
2e34a2 mov    eax,0x4ec4ec4f
2e34a7 mul    r9d
2e34aa shr    edx,0x4
2e34ad movsx  eax,dl
2e34b0 imul   edx,eax,0x34
2e34b3 mov    al,r9b
2e34b6 sub    al,dl
2e34b8 add    al,0x37
2e34ba xor    al,BYTE PTR [r10+r9*1]
2e34be mov    BYTE PTR [rcx+r9*1],al
2e34c2 inc    r9d
2e34c5 cmp    r9d,0x17
2e34c9 jl     0x2e34a2
2e34cb ret
2e34cc mov    r10,rdx
2e34cf xor    r9d,r9d
2e34d2 mov    eax,0x4ec4ec4f
2e34d7 mul    r9d
2e34da shr    edx,0x4
2e34dd movsx  eax,dl
2e34e0 imul   edx,eax,0x34
2e34e3 mov    al,r9b
2e34e6 sub    al,dl
2e34e8 add    al,0x37
2e34ea xor    al,BYTE PTR [r10+r9*1]
2e34ee mov    BYTE PTR [rcx+r9*1],al
2e34f2 inc    r9d
2e34f5 cmp    r9d,0x18
2e34f9 jl     0x2e34d2
2e34fb ret
2e34fc mov    r10,rdx
2e34ff xor    r9d,r9d
2e3502 mov    eax,0x4ec4ec4f
2e3507 mul    r9d
2e350a shr    edx,0x4
2e350d movsx  eax,dl
2e3510 imul   edx,eax,0x34
2e3513 mov    al,r9b
2e3516 sub    al,dl
2e3518 add    al,0x37
2e351a xor    al,BYTE PTR [r10+r9*1]
2e351e mov    BYTE PTR [rcx+r9*1],al
2e3522 inc    r9d
2e3525 cmp    r9d,0x19
2e3529 jl     0x2e3502
2e352b ret
2e352c mov    r10,rdx
2e352f mov    r11,rcx
2e3532 xor    r9d,r9d
2e3535 mov    eax,0x24924925
2e353a mul    r9d
2e353d mov    eax,r9d
2e3540 sub    eax,edx
2e3542 shr    eax,1
2e3544 add    eax,edx
2e3546 shr    eax,0x5
2e3549 movsx  eax,al
2e354c imul   ecx,eax,0x38
2e354f mov    al,r9b
2e3552 sub    al,cl
2e3554 add    al,0x37
2e3556 xor    al,BYTE PTR [r10+r9*1]
2e355a mov    BYTE PTR [r11+r9*1],al
2e355e inc    r9d
2e3561 cmp    r9d,0x2a
2e3565 jl     0x2e3535
2e3567 ret

; reached independent pdata/next-pdata extent 2e3614..2e363a unwind3d2038
2e3614 rex push rbx
2e3616 sub    rsp,0x20
2e361a mov    rbx,rcx
2e361d call   0x2dd2e4
2e3622 test   al,al
2e3624 je     0x2e3631
2e3626 mov    rdx,rbx
2e3629 mov    rcx,rbx
2e362c call   0x2e3400
2e3631 mov    rax,rbx
2e3634 add    rsp,0x20
2e3638 pop    rbx
2e3639 ret

; reached independent pdata/next-pdata extent 2e3b30..2e3ba8 unwind0
2e3b30 cmp    BYTE PTR [rcx+0x14],0x0
2e3b34 setne  al
2e3b37 ret
2e3b38 cmp    BYTE PTR [rcx+0x16],0x0
2e3b3c setne  al
2e3b3f ret
2e3b40 cmp    BYTE PTR [rcx+0x17],0x0
2e3b44 setne  al
2e3b47 ret
2e3b48 cmp    BYTE PTR [rcx+0x18],0x0
2e3b4c setne  al
2e3b4f ret
2e3b50 cmp    BYTE PTR [rcx+0x29],0x0
2e3b54 setne  al
2e3b57 ret
2e3b58 movss  xmm0,DWORD PTR [rcx]
2e3b5c xorps  xmm1,xmm1
2e3b5f ucomiss xmm0,xmm1
2e3b62 jp     0x2e3b81
2e3b64 jne    0x2e3b81
2e3b66 movss  xmm0,DWORD PTR [rcx+0x4]
2e3b6b ucomiss xmm0,xmm1
2e3b6e jp     0x2e3b81
2e3b70 jne    0x2e3b81
2e3b72 movss  xmm0,DWORD PTR [rcx+0x8]
2e3b77 ucomiss xmm0,xmm1
2e3b7a jp     0x2e3b81
2e3b7c jne    0x2e3b81
2e3b7e mov    al,0x1
2e3b80 ret
2e3b81 xor    al,al
2e3b83 ret
2e3b84 movabs rax,0x2aaaaaaaaaaaaaa
2e3b8b 
2e3b8e ret
2e3b8f int3
2e3b90 movabs rax,0x19852f0d8ec0ff
2e3b97 
2e3b9a ret
2e3b9b int3
2e3b9c movabs rax,0xfffffffffffffff
2e3ba3 
2e3ba6 ret
2e3ba7 int3

; reached independent pdata/next-pdata extent 2e3b48..2e3ba8 unwind0
2e3b48 cmp    BYTE PTR [rcx+0x18],0x0
2e3b4c setne  al
2e3b4f ret
2e3b50 cmp    BYTE PTR [rcx+0x29],0x0
2e3b54 setne  al
2e3b57 ret
2e3b58 movss  xmm0,DWORD PTR [rcx]
2e3b5c xorps  xmm1,xmm1
2e3b5f ucomiss xmm0,xmm1
2e3b62 jp     0x2e3b81
2e3b64 jne    0x2e3b81
2e3b66 movss  xmm0,DWORD PTR [rcx+0x4]
2e3b6b ucomiss xmm0,xmm1
2e3b6e jp     0x2e3b81
2e3b70 jne    0x2e3b81
2e3b72 movss  xmm0,DWORD PTR [rcx+0x8]
2e3b77 ucomiss xmm0,xmm1
2e3b7a jp     0x2e3b81
2e3b7c jne    0x2e3b81
2e3b7e mov    al,0x1
2e3b80 ret
2e3b81 xor    al,al
2e3b83 ret
2e3b84 movabs rax,0x2aaaaaaaaaaaaaa
2e3b8b 
2e3b8e ret
2e3b8f int3
2e3b90 movabs rax,0x19852f0d8ec0ff
2e3b97 
2e3b9a ret
2e3b9b int3
2e3b9c movabs rax,0xfffffffffffffff
2e3ba3 
2e3ba6 ret
2e3ba7 int3

; reached independent pdata/next-pdata extent 2e5254..2e5a54 unwind0
2e5254 movzx  eax,WORD PTR [rip+0xfffffffffffa8f05]        # 0x28e160
2e525b movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ef5]        # 0x28e158
2e5262 
2e5263 movsd  QWORD PTR [rdx],xmm0
2e5267 mov    WORD PTR [rdx+0x8],ax
2e526b mov    rax,rdx
2e526e ret
2e526f int3
2e5270 mov    eax,DWORD PTR [rip+0xfffffffffffa8efa]        # 0x28e170
2e5276 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8eea]        # 0x28e168
2e527d 
2e527e movsd  QWORD PTR [rdx],xmm0
2e5282 mov    DWORD PTR [rdx+0x8],eax
2e5285 mov    al,BYTE PTR [rip+0xfffffffffffa8ee9]        # 0x28e174
2e528b mov    BYTE PTR [rdx+0xc],al
2e528e mov    rax,rdx
2e5291 ret
2e5292 int3
2e5293 int3
2e5294 mov    eax,DWORD PTR [rip+0xfffffffffffa893e]        # 0x28dbd8
2e529a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa892e]        # 0x28dbd0
2e52a1 
2e52a2 movsd  QWORD PTR [rdx],xmm0
2e52a6 mov    DWORD PTR [rdx+0x8],eax
2e52a9 movzx  eax,WORD PTR [rip+0xfffffffffffa892c]        # 0x28dbdc
2e52b0 mov    WORD PTR [rdx+0xc],ax
2e52b4 mov    rax,rdx
2e52b7 ret
2e52b8 movabs rax,0x3e565f5476405d7c
2e52bf 
2e52c2 mov    QWORD PTR [rdx],rax
2e52c5 mov    rax,rdx
2e52c8 ret
2e52c9 int3
2e52ca int3
2e52cb int3
2e52cc mov    eax,DWORD PTR [rip+0xfffffffffffa8ead]        # 0x28e17f
2e52d2 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e9e]        # 0x28e178
2e52d9 
2e52da movsd  QWORD PTR [rdx],xmm0
2e52de mov    DWORD PTR [rdx+0x7],eax
2e52e1 mov    rax,rdx
2e52e4 ret
2e52e5 int3
2e52e6 int3
2e52e7 int3
2e52e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ea2]        # 0x28e190
2e52ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e92]        # 0x28e188
2e52f5 
2e52f6 movsd  QWORD PTR [rdx],xmm0
2e52fa mov    DWORD PTR [rdx+0x8],eax
2e52fd mov    al,BYTE PTR [rip+0xfffffffffffa8e91]        # 0x28e194
2e5303 mov    BYTE PTR [rdx+0xc],al
2e5306 mov    rax,rdx
2e5309 ret
2e530a int3
2e530b int3
2e530c mov    eax,DWORD PTR [rip+0xfffffffffffa8e86]        # 0x28e198
2e5312 mov    DWORD PTR [rdx],eax
2e5314 mov    al,BYTE PTR [rip+0xfffffffffffa8e82]        # 0x28e19c
2e531a mov    BYTE PTR [rdx+0x4],al
2e531d mov    rax,rdx
2e5320 ret
2e5321 int3
2e5322 int3
2e5323 int3
2e5324 mov    eax,DWORD PTR [rip+0xfffffffffffa8e7e]        # 0x28e1a8
2e532a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e6e]        # 0x28e1a0
2e5331 
2e5332 movsd  QWORD PTR [rdx],xmm0
2e5336 mov    DWORD PTR [rdx+0x8],eax
2e5339 mov    al,BYTE PTR [rip+0xfffffffffffa8e6d]        # 0x28e1ac
2e533f mov    BYTE PTR [rdx+0xc],al
2e5342 mov    rax,rdx
2e5345 ret
2e5346 int3
2e5347 int3
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5270..2e5a54 unwind0
2e5270 mov    eax,DWORD PTR [rip+0xfffffffffffa8efa]        # 0x28e170
2e5276 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8eea]        # 0x28e168
2e527d 
2e527e movsd  QWORD PTR [rdx],xmm0
2e5282 mov    DWORD PTR [rdx+0x8],eax
2e5285 mov    al,BYTE PTR [rip+0xfffffffffffa8ee9]        # 0x28e174
2e528b mov    BYTE PTR [rdx+0xc],al
2e528e mov    rax,rdx
2e5291 ret
2e5292 int3
2e5293 int3
2e5294 mov    eax,DWORD PTR [rip+0xfffffffffffa893e]        # 0x28dbd8
2e529a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa892e]        # 0x28dbd0
2e52a1 
2e52a2 movsd  QWORD PTR [rdx],xmm0
2e52a6 mov    DWORD PTR [rdx+0x8],eax
2e52a9 movzx  eax,WORD PTR [rip+0xfffffffffffa892c]        # 0x28dbdc
2e52b0 mov    WORD PTR [rdx+0xc],ax
2e52b4 mov    rax,rdx
2e52b7 ret
2e52b8 movabs rax,0x3e565f5476405d7c
2e52bf 
2e52c2 mov    QWORD PTR [rdx],rax
2e52c5 mov    rax,rdx
2e52c8 ret
2e52c9 int3
2e52ca int3
2e52cb int3
2e52cc mov    eax,DWORD PTR [rip+0xfffffffffffa8ead]        # 0x28e17f
2e52d2 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e9e]        # 0x28e178
2e52d9 
2e52da movsd  QWORD PTR [rdx],xmm0
2e52de mov    DWORD PTR [rdx+0x7],eax
2e52e1 mov    rax,rdx
2e52e4 ret
2e52e5 int3
2e52e6 int3
2e52e7 int3
2e52e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ea2]        # 0x28e190
2e52ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e92]        # 0x28e188
2e52f5 
2e52f6 movsd  QWORD PTR [rdx],xmm0
2e52fa mov    DWORD PTR [rdx+0x8],eax
2e52fd mov    al,BYTE PTR [rip+0xfffffffffffa8e91]        # 0x28e194
2e5303 mov    BYTE PTR [rdx+0xc],al
2e5306 mov    rax,rdx
2e5309 ret
2e530a int3
2e530b int3
2e530c mov    eax,DWORD PTR [rip+0xfffffffffffa8e86]        # 0x28e198
2e5312 mov    DWORD PTR [rdx],eax
2e5314 mov    al,BYTE PTR [rip+0xfffffffffffa8e82]        # 0x28e19c
2e531a mov    BYTE PTR [rdx+0x4],al
2e531d mov    rax,rdx
2e5320 ret
2e5321 int3
2e5322 int3
2e5323 int3
2e5324 mov    eax,DWORD PTR [rip+0xfffffffffffa8e7e]        # 0x28e1a8
2e532a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e6e]        # 0x28e1a0
2e5331 
2e5332 movsd  QWORD PTR [rdx],xmm0
2e5336 mov    DWORD PTR [rdx+0x8],eax
2e5339 mov    al,BYTE PTR [rip+0xfffffffffffa8e6d]        # 0x28e1ac
2e533f mov    BYTE PTR [rdx+0xc],al
2e5342 mov    rax,rdx
2e5345 ret
2e5346 int3
2e5347 int3
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e52cc..2e5a54 unwind0
2e52cc mov    eax,DWORD PTR [rip+0xfffffffffffa8ead]        # 0x28e17f
2e52d2 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e9e]        # 0x28e178
2e52d9 
2e52da movsd  QWORD PTR [rdx],xmm0
2e52de mov    DWORD PTR [rdx+0x7],eax
2e52e1 mov    rax,rdx
2e52e4 ret
2e52e5 int3
2e52e6 int3
2e52e7 int3
2e52e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ea2]        # 0x28e190
2e52ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e92]        # 0x28e188
2e52f5 
2e52f6 movsd  QWORD PTR [rdx],xmm0
2e52fa mov    DWORD PTR [rdx+0x8],eax
2e52fd mov    al,BYTE PTR [rip+0xfffffffffffa8e91]        # 0x28e194
2e5303 mov    BYTE PTR [rdx+0xc],al
2e5306 mov    rax,rdx
2e5309 ret
2e530a int3
2e530b int3
2e530c mov    eax,DWORD PTR [rip+0xfffffffffffa8e86]        # 0x28e198
2e5312 mov    DWORD PTR [rdx],eax
2e5314 mov    al,BYTE PTR [rip+0xfffffffffffa8e82]        # 0x28e19c
2e531a mov    BYTE PTR [rdx+0x4],al
2e531d mov    rax,rdx
2e5320 ret
2e5321 int3
2e5322 int3
2e5323 int3
2e5324 mov    eax,DWORD PTR [rip+0xfffffffffffa8e7e]        # 0x28e1a8
2e532a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e6e]        # 0x28e1a0
2e5331 
2e5332 movsd  QWORD PTR [rdx],xmm0
2e5336 mov    DWORD PTR [rdx+0x8],eax
2e5339 mov    al,BYTE PTR [rip+0xfffffffffffa8e6d]        # 0x28e1ac
2e533f mov    BYTE PTR [rdx+0xc],al
2e5342 mov    rax,rdx
2e5345 ret
2e5346 int3
2e5347 int3
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e52e8..2e5a54 unwind0
2e52e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ea2]        # 0x28e190
2e52ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e92]        # 0x28e188
2e52f5 
2e52f6 movsd  QWORD PTR [rdx],xmm0
2e52fa mov    DWORD PTR [rdx+0x8],eax
2e52fd mov    al,BYTE PTR [rip+0xfffffffffffa8e91]        # 0x28e194
2e5303 mov    BYTE PTR [rdx+0xc],al
2e5306 mov    rax,rdx
2e5309 ret
2e530a int3
2e530b int3
2e530c mov    eax,DWORD PTR [rip+0xfffffffffffa8e86]        # 0x28e198
2e5312 mov    DWORD PTR [rdx],eax
2e5314 mov    al,BYTE PTR [rip+0xfffffffffffa8e82]        # 0x28e19c
2e531a mov    BYTE PTR [rdx+0x4],al
2e531d mov    rax,rdx
2e5320 ret
2e5321 int3
2e5322 int3
2e5323 int3
2e5324 mov    eax,DWORD PTR [rip+0xfffffffffffa8e7e]        # 0x28e1a8
2e532a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e6e]        # 0x28e1a0
2e5331 
2e5332 movsd  QWORD PTR [rdx],xmm0
2e5336 mov    DWORD PTR [rdx+0x8],eax
2e5339 mov    al,BYTE PTR [rip+0xfffffffffffa8e6d]        # 0x28e1ac
2e533f mov    BYTE PTR [rdx+0xc],al
2e5342 mov    rax,rdx
2e5345 ret
2e5346 int3
2e5347 int3
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5324..2e5a54 unwind0
2e5324 mov    eax,DWORD PTR [rip+0xfffffffffffa8e7e]        # 0x28e1a8
2e532a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8e6e]        # 0x28e1a0
2e5331 
2e5332 movsd  QWORD PTR [rdx],xmm0
2e5336 mov    DWORD PTR [rdx+0x8],eax
2e5339 mov    al,BYTE PTR [rip+0xfffffffffffa8e6d]        # 0x28e1ac
2e533f mov    BYTE PTR [rdx+0xc],al
2e5342 mov    rax,rdx
2e5345 ret
2e5346 int3
2e5347 int3
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5348..2e5a54 unwind0
2e5348 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8e61]        # 0x28e1b0
2e534f mov    rax,rdx
2e5352 movdqu XMMWORD PTR [rdx],xmm0
2e5356 ret
2e5357 int3
2e5358 movzx  eax,WORD PTR [rip+0xfffffffffffa8cd9]        # 0x28e038
2e535f movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8cc2]        # 0x28e028
2e5366 movups XMMWORD PTR [rdx],xmm0
2e5369 mov    WORD PTR [rdx+0x10],ax
2e536d mov    rax,rdx
2e5370 ret
2e5371 int3
2e5372 int3
2e5373 int3
2e5374 mov    eax,DWORD PTR [rip+0xfffffffffffa8c72]        # 0x28dfec
2e537a mov    DWORD PTR [rdx],eax
2e537c mov    al,BYTE PTR [rip+0xfffffffffffa8c6e]        # 0x28dff0
2e5382 mov    BYTE PTR [rdx+0x4],al
2e5385 mov    rax,rdx
2e5388 ret
2e5389 int3
2e538a int3
2e538b int3
2e538c mov    al,BYTE PTR [rip+0xfffffffffffa8bce]        # 0x28df60
2e5392 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bbe]        # 0x28df58
2e5399 
2e539a movsd  QWORD PTR [rdx],xmm0
2e539e mov    BYTE PTR [rdx+0x8],al
2e53a1 mov    rax,rdx
2e53a4 ret
2e53a5 int3
2e53a6 int3
2e53a7 int3
2e53a8 mov    al,BYTE PTR [rip+0xfffffffffffa8bea]        # 0x28df98
2e53ae movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bda]        # 0x28df90
2e53b5 
2e53b6 movsd  QWORD PTR [rdx],xmm0
2e53ba mov    BYTE PTR [rdx+0x8],al
2e53bd mov    rax,rdx
2e53c0 ret
2e53c1 int3
2e53c2 int3
2e53c3 int3
2e53c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8ca5]        # 0x28e070
2e53cb movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8c95]        # 0x28e068
2e53d2 
2e53d3 movsd  QWORD PTR [rdx],xmm0
2e53d7 mov    WORD PTR [rdx+0x8],ax
2e53db mov    rax,rdx
2e53de ret
2e53df int3
2e53e0 mov    eax,DWORD PTR [rip+0xfffffffffffa8bde]        # 0x28dfc4
2e53e6 mov    DWORD PTR [rdx],eax
2e53e8 mov    al,BYTE PTR [rip+0xfffffffffffa8bda]        # 0x28dfc8
2e53ee mov    BYTE PTR [rdx+0x4],al
2e53f1 mov    rax,rdx
2e53f4 ret
2e53f5 int3
2e53f6 int3
2e53f7 int3
2e53f8 mov    eax,DWORD PTR [rip+0xfffffffffffa8a42]        # 0x28de40
2e53fe mov    DWORD PTR [rdx],eax
2e5400 movzx  eax,WORD PTR [rip+0xfffffffffffa8a3d]        # 0x28de44
2e5407 mov    WORD PTR [rdx+0x4],ax
2e540b mov    al,BYTE PTR [rip+0xfffffffffffa8a35]        # 0x28de46
2e5411 mov    BYTE PTR [rdx+0x6],al
2e5414 mov    rax,rdx
2e5417 ret
2e5418 mov    eax,DWORD PTR [rip+0xfffffffffffa8c02]        # 0x28e020
2e541e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8bf2]        # 0x28e018
2e5425 
2e5426 movsd  QWORD PTR [rdx],xmm0
2e542a mov    DWORD PTR [rdx+0x8],eax
2e542d mov    rax,rdx
2e5430 ret
2e5431 int3
2e5432 int3
2e5433 int3
2e5434 mov    eax,DWORD PTR [rip+0xfffffffffffa8a36]        # 0x28de70
2e543a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a26]        # 0x28de68
2e5441 
2e5442 movsd  QWORD PTR [rdx],xmm0
2e5446 mov    DWORD PTR [rdx+0x8],eax
2e5449 movzx  eax,WORD PTR [rip+0xfffffffffffa8a24]        # 0x28de74
2e5450 mov    WORD PTR [rdx+0xc],ax
2e5454 mov    rax,rdx
2e5457 ret
2e5458 mov    eax,DWORD PTR [rip+0xfffffffffffa8a5a]        # 0x28deb8
2e545e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a4a]        # 0x28deb0
2e5465 
2e5466 movsd  QWORD PTR [rdx],xmm0
2e546a mov    DWORD PTR [rdx+0x8],eax
2e546d movzx  eax,WORD PTR [rip+0xfffffffffffa8a48]        # 0x28debc
2e5474 mov    WORD PTR [rdx+0xc],ax
2e5478 mov    rax,rdx
2e547b ret
2e547c movabs rax,0x3e4e5f5249405067
2e5483 
2e5486 mov    QWORD PTR [rdx],rax
2e5489 mov    rax,rdx
2e548c ret
2e548d int3
2e548e int3
2e548f int3
2e5490 mov    eax,DWORD PTR [rip+0xfffffffffffa8a72]        # 0x28df08
2e5496 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df00
2e549d 
2e549e movsd  QWORD PTR [rdx],xmm0
2e54a2 mov    DWORD PTR [rdx+0x8],eax
2e54a5 movzx  eax,WORD PTR [rip+0xfffffffffffa8a60]        # 0x28df0c
2e54ac mov    WORD PTR [rdx+0xc],ax
2e54b0 mov    rax,rdx
2e54b3 ret
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e54b4..2e5a54 unwind0
2e54b4 mov    eax,DWORD PTR [rip+0xfffffffffffa8c0e]        # 0x28e0c8
2e54ba mov    DWORD PTR [rdx],eax
2e54bc mov    al,BYTE PTR [rip+0xfffffffffffa8c0a]        # 0x28e0cc
2e54c2 mov    BYTE PTR [rdx+0x4],al
2e54c5 mov    rax,rdx
2e54c8 ret
2e54c9 int3
2e54ca int3
2e54cb int3
2e54cc movzx  eax,WORD PTR [rip+0xfffffffffffa8b7d]        # 0x28e050
2e54d3 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8b66]        # 0x28e040
2e54da movups XMMWORD PTR [rdx],xmm0
2e54dd mov    WORD PTR [rdx+0x10],ax
2e54e1 mov    rax,rdx
2e54e4 ret
2e54e5 int3
2e54e6 int3
2e54e7 int3
2e54e8 mov    eax,DWORD PTR [rip+0xfffffffffffa8b12]        # 0x28e000
2e54ee movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b02]        # 0x28dff8
2e54f5 
2e54f6 movsd  QWORD PTR [rdx],xmm0
2e54fa mov    DWORD PTR [rdx+0x8],eax
2e54fd mov    rax,rdx
2e5500 ret
2e5501 int3
2e5502 int3
2e5503 int3
2e5504 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a5d]        # 0x28df68
2e550b mov    rax,rdx
2e550e movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a62]        # 0x28df78
2e5515 
2e5516 movups XMMWORD PTR [rdx],xmm0
2e5519 movsd  QWORD PTR [rdx+0x10],xmm1
2e551e ret
2e551f int3
2e5520 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8a79]        # 0x28dfa0
2e5527 mov    rax,rdx
2e552a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8a7e]        # 0x28dfb0
2e5531 
2e5532 movups XMMWORD PTR [rdx],xmm0
2e5535 movsd  QWORD PTR [rdx+0x10],xmm1
2e553a ret
2e553b int3
2e553c mov    eax,DWORD PTR [rip+0xfffffffffffa8b3e]        # 0x28e080
2e5542 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8b2e]        # 0x28e078
2e5549 
2e554a movsd  QWORD PTR [rdx],xmm0
2e554e mov    DWORD PTR [rdx+0x8],eax
2e5551 mov    rax,rdx
2e5554 ret
2e5555 int3
2e5556 int3
2e5557 int3
2e5558 mov    eax,DWORD PTR [rip+0xfffffffffffa8a7a]        # 0x28dfd8
2e555e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8a6a]        # 0x28dfd0
2e5565 
2e5566 movsd  QWORD PTR [rdx],xmm0
2e556a mov    DWORD PTR [rdx+0x8],eax
2e556d mov    rax,rdx
2e5570 ret
2e5571 int3
2e5572 int3
2e5573 int3
2e5574 mov    eax,DWORD PTR [rip+0xfffffffffffa88d6]        # 0x28de50
2e557a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88c6]        # 0x28de48
2e5581 
2e5582 movsd  QWORD PTR [rdx],xmm0
2e5586 mov    DWORD PTR [rdx+0x8],eax
2e5589 mov    rax,rdx
2e558c ret
2e558d int3
2e558e int3
2e558f int3
2e5590 mov    al,BYTE PTR [rip+0xfffffffffffa8902]        # 0x28de98
2e5596 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88db]        # 0x28de78
2e559d movups xmm1,XMMWORD PTR [rip+0xfffffffffffa88e4]        # 0x28de88
2e55a4 movups XMMWORD PTR [rdx],xmm0
2e55a7 movups XMMWORD PTR [rdx+0x10],xmm1
2e55ab mov    BYTE PTR [rdx+0x20],al
2e55ae mov    rax,rdx
2e55b1 ret
2e55b2 int3
2e55b3 int3
2e55b4 mov    al,BYTE PTR [rip+0xfffffffffffa8926]        # 0x28dee0
2e55ba movups xmm0,XMMWORD PTR [rip+0xfffffffffffa88ff]        # 0x28dec0
2e55c1 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8908]        # 0x28ded0
2e55c8 movups XMMWORD PTR [rdx],xmm0
2e55cb movups XMMWORD PTR [rdx+0x10],xmm1
2e55cf mov    BYTE PTR [rdx+0x20],al
2e55d2 mov    rax,rdx
2e55d5 ret
2e55d6 int3
2e55d7 int3
2e55d8 mov    eax,DWORD PTR [rip+0xfffffffffffa8ac2]        # 0x28e0a0
2e55de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e098
2e55e5 
2e55e6 movsd  QWORD PTR [rdx],xmm0
2e55ea mov    DWORD PTR [rdx+0x8],eax
2e55ed mov    rax,rdx
2e55f0 ret
2e55f1 int3
2e55f2 int3
2e55f3 int3
2e55f4 mov    al,BYTE PTR [rip+0xfffffffffffa8936]        # 0x28df30
2e55fa movups xmm0,XMMWORD PTR [rip+0xfffffffffffa890f]        # 0x28df10
2e5601 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8918]        # 0x28df20
2e5608 movups XMMWORD PTR [rdx],xmm0
2e560b movups XMMWORD PTR [rdx+0x10],xmm1
2e560f mov    BYTE PTR [rdx+0x20],al
2e5612 mov    rax,rdx
2e5615 ret
2e5616 int3
2e5617 int3
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5618..2e5a54 unwind0
2e5618 mov    eax,DWORD PTR [rip+0xfffffffffffa8ab2]        # 0x28e0d0
2e561e mov    DWORD PTR [rdx],eax
2e5620 movzx  eax,WORD PTR [rip+0xfffffffffffa8aad]        # 0x28e0d4
2e5627 mov    WORD PTR [rdx+0x4],ax
2e562b mov    al,BYTE PTR [rip+0xfffffffffffa8aa5]        # 0x28e0d6
2e5631 mov    BYTE PTR [rdx+0x6],al
2e5634 mov    rax,rdx
2e5637 ret
2e5638 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28dd68
2e563e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8713]        # 0x28dd58
2e5645 movups XMMWORD PTR [rdx],xmm0
2e5648 mov    DWORD PTR [rdx+0x10],eax
2e564b mov    rax,rdx
2e564e ret
2e564f int3
2e5650 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8751]        # 0x28dda8
2e5657 mov    rax,rdx
2e565a movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8752]        # 0x28ddb3
2e5661 movups XMMWORD PTR [rdx],xmm0
2e5664 movups XMMWORD PTR [rdx+0xb],xmm1
2e5668 ret
2e5669 int3
2e566a int3
2e566b int3
2e566c movzx  eax,WORD PTR [rip+0xfffffffffffa89ed]        # 0x28e060
2e5673 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa89dd]        # 0x28e058
2e567a 
2e567b movsd  QWORD PTR [rdx],xmm0
2e567f mov    WORD PTR [rdx+0x8],ax
2e5683 mov    rax,rdx
2e5686 ret
2e5687 int3
2e5688 mov    eax,DWORD PTR [rip+0xfffffffffffa8982]        # 0x28e010
2e568e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8972]        # 0x28e008
2e5695 
2e5696 movsd  QWORD PTR [rdx],xmm0
2e569a mov    DWORD PTR [rdx+0x8],eax
2e569d movzx  eax,WORD PTR [rip+0xfffffffffffa8970]        # 0x28e014
2e56a4 mov    WORD PTR [rdx+0xc],ax
2e56a8 mov    al,BYTE PTR [rip+0xfffffffffffa8968]        # 0x28e016
2e56ae mov    BYTE PTR [rdx+0xe],al
2e56b1 mov    rax,rdx
2e56b4 ret
2e56b5 int3
2e56b6 int3
2e56b7 int3
2e56b8 mov    eax,DWORD PTR [rip+0xfffffffffffa88ca]        # 0x28df88
2e56be movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88ba]        # 0x28df80
2e56c5 
2e56c6 movsd  QWORD PTR [rdx],xmm0
2e56ca mov    DWORD PTR [rdx+0x8],eax
2e56cd mov    rax,rdx
2e56d0 ret
2e56d1 int3
2e56d2 int3
2e56d3 int3
2e56d4 mov    al,BYTE PTR [rip+0xfffffffffffa88e6]        # 0x28dfc0
2e56da movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88d6]        # 0x28dfb8
2e56e1 
2e56e2 movsd  QWORD PTR [rdx],xmm0
2e56e6 mov    BYTE PTR [rdx+0x8],al
2e56e9 mov    rax,rdx
2e56ec ret
2e56ed int3
2e56ee int3
2e56ef int3
2e56f0 mov    eax,DWORD PTR [rip+0xfffffffffffa899a]        # 0x28e090
2e56f6 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa898a]        # 0x28e088
2e56fd 
2e56fe movsd  QWORD PTR [rdx],xmm0
2e5702 mov    DWORD PTR [rdx+0x8],eax
2e5705 movzx  eax,WORD PTR [rip+0xfffffffffffa8988]        # 0x28e094
2e570c mov    WORD PTR [rdx+0xc],ax
2e5710 mov    rax,rdx
2e5713 ret
2e5714 mov    al,BYTE PTR [rip+0xfffffffffffa88ce]        # 0x28dfe8
2e571a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa88be]        # 0x28dfe0
2e5721 
2e5722 movsd  QWORD PTR [rdx],xmm0
2e5726 mov    BYTE PTR [rdx+0x8],al
2e5729 mov    rax,rdx
2e572c ret
2e572d int3
2e572e int3
2e572f int3
2e5730 mov    eax,DWORD PTR [rip+0xfffffffffffa872a]        # 0x28de60
2e5736 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa871a]        # 0x28de58
2e573d 
2e573e movsd  QWORD PTR [rdx],xmm0
2e5742 mov    DWORD PTR [rdx+0x8],eax
2e5745 mov    rax,rdx
2e5748 ret
2e5749 int3
2e574a int3
2e574b int3
2e574c mov    eax,DWORD PTR [rip+0xfffffffffffa8756]        # 0x28dea8
2e5752 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8746]        # 0x28dea0
2e5759 
2e575a movsd  QWORD PTR [rdx],xmm0
2e575e mov    DWORD PTR [rdx+0x8],eax
2e5761 movzx  eax,WORD PTR [rip+0xfffffffffffa8744]        # 0x28deac
2e5768 mov    WORD PTR [rdx+0xc],ax
2e576c mov    rax,rdx
2e576f ret
2e5770 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8771]        # 0x28dee8
2e5777 mov    rax,rdx
2e577a movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8776]        # 0x28def8
2e5781 
2e5782 movups XMMWORD PTR [rdx],xmm0
2e5785 movsd  QWORD PTR [rdx+0x10],xmm1
2e578a ret
2e578b int3
2e578c movabs rax,0x3e494f5a59405965
2e5793 
2e5796 mov    QWORD PTR [rdx],rax
2e5799 mov    rax,rdx
2e579c ret
2e579d int3
2e579e int3
2e579f int3
2e57a0 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8791]        # 0x28df38
2e57a7 mov    rax,rdx
2e57aa movups xmm1,XMMWORD PTR [rip+0xfffffffffffa8790]        # 0x28df41
2e57b1 movups XMMWORD PTR [rdx],xmm0
2e57b4 movups XMMWORD PTR [rdx+0x9],xmm1
2e57b8 ret
2e57b9 int3
2e57ba int3
2e57bb int3
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e57bc..2e5a54 unwind0
2e57bc mov    eax,DWORD PTR [rip+0xfffffffffffa8916]        # 0x28e0d8
2e57c2 mov    DWORD PTR [rdx],eax
2e57c4 movzx  eax,WORD PTR [rip+0xfffffffffffa8911]        # 0x28e0dc
2e57cb mov    WORD PTR [rdx+0x4],ax
2e57cf mov    al,BYTE PTR [rip+0xfffffffffffa8909]        # 0x28e0de
2e57d5 mov    BYTE PTR [rdx+0x6],al
2e57d8 mov    rax,rdx
2e57db ret
2e57dc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83fd]        # 0x28dbe0
2e57e3 mov    rax,rdx
2e57e6 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8402]        # 0x28dbf0
2e57ed 
2e57ee movups XMMWORD PTR [rdx],xmm0
2e57f1 movsd  QWORD PTR [rdx+0x10],xmm1
2e57f6 ret
2e57f7 int3
2e57f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa83f9]        # 0x28dbf8
2e57ff mov    rax,rdx
2e5802 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa83fe]        # 0x28dc08
2e5809 
2e580a movups XMMWORD PTR [rdx],xmm0
2e580d movsd  QWORD PTR [rdx+0x10],xmm1
2e5812 ret
2e5813 int3
2e5814 mov    eax,DWORD PTR [rip+0xfffffffffffa847e]        # 0x28dc98
2e581a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa846e]        # 0x28dc90
2e5821 
2e5822 movsd  QWORD PTR [rdx],xmm0
2e5826 mov    DWORD PTR [rdx+0x8],eax
2e5829 movzx  eax,WORD PTR [rip+0xfffffffffffa846c]        # 0x28dc9c
2e5830 mov    WORD PTR [rdx+0xc],ax
2e5834 mov    al,BYTE PTR [rip+0xfffffffffffa8464]        # 0x28dc9e
2e583a mov    BYTE PTR [rdx+0xe],al
2e583d mov    rax,rdx
2e5840 ret
2e5841 int3
2e5842 int3
2e5843 int3
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5844..2e5a54 unwind0
2e5844 mov    eax,DWORD PTR [rip+0xfffffffffffa8896]        # 0x28e0e0
2e584a mov    DWORD PTR [rdx],eax
2e584c mov    al,BYTE PTR [rip+0xfffffffffffa8892]        # 0x28e0e4
2e5852 mov    BYTE PTR [rdx+0x4],al
2e5855 mov    rax,rdx
2e5858 ret
2e5859 int3
2e585a int3
2e585b int3
2e585c movzx  eax,WORD PTR [rip+0xfffffffffffa844d]        # 0x28dcb0
2e5863 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8436]        # 0x28dca0
2e586a movups XMMWORD PTR [rdx],xmm0
2e586d mov    WORD PTR [rdx+0x10],ax
2e5871 mov    rax,rdx
2e5874 ret
2e5875 int3
2e5876 int3
2e5877 int3
2e5878 mov    eax,DWORD PTR [rip+0xfffffffffffa844a]        # 0x28dcc8
2e587e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8433]        # 0x28dcb8
2e5885 movups XMMWORD PTR [rdx],xmm0
2e5888 mov    DWORD PTR [rdx+0x10],eax
2e588b mov    rax,rdx
2e588e ret
2e588f int3
2e5890 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28dd00
2e5896 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28dcf0
2e589d movups XMMWORD PTR [rdx],xmm0
2e58a0 mov    BYTE PTR [rdx+0x10],al
2e58a3 mov    rax,rdx
2e58a6 ret
2e58a7 int3
2e58a8 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8459]        # 0x28dd08
2e58af mov    rax,rdx
2e58b2 movsd  xmm1,QWORD PTR [rip+0xfffffffffffa845c]        # 0x28dd16
2e58b9 
2e58ba movups XMMWORD PTR [rdx],xmm0
2e58bd movsd  QWORD PTR [rdx+0xe],xmm1
2e58c2 ret
2e58c3 int3
2e58c4 mov    eax,DWORD PTR [rip+0xfffffffffffa845e]        # 0x28dd28
2e58ca movsd  xmm0,QWORD PTR [rip+0xfffffffffffa844e]        # 0x28dd20
2e58d1 
2e58d2 movsd  QWORD PTR [rdx],xmm0
2e58d6 mov    DWORD PTR [rdx+0x8],eax
2e58d9 movzx  eax,WORD PTR [rip+0xfffffffffffa844c]        # 0x28dd2c
2e58e0 mov    WORD PTR [rdx+0xc],ax
2e58e4 mov    al,BYTE PTR [rip+0xfffffffffffa8444]        # 0x28dd2e
2e58ea mov    BYTE PTR [rdx+0xe],al
2e58ed mov    rax,rdx
2e58f0 ret
2e58f1 int3
2e58f2 int3
2e58f3 int3
2e58f4 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8435]        # 0x28dd30
2e58fb mov    rax,rdx
2e58fe movsd  xmm1,QWORD PTR [rip+0xfffffffffffa8437]        # 0x28dd3d
2e5905 
2e5906 movups XMMWORD PTR [rdx],xmm0
2e5909 movsd  QWORD PTR [rdx+0xd],xmm1
2e590e ret
2e590f int3
2e5910 mov    eax,DWORD PTR [rip+0xfffffffffffa87da]        # 0x28e0f0
2e5916 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa87ca]        # 0x28e0e8
2e591d 
2e591e movsd  QWORD PTR [rdx],xmm0
2e5922 mov    DWORD PTR [rdx+0x8],eax
2e5925 movzx  eax,WORD PTR [rip+0xfffffffffffa87c8]        # 0x28e0f4
2e592c mov    WORD PTR [rdx+0xc],ax
2e5930 mov    rax,rdx
2e5933 ret
2e5934 mov    eax,DWORD PTR [rip+0xfffffffffffa8416]        # 0x28dd50
2e593a movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8406]        # 0x28dd48
2e5941 
2e5942 movsd  QWORD PTR [rdx],xmm0
2e5946 mov    DWORD PTR [rdx+0x8],eax
2e5949 movzx  eax,WORD PTR [rip+0xfffffffffffa8404]        # 0x28dd54
2e5950 mov    WORD PTR [rdx+0xc],ax
2e5954 mov    rax,rdx
2e5957 ret
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5958..2e5a54 unwind0
2e5958 mov    al,BYTE PTR [rip+0xfffffffffffa87aa]        # 0x28e108
2e595e movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8793]        # 0x28e0f8
2e5965 movups XMMWORD PTR [rdx],xmm0
2e5968 mov    BYTE PTR [rdx+0x10],al
2e596b mov    rax,rdx
2e596e ret
2e596f int3
2e5970 movzx  eax,WORD PTR [rip+0xfffffffffffa87a1]        # 0x28e118
2e5977 movsd  xmm0,QWORD PTR [rip+0xfffffffffffa8791]        # 0x28e110
2e597e 
2e597f movsd  QWORD PTR [rdx],xmm0
2e5983 mov    WORD PTR [rdx+0x8],ax
2e5987 mov    rax,rdx
2e598a ret
2e598b int3
2e598c movups xmm0,XMMWORD PTR [rip+0xfffffffffffa833d]        # 0x28dcd0
2e5993 mov    rax,rdx
2e5996 movups xmm1,XMMWORD PTR [rip+0xfffffffffffa833e]        # 0x28dcdb
2e599d movups XMMWORD PTR [rdx],xmm0
2e59a0 movups XMMWORD PTR [rdx+0xb],xmm1
2e59a4 ret
2e59a5 int3
2e59a6 int3
2e59a7 int3
2e59a8 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de18
2e59ae movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de08
2e59b5 movups XMMWORD PTR [rdx],xmm0
2e59b8 mov    BYTE PTR [rdx+0x10],al
2e59bb mov    rax,rdx
2e59be ret
2e59bf int3
2e59c0 mov    al,BYTE PTR [rip+0xfffffffffffa846a]        # 0x28de30
2e59c6 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8453]        # 0x28de20
2e59cd movups XMMWORD PTR [rdx],xmm0
2e59d0 mov    BYTE PTR [rdx+0x10],al
2e59d3 mov    rax,rdx
2e59d6 ret
2e59d7 int3
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e59d8..2e5a54 unwind0
2e59d8 mov    eax,DWORD PTR [rip+0xfffffffffffa874a]        # 0x28e128
2e59de movsd  xmm0,QWORD PTR [rip+0xfffffffffffa873a]        # 0x28e120
2e59e5 
2e59e6 movsd  QWORD PTR [rdx],xmm0
2e59ea mov    DWORD PTR [rdx+0x8],eax
2e59ed movzx  eax,WORD PTR [rip+0xfffffffffffa8738]        # 0x28e12c
2e59f4 mov    WORD PTR [rdx+0xc],ax
2e59f8 mov    rax,rdx
2e59fb ret
2e59fc movups xmm0,XMMWORD PTR [rip+0xfffffffffffa836d]        # 0x28dd70
2e5a03 mov    rax,rdx
2e5a06 movdqu XMMWORD PTR [rdx],xmm0
2e5a0a ret
2e5a0b int3
2e5a0c movzx  eax,WORD PTR [rip+0xfffffffffffa837d]        # 0x28dd90
2e5a13 movups xmm0,XMMWORD PTR [rip+0xfffffffffffa8366]        # 0x28dd80
2e5a1a movups XMMWORD PTR [rdx],xmm0
2e5a1d mov    WORD PTR [rdx+0x10],ax
2e5a21 mov    rax,rdx
2e5a24 ret
2e5a25 int3
2e5a26 int3
2e5a27 int3
2e5a28 mov    al,BYTE PTR [rip+0xfffffffffffa870a]        # 0x28e138
2e5a2e movsd  xmm0,QWORD PTR [rip+0xfffffffffffa86fa]        # 0x28e130
2e5a35 
2e5a36 movsd  QWORD PTR [rdx],xmm0
2e5a3a mov    BYTE PTR [rdx+0x8],al
2e5a3d mov    rax,rdx
2e5a40 ret
2e5a41 int3
2e5a42 int3
2e5a43 int3
2e5a44 comiss xmm1,xmm0
2e5a47 ja     0x2e5a50
2e5a49 movaps xmm1,xmm2
2e5a4c minss  xmm1,xmm0
2e5a50 movaps xmm0,xmm1
2e5a53 ret

; reached independent pdata/next-pdata extent 2e5b4c..2e5b7a unwind3d2064
2e5b4c sub    rsp,0x28
2e5b50 cmp    BYTE PTR [rcx],0x0
2e5b53 mov    rax,rdx
2e5b56 je     0x2e5b75
2e5b58 movsx  rdx,BYTE PTR [rcx]
2e5b5c xor    rdx,rax
2e5b5f movabs rax,0x100000001b3
2e5b66 
2e5b69 imul   rdx,rax
2e5b6d inc    rcx
2e5b70 call   0x2e5b4c
2e5b75 add    rsp,0x28
2e5b79 ret

; reached independent pdata/next-pdata extent 2e99d8..2e9b28 unwind0
2e99d8 mov    r10,rdx
2e99db mov    r11,rcx
2e99de xor    r9d,r9d
2e99e1 mov    eax,0x24924925
2e99e6 mul    r9d
2e99e9 mov    eax,r9d
2e99ec sub    eax,edx
2e99ee shr    eax,1
2e99f0 add    eax,edx
2e99f2 shr    eax,0x5
2e99f5 movsx  eax,al
2e99f8 imul   ecx,eax,0x38
2e99fb mov    al,r9b
2e99fe sub    al,cl
2e9a00 add    al,0x37
2e9a02 xor    al,BYTE PTR [r10+r9*1]
2e9a06 mov    BYTE PTR [r11+r9*1],al
2e9a0a inc    r9d
2e9a0d cmp    r9d,0x9
2e9a11 jl     0x2e99e1
2e9a13 ret
2e9a14 mov    r10,rdx
2e9a17 mov    r11,rcx
2e9a1a xor    r9d,r9d
2e9a1d mov    eax,0x24924925
2e9a22 mul    r9d
2e9a25 mov    eax,r9d
2e9a28 sub    eax,edx
2e9a2a shr    eax,1
2e9a2c add    eax,edx
2e9a2e shr    eax,0x5
2e9a31 movsx  eax,al
2e9a34 imul   ecx,eax,0x38
2e9a37 mov    al,r9b
2e9a3a sub    al,cl
2e9a3c add    al,0x37
2e9a3e xor    al,BYTE PTR [r10+r9*1]
2e9a42 mov    BYTE PTR [r11+r9*1],al
2e9a46 inc    r9d
2e9a49 cmp    r9d,0x11
2e9a4d jl     0x2e9a1d
2e9a4f ret
2e9a50 mov    r10,rdx
2e9a53 mov    r11,rcx
2e9a56 xor    r9d,r9d
2e9a59 mov    eax,0x24924925
2e9a5e mul    r9d
2e9a61 mov    eax,r9d
2e9a64 sub    eax,edx
2e9a66 shr    eax,1
2e9a68 add    eax,edx
2e9a6a shr    eax,0x5
2e9a6d movsx  eax,al
2e9a70 imul   ecx,eax,0x38
2e9a73 mov    al,r9b
2e9a76 sub    al,cl
2e9a78 add    al,0x37
2e9a7a xor    al,BYTE PTR [r10+r9*1]
2e9a7e mov    BYTE PTR [r11+r9*1],al
2e9a82 inc    r9d
2e9a85 cmp    r9d,0x12
2e9a89 jl     0x2e9a59
2e9a8b ret
2e9a8c mov    r10,rdx
2e9a8f xor    r9d,r9d
2e9a92 mov    eax,0x4ec4ec4f
2e9a97 mul    r9d
2e9a9a shr    edx,0x4
2e9a9d movsx  eax,dl
2e9aa0 imul   edx,eax,0x34
2e9aa3 mov    al,r9b
2e9aa6 sub    al,dl
2e9aa8 add    al,0x37
2e9aaa xor    al,BYTE PTR [r10+r9*1]
2e9aae mov    BYTE PTR [rcx+r9*1],al
2e9ab2 inc    r9d
2e9ab5 cmp    r9d,0x1b
2e9ab9 jl     0x2e9a92
2e9abb ret
2e9abc mov    r10,rdx
2e9abf xor    r9d,r9d
2e9ac2 mov    eax,0x4ec4ec4f
2e9ac7 mul    r9d
2e9aca shr    edx,0x4
2e9acd movsx  eax,dl
2e9ad0 imul   edx,eax,0x34
2e9ad3 mov    al,r9b
2e9ad6 sub    al,dl
2e9ad8 add    al,0x37
2e9ada xor    al,BYTE PTR [r10+r9*1]
2e9ade mov    BYTE PTR [rcx+r9*1],al
2e9ae2 inc    r9d
2e9ae5 cmp    r9d,0x21
2e9ae9 jl     0x2e9ac2
2e9aeb ret
2e9aec mov    r10,rdx
2e9aef mov    r11,rcx
2e9af2 xor    r9d,r9d
2e9af5 mov    eax,0x24924925
2e9afa mul    r9d
2e9afd mov    eax,r9d
2e9b00 sub    eax,edx
2e9b02 shr    eax,1
2e9b04 add    eax,edx
2e9b06 shr    eax,0x5
2e9b09 movsx  eax,al
2e9b0c imul   ecx,eax,0x38
2e9b0f mov    al,r9b
2e9b12 sub    al,cl
2e9b14 add    al,0x37
2e9b16 xor    al,BYTE PTR [r10+r9*1]
2e9b1a mov    BYTE PTR [r11+r9*1],al
2e9b1e inc    r9d
2e9b21 cmp    r9d,0xb
2e9b25 jl     0x2e9af5
2e9b27 ret

; reached independent pdata/next-pdata extent 2e9a14..2e9b28 unwind0
2e9a14 mov    r10,rdx
2e9a17 mov    r11,rcx
2e9a1a xor    r9d,r9d
2e9a1d mov    eax,0x24924925
2e9a22 mul    r9d
2e9a25 mov    eax,r9d
2e9a28 sub    eax,edx
2e9a2a shr    eax,1
2e9a2c add    eax,edx
2e9a2e shr    eax,0x5
2e9a31 movsx  eax,al
2e9a34 imul   ecx,eax,0x38
2e9a37 mov    al,r9b
2e9a3a sub    al,cl
2e9a3c add    al,0x37
2e9a3e xor    al,BYTE PTR [r10+r9*1]
2e9a42 mov    BYTE PTR [r11+r9*1],al
2e9a46 inc    r9d
2e9a49 cmp    r9d,0x11
2e9a4d jl     0x2e9a1d
2e9a4f ret
2e9a50 mov    r10,rdx
2e9a53 mov    r11,rcx
2e9a56 xor    r9d,r9d
2e9a59 mov    eax,0x24924925
2e9a5e mul    r9d
2e9a61 mov    eax,r9d
2e9a64 sub    eax,edx
2e9a66 shr    eax,1
2e9a68 add    eax,edx
2e9a6a shr    eax,0x5
2e9a6d movsx  eax,al
2e9a70 imul   ecx,eax,0x38
2e9a73 mov    al,r9b
2e9a76 sub    al,cl
2e9a78 add    al,0x37
2e9a7a xor    al,BYTE PTR [r10+r9*1]
2e9a7e mov    BYTE PTR [r11+r9*1],al
2e9a82 inc    r9d
2e9a85 cmp    r9d,0x12
2e9a89 jl     0x2e9a59
2e9a8b ret
2e9a8c mov    r10,rdx
2e9a8f xor    r9d,r9d
2e9a92 mov    eax,0x4ec4ec4f
2e9a97 mul    r9d
2e9a9a shr    edx,0x4
2e9a9d movsx  eax,dl
2e9aa0 imul   edx,eax,0x34
2e9aa3 mov    al,r9b
2e9aa6 sub    al,dl
2e9aa8 add    al,0x37
2e9aaa xor    al,BYTE PTR [r10+r9*1]
2e9aae mov    BYTE PTR [rcx+r9*1],al
2e9ab2 inc    r9d
2e9ab5 cmp    r9d,0x1b
2e9ab9 jl     0x2e9a92
2e9abb ret
2e9abc mov    r10,rdx
2e9abf xor    r9d,r9d
2e9ac2 mov    eax,0x4ec4ec4f
2e9ac7 mul    r9d
2e9aca shr    edx,0x4
2e9acd movsx  eax,dl
2e9ad0 imul   edx,eax,0x34
2e9ad3 mov    al,r9b
2e9ad6 sub    al,dl
2e9ad8 add    al,0x37
2e9ada xor    al,BYTE PTR [r10+r9*1]
2e9ade mov    BYTE PTR [rcx+r9*1],al
2e9ae2 inc    r9d
2e9ae5 cmp    r9d,0x21
2e9ae9 jl     0x2e9ac2
2e9aeb ret
2e9aec mov    r10,rdx
2e9aef mov    r11,rcx
2e9af2 xor    r9d,r9d
2e9af5 mov    eax,0x24924925
2e9afa mul    r9d
2e9afd mov    eax,r9d
2e9b00 sub    eax,edx
2e9b02 shr    eax,1
2e9b04 add    eax,edx
2e9b06 shr    eax,0x5
2e9b09 movsx  eax,al
2e9b0c imul   ecx,eax,0x38
2e9b0f mov    al,r9b
2e9b12 sub    al,cl
2e9b14 add    al,0x37
2e9b16 xor    al,BYTE PTR [r10+r9*1]
2e9b1a mov    BYTE PTR [r11+r9*1],al
2e9b1e inc    r9d
2e9b21 cmp    r9d,0xb
2e9b25 jl     0x2e9af5
2e9b27 ret

; reached independent pdata/next-pdata extent 2e9aec..2e9b28 unwind0
2e9aec mov    r10,rdx
2e9aef mov    r11,rcx
2e9af2 xor    r9d,r9d
2e9af5 mov    eax,0x24924925
2e9afa mul    r9d
2e9afd mov    eax,r9d
2e9b00 sub    eax,edx
2e9b02 shr    eax,1
2e9b04 add    eax,edx
2e9b06 shr    eax,0x5
2e9b09 movsx  eax,al
2e9b0c imul   ecx,eax,0x38
2e9b0f mov    al,r9b
2e9b12 sub    al,cl
2e9b14 add    al,0x37
2e9b16 xor    al,BYTE PTR [r10+r9*1]
2e9b1a mov    BYTE PTR [r11+r9*1],al
2e9b1e inc    r9d
2e9b21 cmp    r9d,0xb
2e9b25 jl     0x2e9af5
2e9b27 ret

; reached independent pdata/next-pdata extent 2e9b8c..2e9bb2 unwind3d2038
2e9b8c rex push rbx
2e9b8e sub    rsp,0x20
2e9b92 mov    rbx,rcx
2e9b95 call   0x2d8a90
2e9b9a test   al,al
2e9b9c je     0x2e9ba9
2e9b9e mov    rdx,rbx
2e9ba1 mov    rcx,rbx
2e9ba4 call   0x2e99d8
2e9ba9 mov    rax,rbx
2e9bac add    rsp,0x20
2e9bb0 pop    rbx
2e9bb1 ret

; reached independent pdata/next-pdata extent 2e9bb4..2e9bda unwind3d2038
2e9bb4 rex push rbx
2e9bb6 sub    rsp,0x20
2e9bba mov    rbx,rcx
2e9bbd call   0x2d8aa0
2e9bc2 test   al,al
2e9bc4 je     0x2e9bd1
2e9bc6 mov    rdx,rbx
2e9bc9 mov    rcx,rbx
2e9bcc call   0x2e9a14
2e9bd1 mov    rax,rbx
2e9bd4 add    rsp,0x20
2e9bd8 pop    rbx
2e9bd9 ret

; reached independent pdata/next-pdata extent 2e9c54..2e9c7a unwind3d2038
2e9c54 rex push rbx
2e9c56 sub    rsp,0x20
2e9c5a mov    rbx,rcx
2e9c5d call   0x2d8ab8
2e9c62 test   al,al
2e9c64 je     0x2e9c71
2e9c66 mov    rdx,rbx
2e9c69 mov    rcx,rbx
2e9c6c call   0x2e9aec
2e9c71 mov    rax,rbx
2e9c74 add    rsp,0x20
2e9c78 pop    rbx
2e9c79 ret

; reached independent pdata/next-pdata extent 31ffc8..320310 unwind0
31ffc8 mov    r10,rdx
31ffcb mov    r11,rcx
31ffce xor    r9d,r9d
31ffd1 mov    eax,0x24924925
31ffd6 mul    r9d
31ffd9 mov    eax,r9d
31ffdc sub    eax,edx
31ffde shr    eax,1
31ffe0 add    eax,edx
31ffe2 shr    eax,0x5
31ffe5 movsx  eax,al
31ffe8 imul   ecx,eax,0x38
31ffeb mov    al,r9b
31ffee sub    al,cl
31fff0 add    al,0x37
31fff2 xor    al,BYTE PTR [r10+r9*1]
31fff6 mov    BYTE PTR [r11+r9*1],al
31fffa inc    r9d
31fffd cmp    r9d,0x14
320001 jl     0x31ffd1
320003 ret
320004 mov    r10,rdx
320007 mov    r11,rcx
32000a xor    r9d,r9d
32000d mov    eax,0x24924925
320012 mul    r9d
320015 mov    eax,r9d
320018 sub    eax,edx
32001a shr    eax,1
32001c add    eax,edx
32001e shr    eax,0x5
320021 movsx  eax,al
320024 imul   ecx,eax,0x38
320027 mov    al,r9b
32002a sub    al,cl
32002c add    al,0x37
32002e xor    al,BYTE PTR [r10+r9*1]
320032 mov    BYTE PTR [r11+r9*1],al
320036 inc    r9d
320039 cmp    r9d,0x15
32003d jl     0x32000d
32003f ret
320040 mov    r10,rdx
320043 mov    r11,rcx
320046 xor    r9d,r9d
320049 mov    eax,0x24924925
32004e mul    r9d
320051 mov    eax,r9d
320054 sub    eax,edx
320056 shr    eax,1
320058 add    eax,edx
32005a shr    eax,0x5
32005d movsx  eax,al
320060 imul   ecx,eax,0x38
320063 mov    al,r9b
320066 sub    al,cl
320068 add    al,0x37
32006a xor    al,BYTE PTR [r10+r9*1]
32006e mov    BYTE PTR [r11+r9*1],al
320072 inc    r9d
320075 cmp    r9d,0x18
320079 jl     0x320049
32007b ret
32007c mov    r10,rdx
32007f mov    r11,rcx
320082 xor    r9d,r9d
320085 mov    eax,0x24924925
32008a mul    r9d
32008d mov    eax,r9d
320090 sub    eax,edx
320092 shr    eax,1
320094 add    eax,edx
320096 shr    eax,0x5
320099 movsx  eax,al
32009c imul   ecx,eax,0x38
32009f mov    al,r9b
3200a2 sub    al,cl
3200a4 add    al,0x37
3200a6 xor    al,BYTE PTR [r10+r9*1]
3200aa mov    BYTE PTR [r11+r9*1],al
3200ae inc    r9d
3200b1 cmp    r9d,0x19
3200b5 jl     0x320085
3200b7 ret
3200b8 mov    r10,rdx
3200bb xor    r9d,r9d
3200be mov    eax,0x4ec4ec4f
3200c3 mul    r9d
3200c6 shr    edx,0x4
3200c9 movsx  eax,dl
3200cc imul   edx,eax,0x34
3200cf mov    al,r9b
3200d2 sub    al,dl
3200d4 add    al,0x37
3200d6 xor    al,BYTE PTR [r10+r9*1]
3200da mov    BYTE PTR [rcx+r9*1],al
3200de inc    r9d
3200e1 cmp    r9d,0x1a
3200e5 jl     0x3200be
3200e7 ret
3200e8 mov    r10,rdx
3200eb xor    r9d,r9d
3200ee mov    eax,0x4ec4ec4f
3200f3 mul    r9d
3200f6 shr    edx,0x4
3200f9 movsx  eax,dl
3200fc imul   edx,eax,0x34
3200ff mov    al,r9b
320102 sub    al,dl
320104 add    al,0x37
320106 xor    al,BYTE PTR [r10+r9*1]
32010a mov    BYTE PTR [rcx+r9*1],al
32010e inc    r9d
320111 cmp    r9d,0x1c
320115 jl     0x3200ee
320117 ret
320118 mov    r10,rdx
32011b mov    r11,rcx
32011e xor    r9d,r9d
320121 mov    eax,0x24924925
320126 mul    r9d
320129 mov    eax,r9d
32012c sub    eax,edx
32012e shr    eax,1
320130 add    eax,edx
320132 shr    eax,0x5
320135 movsx  eax,al
320138 imul   ecx,eax,0x38
32013b mov    al,r9b
32013e sub    al,cl
320140 add    al,0x37
320142 xor    al,BYTE PTR [r10+r9*1]
320146 mov    BYTE PTR [r11+r9*1],al
32014a inc    r9d
32014d cmp    r9d,0x1c
320151 jl     0x320121
320153 ret
320154 mov    r10,rdx
320157 xor    r9d,r9d
32015a mov    eax,0x4ec4ec4f
32015f mul    r9d
320162 shr    edx,0x4
320165 movsx  eax,dl
320168 imul   edx,eax,0x34
32016b mov    al,r9b
32016e sub    al,dl
320170 add    al,0x37
320172 xor    al,BYTE PTR [r10+r9*1]
320176 mov    BYTE PTR [rcx+r9*1],al
32017a inc    r9d
32017d cmp    r9d,0x1d
320181 jl     0x32015a
320183 ret
320184 mov    r10,rdx
320187 xor    r9d,r9d
32018a mov    eax,0x4ec4ec4f
32018f mul    r9d
320192 shr    edx,0x4
320195 movsx  eax,dl
320198 imul   edx,eax,0x34
32019b mov    al,r9b
32019e sub    al,dl
3201a0 add    al,0x37
3201a2 xor    al,BYTE PTR [r10+r9*1]
3201a6 mov    BYTE PTR [rcx+r9*1],al
3201aa inc    r9d
3201ad cmp    r9d,0x1e
3201b1 jl     0x32018a
3201b3 ret
3201b4 mov    r10,rdx
3201b7 mov    r11,rcx
3201ba xor    r9d,r9d
3201bd mov    eax,0x24924925
3201c2 mul    r9d
3201c5 mov    eax,r9d
3201c8 sub    eax,edx
3201ca shr    eax,1
3201cc add    eax,edx
3201ce shr    eax,0x5
3201d1 movsx  eax,al
3201d4 imul   ecx,eax,0x38
3201d7 mov    al,r9b
3201da sub    al,cl
3201dc add    al,0x37
3201de xor    al,BYTE PTR [r10+r9*1]
3201e2 mov    BYTE PTR [r11+r9*1],al
3201e6 inc    r9d
3201e9 cmp    r9d,0x1e
3201ed jl     0x3201bd
3201ef ret
3201f0 mov    r10,rdx
3201f3 xor    r9d,r9d
3201f6 mov    eax,0x4ec4ec4f
3201fb mul    r9d
3201fe shr    edx,0x4
320201 movsx  eax,dl
320204 imul   edx,eax,0x34
320207 mov    al,r9b
32020a sub    al,dl
32020c add    al,0x37
32020e xor    al,BYTE PTR [r10+r9*1]
320212 mov    BYTE PTR [rcx+r9*1],al
320216 inc    r9d
320219 cmp    r9d,0x1f
32021d jl     0x3201f6
32021f ret
320220 mov    r10,rdx
320223 xor    r9d,r9d
320226 mov    eax,0x4ec4ec4f
32022b mul    r9d
32022e shr    edx,0x4
320231 movsx  eax,dl
320234 imul   edx,eax,0x34
320237 mov    al,r9b
32023a sub    al,dl
32023c add    al,0x37
32023e xor    al,BYTE PTR [r10+r9*1]
320242 mov    BYTE PTR [rcx+r9*1],al
320246 inc    r9d
320249 cmp    r9d,0x20
32024d jl     0x320226
32024f ret
320250 mov    r10,rdx
320253 xor    r9d,r9d
320256 mov    eax,0x4ec4ec4f
32025b mul    r9d
32025e shr    edx,0x4
320261 movsx  eax,dl
320264 imul   edx,eax,0x34
320267 mov    al,r9b
32026a sub    al,dl
32026c add    al,0x37
32026e xor    al,BYTE PTR [r10+r9*1]
320272 mov    BYTE PTR [rcx+r9*1],al
320276 inc    r9d
320279 cmp    r9d,0x22
32027d jl     0x320256
32027f ret
320280 mov    r10,rdx
320283 xor    r9d,r9d
320286 mov    eax,0x4ec4ec4f
32028b mul    r9d
32028e shr    edx,0x4
320291 movsx  eax,dl
320294 imul   edx,eax,0x34
320297 mov    al,r9b
32029a sub    al,dl
32029c add    al,0x37
32029e xor    al,BYTE PTR [r10+r9*1]
3202a2 mov    BYTE PTR [rcx+r9*1],al
3202a6 inc    r9d
3202a9 cmp    r9d,0x2a
3202ad jl     0x320286
3202af ret
3202b0 mov    r10,rdx
3202b3 xor    r9d,r9d
3202b6 mov    eax,0x4ec4ec4f
3202bb mul    r9d
3202be shr    edx,0x4
3202c1 movsx  eax,dl
3202c4 imul   edx,eax,0x34
3202c7 mov    al,r9b
3202ca sub    al,dl
3202cc add    al,0x37
3202ce xor    al,BYTE PTR [r10+r9*1]
3202d2 mov    BYTE PTR [rcx+r9*1],al
3202d6 inc    r9d
3202d9 cmp    r9d,0x30
3202dd jl     0x3202b6
3202df ret
3202e0 mov    r10,rdx
3202e3 xor    r9d,r9d
3202e6 mov    eax,0x4ec4ec4f
3202eb mul    r9d
3202ee shr    edx,0x4
3202f1 movsx  eax,dl
3202f4 imul   edx,eax,0x34
3202f7 mov    al,r9b
3202fa sub    al,dl
3202fc add    al,0x37
3202fe xor    al,BYTE PTR [r10+r9*1]
320302 mov    BYTE PTR [rcx+r9*1],al
320306 inc    r9d
320309 cmp    r9d,0x31
32030d jl     0x3202e6
32030f ret

; reached independent pdata/next-pdata extent 320004..320310 unwind0
320004 mov    r10,rdx
320007 mov    r11,rcx
32000a xor    r9d,r9d
32000d mov    eax,0x24924925
320012 mul    r9d
320015 mov    eax,r9d
320018 sub    eax,edx
32001a shr    eax,1
32001c add    eax,edx
32001e shr    eax,0x5
320021 movsx  eax,al
320024 imul   ecx,eax,0x38
320027 mov    al,r9b
32002a sub    al,cl
32002c add    al,0x37
32002e xor    al,BYTE PTR [r10+r9*1]
320032 mov    BYTE PTR [r11+r9*1],al
320036 inc    r9d
320039 cmp    r9d,0x15
32003d jl     0x32000d
32003f ret
320040 mov    r10,rdx
320043 mov    r11,rcx
320046 xor    r9d,r9d
320049 mov    eax,0x24924925
32004e mul    r9d
320051 mov    eax,r9d
320054 sub    eax,edx
320056 shr    eax,1
320058 add    eax,edx
32005a shr    eax,0x5
32005d movsx  eax,al
320060 imul   ecx,eax,0x38
320063 mov    al,r9b
320066 sub    al,cl
320068 add    al,0x37
32006a xor    al,BYTE PTR [r10+r9*1]
32006e mov    BYTE PTR [r11+r9*1],al
320072 inc    r9d
320075 cmp    r9d,0x18
320079 jl     0x320049
32007b ret
32007c mov    r10,rdx
32007f mov    r11,rcx
320082 xor    r9d,r9d
320085 mov    eax,0x24924925
32008a mul    r9d
32008d mov    eax,r9d
320090 sub    eax,edx
320092 shr    eax,1
320094 add    eax,edx
320096 shr    eax,0x5
320099 movsx  eax,al
32009c imul   ecx,eax,0x38
32009f mov    al,r9b
3200a2 sub    al,cl
3200a4 add    al,0x37
3200a6 xor    al,BYTE PTR [r10+r9*1]
3200aa mov    BYTE PTR [r11+r9*1],al
3200ae inc    r9d
3200b1 cmp    r9d,0x19
3200b5 jl     0x320085
3200b7 ret
3200b8 mov    r10,rdx
3200bb xor    r9d,r9d
3200be mov    eax,0x4ec4ec4f
3200c3 mul    r9d
3200c6 shr    edx,0x4
3200c9 movsx  eax,dl
3200cc imul   edx,eax,0x34
3200cf mov    al,r9b
3200d2 sub    al,dl
3200d4 add    al,0x37
3200d6 xor    al,BYTE PTR [r10+r9*1]
3200da mov    BYTE PTR [rcx+r9*1],al
3200de inc    r9d
3200e1 cmp    r9d,0x1a
3200e5 jl     0x3200be
3200e7 ret
3200e8 mov    r10,rdx
3200eb xor    r9d,r9d
3200ee mov    eax,0x4ec4ec4f
3200f3 mul    r9d
3200f6 shr    edx,0x4
3200f9 movsx  eax,dl
3200fc imul   edx,eax,0x34
3200ff mov    al,r9b
320102 sub    al,dl
320104 add    al,0x37
320106 xor    al,BYTE PTR [r10+r9*1]
32010a mov    BYTE PTR [rcx+r9*1],al
32010e inc    r9d
320111 cmp    r9d,0x1c
320115 jl     0x3200ee
320117 ret
320118 mov    r10,rdx
32011b mov    r11,rcx
32011e xor    r9d,r9d
320121 mov    eax,0x24924925
320126 mul    r9d
320129 mov    eax,r9d
32012c sub    eax,edx
32012e shr    eax,1
320130 add    eax,edx
320132 shr    eax,0x5
320135 movsx  eax,al
320138 imul   ecx,eax,0x38
32013b mov    al,r9b
32013e sub    al,cl
320140 add    al,0x37
320142 xor    al,BYTE PTR [r10+r9*1]
320146 mov    BYTE PTR [r11+r9*1],al
32014a inc    r9d
32014d cmp    r9d,0x1c
320151 jl     0x320121
320153 ret
320154 mov    r10,rdx
320157 xor    r9d,r9d
32015a mov    eax,0x4ec4ec4f
32015f mul    r9d
320162 shr    edx,0x4
320165 movsx  eax,dl
320168 imul   edx,eax,0x34
32016b mov    al,r9b
32016e sub    al,dl
320170 add    al,0x37
320172 xor    al,BYTE PTR [r10+r9*1]
320176 mov    BYTE PTR [rcx+r9*1],al
32017a inc    r9d
32017d cmp    r9d,0x1d
320181 jl     0x32015a
320183 ret
320184 mov    r10,rdx
320187 xor    r9d,r9d
32018a mov    eax,0x4ec4ec4f
32018f mul    r9d
320192 shr    edx,0x4
320195 movsx  eax,dl
320198 imul   edx,eax,0x34
32019b mov    al,r9b
32019e sub    al,dl
3201a0 add    al,0x37
3201a2 xor    al,BYTE PTR [r10+r9*1]
3201a6 mov    BYTE PTR [rcx+r9*1],al
3201aa inc    r9d
3201ad cmp    r9d,0x1e
3201b1 jl     0x32018a
3201b3 ret
3201b4 mov    r10,rdx
3201b7 mov    r11,rcx
3201ba xor    r9d,r9d
3201bd mov    eax,0x24924925
3201c2 mul    r9d
3201c5 mov    eax,r9d
3201c8 sub    eax,edx
3201ca shr    eax,1
3201cc add    eax,edx
3201ce shr    eax,0x5
3201d1 movsx  eax,al
3201d4 imul   ecx,eax,0x38
3201d7 mov    al,r9b
3201da sub    al,cl
3201dc add    al,0x37
3201de xor    al,BYTE PTR [r10+r9*1]
3201e2 mov    BYTE PTR [r11+r9*1],al
3201e6 inc    r9d
3201e9 cmp    r9d,0x1e
3201ed jl     0x3201bd
3201ef ret
3201f0 mov    r10,rdx
3201f3 xor    r9d,r9d
3201f6 mov    eax,0x4ec4ec4f
3201fb mul    r9d
3201fe shr    edx,0x4
320201 movsx  eax,dl
320204 imul   edx,eax,0x34
320207 mov    al,r9b
32020a sub    al,dl
32020c add    al,0x37
32020e xor    al,BYTE PTR [r10+r9*1]
320212 mov    BYTE PTR [rcx+r9*1],al
320216 inc    r9d
320219 cmp    r9d,0x1f
32021d jl     0x3201f6
32021f ret
320220 mov    r10,rdx
320223 xor    r9d,r9d
320226 mov    eax,0x4ec4ec4f
32022b mul    r9d
32022e shr    edx,0x4
320231 movsx  eax,dl
320234 imul   edx,eax,0x34
320237 mov    al,r9b
32023a sub    al,dl
32023c add    al,0x37
32023e xor    al,BYTE PTR [r10+r9*1]
320242 mov    BYTE PTR [rcx+r9*1],al
320246 inc    r9d
320249 cmp    r9d,0x20
32024d jl     0x320226
32024f ret
320250 mov    r10,rdx
320253 xor    r9d,r9d
320256 mov    eax,0x4ec4ec4f
32025b mul    r9d
32025e shr    edx,0x4
320261 movsx  eax,dl
320264 imul   edx,eax,0x34
320267 mov    al,r9b
32026a sub    al,dl
32026c add    al,0x37
32026e xor    al,BYTE PTR [r10+r9*1]
320272 mov    BYTE PTR [rcx+r9*1],al
320276 inc    r9d
320279 cmp    r9d,0x22
32027d jl     0x320256
32027f ret
320280 mov    r10,rdx
320283 xor    r9d,r9d
320286 mov    eax,0x4ec4ec4f
32028b mul    r9d
32028e shr    edx,0x4
320291 movsx  eax,dl
320294 imul   edx,eax,0x34
320297 mov    al,r9b
32029a sub    al,dl
32029c add    al,0x37
32029e xor    al,BYTE PTR [r10+r9*1]
3202a2 mov    BYTE PTR [rcx+r9*1],al
3202a6 inc    r9d
3202a9 cmp    r9d,0x2a
3202ad jl     0x320286
3202af ret
3202b0 mov    r10,rdx
3202b3 xor    r9d,r9d
3202b6 mov    eax,0x4ec4ec4f
3202bb mul    r9d
3202be shr    edx,0x4
3202c1 movsx  eax,dl
3202c4 imul   edx,eax,0x34
3202c7 mov    al,r9b
3202ca sub    al,dl
3202cc add    al,0x37
3202ce xor    al,BYTE PTR [r10+r9*1]
3202d2 mov    BYTE PTR [rcx+r9*1],al
3202d6 inc    r9d
3202d9 cmp    r9d,0x30
3202dd jl     0x3202b6
3202df ret
3202e0 mov    r10,rdx
3202e3 xor    r9d,r9d
3202e6 mov    eax,0x4ec4ec4f
3202eb mul    r9d
3202ee shr    edx,0x4
3202f1 movsx  eax,dl
3202f4 imul   edx,eax,0x34
3202f7 mov    al,r9b
3202fa sub    al,dl
3202fc add    al,0x37
3202fe xor    al,BYTE PTR [r10+r9*1]
320302 mov    BYTE PTR [rcx+r9*1],al
320306 inc    r9d
320309 cmp    r9d,0x31
32030d jl     0x3202e6
32030f ret

; reached independent pdata/next-pdata extent 32007c..320310 unwind0
32007c mov    r10,rdx
32007f mov    r11,rcx
320082 xor    r9d,r9d
320085 mov    eax,0x24924925
32008a mul    r9d
32008d mov    eax,r9d
320090 sub    eax,edx
320092 shr    eax,1
320094 add    eax,edx
320096 shr    eax,0x5
320099 movsx  eax,al
32009c imul   ecx,eax,0x38
32009f mov    al,r9b
3200a2 sub    al,cl
3200a4 add    al,0x37
3200a6 xor    al,BYTE PTR [r10+r9*1]
3200aa mov    BYTE PTR [r11+r9*1],al
3200ae inc    r9d
3200b1 cmp    r9d,0x19
3200b5 jl     0x320085
3200b7 ret
3200b8 mov    r10,rdx
3200bb xor    r9d,r9d
3200be mov    eax,0x4ec4ec4f
3200c3 mul    r9d
3200c6 shr    edx,0x4
3200c9 movsx  eax,dl
3200cc imul   edx,eax,0x34
3200cf mov    al,r9b
3200d2 sub    al,dl
3200d4 add    al,0x37
3200d6 xor    al,BYTE PTR [r10+r9*1]
3200da mov    BYTE PTR [rcx+r9*1],al
3200de inc    r9d
3200e1 cmp    r9d,0x1a
3200e5 jl     0x3200be
3200e7 ret
3200e8 mov    r10,rdx
3200eb xor    r9d,r9d
3200ee mov    eax,0x4ec4ec4f
3200f3 mul    r9d
3200f6 shr    edx,0x4
3200f9 movsx  eax,dl
3200fc imul   edx,eax,0x34
3200ff mov    al,r9b
320102 sub    al,dl
320104 add    al,0x37
320106 xor    al,BYTE PTR [r10+r9*1]
32010a mov    BYTE PTR [rcx+r9*1],al
32010e inc    r9d
320111 cmp    r9d,0x1c
320115 jl     0x3200ee
320117 ret
320118 mov    r10,rdx
32011b mov    r11,rcx
32011e xor    r9d,r9d
320121 mov    eax,0x24924925
320126 mul    r9d
320129 mov    eax,r9d
32012c sub    eax,edx
32012e shr    eax,1
320130 add    eax,edx
320132 shr    eax,0x5
320135 movsx  eax,al
320138 imul   ecx,eax,0x38
32013b mov    al,r9b
32013e sub    al,cl
320140 add    al,0x37
320142 xor    al,BYTE PTR [r10+r9*1]
320146 mov    BYTE PTR [r11+r9*1],al
32014a inc    r9d
32014d cmp    r9d,0x1c
320151 jl     0x320121
320153 ret
320154 mov    r10,rdx
320157 xor    r9d,r9d
32015a mov    eax,0x4ec4ec4f
32015f mul    r9d
320162 shr    edx,0x4
320165 movsx  eax,dl
320168 imul   edx,eax,0x34
32016b mov    al,r9b
32016e sub    al,dl
320170 add    al,0x37
320172 xor    al,BYTE PTR [r10+r9*1]
320176 mov    BYTE PTR [rcx+r9*1],al
32017a inc    r9d
32017d cmp    r9d,0x1d
320181 jl     0x32015a
320183 ret
320184 mov    r10,rdx
320187 xor    r9d,r9d
32018a mov    eax,0x4ec4ec4f
32018f mul    r9d
320192 shr    edx,0x4
320195 movsx  eax,dl
320198 imul   edx,eax,0x34
32019b mov    al,r9b
32019e sub    al,dl
3201a0 add    al,0x37
3201a2 xor    al,BYTE PTR [r10+r9*1]
3201a6 mov    BYTE PTR [rcx+r9*1],al
3201aa inc    r9d
3201ad cmp    r9d,0x1e
3201b1 jl     0x32018a
3201b3 ret
3201b4 mov    r10,rdx
3201b7 mov    r11,rcx
3201ba xor    r9d,r9d
3201bd mov    eax,0x24924925
3201c2 mul    r9d
3201c5 mov    eax,r9d
3201c8 sub    eax,edx
3201ca shr    eax,1
3201cc add    eax,edx
3201ce shr    eax,0x5
3201d1 movsx  eax,al
3201d4 imul   ecx,eax,0x38
3201d7 mov    al,r9b
3201da sub    al,cl
3201dc add    al,0x37
3201de xor    al,BYTE PTR [r10+r9*1]
3201e2 mov    BYTE PTR [r11+r9*1],al
3201e6 inc    r9d
3201e9 cmp    r9d,0x1e
3201ed jl     0x3201bd
3201ef ret
3201f0 mov    r10,rdx
3201f3 xor    r9d,r9d
3201f6 mov    eax,0x4ec4ec4f
3201fb mul    r9d
3201fe shr    edx,0x4
320201 movsx  eax,dl
320204 imul   edx,eax,0x34
320207 mov    al,r9b
32020a sub    al,dl
32020c add    al,0x37
32020e xor    al,BYTE PTR [r10+r9*1]
320212 mov    BYTE PTR [rcx+r9*1],al
320216 inc    r9d
320219 cmp    r9d,0x1f
32021d jl     0x3201f6
32021f ret
320220 mov    r10,rdx
320223 xor    r9d,r9d
320226 mov    eax,0x4ec4ec4f
32022b mul    r9d
32022e shr    edx,0x4
320231 movsx  eax,dl
320234 imul   edx,eax,0x34
320237 mov    al,r9b
32023a sub    al,dl
32023c add    al,0x37
32023e xor    al,BYTE PTR [r10+r9*1]
320242 mov    BYTE PTR [rcx+r9*1],al
320246 inc    r9d
320249 cmp    r9d,0x20
32024d jl     0x320226
32024f ret
320250 mov    r10,rdx
320253 xor    r9d,r9d
320256 mov    eax,0x4ec4ec4f
32025b mul    r9d
32025e shr    edx,0x4
320261 movsx  eax,dl
320264 imul   edx,eax,0x34
320267 mov    al,r9b
32026a sub    al,dl
32026c add    al,0x37
32026e xor    al,BYTE PTR [r10+r9*1]
320272 mov    BYTE PTR [rcx+r9*1],al
320276 inc    r9d
320279 cmp    r9d,0x22
32027d jl     0x320256
32027f ret
320280 mov    r10,rdx
320283 xor    r9d,r9d
320286 mov    eax,0x4ec4ec4f
32028b mul    r9d
32028e shr    edx,0x4
320291 movsx  eax,dl
320294 imul   edx,eax,0x34
320297 mov    al,r9b
32029a sub    al,dl
32029c add    al,0x37
32029e xor    al,BYTE PTR [r10+r9*1]
3202a2 mov    BYTE PTR [rcx+r9*1],al
3202a6 inc    r9d
3202a9 cmp    r9d,0x2a
3202ad jl     0x320286
3202af ret
3202b0 mov    r10,rdx
3202b3 xor    r9d,r9d
3202b6 mov    eax,0x4ec4ec4f
3202bb mul    r9d
3202be shr    edx,0x4
3202c1 movsx  eax,dl
3202c4 imul   edx,eax,0x34
3202c7 mov    al,r9b
3202ca sub    al,dl
3202cc add    al,0x37
3202ce xor    al,BYTE PTR [r10+r9*1]
3202d2 mov    BYTE PTR [rcx+r9*1],al
3202d6 inc    r9d
3202d9 cmp    r9d,0x30
3202dd jl     0x3202b6
3202df ret
3202e0 mov    r10,rdx
3202e3 xor    r9d,r9d
3202e6 mov    eax,0x4ec4ec4f
3202eb mul    r9d
3202ee shr    edx,0x4
3202f1 movsx  eax,dl
3202f4 imul   edx,eax,0x34
3202f7 mov    al,r9b
3202fa sub    al,dl
3202fc add    al,0x37
3202fe xor    al,BYTE PTR [r10+r9*1]
320302 mov    BYTE PTR [rcx+r9*1],al
320306 inc    r9d
320309 cmp    r9d,0x31
32030d jl     0x3202e6
32030f ret

; reached independent pdata/next-pdata extent 320494..3204ba unwind3d2038
320494 rex push rbx
320496 sub    rsp,0x20
32049a mov    rbx,rcx
32049d call   0x2ce584
3204a2 test   al,al
3204a4 je     0x3204b1
3204a6 mov    rdx,rbx
3204a9 mov    rcx,rbx
3204ac call   0x31ffc8
3204b1 mov    rax,rbx
3204b4 add    rsp,0x20
3204b8 pop    rbx
3204b9 ret

; reached independent pdata/next-pdata extent 3204bc..3204e2 unwind3d2038
3204bc rex push rbx
3204be sub    rsp,0x20
3204c2 mov    rbx,rcx
3204c5 call   0x2e3b30
3204ca test   al,al
3204cc je     0x3204d9
3204ce mov    rdx,rbx
3204d1 mov    rcx,rbx
3204d4 call   0x320004
3204d9 mov    rax,rbx
3204dc add    rsp,0x20
3204e0 pop    rbx
3204e1 ret

; reached independent pdata/next-pdata extent 32050c..320532 unwind3d2038
32050c rex push rbx
32050e sub    rsp,0x20
320512 mov    rbx,rcx
320515 call   0x2e3b48
32051a test   al,al
32051c je     0x320529
32051e mov    rdx,rbx
320521 mov    rcx,rbx
320524 call   0x32007c
320529 mov    rax,rbx
32052c add    rsp,0x20
320530 pop    rbx
320531 ret

; reached independent pdata/next-pdata extent 330128..330638 unwind0
330128 mov    eax,DWORD PTR [rip+0xfffffffffff64b22]        # 0x294c50
33012e mov    DWORD PTR [rdx],eax
330130 mov    al,BYTE PTR [rip+0xfffffffffff64b1e]        # 0x294c54
330136 mov    BYTE PTR [rdx+0x4],al
330139 mov    rax,rdx
33013c ret
33013d int3
33013e int3
33013f int3
330140 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b11]        # 0x294c58
330147 mov    rax,rdx
33014a movsd  xmm1,QWORD PTR [rip+0xfffffffffff64b13]        # 0x294c65
330151 
330152 movups XMMWORD PTR [rdx],xmm0
330155 movsd  QWORD PTR [rdx+0xd],xmm1
33015a ret
33015b int3
33015c mov    eax,DWORD PTR [rip+0xfffffffffff649fe]        # 0x294b60
330162 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e7]        # 0x294b50
330169 movups XMMWORD PTR [rdx],xmm0
33016c mov    DWORD PTR [rdx+0x10],eax
33016f mov    rax,rdx
330172 ret
330173 int3
330174 mov    eax,DWORD PTR [rip+0xfffffffffff64b06]        # 0x294c80
33017a movups xmm0,XMMWORD PTR [rip+0xfffffffffff64aef]        # 0x294c70
330181 movups XMMWORD PTR [rdx],xmm0
330184 mov    DWORD PTR [rdx+0x10],eax
330187 mov    rax,rdx
33018a ret
33018b int3
33018c mov    eax,DWORD PTR [rip+0xfffffffffff64afd]        # 0x294c8f
330192 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aee]        # 0x294c88
330199 
33019a movsd  QWORD PTR [rdx],xmm0
33019e mov    DWORD PTR [rdx+0x7],eax
3301a1 mov    rax,rdx
3301a4 ret
3301a5 int3
3301a6 int3
3301a7 int3
3301a8 mov    al,BYTE PTR [rip+0xfffffffffff64afa]        # 0x294ca8
3301ae movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae3]        # 0x294c98
3301b5 movups XMMWORD PTR [rdx],xmm0
3301b8 mov    BYTE PTR [rdx+0x10],al
3301bb mov    rax,rdx
3301be ret
3301bf int3
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330140..330638 unwind0
330140 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b11]        # 0x294c58
330147 mov    rax,rdx
33014a movsd  xmm1,QWORD PTR [rip+0xfffffffffff64b13]        # 0x294c65
330151 
330152 movups XMMWORD PTR [rdx],xmm0
330155 movsd  QWORD PTR [rdx+0xd],xmm1
33015a ret
33015b int3
33015c mov    eax,DWORD PTR [rip+0xfffffffffff649fe]        # 0x294b60
330162 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e7]        # 0x294b50
330169 movups XMMWORD PTR [rdx],xmm0
33016c mov    DWORD PTR [rdx+0x10],eax
33016f mov    rax,rdx
330172 ret
330173 int3
330174 mov    eax,DWORD PTR [rip+0xfffffffffff64b06]        # 0x294c80
33017a movups xmm0,XMMWORD PTR [rip+0xfffffffffff64aef]        # 0x294c70
330181 movups XMMWORD PTR [rdx],xmm0
330184 mov    DWORD PTR [rdx+0x10],eax
330187 mov    rax,rdx
33018a ret
33018b int3
33018c mov    eax,DWORD PTR [rip+0xfffffffffff64afd]        # 0x294c8f
330192 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aee]        # 0x294c88
330199 
33019a movsd  QWORD PTR [rdx],xmm0
33019e mov    DWORD PTR [rdx+0x7],eax
3301a1 mov    rax,rdx
3301a4 ret
3301a5 int3
3301a6 int3
3301a7 int3
3301a8 mov    al,BYTE PTR [rip+0xfffffffffff64afa]        # 0x294ca8
3301ae movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae3]        # 0x294c98
3301b5 movups XMMWORD PTR [rdx],xmm0
3301b8 mov    BYTE PTR [rdx+0x10],al
3301bb mov    rax,rdx
3301be ret
3301bf int3
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330174..330638 unwind0
330174 mov    eax,DWORD PTR [rip+0xfffffffffff64b06]        # 0x294c80
33017a movups xmm0,XMMWORD PTR [rip+0xfffffffffff64aef]        # 0x294c70
330181 movups XMMWORD PTR [rdx],xmm0
330184 mov    DWORD PTR [rdx+0x10],eax
330187 mov    rax,rdx
33018a ret
33018b int3
33018c mov    eax,DWORD PTR [rip+0xfffffffffff64afd]        # 0x294c8f
330192 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aee]        # 0x294c88
330199 
33019a movsd  QWORD PTR [rdx],xmm0
33019e mov    DWORD PTR [rdx+0x7],eax
3301a1 mov    rax,rdx
3301a4 ret
3301a5 int3
3301a6 int3
3301a7 int3
3301a8 mov    al,BYTE PTR [rip+0xfffffffffff64afa]        # 0x294ca8
3301ae movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae3]        # 0x294c98
3301b5 movups XMMWORD PTR [rdx],xmm0
3301b8 mov    BYTE PTR [rdx+0x10],al
3301bb mov    rax,rdx
3301be ret
3301bf int3
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33018c..330638 unwind0
33018c mov    eax,DWORD PTR [rip+0xfffffffffff64afd]        # 0x294c8f
330192 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aee]        # 0x294c88
330199 
33019a movsd  QWORD PTR [rdx],xmm0
33019e mov    DWORD PTR [rdx+0x7],eax
3301a1 mov    rax,rdx
3301a4 ret
3301a5 int3
3301a6 int3
3301a7 int3
3301a8 mov    al,BYTE PTR [rip+0xfffffffffff64afa]        # 0x294ca8
3301ae movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae3]        # 0x294c98
3301b5 movups XMMWORD PTR [rdx],xmm0
3301b8 mov    BYTE PTR [rdx+0x10],al
3301bb mov    rax,rdx
3301be ret
3301bf int3
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3301a8..330638 unwind0
3301a8 mov    al,BYTE PTR [rip+0xfffffffffff64afa]        # 0x294ca8
3301ae movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae3]        # 0x294c98
3301b5 movups XMMWORD PTR [rdx],xmm0
3301b8 mov    BYTE PTR [rdx+0x10],al
3301bb mov    rax,rdx
3301be ret
3301bf int3
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3301c0..330638 unwind0
3301c0 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64ae9]        # 0x294cb0
3301c7 mov    rax,rdx
3301ca movups xmm1,XMMWORD PTR [rip+0xfffffffffff64ae8]        # 0x294cb9
3301d1 movups XMMWORD PTR [rdx],xmm0
3301d4 movups XMMWORD PTR [rdx+0x9],xmm1
3301d8 ret
3301d9 int3
3301da int3
3301db int3
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3301dc..330638 unwind0
3301dc mov    eax,DWORD PTR [rip+0xfffffffffff64af6]        # 0x294cd8
3301e2 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ae6]        # 0x294cd0
3301e9 
3301ea movsd  QWORD PTR [rdx],xmm0
3301ee mov    DWORD PTR [rdx+0x8],eax
3301f1 movzx  eax,WORD PTR [rip+0xfffffffffff64ae4]        # 0x294cdc
3301f8 mov    WORD PTR [rdx+0xc],ax
3301fc mov    al,BYTE PTR [rip+0xfffffffffff64adc]        # 0x294cde
330202 mov    BYTE PTR [rdx+0xe],al
330205 mov    rax,rdx
330208 ret
330209 int3
33020a int3
33020b int3
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33020c..330638 unwind0
33020c mov    al,BYTE PTR [rip+0xfffffffffff64ad6]        # 0x294ce8
330212 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64ac6]        # 0x294ce0
330219 
33021a movsd  QWORD PTR [rdx],xmm0
33021e mov    BYTE PTR [rdx+0x8],al
330221 mov    rax,rdx
330224 ret
330225 int3
330226 int3
330227 int3
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330228..330638 unwind0
330228 mov    eax,DWORD PTR [rip+0xfffffffffff64aca]        # 0x294cf8
33022e movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aba]        # 0x294cf0
330235 
330236 movsd  QWORD PTR [rdx],xmm0
33023a mov    DWORD PTR [rdx+0x8],eax
33023d mov    al,BYTE PTR [rip+0xfffffffffff64ab9]        # 0x294cfc
330243 mov    BYTE PTR [rdx+0xc],al
330246 mov    rax,rdx
330249 ret
33024a int3
33024b int3
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33024c..330638 unwind0
33024c mov    eax,DWORD PTR [rip+0xfffffffffff64ab6]        # 0x294d08
330252 movsd  xmm0,QWORD PTR [rip+0xfffffffffff64aa6]        # 0x294d00
330259 
33025a movsd  QWORD PTR [rdx],xmm0
33025e mov    DWORD PTR [rdx+0x8],eax
330261 mov    al,BYTE PTR [rip+0xfffffffffff64aa5]        # 0x294d0c
330267 mov    BYTE PTR [rdx+0xc],al
33026a mov    rax,rdx
33026d ret
33026e int3
33026f int3
330270 movzx  eax,WORD PTR [rip+0xfffffffffff64bb9]        # 0x294e30
330277 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64b92]        # 0x294e10
33027e movups xmm1,XMMWORD PTR [rip+0xfffffffffff64b9b]        # 0x294e20
330285 movups XMMWORD PTR [rdx],xmm0
330288 movups XMMWORD PTR [rdx+0x10],xmm1
33028c mov    WORD PTR [rdx+0x20],ax
330290 mov    rax,rdx
330293 ret
330294 movzx  eax,WORD PTR [rip+0xfffffffffff64945]        # 0x294be0
33029b movsd  xmm0,QWORD PTR [rip+0xfffffffffff64935]        # 0x294bd8
3302a2 
3302a3 movsd  QWORD PTR [rdx],xmm0
3302a7 mov    WORD PTR [rdx+0x8],ax
3302ab mov    rax,rdx
3302ae ret
3302af int3
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3302b0..330638 unwind0
3302b0 mov    eax,DWORD PTR [rip+0xfffffffffff64952]        # 0x294c08
3302b6 mov    DWORD PTR [rdx],eax
3302b8 movzx  eax,WORD PTR [rip+0xfffffffffff6494d]        # 0x294c0c
3302bf mov    WORD PTR [rdx+0x4],ax
3302c3 mov    rax,rdx
3302c6 ret
3302c7 int3
3302c8 mov    al,BYTE PTR [rip+0xfffffffffff648ea]        # 0x294bb8
3302ce movups xmm0,XMMWORD PTR [rip+0xfffffffffff648d3]        # 0x294ba8
3302d5 movups XMMWORD PTR [rdx],xmm0
3302d8 mov    BYTE PTR [rdx+0x10],al
3302db mov    rax,rdx
3302de ret
3302df int3
3302e0 mov    eax,DWORD PTR [rcx]
3302e2 cmp    DWORD PTR [rdx+0x8],eax
3302e5 sete   al
3302e8 ret
3302e9 int3
3302ea int3
3302eb int3
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3302ec..330638 unwind0
3302ec mov    eax,DWORD PTR [rip+0xfffffffffff64a1e]        # 0x294d10
3302f2 mov    DWORD PTR [rdx],eax
3302f4 movzx  eax,WORD PTR [rip+0xfffffffffff64a19]        # 0x294d14
3302fb mov    WORD PTR [rdx+0x4],ax
3302ff mov    rax,rdx
330302 ret
330303 int3
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330304..330638 unwind0
330304 mov    eax,DWORD PTR [rip+0xfffffffffff64a0e]        # 0x294d18
33030a mov    DWORD PTR [rdx],eax
33030c mov    al,BYTE PTR [rip+0xfffffffffff64a0a]        # 0x294d1c
330312 mov    BYTE PTR [rdx+0x4],al
330315 mov    rax,rdx
330318 ret
330319 int3
33031a int3
33031b int3
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33031c..330638 unwind0
33031c mov    eax,DWORD PTR [rip+0xfffffffffff64a05]        # 0x294d27
330322 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649f6]        # 0x294d20
330329 
33032a movsd  QWORD PTR [rdx],xmm0
33032e mov    DWORD PTR [rdx+0x7],eax
330331 mov    rax,rdx
330334 ret
330335 int3
330336 int3
330337 int3
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330338..330638 unwind0
330338 mov    al,BYTE PTR [rip+0xfffffffffff64a02]        # 0x294d40
33033e movups xmm0,XMMWORD PTR [rip+0xfffffffffff649eb]        # 0x294d30
330345 movups XMMWORD PTR [rdx],xmm0
330348 mov    BYTE PTR [rdx+0x10],al
33034b mov    rax,rdx
33034e ret
33034f int3
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330350..330638 unwind0
330350 mov    eax,DWORD PTR [rip+0xfffffffffff649f9]        # 0x294d4f
330356 movsd  xmm0,QWORD PTR [rip+0xfffffffffff649ea]        # 0x294d48
33035d 
33035e movsd  QWORD PTR [rdx],xmm0
330362 mov    DWORD PTR [rdx+0x7],eax
330365 mov    rax,rdx
330368 ret
330369 int3
33036a int3
33036b int3
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33036c..330638 unwind0
33036c movups xmm0,XMMWORD PTR [rip+0xfffffffffff649e5]        # 0x294d58
330373 mov    rax,rdx
330376 movups xmm1,XMMWORD PTR [rip+0xfffffffffff649e4]        # 0x294d61
33037d movups XMMWORD PTR [rdx],xmm0
330380 movups XMMWORD PTR [rdx+0x9],xmm1
330384 ret
330385 int3
330386 int3
330387 int3
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330388..330638 unwind0
330388 mov    eax,DWORD PTR [rip+0xfffffffffff649f2]        # 0x294d80
33038e movsd  xmm0,QWORD PTR [rip+0xfffffffffff649e2]        # 0x294d78
330395 
330396 movsd  QWORD PTR [rdx],xmm0
33039a mov    DWORD PTR [rdx+0x8],eax
33039d movzx  eax,WORD PTR [rip+0xfffffffffff649e0]        # 0x294d84
3303a4 mov    WORD PTR [rdx+0xc],ax
3303a8 mov    al,BYTE PTR [rip+0xfffffffffff649d8]        # 0x294d86
3303ae mov    BYTE PTR [rdx+0xe],al
3303b1 mov    rax,rdx
3303b4 ret
3303b5 int3
3303b6 int3
3303b7 int3
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3303b8..330638 unwind0
3303b8 mov    al,BYTE PTR [rip+0xfffffffffff649d2]        # 0x294d90
3303be movsd  xmm0,QWORD PTR [rip+0xfffffffffff649c2]        # 0x294d88
3303c5 
3303c6 movsd  QWORD PTR [rdx],xmm0
3303ca mov    BYTE PTR [rdx+0x8],al
3303cd mov    rax,rdx
3303d0 ret
3303d1 int3
3303d2 int3
3303d3 int3
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3303d4..330638 unwind0
3303d4 mov    eax,DWORD PTR [rip+0xfffffffffff649ba]        # 0x294d94
3303da mov    DWORD PTR [rdx],eax
3303dc mov    al,BYTE PTR [rip+0xfffffffffff649b6]        # 0x294d98
3303e2 mov    BYTE PTR [rdx+0x4],al
3303e5 mov    rax,rdx
3303e8 ret
3303e9 int3
3303ea int3
3303eb int3
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3303ec..330638 unwind0
3303ec mov    eax,DWORD PTR [rip+0xfffffffffff649be]        # 0x294db0
3303f2 movups xmm0,XMMWORD PTR [rip+0xfffffffffff649a7]        # 0x294da0
3303f9 movups XMMWORD PTR [rdx],xmm0
3303fc mov    DWORD PTR [rdx+0x10],eax
3303ff mov    rax,rdx
330402 ret
330403 int3
330404 mov    eax,DWORD PTR [rip+0xfffffffffff647e6]        # 0x294bf0
33040a movsd  xmm0,QWORD PTR [rip+0xfffffffffff647d6]        # 0x294be8
330411 
330412 movsd  QWORD PTR [rdx],xmm0
330416 mov    DWORD PTR [rdx+0x8],eax
330419 mov    rax,rdx
33041c ret
33041d int3
33041e int3
33041f int3
330420 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64799]        # 0x294bc0
330427 mov    rax,rdx
33042a movsd  xmm1,QWORD PTR [rip+0xfffffffffff6479b]        # 0x294bcd
330431 
330432 movups XMMWORD PTR [rdx],xmm0
330435 movsd  QWORD PTR [rdx+0xd],xmm1
33043a ret
33043b int3
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 33043c..330638 unwind0
33043c movups xmm0,XMMWORD PTR [rip+0xfffffffffff64975]        # 0x294db8
330443 mov    rax,rdx
330446 movsd  xmm1,QWORD PTR [rip+0xfffffffffff64977]        # 0x294dc5
33044d 
33044e movups XMMWORD PTR [rdx],xmm0
330451 movsd  QWORD PTR [rdx+0xd],xmm1
330456 ret
330457 int3
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330458..330638 unwind0
330458 mov    eax,DWORD PTR [rip+0xfffffffffff64979]        # 0x294dd7
33045e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6496a]        # 0x294dd0
330465 
330466 movsd  QWORD PTR [rdx],xmm0
33046a mov    DWORD PTR [rdx+0x7],eax
33046d mov    rax,rdx
330470 ret
330471 int3
330472 int3
330473 int3
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330474..330638 unwind0
330474 mov    eax,DWORD PTR [rip+0xfffffffffff6496e]        # 0x294de8
33047a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6495e]        # 0x294de0
330481 
330482 movsd  QWORD PTR [rdx],xmm0
330486 mov    DWORD PTR [rdx+0x8],eax
330489 mov    al,BYTE PTR [rip+0xfffffffffff6495d]        # 0x294dec
33048f mov    BYTE PTR [rdx+0xc],al
330492 mov    rax,rdx
330495 ret
330496 int3
330497 int3
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330498..330638 unwind0
330498 mov    eax,DWORD PTR [rip+0xfffffffffff6495a]        # 0x294df8
33049e movsd  xmm0,QWORD PTR [rip+0xfffffffffff6494a]        # 0x294df0
3304a5 
3304a6 movsd  QWORD PTR [rdx],xmm0
3304aa mov    DWORD PTR [rdx+0x8],eax
3304ad mov    al,BYTE PTR [rip+0xfffffffffff64949]        # 0x294dfc
3304b3 mov    BYTE PTR [rdx+0xc],al
3304b6 mov    rax,rdx
3304b9 ret
3304ba int3
3304bb int3
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3304bc..330638 unwind0
3304bc mov    eax,DWORD PTR [rip+0xfffffffffff6493e]        # 0x294e00
3304c2 mov    DWORD PTR [rdx],eax
3304c4 movzx  eax,WORD PTR [rip+0xfffffffffff64939]        # 0x294e04
3304cb mov    WORD PTR [rdx+0x4],ax
3304cf mov    rax,rdx
3304d2 ret
3304d3 int3
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3304d4..330638 unwind0
3304d4 mov    eax,DWORD PTR [rip+0xfffffffffff6492e]        # 0x294e08
3304da mov    DWORD PTR [rdx],eax
3304dc mov    al,BYTE PTR [rip+0xfffffffffff6492a]        # 0x294e0c
3304e2 mov    BYTE PTR [rdx+0x4],al
3304e5 mov    rax,rdx
3304e8 ret
3304e9 int3
3304ea int3
3304eb int3
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3304ec..330638 unwind0
3304ec mov    eax,DWORD PTR [rip+0xfffffffffff6471e]        # 0x294c10
3304f2 mov    DWORD PTR [rdx],eax
3304f4 movzx  eax,WORD PTR [rip+0xfffffffffff64719]        # 0x294c14
3304fb mov    WORD PTR [rdx+0x4],ax
3304ff mov    rax,rdx
330502 ret
330503 int3
330504 mov    eax,DWORD PTR [rip+0xfffffffffff646f6]        # 0x294c00
33050a movsd  xmm0,QWORD PTR [rip+0xfffffffffff646e6]        # 0x294bf8
330511 
330512 movsd  QWORD PTR [rdx],xmm0
330516 mov    DWORD PTR [rdx+0x8],eax
330519 movzx  eax,WORD PTR [rip+0xfffffffffff646e4]        # 0x294c04
330520 mov    WORD PTR [rdx+0xc],ax
330524 mov    rax,rdx
330527 ret
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330528..330638 unwind0
330528 mov    eax,DWORD PTR [rip+0xfffffffffff646ea]        # 0x294c18
33052e mov    DWORD PTR [rdx],eax
330530 movzx  eax,WORD PTR [rip+0xfffffffffff646e5]        # 0x294c1c
330537 mov    WORD PTR [rdx+0x4],ax
33053b mov    rax,rdx
33053e ret
33053f int3
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330540..330638 unwind0
330540 mov    eax,DWORD PTR [rip+0xfffffffffff646da]        # 0x294c20
330546 mov    DWORD PTR [rdx],eax
330548 mov    al,BYTE PTR [rip+0xfffffffffff646d6]        # 0x294c24
33054e mov    BYTE PTR [rdx+0x4],al
330551 mov    rax,rdx
330554 ret
330555 int3
330556 int3
330557 int3
330558 mov    eax,DWORD PTR [rip+0xfffffffffff64632]        # 0x294b90
33055e movups xmm0,XMMWORD PTR [rip+0xfffffffffff6461b]        # 0x294b80
330565 movups XMMWORD PTR [rdx],xmm0
330568 mov    DWORD PTR [rdx+0x10],eax
33056b mov    rax,rdx
33056e ret
33056f int3
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330570..330638 unwind0
330570 mov    eax,DWORD PTR [rip+0xfffffffffff646b2]        # 0x294c28
330576 mov    DWORD PTR [rdx],eax
330578 movzx  eax,WORD PTR [rip+0xfffffffffff646ad]        # 0x294c2c
33057f mov    WORD PTR [rdx+0x4],ax
330583 mov    rax,rdx
330586 ret
330587 int3
330588 movzx  eax,WORD PTR [rip+0xfffffffffff645e9]        # 0x294b78
33058f movups xmm0,XMMWORD PTR [rip+0xfffffffffff645d2]        # 0x294b68
330596 movups XMMWORD PTR [rdx],xmm0
330599 mov    WORD PTR [rdx+0x10],ax
33059d mov    rax,rdx
3305a0 ret
3305a1 int3
3305a2 int3
3305a3 int3
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3305a4..330638 unwind0
3305a4 mov    eax,DWORD PTR [rip+0xfffffffffff64686]        # 0x294c30
3305aa mov    DWORD PTR [rdx],eax
3305ac mov    al,BYTE PTR [rip+0xfffffffffff64682]        # 0x294c34
3305b2 mov    BYTE PTR [rdx+0x4],al
3305b5 mov    rax,rdx
3305b8 ret
3305b9 int3
3305ba int3
3305bb int3
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3305bc..330638 unwind0
3305bc mov    eax,DWORD PTR [rip+0xfffffffffff64676]        # 0x294c38
3305c2 mov    DWORD PTR [rdx],eax
3305c4 mov    al,BYTE PTR [rip+0xfffffffffff64672]        # 0x294c3c
3305ca mov    BYTE PTR [rdx+0x4],al
3305cd mov    rax,rdx
3305d0 ret
3305d1 int3
3305d2 int3
3305d3 int3
3305d4 mov    eax,DWORD PTR [rip+0xfffffffffff645c6]        # 0x294ba0
3305da movsd  xmm0,QWORD PTR [rip+0xfffffffffff645b6]        # 0x294b98
3305e1 
3305e2 movsd  QWORD PTR [rdx],xmm0
3305e6 mov    DWORD PTR [rdx+0x8],eax
3305e9 mov    al,BYTE PTR [rip+0xfffffffffff645b5]        # 0x294ba4
3305ef mov    BYTE PTR [rdx+0xc],al
3305f2 mov    rax,rdx
3305f5 ret
3305f6 int3
3305f7 int3
3305f8 movups xmm0,XMMWORD PTR [rip+0xfffffffffff64531]        # 0x294b30
3305ff mov    rax,rdx
330602 movups xmm1,XMMWORD PTR [rip+0xfffffffffff64533]        # 0x294b3c
330609 movups XMMWORD PTR [rdx],xmm0
33060c movups XMMWORD PTR [rdx+0xc],xmm1
330610 ret
330611 int3
330612 int3
330613 int3
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 330614..330638 unwind0
330614 mov    eax,DWORD PTR [rip+0xfffffffffff6462e]        # 0x294c48
33061a movsd  xmm0,QWORD PTR [rip+0xfffffffffff6461e]        # 0x294c40
330621 
330622 movsd  QWORD PTR [rdx],xmm0
330626 mov    DWORD PTR [rdx+0x8],eax
330629 movzx  eax,WORD PTR [rip+0xfffffffffff6461c]        # 0x294c4c
330630 mov    WORD PTR [rdx+0xc],ax
330634 mov    rax,rdx
330637 ret

; reached independent pdata/next-pdata extent 3ca884..3ca960 unwind0
3ca884 mov    al,BYTE PTR [rdx]
3ca886 xor    r8d,r8d
3ca889 cmp    BYTE PTR [rcx],al
3ca88b jne    0x3ca8a5
3ca88d lea    r9,[r8+rcx*1]
3ca891 cmp    BYTE PTR [r9],0x0
3ca895 je     0x3ca8b2
3ca897 mov    al,BYTE PTR [r8+rdx*1+0x1]
3ca89c inc    r8
3ca89f cmp    BYTE PTR [r9+0x1],al
3ca8a3 je     0x3ca88d
3ca8a5 movsx  eax,BYTE PTR [r8+rcx*1]
3ca8aa movsx  ecx,BYTE PTR [r8+rdx*1]
3ca8af sub    eax,ecx
3ca8b1 ret
3ca8b2 xor    eax,eax
3ca8b4 ret
3ca8b5 int3
3ca8b6 int3
3ca8b7 int3
3ca8b8 xor    r11d,r11d
3ca8bb mov    r9,rdx
3ca8be mov    r8d,r11d
3ca8c1 cmp    BYTE PTR [rcx],r11b
3ca8c4 je     0x3ca8fe
3ca8c6 mov    edx,r11d
3ca8c9 cmp    BYTE PTR [r9],r11b
3ca8cc je     0x3ca8e9
3ca8ce movsxd rax,r8d
3ca8d1 mov    r10b,BYTE PTR [rcx+rax*1]
3ca8d5 movsxd rax,edx
3ca8d8 cmp    BYTE PTR [r9+rax*1],r10b
3ca8dc je     0x3ca8e9
3ca8de inc    edx
3ca8e0 movsxd rax,edx
3ca8e3 cmp    BYTE PTR [r9+rax*1],r11b
3ca8e7 jne    0x3ca8d5
3ca8e9 movsxd rax,edx
3ca8ec cmp    BYTE PTR [r9+rax*1],r11b
3ca8f0 jne    0x3ca8fe
3ca8f2 inc    r8d
3ca8f5 movsxd rax,r8d
3ca8f8 cmp    BYTE PTR [rcx+rax*1],r11b
3ca8fc jne    0x3ca8c6
3ca8fe movsxd rax,r8d
3ca901 ret
3ca902 int3
3ca903 int3
3ca904 xor    eax,eax
3ca906 cmp    BYTE PTR [rcx],al
3ca908 je     0x3ca917
3ca90a mov    rdx,rax
3ca90d inc    rax
3ca910 cmp    BYTE PTR [rdx+rcx*1+0x1],0x0
3ca915 jne    0x3ca90a
3ca917 ret
3ca918 xor    al,al
3ca91a test   r8,r8
3ca91d je     0x3ca939
3ca91f mov    al,BYTE PTR [rcx]
3ca921 sub    al,BYTE PTR [rdx]
3ca923 jne    0x3ca939
3ca925 cmp    BYTE PTR [rcx],al
3ca927 je     0x3ca939
3ca929 cmp    BYTE PTR [rdx],al
3ca92b je     0x3ca939
3ca92d inc    rcx
3ca930 inc    rdx
3ca933 sub    r8,0x1
3ca937 jne    0x3ca91f
3ca939 movsx  eax,al
3ca93c ret
3ca93d int3
3ca93e int3
3ca93f int3
3ca940 xor    eax,eax
3ca942 test   r8,r8
3ca945 je     0x3ca95c
3ca947 mov    r9b,BYTE PTR [rax+rdx*1]
3ca94b test   r9b,r9b
3ca94e je     0x3ca95c
3ca950 mov    BYTE PTR [rax+rcx*1],r9b
3ca954 inc    rax
3ca957 cmp    rax,r8
3ca95a jb     0x3ca947
3ca95c mov    rax,rcx
3ca95f ret
