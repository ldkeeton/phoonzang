api_idx_0040:
    mov ax, 0xffc0                   ; 0x2b8e
    db 0xe8, 0x77, 0xc8 ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x2b94
    shl ax, 1                        ; 0x2b97
    mov bx, ax                       ; 0x2b99
    mov ax, word [bx - 0x6e88]       ; 0x2b9b
    mov word [bp - 0x0004], ax       ; 0x2b9f
    mov ax, 0                        ; 0x2ba2
    push ax                          ; 0x2ba5
    push word [bp - 0x0004]          ; 0x2ba6
    lea ax, word [bp - 0x0024]       ; 0x2ba9
    push ax                          ; 0x2bac
    mov ax, 6                        ; 0x2bad
    push ax                          ; 0x2bb0
    db 0xe8, 0x88, 0x8a ; call 0xb63c
    add sp, byte 8                   ; 0x2bb4
    mov word [bp - 0x0002], 0        ; 0x2bb7
@..api_idx_0040.l1:
    cmp word [bp - 0x0002], byte 8   ; 0x2bbc
    jl short @..api_idx_0040.l2      ; 0x2bc0
    jmp near @..api_idx_0040.l5      ; 0x2bc2
@..api_idx_0040.l2:
    mov word [bp - 0x0040], 0        ; 0x2bc5
    mov ax, word [bp - 0x0002]       ; 0x2bca
    shl ax, 1                        ; 0x2bcd
    shl ax, 1                        ; 0x2bcf
    mov bx, ax                       ; 0x2bd1
    add bx, bp                       ; 0x2bd3
    mov ax, word [bx - 0x0024]       ; 0x2bd5
    mov word [bp - 0x0026], ax       ; 0x2bd8
    mov al, byte [bx - 0x0022]       ; 0x2bdb
    sub ah, ah                       ; 0x2bde
    mov word [bp - 0x0028], ax       ; 0x2be0
    mov al, byte [bx - 0x0021]       ; 0x2be3
    sub ah, ah                       ; 0x2be6
    jmp near @..api_idx_0040.l3      ; 0x2be8
    mov ax, 0                        ; 0x2beb
    ret                              ; 0x2bee
