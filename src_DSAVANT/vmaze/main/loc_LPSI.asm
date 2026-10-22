; auto-generated
loc_LPSI:
    mov ax, 0                        ; 0x09cb
    call aztec_csav                  ; 0x09ce
    mov ax, 0                        ; 0x09d1
    push ax                          ; 0x09d4
    push word [game_state_arg]       ; 0x09d5
    push word [maze_data]            ; 0x09d9
    mov ax, 2                        ; 0x09dd
    push ax                          ; 0x09e0
    call data_record_io              ; 0x09e1
    add sp, byte 8                   ; 0x09e4
    mov ax, 0                        ; 0x09e7
    push ax                          ; 0x09ea
    push word [game_state_arg]       ; 0x09eb
    push word [maze_tables]          ; 0x09ef
    mov ax, 3                        ; 0x09f3
    push ax                          ; 0x09f6
    call data_record_io              ; 0x09f7
    add sp, byte 8                   ; 0x09fa
    mov ax, 0x80                     ; 0x09fd
    push ax                          ; 0x0a00
    push ds                          ; 0x0a01
    mov ax, 0x8b7e                   ; 0x0a02
    push ax                          ; 0x0a05
    mov ax, word [game_state_arg]    ; 0x0a06
    mov cx, 7                        ; 0x0a09
    shl ax, cl                       ; 0x0a0c
    mov cx, ax                       ; 0x0a0e
    mov ax, word [bss_0e1a]          ; 0x0a10
    mov dx, word [bss_0e1c]          ; 0x0a13
    add ax, cx                       ; 0x0a17
    push dx                          ; 0x0a19
    push ax                          ; 0x0a1a
    call app_memmove                 ; 0x0a1b
    add sp, byte 0x0a                ; 0x0a1e
    mov ax, 0x80                     ; 0x0a21
    push ax                          ; 0x0a24
    push ds                          ; 0x0a25
    mov ax, 0x8afe                   ; 0x0a26
    push ax                          ; 0x0a29
    mov ax, word [game_state_arg]    ; 0x0a2a
    mov cx, 7                        ; 0x0a2d
    shl ax, cl                       ; 0x0a30
    mov cx, ax                       ; 0x0a32
    mov ax, word [bss_0e16]          ; 0x0a34
    mov dx, word [bss_0e18]          ; 0x0a37
    add ax, cx                       ; 0x0a3b
    push dx                          ; 0x0a3d
    push ax                          ; 0x0a3e
    call app_memmove                 ; 0x0a3f
    add sp, byte 0x0a                ; 0x0a42
    call api_idx_0014_LHRI           ; 0x0a45
    mov bx, word [maze_data]         ; 0x0a48
    mov si, word [party_map_piece]   ; 0x0a4c
    mov al, byte [bx + si + 0x490]   ; 0x0a50
    sub ah, ah                       ; 0x0a54
    add ax, word [party_cell_x]      ; 0x0a56
    mov word [party_world_x], ax     ; 0x0a5a
    mov al, byte [bx + si + 0x4a0]   ; 0x0a5d
    sub ah, ah                       ; 0x0a61
    add ax, word [party_cell_y]      ; 0x0a63
    mov word [party_world_y], ax     ; 0x0a67
    call api_idx_0002_TOSL           ; 0x0a6a
    ret                              ; 0x0a6d
