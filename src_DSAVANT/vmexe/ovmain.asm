; auto-generated
ovmain:
    mov ax, 0                        ; 0x17d1
    call aztec_csav                  ; 0x17d4
    mov word [bss_90e0], 0           ; 0x17d7
    cmp word [game_state], byte 0xd  ; 0x17dd
    jne short @..ovmain.l1           ; 0x17e2
    push word [mouse_pointer_shape_seg] ; 0x17e4
    push word [mouse_pointer_shape]  ; 0x17e8
    call set_mouse_pointer_shape     ; 0x17ec
    add sp, byte 4                   ; 0x17ef
    mov ax, 0                        ; 0x17f2
    push ax                          ; 0x17f5
    mov ax, 0xa4                     ; 0x17f6
    push ax                          ; 0x17f9
    mov ax, 0x12e                    ; 0x17fa
    push ax                          ; 0x17fd
    call gfx_mouse_glide_to          ; 0x17fe
    add sp, byte 6                   ; 0x1801
    call api_idx_000c_VJPM           ; 0x1804
    mov ax, 0                        ; 0x1807
    push ax                          ; 0x180a
    mov ax, 0xa4                     ; 0x180b
    push ax                          ; 0x180e
    mov ax, 0x12e                    ; 0x180f
    push ax                          ; 0x1812
    call gfx_mouse_glide_back        ; 0x1813
    add sp, byte 6                   ; 0x1816
    mov ax, 0                        ; 0x1819
    mov dx, 0                        ; 0x181c
    push dx                          ; 0x181f
    push ax                          ; 0x1820
    call set_mouse_pointer_shape     ; 0x1821
    add sp, byte 4                   ; 0x1824
@..ovmain.l1:
    mov ax, 0                        ; 0x1827
    ret                              ; 0x182a
