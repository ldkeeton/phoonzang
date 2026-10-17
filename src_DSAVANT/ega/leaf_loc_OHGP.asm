; auto-generated
leaf_loc_OHGP:
    push bx                          ; 0x3252
loc_JRJS:
    push ax                          ; 0x3253
    cs xlatb                         ; 0x3254
    mov ah, al                       ; 0x3256
    and al, 1                        ; 0x3258
    mov dl, al                       ; 0x325a
    mov al, ah                       ; 0x325c
    and al, 2                        ; 0x325e
    shr al, 1                        ; 0x3260
    mov dh, al                       ; 0x3262
    mov al, ah                       ; 0x3264
    and al, 4                        ; 0x3266
    shr al, 1                        ; 0x3268
    shr al, 1                        ; 0x326a
    mov bl, al                       ; 0x326c
    mov al, ah                       ; 0x326e
    and al, 8                        ; 0x3270
    mov cl, 3                        ; 0x3272
    shr al, cl                       ; 0x3274
    mov bh, al                       ; 0x3276
    mov al, ah                       ; 0x3278
    and al, 0x10                     ; 0x327a
    mov cl, 3                        ; 0x327c
    shr al, cl                       ; 0x327e
    or dl, al                        ; 0x3280
    mov al, ah                       ; 0x3282
    and al, 0x20                     ; 0x3284
    mov cl, 4                        ; 0x3286
    shr al, cl                       ; 0x3288
    or dh, al                        ; 0x328a
    mov al, ah                       ; 0x328c
    and al, 0x40                     ; 0x328e
    mov cl, 5                        ; 0x3290
    shr al, cl                       ; 0x3292
    or bl, al                        ; 0x3294
    mov al, ah                       ; 0x3296
    and al, 0x80                     ; 0x3298
    mov cl, 6                        ; 0x329a
    shr al, cl                       ; 0x329c
    or bh, al                        ; 0x329e
    pop ax                           ; 0x32a0
    mov cl, ah                       ; 0x32a1
    mov ch, 3                        ; 0x32a3
    shl ch, cl                       ; 0x32a5
    shl dl, cl                       ; 0x32a7
    shl dh, cl                       ; 0x32a9
    shl bl, cl                       ; 0x32ab
    shl bh, cl                       ; 0x32ad
    mov ax, bx                       ; 0x32af
    pop bx                           ; 0x32b1
    ret                              ; 0x32b2
