string_loc_9330:
    pop word [data_91c4]             ; 0x9330
    pop cx                           ; 0x9334
    mov word [data_91c0], sp         ; 0x9335
    mov word [data_91c2], bp         ; 0x9339
    mov word [data_91bc], si         ; 0x933d
    mov word [data_91be], di         ; 0x9341
    cld                              ; 0x9345
    mov di, 0x91c6                   ; 0x9346
    mov cx, 0xa602                   ; 0x9349
    sub cx, di                       ; 0x934c
    shr cx, 1                        ; 0x934e
    je short @..string_loc_9330.l1   ; 0x9350
    sub ax, ax                       ; 0x9352
    rep stosw                        ; 0x9354
@..string_loc_9330.l1:
    call loc_000e                    ; 0x9356
    mov bp, word [data_91c2]         ; 0x9359
    mov sp, word [data_91c0]         ; 0x935d
    mov si, word [data_91bc]         ; 0x9361
    mov di, word [data_91be]         ; 0x9365
    push cx                          ; 0x9369
    jmp [data_91c4]                  ; 0x936a
