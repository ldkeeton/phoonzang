; auto-generated
initialize_intro_layout:
    mov ax, 0                        ; 0x1f0e
    call aztec_csav                  ; 0x1f11
    mov al, byte [bp + 4]            ; 0x1f14
    mov byte [intro_layout_value_1], al ; 0x1f17
    mov byte [intro_layout_copy_1], al ; 0x1f1a
    mov al, byte [bp + 6]            ; 0x1f1d
    mov byte [intro_layout_value_2], al ; 0x1f20
    mov byte [intro_layout_copy_2], al ; 0x1f23
    mov al, byte [bp + 8]            ; 0x1f26
    mov byte [intro_layout_value_3], al ; 0x1f29
    mov byte [intro_layout_copy_3], al ; 0x1f2c
    mov al, byte [bp + 0xa]          ; 0x1f2f
    mov byte [intro_layout_value_4], al ; 0x1f32
    mov byte [intro_layout_copy_4], al ; 0x1f35
    mov al, byte [bp + 0xc]          ; 0x1f38
    mov byte [intro_layout_value_5], al ; 0x1f3b
    mov byte [intro_layout_copy_5], al ; 0x1f3e
    mov al, byte [bp + 0xe]          ; 0x1f41
    mov byte [intro_layout_value_6], al ; 0x1f44
    mov byte [intro_layout_copy_6], al ; 0x1f47
    mov al, byte [bp + 0x10]         ; 0x1f4a
    mov byte [intro_layout_value_7], al ; 0x1f4d
    mov byte [intro_layout_copy_7], al ; 0x1f50
    mov al, byte [bp + 0x12]         ; 0x1f53
    mov byte [intro_layout_value_8], al ; 0x1f56
    mov byte [intro_layout_copy_8], al ; 0x1f59
    mov al, byte [bp + 0x14]         ; 0x1f5c
    mov byte [intro_layout_value_9], al ; 0x1f5f
    mov byte [intro_layout_copy_9], al ; 0x1f62
    mov al, byte [bp + 0x16]         ; 0x1f65
    mov byte [intro_layout_value_10], al ; 0x1f68
    mov byte [intro_layout_copy_10], al ; 0x1f6b
    ret                              ; 0x1f6e
