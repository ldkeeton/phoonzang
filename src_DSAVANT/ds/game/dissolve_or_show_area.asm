; auto-generated
dissolve_or_show_area: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x0d7a
    call aztec_csav                  ; 0x0d7d
    cmp byte [no_dissolve], 0        ; 0x0d80
    jne short @..dissolve_or_show_area.l3 ; 0x0d85
    cmp word [mouse_active], byte 0  ; 0x0d87
    je short @..dissolve_or_show_area.l1 ; 0x0d8c
    push word [mouse_pointer_shape + 0x2] ; 0x0d8e
    push word [mouse_pointer_shape]  ; 0x0d92
    call set_mouse_pointer_shape     ; 0x0d96
    add sp, byte 4                   ; 0x0d99
    mov ax, 0                        ; 0x0d9c
    push ax                          ; 0x0d9f
    mov ax, 0xa4                     ; 0x0da0
    push ax                          ; 0x0da3
    mov ax, 0x12e                    ; 0x0da4
    push ax                          ; 0x0da7
    call gfx_mouse_glide_to          ; 0x0da8
    add sp, byte 6                   ; 0x0dab
@..dissolve_or_show_area.l1:
    mov ax, 0                        ; 0x0dae
    push ax                          ; 0x0db1
    push word [bp + 0xa]             ; 0x0db2
    push word [bp + 0x8]             ; 0x0db5
    push word [bp + 0x6]             ; 0x0db8
    push word [bp + 0x4]             ; 0x0dbb
    call gfx_dissolve_area           ; 0x0dbe
    add sp, byte 0x0a                ; 0x0dc1
    cmp word [mouse_active], byte 0  ; 0x0dc4
    je short @..dissolve_or_show_area.l2 ; 0x0dc9
    mov ax, 0                        ; 0x0dcb
    push ax                          ; 0x0dce
    mov ax, 0xa4                     ; 0x0dcf
    push ax                          ; 0x0dd2
    mov ax, 0x12e                    ; 0x0dd3
    push ax                          ; 0x0dd6
    call gfx_mouse_glide_back        ; 0x0dd7
    add sp, byte 6                   ; 0x0dda
    mov ax, 0                        ; 0x0ddd
    mov dx, 0                        ; 0x0de0
    push dx                          ; 0x0de3
    push ax                          ; 0x0de4
    call set_mouse_pointer_shape     ; 0x0de5
    add sp, byte 4                   ; 0x0de8
@..dissolve_or_show_area.l2:
    jmp short @..dissolve_or_show_area.l4 ; 0x0deb
@..dissolve_or_show_area.l3:
    push word [bp + 0xa]             ; 0x0ded
    push word [bp + 0x8]             ; 0x0df0
    push word [bp + 0x6]             ; 0x0df3
    push word [bp + 0x4]             ; 0x0df6
    call gfx_show_area               ; 0x0df9
    add sp, byte 8                   ; 0x0dfc
@..dissolve_or_show_area.l4:
    call flush_keyboard              ; 0x0dff
    ret                              ; 0x0e02
