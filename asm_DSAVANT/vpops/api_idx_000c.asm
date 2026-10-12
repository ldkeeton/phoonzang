api_idx_000c:
    mov ax, 0xfff4                   ; 0x178a
    call ds_aztec_csav               ; 0x178d
    mov word [bp - 0x000c], 1        ; 0x1790
    mov word [bp - 0x0006], 0        ; 0x1795
    jmp short @..api_idx_000c.l3     ; 0x179a
@..api_idx_000c.l1:
    mov ax, 0x2c                     ; 0x179c
    imul word [bp - 0x0006]          ; 0x179f
    mov si, ax                       ; 0x17a2
    mov ax, word [bp + 0x6]          ; 0x17a4
    shl ax, 1                        ; 0x17a7
    mov bx, ax                       ; 0x17a9
    mov bx, word [bx - 0x7b7e]       ; 0x17ab
    cmp byte [bx + si + 0x2a], 0xff  ; 0x17af
    je short @..api_idx_000c.l2      ; 0x17b3
    mov word [bp - 0x000c], 0        ; 0x17b5
@..api_idx_000c.l2:
    inc word [bp - 0x0006]           ; 0x17ba
@..api_idx_000c.l3:
    mov ax, word [bp + 0x6]          ; 0x17bd
    shl ax, 1                        ; 0x17c0
    mov bx, ax                       ; 0x17c2
    mov bx, word [bx - 0x7b7e]       ; 0x17c4
    mov al, byte [bx + 0x1a1]        ; 0x17c8
    sub ah, ah                       ; 0x17cc
    cmp ax, word [bp - 0x0006]       ; 0x17ce
    jg short @..api_idx_000c.l1      ; 0x17d1
    cmp word [bp - 0x000c], byte 1   ; 0x17d3
    jne short @..api_idx_000c.l9     ; 0x17d7
    mov word [bp - 0x000a], 0        ; 0x17d9
@..api_idx_000c.l4:
    mov word [bp - 0x0006], 0        ; 0x17de
    jmp short @..api_idx_000c.l8     ; 0x17e3
@..api_idx_000c.l5:
    mov ax, 9                        ; 0x17e5
    imul word [bp + 0x6]             ; 0x17e8
    add ax, word [bp - 0x0006]       ; 0x17eb
    mov bx, ax                       ; 0x17ee
    cmp byte [bx - 0x6f31], 0        ; 0x17f0
    je short @..api_idx_000c.l6      ; 0x17f5
    mov ax, word [bp - 0x000a]       ; 0x17f7
    cmp ax, word [bp + 0x4]          ; 0x17fa
    jne short @..api_idx_000c.l7     ; 0x17fd
@..api_idx_000c.l6:
    mov byte [bx - 0x6f31], 1        ; 0x17ff
    mov ax, word [bp - 0x0006]       ; 0x1804
    ret                              ; 0x1807
@..api_idx_000c.l7:
    inc word [bp - 0x000a]           ; 0x1808
    inc word [bp - 0x0006]           ; 0x180b
@..api_idx_000c.l8:
    mov ax, word [bp + 0x6]          ; 0x180e
    shl ax, 1                        ; 0x1811
    mov bx, ax                       ; 0x1813
    mov bx, word [bx - 0x7b7e]       ; 0x1815
    mov al, byte [bx + 0x1a1]        ; 0x1819
    sub ah, ah                       ; 0x181d
    cmp ax, word [bp - 0x0006]       ; 0x181f
    jg short @..api_idx_000c.l5      ; 0x1822
    jmp short @..api_idx_000c.l4     ; 0x1824
@..api_idx_000c.l9:
    mov word [bp - 0x000a], 0        ; 0x1826
    mov word [bp - 0x000c], 0        ; 0x182b
@..api_idx_000c.l10:
    cmp word [bp - 0x000c], byte 0x0a ; 0x1830
    jl short @..api_idx_000c.l11     ; 0x1834
    jmp near @..api_idx_000c.l17     ; 0x1836
@..api_idx_000c.l11:
    inc word [bp - 0x000c]           ; 0x1839
    mov word [bp - 0x0002], 0        ; 0x183c
@..api_idx_000c.l12:
    mov word [bp - 0x0004], 0        ; 0x1841
@..api_idx_000c.l13:
    mov ax, 6                        ; 0x1846
    imul word [bp - 0x0002]          ; 0x1849
    push ax                          ; 0x184c
    mov ax, 6                        ; 0x184d
    imul word [bp + 0x4]             ; 0x1850
    mov cx, ax                       ; 0x1853
    mov dx, word [bp - 0x0004]       ; 0x1855
    shl dx, 1                        ; 0x1858
    add ax, dx                       ; 0x185a
    mov bx, ax                       ; 0x185c
    mov cx, word [bx + 0x592]        ; 0x185e
    shl cx, 1                        ; 0x1862
    pop ax                           ; 0x1864
    add ax, cx                       ; 0x1865
    mov bx, ax                       ; 0x1867
    mov ax, word [bx - 0x7bc6]       ; 0x1869
    mov cx, 0xa                      ; 0x186d
    cwd                              ; 0x1870
    idiv cx                          ; 0x1871
    mov word [bp - 0x0008], ax       ; 0x1873
    mov word [bp - 0x0006], dx       ; 0x1876
    cmp ax, word [bp + 0x6]          ; 0x1879
    jne short @..api_idx_000c.l16    ; 0x187c
    mov ax, 9                        ; 0x187e
    imul word [bp + 0x6]             ; 0x1881
    mov dx, word [bp - 0x0006]       ; 0x1884
    add ax, dx                       ; 0x1887
    mov bx, ax                       ; 0x1889
    cmp byte [bx - 0x6f31], 0        ; 0x188b
    je short @..api_idx_000c.l14     ; 0x1890
    mov ax, word [bp - 0x000a]       ; 0x1892
    cmp ax, word [bp + 0x4]          ; 0x1895
    jne short @..api_idx_000c.l15    ; 0x1898
@..api_idx_000c.l14:
    mov byte [bx - 0x6f31], 1        ; 0x189a
    mov ax, dx                       ; 0x189f
    ret                              ; 0x18a1
@..api_idx_000c.l15:
    inc word [bp - 0x000a]           ; 0x18a2
@..api_idx_000c.l16:
    inc word [bp - 0x0004]           ; 0x18a5
    mov ax, word [bp - 0x0004]       ; 0x18a8
    cmp ax, strict word 3            ; 0x18ab
    jl short @..api_idx_000c.l13     ; 0x18ae
    inc word [bp - 0x0002]           ; 0x18b0
    mov ax, word [bp - 0x0002]       ; 0x18b3
    cmp ax, strict word 3            ; 0x18b6
    jl short @..api_idx_000c.l12     ; 0x18b9
    jmp near @..api_idx_000c.l10     ; 0x18bb
@..api_idx_000c.l17:
    mov ax, 0                        ; 0x18be
    ret                              ; 0x18c1
