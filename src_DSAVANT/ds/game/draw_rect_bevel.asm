; auto-generated
draw_rect_bevel:
    mov ax, 0                        ; 0x0e82
    call aztec_csav                  ; 0x0e85
    push word [bp + 0xc]             ; 0x0e88
    push word [bp + 6]               ; 0x0e8b
    push word [bp + 8]               ; 0x0e8e
    push word [bp + 6]               ; 0x0e91
    push word [bp + 4]               ; 0x0e94
    call call_fill_area              ; 0x0e97
    add sp, byte 0xa                 ; 0x0e9a
    push word [bp + 0xe]             ; 0x0e9d
    push word [bp + 0xa]             ; 0x0ea0
    push word [bp + 8]               ; 0x0ea3
    mov ax, word [bp + 6]            ; 0x0ea6
    inc ax                           ; 0x0ea9
    push ax                          ; 0x0eaa
    push word [bp + 8]               ; 0x0eab
    call call_fill_area              ; 0x0eae
    add sp, byte 0xa                 ; 0x0eb1
    push word [bp + 0xe]             ; 0x0eb4
    push word [bp + 0xa]             ; 0x0eb7
    push word [bp + 8]               ; 0x0eba
    push word [bp + 0xa]             ; 0x0ebd
    mov ax, word [bp + 4]            ; 0x0ec0
    inc ax                           ; 0x0ec3
    push ax                          ; 0x0ec4
    call call_fill_area              ; 0x0ec5
    add sp, byte 0xa                 ; 0x0ec8
    push word [bp + 0xc]             ; 0x0ecb
    push word [bp + 0xa]             ; 0x0ece
    push word [bp + 4]               ; 0x0ed1
    push word [bp + 6]               ; 0x0ed4
    push word [bp + 4]               ; 0x0ed7
    call call_fill_area              ; 0x0eda
    add sp, byte 0xa                 ; 0x0edd
    ret                              ; 0x0ee0
