string_loc_3710:
    pop word [dseg_90b4]             ; 0x3710
    pop cx                           ; 0x3714
    mov word [dseg_90b0], sp         ; 0x3715
    mov word [dseg_90b2], bp         ; 0x3719
    mov word [dseg_90ac], si         ; 0x371d
    mov word [dseg_90ae], di         ; 0x3721
    cld                              ; 0x3725
    mov di, bss_90b6                 ; 0x3726
    mov cx, 0x90d0                   ; 0x3729
    sub cx, di                       ; 0x372c
    shr cx, 1                        ; 0x372e
    je short @..string_loc_3710.l1   ; 0x3730
    sub ax, ax                       ; 0x3732
    rep stosw                        ; 0x3734
@..string_loc_3710.l1:
    call loc_000e                    ; 0x3736
    mov bp, word [dseg_90b2]         ; 0x3739
    mov sp, word [dseg_90b0]         ; 0x373d
    mov si, word [dseg_90ac]         ; 0x3741
    mov di, word [dseg_90ae]         ; 0x3745
    push cx                          ; 0x3749
    jmp [dseg_90b4]                  ; 0x374a
