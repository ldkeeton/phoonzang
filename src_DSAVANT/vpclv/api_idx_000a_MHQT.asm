; auto-generated
api_idx_000a_MHQT:
    mov ax, 0xfff6                   ; 0x0eac
    call aztec_csav                  ; 0x0eaf
    mov byte [bp - 0x000a], 1        ; 0x0eb2
    mov byte [bp - 0x0009], 0        ; 0x0eb6
    mov ax, 0                        ; 0x0eba
    push ax                          ; 0x0ebd
    push ax                          ; 0x0ebe
    lea ax, word [bp - 0x000a]       ; 0x0ebf
    push ax                          ; 0x0ec2
    mov ax, 0                        ; 0x0ec3
    push ax                          ; 0x0ec6
    mov ax, 0xc7                     ; 0x0ec7
    push ax                          ; 0x0eca
    mov ax, 0                        ; 0x0ecb
    push ax                          ; 0x0ece
    mov ax, 0x13f                    ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 0                        ; 0x0ed3
    push ax                          ; 0x0ed6
    mov ax, 0x73                     ; 0x0ed7
    push ax                          ; 0x0eda
    mov ax, 0x32                     ; 0x0edb
    push ax                          ; 0x0ede
    mov ax, 1                        ; 0x0edf
    push ax                          ; 0x0ee2
    call gfx_draw_text               ; 0x0ee3
    add sp, byte 0x16                ; 0x0ee6
    ret                              ; 0x0ee9
