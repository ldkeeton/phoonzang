; auto-generated
loc_TIPV:
    mov ax, 0                        ; 0x0f52
    call aztec_csav                  ; 0x0f55
    mov ax, 0x55                     ; 0x0f58
    push ax                          ; 0x0f5b
    mov ax, 7                        ; 0x0f5c
    imul word [bp + 0x6]             ; 0x0f5f
    add ax, word [grid_origin_y]     ; 0x0f62
    inc ax                           ; 0x0f66
    inc ax                           ; 0x0f67
    inc ax                           ; 0x0f68
    push ax                          ; 0x0f69
    mov ax, 7                        ; 0x0f6a
    imul word [bp + 0x4]             ; 0x0f6d
    add ax, word [grid_origin_x]     ; 0x0f70
    inc ax                           ; 0x0f74
    inc ax                           ; 0x0f75
    inc ax                           ; 0x0f76
    push ax                          ; 0x0f77
    call gfx_put_pixel               ; 0x0f78
    add sp, byte 6                   ; 0x0f7b
    ret                              ; 0x0f7e
