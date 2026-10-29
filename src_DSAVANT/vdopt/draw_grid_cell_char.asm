; auto-generated
draw_grid_cell_char:
    mov ax, 0xfff6                   ; 0x0f7f
    call aztec_csav                  ; 0x0f82
    mov al, byte [bp + 8]            ; 0x0f85
    mov byte [bp - 0xa], al          ; 0x0f88
    mov byte [bp - 9], 0             ; 0x0f8b
    mov ax, 0                        ; 0x0f8f
    push ax                          ; 0x0f92
    push ax                          ; 0x0f93
    lea ax, word [bp - 0xa]          ; 0x0f94
    push ax                          ; 0x0f97
    mov ax, 0                        ; 0x0f98
    push ax                          ; 0x0f9b
    mov ax, 0x8f                     ; 0x0f9c
    push ax                          ; 0x0f9f
    mov ax, 0x21                     ; 0x0fa0
    push ax                          ; 0x0fa3
    mov ax, 0xf8                     ; 0x0fa4
    push ax                          ; 0x0fa7
    mov ax, 0x48                     ; 0x0fa8
    push ax                          ; 0x0fab
    mov ax, 7                        ; 0x0fac
    imul word [bp + 6]               ; 0x0faf
    add ax, word [grid_origin_y]     ; 0x0fb2
    add ax, word [bp + 0xc]          ; 0x0fb6
    push ax                          ; 0x0fb9
    mov ax, 7                        ; 0x0fba
    imul word [bp + 4]               ; 0x0fbd
    add ax, word [grid_origin_x]     ; 0x0fc0
    add ax, word [bp + 0xa]          ; 0x0fc4
    push ax                          ; 0x0fc7
    mov ax, 0xf                      ; 0x0fc8
    push ax                          ; 0x0fcb
    call call_draw_text              ; 0x0fcc
    add sp, byte 0x16                ; 0x0fcf
    ret                              ; 0x0fd2
