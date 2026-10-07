math_loc_299f:
    mov ax, 0                        ; 0x299f
    call ds_dispatch_f40b            ; 0x29a2
    jmp short @..math_loc_299f.l3    ; 0x29a5
@..math_loc_299f.l1:
    push word [bp + 0x8]             ; 0x29a7
    push word [bp + 0x6]             ; 0x29aa
    push word [bp + 0x4]             ; 0x29ad
    call api_idx_0002                ; 0x29b0
    add sp, byte 6                   ; 0x29b3
    test ax, ax                      ; 0x29b6
    jne short @..math_loc_299f.l2    ; 0x29b8
    ret                              ; 0x29ba
