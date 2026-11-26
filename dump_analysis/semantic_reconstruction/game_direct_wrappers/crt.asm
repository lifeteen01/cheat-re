; crt independent pdata/next-pdata extent 3ca918..3ca960 unwind0
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

; crt independent pdata/next-pdata extent 3ca4f8..3ca500 unwind0
3ca4f8 jmp    0x3ca86c
3ca4fd int3
3ca4fe int3
3ca4ff int3

; crt independent pdata/next-pdata extent 3ca86c..3ca960 unwind0
3ca86c jmp    0x3ca878
3ca86e movsx  eax,BYTE PTR [rcx]
3ca871 cmp    eax,edx
3ca873 je     0x3ca880
3ca875 inc    rcx
3ca878 cmp    BYTE PTR [rcx],0x0
3ca87b jne    0x3ca86e
3ca87d xor    eax,eax
3ca87f ret
3ca880 mov    rax,rcx
3ca883 ret
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
