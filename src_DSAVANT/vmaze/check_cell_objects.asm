; auto-generated
check_cell_objects:
    mov ax, 0xfff6                   ; 0x8c47
    call aztec_csav                  ; 0x8c4a
    mov ax, word [party_map_piece]   ; 0x8c4d
    mov cx, 6                        ; 0x8c50
    shl ax, cl                       ; 0x8c53
    mov cx, word [party_cell_y]      ; 0x8c55
    shl cx, 1                        ; 0x8c59
    shl cx, 1                        ; 0x8c5b
    shl cx, 1                        ; 0x8c5d
    add ax, cx                       ; 0x8c5f
    add ax, word [party_cell_x]      ; 0x8c61
    mov word [bp - 2], ax            ; 0x8c65
    lea ax, word [bp - 8]            ; 0x8c68
    push ax                          ; 0x8c6b
    lea ax, word [bp - 6]            ; 0x8c6c
    push ax                          ; 0x8c6f
    push word [bp - 2]               ; 0x8c70
    call read_cell_kind_direction    ; 0x8c73
    add sp, byte 6                   ; 0x8c76
    mov word [bp - 0xa], 0           ; 0x8c79
    mov ax, word [bp - 6]            ; 0x8c7e
    cmp ax, strict word 5            ; 0x8c81
    je short @..check_cell_objects.l1 ; 0x8c84
    cmp ax, strict word 0xa          ; 0x8c86
    je short @..check_cell_objects.l1 ; 0x8c89
    cmp ax, strict word 0xb          ; 0x8c8b
    jne short @..check_cell_objects.l3 ; 0x8c8e
@..check_cell_objects.l1:
    mov ax, word [bp - 8]            ; 0x8c90
    cmp ax, word [party_tag]         ; 0x8c93
    jne short @..check_cell_objects.l3 ; 0x8c97
    cmp word [bp + 4], byte 0        ; 0x8c99
    je short @..check_cell_objects.l2 ; 0x8c9d
    mov word [bp - 0xa], 2           ; 0x8c9f
@..check_cell_objects.l2:
    jmp short @..check_cell_objects.l4 ; 0x8ca4
@..check_cell_objects.l3:
    cmp word [bp + 4], byte 0        ; 0x8ca6
    je short @..check_cell_objects.l4 ; 0x8caa
    mov word [bp - 0xa], 1           ; 0x8cac
    mov ax, MSG_SEARCHING            ; 0x8cb1
    push ax                          ; 0x8cb4
    call show_message                ; 0x8cb5
    pop cx                           ; 0x8cb8
    push word [message_delay]        ; 0x8cb9
    call wait_ticks_or_key           ; 0x8cbd
    pop cx                           ; 0x8cc0
@..check_cell_objects.l4:
    mov ax, 0x98                     ; 0x8cc1
    push ax                          ; 0x8cc4
    mov ax, 0x13f                    ; 0x8cc5
    push ax                          ; 0x8cc8
    mov ax, 0x92                     ; 0x8cc9
    push ax                          ; 0x8ccc
    mov ax, 0                        ; 0x8ccd
    push ax                          ; 0x8cd0
    call gfx_show_area               ; 0x8cd1
    add sp, byte 8                   ; 0x8cd4
    mov bx, word [maze_tables]       ; 0x8cd7
    mov si, word [party_map_piece]   ; 0x8cdb
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x8cdf
    sub ah, ah                       ; 0x8ce3
    mov word [bp - 4], ax            ; 0x8ce5
@..check_cell_objects.l5:
    push word [bp - 4]               ; 0x8ce8
    push word [party_map_piece]      ; 0x8ceb
    push word [party_cell_y]         ; 0x8cef
    push word [party_cell_x]         ; 0x8cf3
    call find_object_at              ; 0x8cf7
    add sp, byte 8                   ; 0x8cfa
    mov word [bp - 4], ax            ; 0x8cfd
    cmp ax, strict word 0xffff       ; 0x8d00
    jne short @..check_cell_objects.l6 ; 0x8d03
    jmp near @..check_cell_objects.l10 ; 0x8d05
@..check_cell_objects.l6:
    mov bx, word [maze_tables]       ; 0x8d08
    mov si, ax                       ; 0x8d0c
    cmp byte [bx + si + 0x5a0], 7    ; 0x8d0e
    jne short @..check_cell_objects.l7 ; 0x8d13
    mov ax, 2                        ; 0x8d15
    push ax                          ; 0x8d18
    mov ax, word [party_tag]         ; 0x8d19
    shl ax, 1                        ; 0x8d1c
    add ax, strict word 8            ; 0x8d1e
    push ax                          ; 0x8d21
    shl si, 1                        ; 0x8d22
    push word [bx + si + 0x3c0]      ; 0x8d24
    call get_bits                    ; 0x8d28
    add sp, byte 6                   ; 0x8d2b
    cmp ax, strict word 2            ; 0x8d2e
    jne short @..check_cell_objects.l7 ; 0x8d31
    push word [bp - 4]               ; 0x8d33
    call claim_cell                  ; 0x8d36
    pop cx                           ; 0x8d39
    ret                              ; 0x8d3a
@..check_cell_objects.l7:
    mov bx, word [maze_tables]       ; 0x8d3b
    mov si, word [bp - 4]            ; 0x8d3f
    cmp byte [bx + si + 0x5a0], 8    ; 0x8d42
    jne short @..check_cell_objects.l8 ; 0x8d47
    push si                          ; 0x8d49
    call check_type8_object          ; 0x8d4a
    pop cx                           ; 0x8d4d
    cmp ax, strict word 1            ; 0x8d4e
    jne short @..check_cell_objects.l8 ; 0x8d51
    ret                              ; 0x8d53
@..check_cell_objects.l8:
    mov bx, word [maze_tables]       ; 0x8d54
    mov si, word [bp - 4]            ; 0x8d58
    cmp byte [bx + si + 0x5a0], 0x19 ; 0x8d5b
    jne short @..check_cell_objects.l9 ; 0x8d60
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x8d62
    sub ah, ah                       ; 0x8d66
    mov word [found_object_owner], ax ; 0x8d68
    cmp ax, word [party_tag]         ; 0x8d6b
    jne short @..check_cell_objects.l9 ; 0x8d6f
    mov word [game_state], 0x1b      ; 0x8d71
    mov word [party_region], si      ; 0x8d77
    ret                              ; 0x8d7b
@..check_cell_objects.l9:
    inc word [bp - 4]                ; 0x8d7c
    jmp near @..check_cell_objects.l5 ; 0x8d7f
@..check_cell_objects.l10:
    cmp word [bp - 0xa], byte 2      ; 0x8d82
    jne short @..check_cell_objects.l11 ; 0x8d86
    mov ax, MSG_SEARCHING            ; 0x8d88
    push ax                          ; 0x8d8b
    call show_message                ; 0x8d8c
    pop cx                           ; 0x8d8f
    push word [message_delay]        ; 0x8d90
    call wait_ticks_or_key           ; 0x8d94
    pop cx                           ; 0x8d97
    mov ax, 0x98                     ; 0x8d98
    push ax                          ; 0x8d9b
    mov ax, 0x13f                    ; 0x8d9c
    push ax                          ; 0x8d9f
    mov ax, 0x92                     ; 0x8da0
    push ax                          ; 0x8da3
    mov ax, 0                        ; 0x8da4
    push ax                          ; 0x8da7
    call gfx_show_area               ; 0x8da8
    add sp, byte 8                   ; 0x8dab
@..check_cell_objects.l11:
    cmp word [bp - 0xa], byte 0      ; 0x8dae
    je short @..check_cell_objects.l12 ; 0x8db2
    mov ax, MSG_NOTHING_2045         ; 0x8db4
    push ax                          ; 0x8db7
    call show_message                ; 0x8db8
    pop cx                           ; 0x8dbb
    mov ax, 0                        ; 0x8dbc
    push ax                          ; 0x8dbf
    call play_sound_effect           ; 0x8dc0
    pop cx                           ; 0x8dc3
    mov ax, word [message_delay]     ; 0x8dc4
    mov cx, 2                        ; 0x8dc7
    cwd                              ; 0x8dca
    idiv cx                          ; 0x8dcb
    push ax                          ; 0x8dcd
    call wait_ticks_or_key           ; 0x8dce
    pop cx                           ; 0x8dd1
@..check_cell_objects.l12:
    mov ax, 0x98                     ; 0x8dd2
    push ax                          ; 0x8dd5
    mov ax, 0x13f                    ; 0x8dd6
    push ax                          ; 0x8dd9
    mov ax, 0x92                     ; 0x8dda
    push ax                          ; 0x8ddd
    mov ax, 0                        ; 0x8dde
    push ax                          ; 0x8de1
    call gfx_show_area               ; 0x8de2
    add sp, byte 8                   ; 0x8de5
    ret                              ; 0x8de8
