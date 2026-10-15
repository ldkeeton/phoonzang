; auto-generated
; asm only
dos_con_loc_IJTI:
    dec ax                           ; 0x3131
    cmp ax, word [bp - 0x0012]       ; 0x3132
    jb short @..dos_con_loc_IJTI.l1  ; 0x3135
    mov bl, 0xa                      ; 0x3137
    div bl                           ; 0x3139
    or byte [cs:cseg_316f - IMAGE_BASE], al ; 0x313b
    or byte [cs:cseg_3170 - IMAGE_BASE], dl ; 0x3140
    mov ax, word [bp + 0xc]          ; 0x3145
    mov bl, 0xa                      ; 0x3148
    div bl                           ; 0x314a
    or byte [cs:cseg_3182 - IMAGE_BASE], al ; 0x314c
    or byte [cs:cseg_3183 - IMAGE_BASE], dl ; 0x3151
    mov bx, cs                       ; 0x3156
    mov ds, bx                       ; 0x3158
    mov dx, 0x3266                   ; 0x315a
    mov ah, 9                        ; 0x315d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3161
    int 0x21 ; DOS function dispatcher
    db 0x0d, 0x0a, 0x07
    db 'Frame '
cseg_316f:
    db 0x30
cseg_3170:

    db '0 too big in slot '

cseg_3182:
    db 0x30
cseg_3183:
    db 0x30, 0x2e, 0x00, 0x0a, 0x24
@..dos_con_loc_IJTI.l1:
    mov cl, 2                        ; 0x3188
    shl al, cl                       ; 0x318a
    mov bx, 2                        ; 0x318c
    add bx, ax                       ; 0x318f
    mov ax, word [bx]                ; 0x3191
    mov dx, word [bx + 0x2]          ; 0x3193
    mov bx, ds                       ; 0x3196
    add bx, dx                       ; 0x3198
    mov ds, bx                       ; 0x319a
    mov bx, ax                       ; 0x319c
    ret                              ; 0x319e
