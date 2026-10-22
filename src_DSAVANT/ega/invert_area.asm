; auto-generated
invert_area:
    push bp                          ; 0x0c45
    mov bp, sp                       ; 0x0c46
    sub sp, byte 8                   ; 0x0c48
    push es                          ; 0x0c4b
    push ds                          ; 0x0c4c
    push di                          ; 0x0c4d
    mov ax, ds                       ; 0x0c4e
    mov es, ax                       ; 0x0c50
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0c52
    mov es, ax                       ; 0x0c56
    mov ds, ax                       ; 0x0c58
    mov ax, word [bp + 0xe]          ; 0x0c5a
    mov bx, 0x140                    ; 0x0c5d
    mul bx                           ; 0x0c60
    add ax, word [bp + 0xc]          ; 0x0c62
    mov word [bp - 0x0002], ax       ; 0x0c65
    mov ax, word [bp + 0x12]         ; 0x0c68
    sub ax, word [bp + 0xe]          ; 0x0c6b
    inc ax                           ; 0x0c6e
    mov word [bp - 0x0004], ax       ; 0x0c6f
    mov ax, word [bp + 0x10]         ; 0x0c72
    sub ax, word [bp + 0xc]          ; 0x0c75
    inc ax                           ; 0x0c78
    mov word [bp - 0x0006], ax       ; 0x0c79
@..invert_area.l1:
    mov di, word [bp - 0x0002]       ; 0x0c7c
    mov si, di                       ; 0x0c7f
    add word [bp - 0x0002], strict word 0x140 ; 0x0c81
    mov cx, word [bp - 0x0006]       ; 0x0c86
@..invert_area.l2:
    lodsb                            ; 0x0c89
    not al                           ; 0x0c8a
    stosb                            ; 0x0c8c
    loop @..invert_area.l2           ; 0x0c8d
    dec word [bp - 0x0004]           ; 0x0c8f
    jne short @..invert_area.l1      ; 0x0c92
    pop di                           ; 0x0c94
    pop ds                           ; 0x0c95
    pop es                           ; 0x0c96
    mov sp, bp                       ; 0x0c97
    pop bp                           ; 0x0c99
    ret                              ; 0x0c9a
