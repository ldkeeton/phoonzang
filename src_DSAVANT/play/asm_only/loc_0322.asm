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
    dw io_loc_0592 - IMAGE_BASE                ; 0x035e
    dw io_loc_03dc - IMAGE_BASE                ; 0x0360
    dw io_loc_0368 - IMAGE_BASE                ; 0x0362
    dw io_loc_0368 - IMAGE_BASE                ; 0x0364
    dw io_loc_03ca - IMAGE_BASE                ; 0x0366
io_loc_0368:
    mov ax, word [bp + 0x10]         ; 0x0368
    mov word [cs:cseg_0a89 - IMAGE_BASE], ax ; 0x036b
    inc ax                           ; 0x036f
    mov word [cs:cseg_0a8b - IMAGE_BASE], ax ; 0x0370
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short loc_0381                ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
loc_0381:
    mov word [cs:cseg_0a8d - IMAGE_BASE], ax ; 0x0381
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0385
    mov al, 7                        ; 0x038a
    out dx, al                       ; 0x038c
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x038d
    in al, dx                        ; 0x0392
    or al, 0xc0                      ; 0x0393
    out dx, al                       ; 0x0395
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x0396
    mov al, 0xa                      ; 0x039b
    out dx, al                       ; 0x039d
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x039e
    in al, dx                        ; 0x03a3
    or al, 0x10                      ; 0x03a4
    out dx, al                       ; 0x03a6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03a7
    mov al, 0xf                      ; 0x03ac
    out dx, al                       ; 0x03ae
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03af
    mov al, 0x70                     ; 0x03b4
    out dx, al                       ; 0x03b6
    mov dx, word [cs:cseg_0a89 - IMAGE_BASE] ; 0x03b7
    mov al, 0xe                      ; 0x03bc
    out dx, al                       ; 0x03be
    mov dx, word [cs:cseg_0a8b - IMAGE_BASE] ; 0x03bf
    mov al, 0x80                     ; 0x03c4
    out dx, al                       ; 0x03c6
    jmp near io_loc_0592             ; 0x03c7
io_loc_03ca:
    jmp near io_loc_0592             ; 0x03ca
    times 15 db 0
io_loc_03dc:
    call io_loc_LPTR                 ; 0x03dc
    jmp near io_loc_0592             ; 0x03df
