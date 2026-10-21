; auto-generated
loc_GPGU:
    mov ax, 0                        ; 0x2ab9
    call aztec_csav                  ; 0x2abc
    mov ax, word [bp + 0x6]          ; 0x2abf
    add ax, strict word 6            ; 0x2ac2
    push ax                          ; 0x2ac5
    mov ax, word [bp + 0x4]          ; 0x2ac6
    add ax, strict word 0x14         ; 0x2ac9
    push ax                          ; 0x2acc
    push word [bp + 0x6]             ; 0x2acd
    push word [bp + 0x4]             ; 0x2ad0
    call ds_app_OPOL                 ; 0x2ad3
    add sp, byte 8                   ; 0x2ad6
    mov ax, word [bp + 0x8]          ; 0x2ad9
    shl ax, 1                        ; 0x2adc
    shl ax, 1                        ; 0x2ade
    mov bx, ax                       ; 0x2ae0
    push word [word bx + 0x8]        ; 0x2ae2
    mov ax, word [bp + 0x6]          ; 0x2ae6
    add ax, strict word 6            ; 0x2ae9
    push ax                          ; 0x2aec
    mov ax, word [bp + 0x4]          ; 0x2aed
    add ax, strict word 0x14         ; 0x2af0
    push ax                          ; 0x2af3
    push word [bp + 0x6]             ; 0x2af4
    push word [bp + 0x4]             ; 0x2af7
    call gfx_fill_area               ; 0x2afa
    add sp, byte 0x0a                ; 0x2afd
    mov ax, word [bp + 0x6]          ; 0x2b00
    inc ax                           ; 0x2b03
    push ax                          ; 0x2b04
    mov ax, word [bp + 0x4]          ; 0x2b05
    inc ax                           ; 0x2b08
    inc ax                           ; 0x2b09
    push ax                          ; 0x2b0a
    call gfx_set_text_pos            ; 0x2b0b
    add sp, byte 4                   ; 0x2b0e
    cmp word [bp + 0xa], byte 0      ; 0x2b11
    jle short @..loc_GPGU.l1         ; 0x2b15
    mov ax, word [bp + 0xa]          ; 0x2b17
    cmp ax, word [bp + 0xc]          ; 0x2b1a
    jg short @..loc_GPGU.l1          ; 0x2b1d
    mov ax, 0                        ; 0x2b1f
    push ax                          ; 0x2b22
    mov ax, 1                        ; 0x2b23
    push ax                          ; 0x2b26
    call gfx_set_text_color          ; 0x2b27
    add sp, byte 4                   ; 0x2b2a
    mov ax, 0                        ; 0x2b2d
    push ax                          ; 0x2b30
    mov ax, 3                        ; 0x2b31
    push ax                          ; 0x2b34
    push word [bp + 0xa]             ; 0x2b35
    call ds_app_GUML                 ; 0x2b38
    add sp, byte 6                   ; 0x2b3b
    jmp short @..loc_GPGU.l2         ; 0x2b3e
@..loc_GPGU.l1:
    mov ax, 0                        ; 0x2b40
    push ax                          ; 0x2b43
    push ax                          ; 0x2b44
    call gfx_set_text_color          ; 0x2b45
    add sp, byte 4                   ; 0x2b48
    mov ax, 0                        ; 0x2b4b
    push ax                          ; 0x2b4e
    mov ax, dseg_90a7                ; 0x2b4f
    push ax                          ; 0x2b52
    call ds_string_loc_QRJV          ; 0x2b53
    add sp, byte 4                   ; 0x2b56
@..loc_GPGU.l2:
    ret                              ; 0x2b59
