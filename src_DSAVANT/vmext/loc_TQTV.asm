; auto-generated
loc_TQTV:
    pop word [dseg_917e]             ; 0x521b
    pop cx                           ; 0x521f
    mov word [dseg_917a], sp         ; 0x5220
    mov word [dseg_917c], bp         ; 0x5224
    mov word [dseg_9176], si         ; 0x5228
    mov word [dseg_9178], di         ; 0x522c
    cld                              ; 0x5230
    mov di, bss_9180                 ; 0x5231
    mov cx, 0x9b1c                   ; 0x5234
    sub cx, di                       ; 0x5237
    shr cx, 1                        ; 0x5239
    je short @..loc_TQTV.l1          ; 0x523b
    sub ax, ax                       ; 0x523d
    rep stosw                        ; 0x523f
@..loc_TQTV.l1:
    call api_idx_0002_NURV           ; 0x5241
    mov bp, word [dseg_917c]         ; 0x5244
    mov sp, word [dseg_917a]         ; 0x5248
    mov si, word [dseg_9176]         ; 0x524c
    mov di, word [dseg_9178]         ; 0x5250
    push cx                          ; 0x5254
    jmp [dseg_917e]                  ; 0x5255
