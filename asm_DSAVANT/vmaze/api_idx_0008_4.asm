api_idx_0008_4:
    mov ax, 0xfff8                   ; 0x33c0
    call ds_dispatch_f40b            ; 0x33c3
    cmp word [bp + 0x10], byte 0     ; 0x33c6
    je short @..api_idx_0008_4.l2    ; 0x33ca
    mov ax, 0                        ; 0x33cc
    push ax                          ; 0x33cf
    push word [bp + 0x10]            ; 0x33d0
    lea ax, word [bp + 0xe]          ; 0x33d3
    push ax                          ; 0x33d6
    lea ax, word [bp + 0xc]          ; 0x33d7
    push ax                          ; 0x33da
    lea ax, word [bp + 0xa]          ; 0x33db
    push ax                          ; 0x33de
    lea ax, word [bp + 0x8]          ; 0x33df
    push ax                          ; 0x33e2
    lea ax, word [bp + 0x6]          ; 0x33e3
    push ax                          ; 0x33e6
    call loc_2ed4                    ; 0x33e7
    add sp, byte 0x0e                ; 0x33ea
    test ax, ax                      ; 0x33ed
    je short @..api_idx_0008_4.l2    ; 0x33ef
    mov ax, word [data_91d4]         ; 0x33f1
    jmp short @..api_idx_0008_4.l1   ; 0x33f4
    mov ax, 2                        ; 0x33f6
    ret                              ; 0x33f9
