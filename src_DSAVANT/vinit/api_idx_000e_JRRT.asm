; auto-generated
api_idx_000e_JRRT:
    mov ax, 0xfff2                   ; 0x09d3
    call aztec_csav                  ; 0x09d6
    mov al, byte [bp + 4]            ; 0x09d9
    mov byte [bp - 0xe], al          ; 0x09dc
    mov byte [bp - 0xd], 0           ; 0x09df
    mov ax, word [bp + 4]            ; 0x09e3
    shl ax, 1                        ; 0x09e6
    mov bx, ax                       ; 0x09e8
    mov al, byte [bx + glyph_x_table_b] ; 0x09ea
    sub ah, ah                       ; 0x09ee
    mov word [bp - 2], ax            ; 0x09f0
    mov bx, word [bp + 4]            ; 0x09f3
    mov al, byte [bx + glyph_y_table_b] ; 0x09f6
    sub ah, ah                       ; 0x09fa
    mov word [bp - 4], ax            ; 0x09fc
    cmp word [bp + 6], byte 0        ; 0x09ff
    je short .forward1               ; 0x0a03
    mov ax, 0xa0                     ; 0x0a05
    sub ax, word [bp - 2]            ; 0x0a08
    imul word [bp + 6]               ; 0x0a0b
    mov cx, 0x64                     ; 0x0a0e
    cwd                              ; 0x0a11
    idiv cx                          ; 0x0a12
    add word [bp - 2], ax            ; 0x0a14
    mov ax, 0x31                     ; 0x0a17
    sub ax, word [bp - 4]            ; 0x0a1a
    imul word [bp + 6]               ; 0x0a1d
    cwd                              ; 0x0a20
    idiv cx                          ; 0x0a21
    add word [bp - 4], ax            ; 0x0a23
.forward1:
    push word [bp + 6]               ; 0x0a26
    mov ax, 0                        ; 0x0a29
    push ax                          ; 0x0a2c
    lea ax, word [bp - 0xe]          ; 0x0a2d
    push ax                          ; 0x0a30
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0xc7                     ; 0x0a35
    push ax                          ; 0x0a38
    mov ax, 0                        ; 0x0a39
    push ax                          ; 0x0a3c
    mov ax, 0x13f                    ; 0x0a3d
    push ax                          ; 0x0a40
    mov ax, 0                        ; 0x0a41
    push ax                          ; 0x0a44
    push word [bp - 4]               ; 0x0a45
    push word [bp - 2]               ; 0x0a48
    mov ax, 0xf                      ; 0x0a4b
    push ax                          ; 0x0a4e
    call gfx_draw_text               ; 0x0a4f
    add sp, byte 0x16                ; 0x0a52
    ret                              ; 0x0a55
