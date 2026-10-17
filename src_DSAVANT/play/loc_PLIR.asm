; auto-generated
loc_PLIR:
    ret                              ; 0x1184
loc_ONLU:
    push bx                          ; 0x1185
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x1186
    xor bh, bh                       ; 0x118b
    shl bx, 1                        ; 0x118d
    call [cs:bx + jumptable_1196 - IMAGE_BASE] ; 0x118f
    pop bx                           ; 0x1194
    ret                              ; 0x1195
jumptable_1196:
    dw loc_PLIR - IMAGE_BASE                   ; 0x1196
    dw loc_NQLH - IMAGE_BASE                   ; 0x1198
    dw loc_PLIR - IMAGE_BASE                   ; 0x119a
    dw loc_PLIR - IMAGE_BASE                   ; 0x119c
    dw loc_NQLH - IMAGE_BASE                   ; 0x119e
    dw loc_PLIR - IMAGE_BASE                   ; 0x11a0
loc_NLST:
    push bx                          ; 0x11a2
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x11a3
    xor bh, bh                       ; 0x11a8
    shl bx, 1                        ; 0x11aa
    call [cs:bx + jumptable_11b3 - IMAGE_BASE] ; 0x11ac
    pop bx                           ; 0x11b1
    ret                              ; 0x11b2
jumptable_11b3:
    dw loc_PLIR - IMAGE_BASE                   ; 0x11b3
    dw io_loc_VHII - IMAGE_BASE                ; 0x11b5
    dw string_loc_OSJN - IMAGE_BASE            ; 0x11b7
    dw string_loc_OSJN - IMAGE_BASE            ; 0x11b9
    dw io_loc_VHII - IMAGE_BASE                ; 0x11bb
    dw loc_PLIR - IMAGE_BASE                   ; 0x11bd

    db 0x03, 0x03, 0x03, 0x03, 0x02, 0x02, 0x03, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff

