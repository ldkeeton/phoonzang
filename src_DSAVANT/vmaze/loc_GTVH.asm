; auto-generated
loc_GTVH:
    mov ax, 0                        ; 0x8540
    call aztec_csav                  ; 0x8543
    push word [bp + 4]               ; 0x8546
    mov ax, word [party_region]      ; 0x8549
    shl ax, 1                        ; 0x854c
    mov si, ax                       ; 0x854e
    mov bx, word [maze_tables]       ; 0x8550
    push word [bx + si + 0x1e0]      ; 0x8554
    push word [bx + si]              ; 0x8558
    call api_idx_0004_KGNP           ; 0x855a
    add sp, byte 6                   ; 0x855d
    push word [bp + 6]               ; 0x8560
    call mark_region_bits            ; 0x8563
    pop cx                           ; 0x8566
    ret                              ; 0x8567
