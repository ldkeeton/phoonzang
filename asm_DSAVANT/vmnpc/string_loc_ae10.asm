; auto-generated
string_loc_ae10:
    pop word [dseg_9132]             ; 0xae10
    pop cx                           ; 0xae14
    mov word [dseg_912e], sp         ; 0xae15
    mov word [dseg_9130], bp         ; 0xae19
    mov word [dseg_912a], si         ; 0xae1d
    mov word [dseg_912c], di         ; 0xae21
    cld                              ; 0xae25
    mov di, bss_9134                 ; 0xae26
    mov cx, 0xb056                   ; 0xae29
    sub cx, di                       ; 0xae2c
    shr cx, 1                        ; 0xae2e
    je short @..string_loc_ae10.l1   ; 0xae30
    sub ax, ax                       ; 0xae32
    rep stosw                        ; 0xae34
@..string_loc_ae10.l1:
    call loc_21bf                    ; 0xae36
    mov bp, word [dseg_9130]         ; 0xae39
    mov sp, word [dseg_912e]         ; 0xae3d
    mov si, word [dseg_912a]         ; 0xae41
    mov di, word [dseg_912c]         ; 0xae45
    push cx                          ; 0xae49
    jmp [dseg_9132]                  ; 0xae4a
