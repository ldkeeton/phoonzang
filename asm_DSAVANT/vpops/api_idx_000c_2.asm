api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x18c2
    call aztec_csav                  ; 0x18c5
    mov word [bp - 0x0002], 0        ; 0x18c8
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x18cd
    imul word [bp - 0x0002]          ; 0x18d0
    mov cx, word [bp - 0x0002]       ; 0x18d3
    shl cx, 1                        ; 0x18d6
    mov bx, cx                       ; 0x18d8
    mov cx, word [bx - 0x7cf2]       ; 0x18da
    shl cx, 1                        ; 0x18de
    add ax, cx                       ; 0x18e0
    mov bx, ax                       ; 0x18e2
    mov al, byte [bx + 0x1d4]        ; 0x18e4
    mov byte [bp - 0x000c], al       ; 0x18e8
    mov byte [bp - 0x000b], 0        ; 0x18eb
    mov ax, 0                        ; 0x18ef
    push ax                          ; 0x18f2
    push ax                          ; 0x18f3
    lea ax, word [bp - 0x000c]       ; 0x18f4
    push ax                          ; 0x18f7
    mov ax, 0                        ; 0x18f8
    push ax                          ; 0x18fb
    mov ax, 0xc7                     ; 0x18fc
    push ax                          ; 0x18ff
    mov ax, 0                        ; 0x1900
    push ax                          ; 0x1903
    mov ax, 0x13f                    ; 0x1904
    push ax                          ; 0x1907
    mov ax, 0                        ; 0x1908
    push ax                          ; 0x190b
    mov ax, 0xc                      ; 0x190c
    imul word [bp + 0x8]             ; 0x190f
    mov cx, word [bp - 0x0002]       ; 0x1912
    shl cx, 1                        ; 0x1915
    add ax, cx                       ; 0x1917
    mov bx, ax                       ; 0x1919
    mov ax, word [bx + 0x1bc]        ; 0x191b
    add ax, word [bp + 0x6]          ; 0x191f
    push ax                          ; 0x1922
    mov ax, word [bx + 0x1a4]        ; 0x1923
    add ax, word [bp + 0x4]          ; 0x1927
    push ax                          ; 0x192a
    mov ax, 2                        ; 0x192b
    push ax                          ; 0x192e
    call ds_loc_4218                 ; 0x192f
    add sp, byte 0x16                ; 0x1932
    inc word [bp - 0x0002]           ; 0x1935
    mov ax, word [bp - 0x0002]       ; 0x1938
    cmp ax, strict word 6            ; 0x193b
    jl short @..api_idx_000c_2.l1    ; 0x193e
    ret                              ; 0x1940
