string_loc_a4ca:
    pop word [dseg_90ba]             ; 0xa4ca
    pop cx                           ; 0xa4ce
    mov word [dseg_90b6], sp         ; 0xa4cf
    mov word [dseg_90b8], bp         ; 0xa4d3
    mov word [dseg_90b2], si         ; 0xa4d7
    mov word [dseg_90b4], di         ; 0xa4db
    cld                              ; 0xa4df
    mov di, bss_90bc                 ; 0xa4e0
    mov cx, 0x91dc                   ; 0xa4e3
    sub cx, di                       ; 0xa4e6
    shr cx, 1                        ; 0xa4e8
    je short @..string_loc_a4ca.l1   ; 0xa4ea
    sub ax, ax                       ; 0xa4ec
    rep stosw                        ; 0xa4ee
@..string_loc_a4ca.l1:
    call loc_17d1                    ; 0xa4f0
    mov bp, word [dseg_90b8]         ; 0xa4f3
    mov sp, word [dseg_90b6]         ; 0xa4f7
    mov si, word [dseg_90b2]         ; 0xa4fb
    mov di, word [dseg_90b4]         ; 0xa4ff
    push cx                          ; 0xa503
    jmp [dseg_90ba]                  ; 0xa504
