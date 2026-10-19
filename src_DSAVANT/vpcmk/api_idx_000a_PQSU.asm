; auto-generated
api_idx_000a_PQSU:
    mov ax, 0xfff6                   ; 0x2dd4
    call aztec_csav                  ; 0x2dd7
    mov byte [bp - 0x000a], 1        ; 0x2dda
    mov byte [bp - 0x0009], 0        ; 0x2dde
    mov ax, 0                        ; 0x2de2
    push ax                          ; 0x2de5
    push ax                          ; 0x2de6
    lea ax, word [bp - 0x000a]       ; 0x2de7
    push ax                          ; 0x2dea
    mov ax, 0                        ; 0x2deb
    push ax                          ; 0x2dee
    mov ax, 0xc7                     ; 0x2def
    push ax                          ; 0x2df2
    mov ax, 0                        ; 0x2df3
    push ax                          ; 0x2df6
    mov ax, 0x13f                    ; 0x2df7
    push ax                          ; 0x2dfa
    mov ax, 0                        ; 0x2dfb
    push ax                          ; 0x2dfe
    mov ax, 0x73                     ; 0x2dff
    push ax                          ; 0x2e02
    mov ax, 0x32                     ; 0x2e03
    push ax                          ; 0x2e06
    mov ax, 1                        ; 0x2e07
    push ax                          ; 0x2e0a
    call gfx_draw_text               ; 0x2e0b
    add sp, byte 0x16                ; 0x2e0e
    ret                              ; 0x2e11
