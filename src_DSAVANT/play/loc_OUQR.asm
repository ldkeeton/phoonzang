; auto-generated
loc_OUQR:
    push bx                          ; 0x137a
    push cx                          ; 0x137b
    push dx                          ; 0x137c
    push si                          ; 0x137d
    push ds                          ; 0x137e
    mov bx, word [cs:music_patch_segment - IMAGE_BASE] ; 0x137f
    mov ds, bx                       ; 0x1384
    mov si, word [cs:music_patch_offset - IMAGE_BASE] ; 0x1386
    mov bl, byte [cs:opl_note_index - IMAGE_BASE] ; 0x138b
    shr bl, 1                        ; 0x1390
    shr bl, 1                        ; 0x1392
    xor bh, bh                       ; 0x1394
    mov al, byte [bx + si]           ; 0x1396
    xor ah, ah                       ; 0x1398
    mov bl, 0xb                      ; 0x139a
    mul bl                           ; 0x139c
    add ax, strict word 0x40         ; 0x139e
    add si, ax                       ; 0x13a1
    mov al, byte [cs:opl_note_index - IMAGE_BASE] ; 0x13a3
    and al, 3                        ; 0x13a7
    xor ah, ah                       ; 0x13a9
    mov bl, 0xb                      ; 0x13ab
    mul bl                           ; 0x13ad
    add ax, strict word 0            ; 0x13af
    add si, ax                       ; 0x13b2
    mov dx, si                       ; 0x13b4
    mov bl, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x13b6
    mov ah, bl                       ; 0x13bb
    xor bh, bh                       ; 0x13bd
    mov al, byte [cs:bx + cseg_14da - IMAGE_BASE] ; 0x13bf
    add ah, 0xb1                     ; 0x13c4
    and al, 0xdf                     ; 0x13c7
    call opl_write                   ; 0x13c9
    mov bl, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x13cc
    inc bl                           ; 0x13d1
    shl bl, 1                        ; 0x13d3
    xor bh, bh                       ; 0x13d5
    mov ch, byte [cs:bx + opl_operator_map - IMAGE_BASE] ; 0x13d7
    mov bx, cseg_1418 - IMAGE_BASE   ; 0x13dc
.back1:
    mov al, byte [cs:bx]             ; 0x13df
    xor ah, ah                       ; 0x13e2
    mov si, dx                       ; 0x13e4
    add si, ax                       ; 0x13e6
    lodsb                            ; 0x13e8
    mov ah, byte [cs:bx + 1]         ; 0x13e9
    add ah, ch                       ; 0x13ed
    call opl_write                   ; 0x13ef
    add bx, byte 2                   ; 0x13f2
    cmp word [cs:bx], strict word 0xff ; 0x13f5
    jne short .back1                 ; 0x13fa
    mov ax, 0xa                      ; 0x13fc
    mov si, dx                       ; 0x13ff
    add si, ax                       ; 0x1401
    lodsb                            ; 0x1403
    mov ah, 0xc1                     ; 0x1404
    add ah, byte [cs:opl_channel_index - IMAGE_BASE] ; 0x1406
    call opl_write                   ; 0x140b
    pop ds                           ; 0x140e
    pop si                           ; 0x140f
    pop dx                           ; 0x1410
    pop cx                           ; 0x1411
    pop bx                           ; 0x1412
    ret                              ; 0x1413
    db 0x01, 0x40, 0x06, 0x43
cseg_1418:

    db 0x00, 0x20, 0x02, 0x60, 0x03, 0x80, 0x04, 0xe0, 0x05, 0x23, 0x07, 0x63, 0x08, 0x83, 0x09, 0xe3
    db 0xff

