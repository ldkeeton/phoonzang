; auto-generated
next_text_line:
    mov ax, 0xfffc                   ; 0x0e15
    call aztec_csav                  ; 0x0e18
    cmp word [text_line_index], byte 2 ; 0x0e1b
    jle short @..next_text_line.l1   ; 0x0e20
    call api_idx_0002_IUMT           ; 0x0e22
    jmp short @..next_text_line.l2   ; 0x0e25
@..next_text_line.l1:
    inc word [text_line_index]       ; 0x0e27
@..next_text_line.l2:
    mov ax, 3                        ; 0x0e2b
    push ax                          ; 0x0e2e
    call redraw_area_set             ; 0x0e2f
    pop cx                           ; 0x0e32
    mov word [bp - 0x0004], 0        ; 0x0e33
@..next_text_line.l3:
    mov ax, word [bp - 0x0004]       ; 0x0e38
    shl ax, 1                        ; 0x0e3b
    mov bx, ax                       ; 0x0e3d
    cmp word [bx + text_line_color], byte 0 ; 0x0e3f
    je short @..next_text_line.l4    ; 0x0e44
    mov ax, 2                        ; 0x0e46
    push ax                          ; 0x0e49
    mov ax, word [bp - 0x0004]       ; 0x0e4a
    mov cx, 7                        ; 0x0e4d
    shl ax, cl                       ; 0x0e50
    add ax, text_line_buffer         ; 0x0e52
    push ax                          ; 0x0e55
    call measure_text_width          ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    inc ax                           ; 0x0e5c
    mov cx, 2                        ; 0x0e5d
    cwd                              ; 0x0e60
    idiv cx                          ; 0x0e61
    mov cx, ax                       ; 0x0e63
    mov ax, 0xa0                     ; 0x0e65
    sub ax, cx                       ; 0x0e68
    mov word [bp - 0x0002], ax       ; 0x0e6a
    jmp short @..next_text_line.l5   ; 0x0e6d
@..next_text_line.l4:
    mov word [bp - 0x0002], 0x44     ; 0x0e6f
@..next_text_line.l5:
    mov ax, 0xc                      ; 0x0e74
    imul word [bp - 0x0004]          ; 0x0e77
    mov cx, word [bp - 0x0004]       ; 0x0e7a
    shl cx, 1                        ; 0x0e7d
    mov bx, cx                       ; 0x0e7f
    cmp word [bx + text_line_color], byte 0 ; 0x0e81
    je short @..next_text_line.l6    ; 0x0e86
    mov cx, 0x92                     ; 0x0e88
    jmp short @..next_text_line.l7   ; 0x0e8b
@..next_text_line.l6:
    mov cx, 0x97                     ; 0x0e8d
@..next_text_line.l7:
    add ax, cx                       ; 0x0e90
    push ax                          ; 0x0e92
    push word [bp - 0x0002]          ; 0x0e93
    call gfx_set_text_pos            ; 0x0e96
    add sp, byte 4                   ; 0x0e99
    mov ax, 0                        ; 0x0e9c
    push ax                          ; 0x0e9f
    mov ax, word [bp - 0x0004]       ; 0x0ea0
    shl ax, 1                        ; 0x0ea3
    mov bx, ax                       ; 0x0ea5
    cmp word [bx + text_line_color], byte 0 ; 0x0ea7
    je short @..next_text_line.l8    ; 0x0eac
    mov ax, 0x55                     ; 0x0eae
    jmp short @..next_text_line.l9   ; 0x0eb1
@..next_text_line.l8:
    mov ax, 1                        ; 0x0eb3
@..next_text_line.l9:
    push ax                          ; 0x0eb6
    call gfx_set_text_color          ; 0x0eb7
    add sp, byte 4                   ; 0x0eba
    mov ax, word [bp - 0x0004]       ; 0x0ebd
    shl ax, 1                        ; 0x0ec0
    mov bx, ax                       ; 0x0ec2
    push word [bx + text_line_color] ; 0x0ec4
    mov ax, word [bp - 0x0004]       ; 0x0ec8
    mov cx, 7                        ; 0x0ecb
    shl ax, cl                       ; 0x0ece
    add ax, text_line_buffer         ; 0x0ed0
    push ax                          ; 0x0ed3
    call draw_text_glyphs            ; 0x0ed4
    add sp, byte 4                   ; 0x0ed7
    inc word [bp - 0x0004]           ; 0x0eda
    mov ax, word [bp - 0x0004]       ; 0x0edd
    cmp ax, strict word 4            ; 0x0ee0
    jge short @..next_text_line.l10  ; 0x0ee3
    jmp near @..next_text_line.l3    ; 0x0ee5
@..next_text_line.l10:
    mov ax, 3                        ; 0x0ee8
    push ax                          ; 0x0eeb
    call show_area_set               ; 0x0eec
    pop cx                           ; 0x0eef
    ret                              ; 0x0ef0
