; auto-generated
api_idx_000a_IIIU:
    mov ax, 0xfff6                   ; 0x8a89
    call aztec_csav                  ; 0x8a8c
    mov byte [bp - 0x000a], 1        ; 0x8a8f
    mov byte [bp - 0x0009], 0        ; 0x8a93
    mov ax, 0                        ; 0x8a97
    push ax                          ; 0x8a9a
    push ax                          ; 0x8a9b
    lea ax, word [bp - 0x000a]       ; 0x8a9c
    push ax                          ; 0x8a9f
    mov ax, 0                        ; 0x8aa0
    push ax                          ; 0x8aa3
    mov ax, 0xc7                     ; 0x8aa4
    push ax                          ; 0x8aa7
    mov ax, 0                        ; 0x8aa8
    push ax                          ; 0x8aab
    mov ax, 0x13f                    ; 0x8aac
    push ax                          ; 0x8aaf
    mov ax, 0                        ; 0x8ab0
    push ax                          ; 0x8ab3
    mov ax, 0x73                     ; 0x8ab4
    push ax                          ; 0x8ab7
    mov ax, 0x32                     ; 0x8ab8
    push ax                          ; 0x8abb
    mov ax, 1                        ; 0x8abc
    push ax                          ; 0x8abf
    call gfx_draw_text               ; 0x8ac0
    add sp, byte 0x16                ; 0x8ac3
    ret                              ; 0x8ac6
