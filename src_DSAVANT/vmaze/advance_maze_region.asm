; auto-generated
advance_maze_region:
    mov ax, 0                        ; 0x7a34
    call aztec_csav                  ; 0x7a37
    mov ax, 1                        ; 0x7a3a
    push ax                          ; 0x7a3d
    mov ax, 0                        ; 0x7a3e
    push ax                          ; 0x7a41
    mov ax, word [party_region]      ; 0x7a42
    shl ax, 1                        ; 0x7a45
    mov si, ax                       ; 0x7a47
    mov bx, word [maze_tables]       ; 0x7a49
    push word [bx + si + 0x3c0]      ; 0x7a4d
    call get_bits                    ; 0x7a51
    add sp, byte 6                   ; 0x7a54
    cmp ax, strict word 1            ; 0x7a57
    jne short .forward1              ; 0x7a5a
    mov si, word [party_region]      ; 0x7a5c
    mov bx, word [maze_tables]       ; 0x7a60
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x7a64
    sub ah, ah                       ; 0x7a68
    push ax                          ; 0x7a6a
    call choose_character_record     ; 0x7a6b
    pop cx                           ; 0x7a6e
    mov bx, word [character_record_target] ; 0x7a6f
    mov word [bx], ax                ; 0x7a73
    jmp short .forward2              ; 0x7a75
.forward1:
    mov bx, word [maze_tables]       ; 0x7a77
    mov si, word [party_region]      ; 0x7a7b
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x7a7f
    sub ah, ah                       ; 0x7a83
    mov bx, word [character_record_target] ; 0x7a85
    mov word [bx], ax                ; 0x7a89
.forward2:
    mov ax, 1                        ; 0x7a8b
    push ax                          ; 0x7a8e
    push ax                          ; 0x7a8f
    push ax                          ; 0x7a90
    call configure_story_music       ; 0x7a91
    add sp, byte 6                   ; 0x7a94
    mov ax, 2                        ; 0x7a97
    push ax                          ; 0x7a9a
    mov ax, 1                        ; 0x7a9b
    push ax                          ; 0x7a9e
    mov ax, word [party_region]      ; 0x7a9f
    shl ax, 1                        ; 0x7aa2
    mov si, ax                       ; 0x7aa4
    mov bx, word [maze_tables]       ; 0x7aa6
    push word [bx + si + 0x3c0]      ; 0x7aaa
    call get_bits                    ; 0x7aae
    add sp, byte 6                   ; 0x7ab1
    push ax                          ; 0x7ab4
    call mark_region_bits            ; 0x7ab5
    pop cx                           ; 0x7ab8
    inc word [party_region]          ; 0x7ab9
    ret                              ; 0x7abd
