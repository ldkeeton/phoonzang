; auto-generated
api_idx_0002_QLLK:
    mov ax, 0xfffe                   ; 0x8e6a
    call aztec_csav                  ; 0x8e6d
    mov bx, word [maze_tables]       ; 0x8e70
    mov si, word [party_map_piece]   ; 0x8e74
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x8e78
    sub ah, ah                       ; 0x8e7c
    mov word [bp - 2], ax            ; 0x8e7e
.back1:
    push word [bp - 2]               ; 0x8e81
    push word [party_map_piece]      ; 0x8e84
    push word [party_cell_y]         ; 0x8e88
    push word [party_cell_x]         ; 0x8e8c
    call find_object_at              ; 0x8e90
    add sp, byte 8                   ; 0x8e93
    mov word [bp - 2], ax            ; 0x8e96
    cmp ax, strict word 0xffff       ; 0x8e99
    jne short .forward1              ; 0x8e9c
    jmp near .return1                ; 0x8e9e
.forward1:
    mov bx, word [maze_tables]       ; 0x8ea1
    mov si, ax                       ; 0x8ea5
    cmp byte [bx + si + 0x5a0], 3    ; 0x8ea7
    jne short .forward2              ; 0x8eac
    push ax                          ; 0x8eae
    call api_idx_0002_NGNS           ; 0x8eaf
    pop cx                           ; 0x8eb2
    cmp ax, strict word 1            ; 0x8eb3
    jne short .forward2              ; 0x8eb6
    ret                              ; 0x8eb8
.forward2:
    mov bx, word [maze_tables]       ; 0x8eb9
    mov si, word [bp - 2]            ; 0x8ebd
    cmp byte [bx + si + 0x5a0], 7    ; 0x8ec0
    jne short .forward4              ; 0x8ec5
    mov ax, 2                        ; 0x8ec7
    push ax                          ; 0x8eca
    mov ax, word [party_tag]         ; 0x8ecb
    shl ax, 1                        ; 0x8ece
    push ax                          ; 0x8ed0
    shl si, 1                        ; 0x8ed1
    push word [bx + si + 0x3c0]      ; 0x8ed3
    call get_bits                    ; 0x8ed7
    add sp, byte 6                   ; 0x8eda
    cmp ax, strict word 1            ; 0x8edd
    je short .forward3               ; 0x8ee0
    mov ax, 2                        ; 0x8ee2
    push ax                          ; 0x8ee5
    mov ax, word [party_tag]         ; 0x8ee6
    shl ax, 1                        ; 0x8ee9
    push ax                          ; 0x8eeb
    mov ax, word [bp - 2]            ; 0x8eec
    shl ax, 1                        ; 0x8eef
    mov si, ax                       ; 0x8ef1
    mov bx, word [maze_tables]       ; 0x8ef3
    push word [bx + si + maze_tables_rec.f_03c0] ; 0x8ef7
    call get_bits                    ; 0x8efb
    add sp, byte 6                   ; 0x8efe
    cmp ax, strict word 2            ; 0x8f01
    jne short .forward4              ; 0x8f04
.forward3:
    mov ax, word [bp - 2]            ; 0x8f06
    mov word [selected_item_record], ax ; 0x8f09
    mov word [game_state], 0x1a      ; 0x8f0c
    ret                              ; 0x8f12
.forward4:
    inc word [bp - 2]                ; 0x8f13
    jmp near .back1                  ; 0x8f16
.return1:
    ret                              ; 0x8f19
