math_loc_2190:
    mov ax, 0                        ; 0x2190
    call ds_dispatch_f40b            ; 0x2193
    mov ax, 1                        ; 0x2196
    push ax                          ; 0x2199
    push ax                          ; 0x219a
    push word [bp + 0x4]             ; 0x219b
    call api_idx_000c                ; 0x219e
    add sp, byte 6                   ; 0x21a1
    mov ax, 0x3e8                    ; 0x21a4
    push ax                          ; 0x21a7
    call ds_dispatch_e489            ; 0x21a8
    pop cx                           ; 0x21ab
    ret                              ; 0x21ac
