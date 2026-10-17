; auto-generated
loc_PGTM:
    push bx                          ; 0x11da
    mov bl, 1                        ; 0x11db
@..loc_PGTM.l1:
    mov al, bl                       ; 0x11dd
    or al, 0xb0                      ; 0x11df
    call io_loc_QUNR                 ; 0x11e1
    mov al, 7                        ; 0x11e4
    call io_loc_QUNR                 ; 0x11e6
    mov al, byte [cs:cseg_0aa8 - IMAGE_BASE] ; 0x11e9
    shr al, 1                        ; 0x11ed
    call io_loc_QUNR                 ; 0x11ef
    inc bl                           ; 0x11f2
    cmp bl, 0x10                     ; 0x11f4
    jb short @..loc_PGTM.l1          ; 0x11f7
    pop bx                           ; 0x11f9
    ret                              ; 0x11fa
