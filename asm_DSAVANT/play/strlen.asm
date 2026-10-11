strlen:
    push bp                          ; 0x00fe
    mov bp, sp                       ; 0x00ff
    push es                          ; 0x0101
    push di                          ; 0x0102
    push bx                          ; 0x0103
    push cx                          ; 0x0104
    cld                              ; 0x0105
    mov di, word [bp + 0x8]          ; 0x0106
    mov es, word [bp + 0xa]          ; 0x0109
    xor al, al                       ; 0x010c
    mov cx, 8                        ; 0x010e
    repne scasb                      ; 0x0111
    mov word [es:di - 0x0001], 0x2e  ; 0x0113
    mov al, byte [bp + 0xc]          ; 0x0119
    call leaf_loc_02b3               ; 0x011c
    mov bl, al                       ; 0x011f
    mov byte [cs:cseg_0b7c - IMAGE_BASE], al ; 0x0121
    mov bh, bl                       ; 0x0125
    shl bl, 1                        ; 0x0127
    add bl, bh                       ; 0x0129
    xor bh, bh                       ; 0x012b
    add bx, strict word 0x242        ; 0x012d
    mov ax, word [cs:bx]             ; 0x0131
    stosw                            ; 0x0134
    mov al, byte [cs:bx + 0x2]       ; 0x0135
    mov ah, 0                        ; 0x0139
    stosw                            ; 0x013b
    pop cx                           ; 0x013c
    pop bx                           ; 0x013d
    pop di                           ; 0x013e
    pop es                           ; 0x013f
    pop bp                           ; 0x0140
    ret                              ; 0x0141

    db 0x00, 0x00, 0x00, 0x50, 0x42, 0x41
    times 6 db 0
    db 'PBAPBL'

