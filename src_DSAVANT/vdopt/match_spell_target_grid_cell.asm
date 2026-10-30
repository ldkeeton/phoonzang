; auto-generated
match_spell_target_grid_cell:
    mov ax, 0                        ; 0x0ede
    call aztec_csav                  ; 0x0ee1
    mov ax, 0x24                     ; 0x0ee4
    imul word [bp + 4]               ; 0x0ee7
    mov cx, word [bp + 6]            ; 0x0eea
    shl cx, 1                        ; 0x0eed
    add ax, cx                       ; 0x0eef
    mov bx, ax                       ; 0x0ef1
    mov ax, word [bx + target_grid_secondary] ; 0x0ef3
    cmp ax, word [target_spell_top_left] ; 0x0ef7
    jne short .forward1              ; 0x0efb
    mov ax, word [bx + target_grid_tertiary] ; 0x0efd
    cmp ax, word [target_spell_top_right] ; 0x0f01
    jne short .forward1              ; 0x0f05
    mov ax, word [bx + bss_9348]     ; 0x0f07
    cmp ax, word [target_spell_top_left] ; 0x0f0b
    jne short .forward1              ; 0x0f0f
    mov ax, word [bx + bss_95ac]     ; 0x0f11
    cmp ax, word [target_spell_top_right] ; 0x0f15
    jne short .forward1              ; 0x0f19
    mov ax, word [target_spell_column_count] ; 0x0f1b
    mov word [bx + target_grid_primary], ax ; 0x0f1e
.forward1:
    mov ax, word [bx + target_grid_secondary] ; 0x0f22
    cmp ax, word [target_spell_center_left] ; 0x0f26
    jne short .return1               ; 0x0f2a
    mov ax, word [bx + target_grid_tertiary] ; 0x0f2c
    cmp ax, word [target_spell_center_right] ; 0x0f30
    jne short .return1               ; 0x0f34
    mov ax, word [bx + bss_9348]     ; 0x0f36
    cmp ax, word [target_spell_center_left] ; 0x0f3a
    jne short .return1               ; 0x0f3e
    mov ax, word [bx + bss_95ac]     ; 0x0f40
    cmp ax, word [target_spell_center_right] ; 0x0f44
    jne short .return1               ; 0x0f48
    mov ax, word [target_spell_fixed_pair] ; 0x0f4a
    mov word [bx + target_grid_primary], ax ; 0x0f4d
.return1:
    ret                              ; 0x0f51
