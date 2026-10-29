; auto-generated
api_idx_0002_RHUQ:
    mov ax, 0xfffe                   ; 0x7abe
    call aztec_csav                  ; 0x7ac1
    mov ax, word [party_region]      ; 0x7ac4
    shl ax, 1                        ; 0x7ac7
    mov si, ax                       ; 0x7ac9
    mov bx, word [maze_tables]       ; 0x7acb
    mov ax, word [bx + si + 0x3c0]   ; 0x7acf
    mov word [bp - 2], ax            ; 0x7ad3
    mov ax, 1                        ; 0x7ad6
    push ax                          ; 0x7ad9
    mov ax, 2                        ; 0x7ada
    push ax                          ; 0x7add
    push word [bp - 2]               ; 0x7ade
    call get_bits                    ; 0x7ae1
    add sp, byte 6                   ; 0x7ae4
    cmp ax, strict word 1            ; 0x7ae7
    jne short .forward1              ; 0x7aea
    mov ax, 2                        ; 0x7aec
    push ax                          ; 0x7aef
    mov ax, 0                        ; 0x7af0
    push ax                          ; 0x7af3
    push word [bp - 2]               ; 0x7af4
    call get_bits                    ; 0x7af7
    add sp, byte 6                   ; 0x7afa
    mov word [found_object_owner], ax ; 0x7afd
    cmp ax, word [party_tag]         ; 0x7b00
    je short .forward1               ; 0x7b04
    ret                              ; 0x7b06
.forward1:
    mov bx, word [maze_tables]       ; 0x7b07
    mov si, word [party_region]      ; 0x7b0b
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x7b0f
    sub ah, ah                       ; 0x7b13
    mov bx, word [startup_sound_check] ; 0x7b15
    mov word [bx], ax                ; 0x7b19
    mov ax, 1                        ; 0x7b1b
    push ax                          ; 0x7b1e
    mov ax, 3                        ; 0x7b1f
    push ax                          ; 0x7b22
    push word [bp - 2]               ; 0x7b23
    call get_bits                    ; 0x7b26
    add sp, byte 6                   ; 0x7b29
    cmp ax, strict word 1            ; 0x7b2c
    jne short .forward2              ; 0x7b2f
    mov ax, 0                        ; 0x7b31
    jmp short .forward3              ; 0x7b34
.forward2:
    mov ax, 1                        ; 0x7b36
.forward3:
    push ax                          ; 0x7b39
    mov ax, 0                        ; 0x7b3a
    push ax                          ; 0x7b3d
    mov ax, 1                        ; 0x7b3e
    push ax                          ; 0x7b41
    call loc_VGMJ                    ; 0x7b42
    add sp, byte 6                   ; 0x7b45
    mov word [game_state], 0x12      ; 0x7b48
    inc word [party_region]          ; 0x7b4e
    ret                              ; 0x7b52
