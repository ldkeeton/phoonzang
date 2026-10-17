; auto-generated
loc_MMRI:
    push bp                          ; 0x0023
    mov bp, sp                       ; 0x0024
    push bx                          ; 0x0026
    mov byte [cs:cseg_0a9a - IMAGE_BASE], 0 ; 0x0027
    mov ax, word [bp + 0x8]          ; 0x002d
    mov word [cs:cseg_0aa4 - IMAGE_BASE], ax ; 0x0030
    mov word [cs:cseg_0a9e - IMAGE_BASE], ax ; 0x0034
    mov ax, word [bp + 0xa]          ; 0x0038
    mov word [cs:cseg_0aa2 - IMAGE_BASE], ax ; 0x003b
    mov word [cs:cseg_0aa0 - IMAGE_BASE], ax ; 0x003f
    mov ax, word [bp + 0xc]          ; 0x0043
    mov byte [cs:cseg_0a9d - IMAGE_BASE], al ; 0x0046
    mov word [cs:cseg_0a81 - IMAGE_BASE], 1 ; 0x004a
    mov word [cs:cseg_0a7f - IMAGE_BASE], 1 ; 0x0051
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0058
@..loc_MMRI.l1:
    mov byte [cs:bx], 0              ; 0x005b
    mov byte [cs:bx + 0x1], 0        ; 0x005f
    mov byte [cs:bx + 0x2], 0xff     ; 0x0064
    mov word [cs:bx + 0x3], 0        ; 0x0069
    add bx, byte 5                   ; 0x006f
    cmp bx, strict word 0xe3a        ; 0x0072
    jb short @..loc_MMRI.l1          ; 0x0076
    mov al, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x0078
    mov ax, word [cs:cseg_0a83 - IMAGE_BASE] ; 0x007c
    mov word [cs:cseg_0a85 - IMAGE_BASE], ax ; 0x0080
    call loc_VVTT                    ; 0x0084
    cmp ax, strict word 0            ; 0x0087
    jne short @..loc_MMRI.l2         ; 0x008a
    call io_loc_TRGI                 ; 0x008c
    mov byte [cs:cseg_0a9a - IMAGE_BASE], 1 ; 0x008f
@..loc_MMRI.l2:
    pop bx                           ; 0x0095
    pop bp                           ; 0x0096
    ret                              ; 0x0097
loc_VVTT:
    mov bl, byte [cs:cseg_0a7c - IMAGE_BASE] ; 0x0098
    xor bh, bh                       ; 0x009d
    shl bx, 1                        ; 0x009f
    mov ax, 0                        ; 0x00a1
    call [cs:bx + jumptable_00aa - IMAGE_BASE] ; 0x00a4
    ret                              ; 0x00a9
jumptable_00aa:
    dw loc_PLIR - IMAGE_BASE                   ; 0x00aa
    dw io_loc_GHPS - IMAGE_BASE                ; 0x00ac
    dw loc_PLIR - IMAGE_BASE                   ; 0x00ae
    dw loc_PLIR - IMAGE_BASE                   ; 0x00b0
    dw io_loc_GHPS - IMAGE_BASE                ; 0x00b2
    dw io_loc_HLUI - IMAGE_BASE                ; 0x00b4
