math_loc_2472:
    mov ax, 0                        ; 0x2472
    db 0xe8, 0x93, 0xcf ; call 0xf40b
    cmp word [data_93ee], byte 0     ; 0x2478
    je short @..math_loc_2472.l1     ; 0x247d
    call loc_23d0                    ; 0x247f
@..math_loc_2472.l1:
    push word [bp + 0x4]             ; 0x2482
    call loc_9587                    ; 0x2485
    pop cx                           ; 0x2488
    call api_idx_000e_2              ; 0x2489
    call api_idx_0004_2              ; 0x248c
    cmp word [bp + 0x6], byte 0      ; 0x248f
    je short @..math_loc_2472.l2     ; 0x2493
    mov ax, 1                        ; 0x2495
    push ax                          ; 0x2498
    mov ax, 0x48                     ; 0x2499
    push ax                          ; 0x249c
    call api_idx_0004_5              ; 0x249d
    add sp, byte 4                   ; 0x24a0
@..math_loc_2472.l2:
    cmp word [data_93ee], byte 0     ; 0x24a3
    je short @..math_loc_2472.l3     ; 0x24a8
    call loc_243b                    ; 0x24aa
@..math_loc_2472.l3:
    ret                              ; 0x24ad
