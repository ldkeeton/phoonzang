; auto-generated
draw_centered_lines:
    mov ax, 0xfffe                   ; 0x195b
    call aztec_csav                  ; 0x195e
    mov ax, 0                        ; 0x1961
    push ax                          ; 0x1964
    mov ax, 0x55                     ; 0x1965
    push ax                          ; 0x1968
    call gfx_set_text_color          ; 0x1969
    add sp, byte 4                   ; 0x196c
    mov ax, 2                        ; 0x196f
    push ax                          ; 0x1972
    push word [bp + 4]               ; 0x1973
    call measure_text_width          ; 0x1976
    add sp, byte 4                   ; 0x1979
    inc ax                           ; 0x197c
    mov cx, 2                        ; 0x197d
    cwd                              ; 0x1980
    idiv cx                          ; 0x1981
    mov cx, ax                       ; 0x1983
    mov ax, 0xa0                     ; 0x1985
    sub ax, cx                       ; 0x1988
    mov word [bp - 2], ax            ; 0x198a
    mov ax, 0x9e                     ; 0x198d
    push ax                          ; 0x1990
    push word [bp - 2]               ; 0x1991
    call gfx_set_text_pos            ; 0x1994
    add sp, byte 4                   ; 0x1997
    mov ax, 2                        ; 0x199a
    push ax                          ; 0x199d
    push word [bp + 4]               ; 0x199e
    call draw_text_glyphs            ; 0x19a1
    add sp, byte 4                   ; 0x19a4
    push word [bp + 6]               ; 0x19a7
    call aztec_strlen                ; 0x19aa
    pop cx                           ; 0x19ad
    cmp ax, strict word 0            ; 0x19ae
    jg short @..draw_centered_lines.l1 ; 0x19b1
    jmp near @..draw_centered_lines.l2 ; 0x19b3
@..draw_centered_lines.l1:
    mov ax, 2                        ; 0x19b6
    push ax                          ; 0x19b9
    push word [bp + 6]               ; 0x19ba
    call measure_text_width          ; 0x19bd
    add sp, byte 4                   ; 0x19c0
    inc ax                           ; 0x19c3
    mov cx, 2                        ; 0x19c4
    cwd                              ; 0x19c7
    idiv cx                          ; 0x19c8
    mov cx, ax                       ; 0x19ca
    mov ax, 0xa0                     ; 0x19cc
    sub ax, cx                       ; 0x19cf
    mov word [bp - 2], ax            ; 0x19d1
    mov ax, 0xaa                     ; 0x19d4
    push ax                          ; 0x19d7
    push word [bp - 2]               ; 0x19d8
    call gfx_set_text_pos            ; 0x19db
    add sp, byte 4                   ; 0x19de
    mov ax, 2                        ; 0x19e1
    push ax                          ; 0x19e4
    push word [bp + 6]               ; 0x19e5
    call draw_text_glyphs            ; 0x19e8
    add sp, byte 4                   ; 0x19eb
    push word [bp + 8]               ; 0x19ee
    call aztec_strlen                ; 0x19f1
    pop cx                           ; 0x19f4
    cmp ax, strict word 0            ; 0x19f5
    jle short @..draw_centered_lines.l2 ; 0x19f8
    mov ax, 2                        ; 0x19fa
    push ax                          ; 0x19fd
    push word [bp + 8]               ; 0x19fe
    call measure_text_width          ; 0x1a01
    add sp, byte 4                   ; 0x1a04
    inc ax                           ; 0x1a07
    mov cx, 2                        ; 0x1a08
    cwd                              ; 0x1a0b
    idiv cx                          ; 0x1a0c
    mov cx, ax                       ; 0x1a0e
    mov ax, 0xa0                     ; 0x1a10
    sub ax, cx                       ; 0x1a13
    mov word [bp - 2], ax            ; 0x1a15
    mov ax, 0xb6                     ; 0x1a18
    push ax                          ; 0x1a1b
    push word [bp - 2]               ; 0x1a1c
    call gfx_set_text_pos            ; 0x1a1f
    add sp, byte 4                   ; 0x1a22
    mov ax, 2                        ; 0x1a25
    push ax                          ; 0x1a28
    push word [bp + 8]               ; 0x1a29
    call draw_text_glyphs            ; 0x1a2c
    add sp, byte 4                   ; 0x1a2f
@..draw_centered_lines.l2:
    mov ax, 0xc6                     ; 0x1a32
    push ax                          ; 0x1a35
    mov ax, 0x109                    ; 0x1a36
    push ax                          ; 0x1a39
    mov ax, 0x92                     ; 0x1a3a
    push ax                          ; 0x1a3d
    mov ax, 0x37                     ; 0x1a3e
    push ax                          ; 0x1a41
    call dissolve_or_show_area       ; 0x1a42
    add sp, byte 8                   ; 0x1a45
    mov ax, word [message_delay]     ; 0x1a48
    cmp byte [no_dissolve], 0        ; 0x1a4b
    je short @..draw_centered_lines.l3 ; 0x1a50
    shl ax, 1                        ; 0x1a52
@..draw_centered_lines.l3:
    push ax                          ; 0x1a54
    call api_idx_0004_TTGQ           ; 0x1a55
    pop cx                           ; 0x1a58
    call restore_area_a_draw_glyph   ; 0x1a59
    ret                              ; 0x1a5c
