; auto-generated
animate_sprite_up: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x2b62
    call aztec_csav                  ; 0x2b65
    call thunk_22                    ; 0x2b68
    test ax, ax                      ; 0x2b6b
    je short @..animate_sprite_up.l3 ; 0x2b6d
@..animate_sprite_up.l1:
    cmp word [bp + 0x6], byte 0      ; 0x2b6f
    jle short @..animate_sprite_up.l2 ; 0x2b73
    call thunk_22                    ; 0x2b75
    test ax, ax                      ; 0x2b78
    je short @..animate_sprite_up.l2 ; 0x2b7a
    push word [bp + 0x6]             ; 0x2b7c
    mov ax, 0                        ; 0x2b7f
    push ax                          ; 0x2b82
    mov ax, word [bp + 0x6]          ; 0x2b83
    add ax, strict word 0xfff6       ; 0x2b86
    push ax                          ; 0x2b89
    call clamp                       ; 0x2b8a
    add sp, byte 6                   ; 0x2b8d
    mov word [bp + 0x6], ax          ; 0x2b90
    push ax                          ; 0x2b93
    push word [bp + 0x4]             ; 0x2b94
    call thunk_24                    ; 0x2b97
    add sp, byte 4                   ; 0x2b9a
    mov ax, 0x19                     ; 0x2b9d
    push ax                          ; 0x2ba0
    call ds_leaf_loc_36d0            ; 0x2ba1
    pop cx                           ; 0x2ba4
    jmp short @..animate_sprite_up.l1 ; 0x2ba5
@..animate_sprite_up.l2:
    call thunk_23                    ; 0x2ba7
@..animate_sprite_up.l3:
    ret                              ; 0x2baa
