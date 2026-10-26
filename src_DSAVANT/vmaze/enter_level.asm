; auto-generated
enter_level:
    mov ax, 0xfff4                   ; 0x0cb5
    call aztec_csav                  ; 0x0cb8
    call loc_OGHL                    ; 0x0cbb
    les bx, word [tick_counter_ptr]  ; 0x0cbe
    mov ax, word [es:bx]             ; 0x0cc2
    mov dx, word [es:bx + 2]         ; 0x0cc5
    add ax, strict word 0x24         ; 0x0cc9
    adc dx, byte 0                   ; 0x0ccc
    mov word [bss_919c], dx          ; 0x0ccf
    mov word [bss_919a], ax          ; 0x0cd3
    call api_idx_0002_LMTG           ; 0x0cd6
    mov ax, word [bp + 4]            ; 0x0cd9
    mov word [game_state_arg], ax    ; 0x0cdc
    push ax                          ; 0x0cdf
    mov ax, 2                        ; 0x0ce0
    push ax                          ; 0x0ce3
    call ensure_game_disk            ; 0x0ce4
    add sp, byte 4                   ; 0x0ce7
    cmp word [game_state_arg], byte 0 ; 0x0cea
    jge short @..enter_level.l1      ; 0x0cef
    mov word [game_state], 7         ; 0x0cf1
    ret                              ; 0x0cf7
@..enter_level.l1:
    call loc_LPSI                    ; 0x0cf8
    mov ax, 0x10                     ; 0x0cfb
    push ax                          ; 0x0cfe
    mov ax, word [game_state_arg]    ; 0x0cff
    mov cx, 4                        ; 0x0d02
    shl ax, cl                       ; 0x0d05
    add ax, party_region + 0x2       ; 0x0d07
    push ax                          ; 0x0d0a
    mov ax, word [game_state_arg]    ; 0x0d0b
    shl ax, cl                       ; 0x0d0e
    add ax, bss_5642                 ; 0x0d10
    push ax                          ; 0x0d13
    call aztec_movmem                ; 0x0d14
    add sp, byte 6                   ; 0x0d17
    mov word [party_return_state], 5 ; 0x0d1a
    mov word [found_object_owner], 0xffff ; 0x0d20
    mov ax, 0                        ; 0x0d26
    push ax                          ; 0x0d29
    mov ax, 0x80                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, bss_8c7e                 ; 0x0d2e
    push ax                          ; 0x0d31
    call aztec_setmem                ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov bx, word [maze_tables]       ; 0x0d38
    mov si, word [party_map_piece]   ; 0x0d3c
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x0d40
    sub ah, ah                       ; 0x0d44
    mov word [party_region], ax      ; 0x0d46
    mov word [bp - 2], 0             ; 0x0d49
@..enter_level.l2:
    mov bx, word [maze_tables]       ; 0x0d4e
    mov si, word [bp - 2]            ; 0x0d52
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x0d55
    sub ah, ah                       ; 0x0d59
    mov word [bp - 4], ax            ; 0x0d5b
@..enter_level.l3:
    cmp word [bp - 4], strict word 0xf0 ; 0x0d5e
    jge short @..enter_level.l5      ; 0x0d63
    mov si, word [bp - 4]            ; 0x0d65
    mov bx, word [maze_tables]       ; 0x0d68
    mov al, byte [bx + si + spell_table + spell_table_rec_size*98 + spell_table_rec.f_0004] ; 0x0d6c
    sub ah, ah                       ; 0x0d70
    cmp ax, word [bp - 2]            ; 0x0d72
    jne short @..enter_level.l5      ; 0x0d75
    cmp byte [bx + si + 0x5a0], 0    ; 0x0d77
    jbe short @..enter_level.l4      ; 0x0d7c
    mov ax, 1                        ; 0x0d7e
    push ax                          ; 0x0d81
    mov ax, word [bp - 2]            ; 0x0d82
    mov cx, 6                        ; 0x0d85
    shl ax, cl                       ; 0x0d88
    push ax                          ; 0x0d8a
    mov al, byte [bx + si + spell_table + spell_table_rec_size*58 + spell_table_rec.f_0004] ; 0x0d8b
    sub ah, ah                       ; 0x0d8f
    mov cx, ax                       ; 0x0d91
    shl ax, 1                        ; 0x0d93
    shl ax, 1                        ; 0x0d95
    shl ax, 1                        ; 0x0d97
    mov cx, ax                       ; 0x0d99
    pop ax                           ; 0x0d9b
    add ax, cx                       ; 0x0d9c
    push ax                          ; 0x0d9e
    mov al, byte [bx + si + spell_table + spell_table_rec_size*18 + spell_table_rec.f_0004] ; 0x0d9f
    sub ah, ah                       ; 0x0da3
    mov cx, ax                       ; 0x0da5
    pop ax                           ; 0x0da7
    add ax, cx                       ; 0x0da8
    push ax                          ; 0x0daa
    mov ax, bss_8c7e                 ; 0x0dab
    push ax                          ; 0x0dae
    call set_bitmap_bit              ; 0x0daf
    add sp, byte 6                   ; 0x0db2
@..enter_level.l4:
    inc word [bp - 4]                ; 0x0db5
    jmp short @..enter_level.l3      ; 0x0db8
@..enter_level.l5:
    inc word [bp - 2]                ; 0x0dba
    mov ax, word [bp - 2]            ; 0x0dbd
    cmp ax, strict word 0x10         ; 0x0dc0
    jl short @..enter_level.l2       ; 0x0dc3
    mov ax, 0                        ; 0x0dc5
    push ax                          ; 0x0dc8
    mov ax, 0x80                     ; 0x0dc9
    push ax                          ; 0x0dcc
    mov ax, bss_8bfe                 ; 0x0dcd
    push ax                          ; 0x0dd0
    call aztec_setmem                ; 0x0dd1
    add sp, byte 6                   ; 0x0dd4
    mov ax, word [bss_0e0e]          ; 0x0dd7
    mov word [bp - 0xc], ax          ; 0x0dda
    mov word [bp - 2], 0             ; 0x0ddd
    jmp short @..enter_level.l8      ; 0x0de2
@..enter_level.l6:
    mov bx, word [bp - 0xc]          ; 0x0de4
    mov al, byte [bx]                ; 0x0de7
    sub ah, ah                       ; 0x0de9
    cmp ax, word [game_state_arg]    ; 0x0deb
    jne short @..enter_level.l7      ; 0x0def
    mov ax, word [bx + 2]            ; 0x0df1
    mov cx, 0x100                    ; 0x0df4
    cwd                              ; 0x0df7
    idiv cx                          ; 0x0df8
    mov word [bp - 6], ax            ; 0x0dfa
    mov ax, word [bx + 2]            ; 0x0dfd
    cwd                              ; 0x0e00
    idiv cx                          ; 0x0e01
    mov ax, dx                       ; 0x0e03
    mov cx, 0x10                     ; 0x0e05
    cwd                              ; 0x0e08
    idiv cx                          ; 0x0e09
    mov word [bp - 8], ax            ; 0x0e0b
    mov ax, word [bx + 2]            ; 0x0e0e
    mov cx, 0x100                    ; 0x0e11
    cwd                              ; 0x0e14
    idiv cx                          ; 0x0e15
    mov ax, dx                       ; 0x0e17
    mov cx, 0x10                     ; 0x0e19
    cwd                              ; 0x0e1c
    idiv cx                          ; 0x0e1d
    mov word [bp - 0xa], dx          ; 0x0e1f
    mov ax, 1                        ; 0x0e22
    push ax                          ; 0x0e25
    mov ax, word [bp - 6]            ; 0x0e26
    mov cx, 6                        ; 0x0e29
    shl ax, cl                       ; 0x0e2c
    shl dx, 1                        ; 0x0e2e
    shl dx, 1                        ; 0x0e30
    shl dx, 1                        ; 0x0e32
    mov cx, dx                       ; 0x0e34
    add ax, cx                       ; 0x0e36
    add ax, word [bp - 8]            ; 0x0e38
    push ax                          ; 0x0e3b
    mov ax, bss_8bfe                 ; 0x0e3c
    push ax                          ; 0x0e3f
    call set_bitmap_bit              ; 0x0e40
    add sp, byte 6                   ; 0x0e43
@..enter_level.l7:
    add word [bp - 0xc], byte 8      ; 0x0e46
    inc word [bp - 2]                ; 0x0e4a
@..enter_level.l8:
    mov ax, word [bp - 2]            ; 0x0e4d
    cmp ax, word [bss_5910]          ; 0x0e50
    jl short @..enter_level.l6       ; 0x0e54
    mov word [game_state], 5         ; 0x0e56
    ret                              ; 0x0e5c
