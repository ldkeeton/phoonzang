io_loc_023f:
    push bp                          ; 0x023f
    mov bp, sp                       ; 0x0240
    push bx                          ; 0x0242
    push dx                          ; 0x0243
    mov bx, word [bp + 0x8]          ; 0x0244
    mov word [cs:cseg_0ba6 - IMAGE_BASE], bx ; 0x0247
    mov ax, 0x38e                    ; 0x024c
    mov dx, 0                        ; 0x024f
    cmp bx, byte 0                   ; 0x0252
    je short @..io_loc_023f.l1       ; 0x0255
    div bx                           ; 0x0257
@..io_loc_023f.l1:
    mov word [cs:cseg_0b83 - IMAGE_BASE], ax ; 0x0259
    cmp byte [cs:cseg_0b90 - IMAGE_BASE], 0 ; 0x025d
    je short @..io_loc_023f.l2       ; 0x0263
    cmp byte [cs:cseg_0b9a - IMAGE_BASE], 0 ; 0x0265
    je short @..io_loc_023f.l2       ; 0x026b
    mov al, 0x34                     ; 0x026d
    out 0x43, al                     ; 0x026f
    call leaf_loc_0610               ; 0x0271
    mov ax, word [cs:cseg_0ba6 - IMAGE_BASE] ; 0x0274
    mov bl, 0x48                     ; 0x0278
    mul bl                           ; 0x027a
    mov word [cs:cseg_0b98 - IMAGE_BASE], ax ; 0x027c
    out 0x40, al                     ; 0x0280
    call leaf_loc_0610               ; 0x0282
    mov al, ah                       ; 0x0285
    out 0x40, al                     ; 0x0287
@..io_loc_023f.l2:
    mov ax, word [bp + 0xa]          ; 0x0289
    mov byte [cs:cseg_0ba8 - IMAGE_BASE], al ; 0x028c
    pop dx                           ; 0x0290
    pop bx                           ; 0x0291
    pop bp                           ; 0x0292
    ret                              ; 0x0293
