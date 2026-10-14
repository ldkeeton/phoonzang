; auto-generated
; asm only
thunk_3:
    push bp                          ; 0x3a6a
    mov bp, sp                       ; 0x3a6b
    cld                              ; 0x3a6d
    call far [cs:cseg_2fb7 - IMAGE_BASE] ; 0x3a6e
    mov sp, bp                       ; 0x3a73
    pop bp                           ; 0x3a75
    ret                              ; 0x3a76
ds_loc_3a77:
    push bp                          ; 0x3a77
    mov bp, sp                       ; 0x3a78
    cld                              ; 0x3a7a
    mov ax, word [bp + 0x6]          ; 0x3a7b
    mov bx, 0x364a                   ; 0x3a7e
    shl ax, 1                        ; 0x3a81
    add bx, ax                       ; 0x3a83
    mov ax, word [cs:bx]             ; 0x3a85
    or ax, ax                        ; 0x3a88
    je short @..ds_loc_3a77.l1       ; 0x3a8a
    call far [cs:cseg_2fb3 - IMAGE_BASE] ; 0x3a8c
@..ds_loc_3a77.l1:
    mov sp, bp                       ; 0x3a91
    pop bp                           ; 0x3a93
    ret                              ; 0x3a94
