; auto-generated
io_loc_LPON:
    push bx                          ; 0x0222
    mov bl, 1                        ; 0x0223
@..io_loc_LPON.l1:
    mov al, bl                       ; 0x0225
    or al, 0xb0                      ; 0x0227
    call io_loc_QUNR                 ; 0x0229
    mov al, 0x7b                     ; 0x022c
    call io_loc_QUNR                 ; 0x022e
    mov al, 0                        ; 0x0231
    call io_loc_QUNR                 ; 0x0233
    inc bl                           ; 0x0236
    cmp bl, 0xa                      ; 0x0238
    jb short @..io_loc_LPON.l1       ; 0x023b
    pop bx                           ; 0x023d
    ret                              ; 0x023e
