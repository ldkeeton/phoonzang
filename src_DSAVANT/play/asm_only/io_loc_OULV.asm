; auto-generated
; asm only
io_loc_OULV:
    mov ax, word [bp + 0x10]         ; 0x0368
    mov word [cs:cseg_0a89 - IMAGE_BASE], ax ; 0x036b
    inc ax                           ; 0x036f
    mov word [cs:cseg_0a8b - IMAGE_BASE], ax ; 0x0370
    inc ax                           ; 0x0374
    cmp byte [bp + 0x15], 2          ; 0x0375
    je short @..io_loc_OULV.l1       ; 0x0379
    add ax, strict word 0xd          ; 0x037b
    dec byte [bp + 0x15]             ; 0x037e
@..io_loc_OULV.l1:
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
    jmp near io_loc_HMTR             ; 0x03c7
