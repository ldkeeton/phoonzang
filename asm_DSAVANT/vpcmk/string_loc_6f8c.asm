string_loc_6f8c:
    pop word [data_9522]             ; 0x6f8c
    pop cx                           ; 0x6f90
    mov word [data_951e], sp         ; 0x6f91
    mov word [data_9520], bp         ; 0x6f95
    mov word [data_951a], si         ; 0x6f99
    mov word [data_951c], di         ; 0x6f9d
    cld                              ; 0x6fa1
    mov di, data_9524                ; 0x6fa2
    mov cx, 0x978c                   ; 0x6fa5
    sub cx, di                       ; 0x6fa8
    shr cx, 1                        ; 0x6faa
    je short @..string_loc_6f8c.l1   ; 0x6fac
    sub ax, ax                       ; 0x6fae
    rep stosw                        ; 0x6fb0
@..string_loc_6f8c.l1:
    call loc_000e                    ; 0x6fb2
    mov bp, word [data_9520]         ; 0x6fb5
    mov sp, word [data_951e]         ; 0x6fb9
    mov si, word [data_951a]         ; 0x6fbd
    mov di, word [data_951c]         ; 0x6fc1
    push cx                          ; 0x6fc5
    jmp [data_9522]                  ; 0x6fc6
