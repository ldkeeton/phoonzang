api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x759d
    db 0xe8, 0x68, 0x7e ; call 0xf40b
    mov byte [bp - 0x000a], 1        ; 0x75a3
    mov byte [bp - 0x0009], 0        ; 0x75a7
    mov ax, 0                        ; 0x75ab
    push ax                          ; 0x75ae
    push ax                          ; 0x75af
    lea ax, word [bp - 0x000a]       ; 0x75b0
    push ax                          ; 0x75b3
    mov ax, 0                        ; 0x75b4
    push ax                          ; 0x75b7
    mov ax, 0xc7                     ; 0x75b8
    push ax                          ; 0x75bb
    mov ax, 0                        ; 0x75bc
    push ax                          ; 0x75bf
    mov ax, 0x13f                    ; 0x75c0
    push ax                          ; 0x75c3
    mov ax, 0                        ; 0x75c4
    push ax                          ; 0x75c7
    mov ax, 0x73                     ; 0x75c8
    push ax                          ; 0x75cb
    mov ax, 0x32                     ; 0x75cc
    push ax                          ; 0x75cf
    mov ax, 1                        ; 0x75d0
    push ax                          ; 0x75d3
    db 0xe8, 0xfa, 0x79 ; call 0xefd1
    add sp, byte 0x16                ; 0x75d7
    ret                              ; 0x75da
