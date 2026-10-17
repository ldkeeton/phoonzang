; auto-generated
; asm only
loc_0322:
    mov ah, 0                        ; 0x0322
    int 0x13 ; BIOS disk: reset disk system
    cmp byte [bp + 0x15], 4          ; 0x0326
    jne short loc_0330               ; 0x032a
    mov byte [bp + 0x15], 1          ; 0x032c
loc_0330:
    mov ax, 0x64                     ; 0x0330
    mov word [cs:cseg_0a81 - IMAGE_BASE], ax ; 0x0333
    mov al, byte [bp + 0x15]         ; 0x0337
    mov byte [cs:cseg_0a7d - IMAGE_BASE], al ; 0x033a
    mov byte [cs:cseg_0a90 - IMAGE_BASE], 0 ; 0x033e
    pushf                            ; 0x0344
    pop ax                           ; 0x0345
    test ah, 0x80                    ; 0x0346
    je short loc_0350                ; 0x0349
    inc byte [cs:cseg_0a90 - IMAGE_BASE] ; 0x034b
loc_0350:
    mov bl, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x0350
    shl bl, 1                        ; 0x0355
    xor bh, bh                       ; 0x0357
    jmp [cs:bx + jumptable_035e - IMAGE_BASE] ; 0x0359
jumptable_035e:
    dw io_loc_HMTR - IMAGE_BASE                ; 0x035e
    dw io_loc_JOTO - IMAGE_BASE                ; 0x0360
    dw io_loc_OULV - IMAGE_BASE                ; 0x0362
    dw io_loc_OULV - IMAGE_BASE                ; 0x0364
    dw io_loc_LPSH - IMAGE_BASE                ; 0x0366
