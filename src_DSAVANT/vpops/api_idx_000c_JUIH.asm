; auto-generated
api_idx_000c_JUIH:
    mov ax, 0xfff4                   ; 0x178a
    call aztec_csav                  ; 0x178d
    mov word [bp - 0xc], 1           ; 0x1790
    mov word [bp - 6], 0             ; 0x1795
    jmp short .forward2              ; 0x179a
.back1:
    mov ax, 0x2c                     ; 0x179c
    imul word [bp - 6]               ; 0x179f
    mov si, ax                       ; 0x17a2
    mov ax, word [bp + 6]            ; 0x17a4
    shl ax, 1                        ; 0x17a7
    mov bx, ax                       ; 0x17a9
    mov bx, word [bx + party_char]   ; 0x17ab
    cmp byte [bx + si + member_rec.item_cell], 0xff ; 0x17af
    je short .forward1               ; 0x17b3
    mov word [bp - 0xc], 0           ; 0x17b5
.forward1:
    inc word [bp - 6]                ; 0x17ba
.forward2:
    mov ax, word [bp + 6]            ; 0x17bd
    shl ax, 1                        ; 0x17c0
    mov bx, ax                       ; 0x17c2
    mov bx, word [bx + party_char]   ; 0x17c4
    mov al, byte [bx + member_rec.item_count] ; 0x17c8
    sub ah, ah                       ; 0x17cc
    cmp ax, word [bp - 6]            ; 0x17ce
    jg short .back1                  ; 0x17d1
    cmp word [bp - 0xc], byte 1      ; 0x17d3
    jne short .forward6              ; 0x17d7
    mov word [bp - 0xa], 0           ; 0x17d9
.back2:
    mov word [bp - 6], 0             ; 0x17de
    jmp short .forward5              ; 0x17e3
.back3:
    mov ax, 9                        ; 0x17e5
    imul word [bp + 6]               ; 0x17e8
    add ax, word [bp - 6]            ; 0x17eb
    mov bx, ax                       ; 0x17ee
    cmp byte [bx + save_di + 0x1], 0 ; 0x17f0
    je short .forward3               ; 0x17f5
    mov ax, word [bp - 0xa]          ; 0x17f7
    cmp ax, word [bp + 4]            ; 0x17fa
    jne short .forward4              ; 0x17fd
.forward3:
    mov byte [bx + save_di + 0x1], 1 ; 0x17ff
    mov ax, word [bp - 6]            ; 0x1804
    ret                              ; 0x1807
.forward4:
    inc word [bp - 0xa]              ; 0x1808
    inc word [bp - 6]                ; 0x180b
.forward5:
    mov ax, word [bp + 6]            ; 0x180e
    shl ax, 1                        ; 0x1811
    mov bx, ax                       ; 0x1813
    mov bx, word [bx + party_char]   ; 0x1815
    mov al, byte [bx + member_rec.item_count] ; 0x1819
    sub ah, ah                       ; 0x181d
    cmp ax, word [bp - 6]            ; 0x181f
    jg short .back3                  ; 0x1822
    jmp short .back2                 ; 0x1824
.forward6:
    mov word [bp - 0xa], 0           ; 0x1826
    mov word [bp - 0xc], 0           ; 0x182b
.back4:
    cmp word [bp - 0xc], byte 0xa    ; 0x1830
    jl short .forward7               ; 0x1834
    jmp near .forward11              ; 0x1836
.forward7:
    inc word [bp - 0xc]              ; 0x1839
    mov word [bp - 2], 0             ; 0x183c
.back5:
    mov word [bp - 4], 0             ; 0x1841
.back6:
    mov ax, 6                        ; 0x1846
    imul word [bp - 2]               ; 0x1849
    push ax                          ; 0x184c
    mov ax, 6                        ; 0x184d
    imul word [bp + 4]               ; 0x1850
    mov cx, ax                       ; 0x1853
    mov dx, word [bp - 4]            ; 0x1855
    shl dx, 1                        ; 0x1858
    add ax, dx                       ; 0x185a
    mov bx, ax                       ; 0x185c
    mov cx, word [bx + 0x592]        ; 0x185e
    shl cx, 1                        ; 0x1862
    pop ax                           ; 0x1864
    add ax, cx                       ; 0x1865
    mov bx, ax                       ; 0x1867
    mov ax, word [bx + cell_slot_ref] ; 0x1869
    mov cx, 0xa                      ; 0x186d
    cwd                              ; 0x1870
    idiv cx                          ; 0x1871
    mov word [bp - 8], ax            ; 0x1873
    mov word [bp - 6], dx            ; 0x1876
    cmp ax, word [bp + 6]            ; 0x1879
    jne short .forward10             ; 0x187c
    mov ax, 9                        ; 0x187e
    imul word [bp + 6]               ; 0x1881
    mov dx, word [bp - 6]            ; 0x1884
    add ax, dx                       ; 0x1887
    mov bx, ax                       ; 0x1889
    cmp byte [bx + save_di + 0x1], 0 ; 0x188b
    je short .forward8               ; 0x1890
    mov ax, word [bp - 0xa]          ; 0x1892
    cmp ax, word [bp + 4]            ; 0x1895
    jne short .forward9              ; 0x1898
.forward8:
    mov byte [bx + save_di + 0x1], 1 ; 0x189a
    mov ax, dx                       ; 0x189f
    ret                              ; 0x18a1
.forward9:
    inc word [bp - 0xa]              ; 0x18a2
.forward10:
    inc word [bp - 4]                ; 0x18a5
    mov ax, word [bp - 4]            ; 0x18a8
    cmp ax, strict word 3            ; 0x18ab
    jl short .back6                  ; 0x18ae
    inc word [bp - 2]                ; 0x18b0
    mov ax, word [bp - 2]            ; 0x18b3
    cmp ax, strict word 3            ; 0x18b6
    jl short .back5                  ; 0x18b9
    jmp near .back4                  ; 0x18bb
.forward11:
    mov ax, 0                        ; 0x18be
    ret                              ; 0x18c1
