api_idx_000e_3:
    mov ax, 0xfff2                   ; 0x178e
    call ds_dispatch_f40b            ; 0x1791
    push word [bp + 0x8]             ; 0x1794
    push word [bp + 0x6]             ; 0x1797
    push word [bp + 0x4]             ; 0x179a
    call ds_dispatch_ca27            ; 0x179d
    add sp, byte 6                   ; 0x17a0
    push word [bp + 0x4]             ; 0x17a3
    call ds_dispatch_c58f            ; 0x17a6
    pop cx                           ; 0x17a9
    push word [bp + 0x4]             ; 0x17aa
    call api_idx_0012                ; 0x17ad
    pop cx                           ; 0x17b0
    mov si, ax                       ; 0x17b1
    lea di, word [bp - 0x000e]       ; 0x17b3
    mov cx, ds                       ; 0x17b6
    mov es, cx                       ; 0x17b8
    mov cx, 7                        ; 0x17ba
    rep movsw                        ; 0x17bd
    mov al, byte [bp - 0x0004]       ; 0x17bf
    push ax                          ; 0x17c2
    mov ax, 0x248                    ; 0x17c3
    imul word [bp + 0x4]             ; 0x17c6
    mov bx, ax                       ; 0x17c9
    pop ax                           ; 0x17cb
    mov byte [bx + 0x5e33], al       ; 0x17cc
    ret                              ; 0x17d0
loc_17d1:
    mov ax, 0                        ; 0x17d1
    call ds_dispatch_f40b            ; 0x17d4
    mov word [bss_90e0], 0           ; 0x17d7
    cmp word [bss_830a], byte 0x0d   ; 0x17dd
    jne short @..local.l39           ; 0x17e2
    push word [bss_0e2c]             ; 0x17e4
    push word [bss_0e2a]             ; 0x17e8
    call ds_dispatch_b8af            ; 0x17ec
    add sp, byte 4                   ; 0x17ef
    mov ax, 0                        ; 0x17f2
    push ax                          ; 0x17f5
    mov ax, 0xa4                     ; 0x17f6
    push ax                          ; 0x17f9
    mov ax, 0x12e                    ; 0x17fa
    push ax                          ; 0x17fd
    call ds_dispatch_f0e4            ; 0x17fe
    add sp, byte 6                   ; 0x1801
    call api_idx_000c                ; 0x1804
    mov ax, 0                        ; 0x1807
    push ax                          ; 0x180a
    mov ax, 0xa4                     ; 0x180b
    push ax                          ; 0x180e
    mov ax, 0x12e                    ; 0x180f
    push ax                          ; 0x1812
    call ds_dispatch_f0f1            ; 0x1813
    add sp, byte 6                   ; 0x1816
    mov ax, 0                        ; 0x1819
    mov dx, 0                        ; 0x181c
    push dx                          ; 0x181f
    push ax                          ; 0x1820
    call ds_dispatch_b8af            ; 0x1821
    add sp, byte 4                   ; 0x1824
@..local.l39:
    mov ax, 0                        ; 0x1827
    ret                              ; 0x182a
loc_182b:
    mov ax, 0                        ; 0x182b
    call ds_dispatch_f40b            ; 0x182e
    mov ax, word [bp + 0x6]          ; 0x1831
    mov bx, word [bp + 0x4]          ; 0x1834
    sub word [bx + 0x6], ax          ; 0x1837
    mov bx, word [bp + 0x4]          ; 0x183a
    cmp word [bx + 0x6], byte 0      ; 0x183d
    jge short @..local.l40           ; 0x1841
    mov word [bx + 0x6], 0           ; 0x1843
@..local.l40:
    ret                              ; 0x1848
loc_1849:
    mov ax, 0                        ; 0x1849
    call ds_dispatch_f40b            ; 0x184c
    les bx, word [dseg_0002]         ; 0x184f
    mov ax, word [es:bx]             ; 0x1853
    mov dx, word [es:bx + 0x2]       ; 0x1856
    mov word [bss_9090], dx          ; 0x185a
    mov word [bss_908e], ax          ; 0x185e
    mov ax, word [bss_908e]          ; 0x1861
    mov dx, word [bss_9090]          ; 0x1864
    sub ax, word [bss_908a]          ; 0x1868
    sbb dx, word [bss_908c]          ; 0x186c
    mov word [bss_9094], dx          ; 0x1870
    mov word [bss_9092], ax          ; 0x1874
    mov ax, word [bss_90e2]          ; 0x1877
    cwd                              ; 0x187a
    mov cx, ax                       ; 0x187b
    mov bx, dx                       ; 0x187d
    mov ax, word [bss_9092]          ; 0x187f
    mov dx, word [bss_9094]          ; 0x1882
    cmp bx, dx                       ; 0x1886
    jg short @..local.l41            ; 0x1888
    jne short @..local.l42           ; 0x188a
    cmp cx, ax                       ; 0x188c
    jbe short @..local.l42           ; 0x188e
@..local.l41:
    jmp short @..local.l43           ; 0x1890
@..local.l42:
    mov ax, word [bss_908e]          ; 0x1892
    mov dx, word [bss_9090]          ; 0x1895
    mov word [bss_908c], dx          ; 0x1899
    mov word [bss_908a], ax          ; 0x189d
    mov ax, 1                        ; 0x18a0
    ret                              ; 0x18a3
@..local.l43:
    mov ax, 0                        ; 0x18a4
    ret                              ; 0x18a7
