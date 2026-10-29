; auto-generated
api_idx_000c_RMGQ:
    mov ax, 0xfff4                   ; 0x09be
    call aztec_csav                  ; 0x09c1
    call check_at_saved_location     ; 0x09c4
    mov ax, word [party_map_piece]   ; 0x09c7
    mov cx, 6                        ; 0x09ca
    shl ax, cl                       ; 0x09cd
    mov cx, word [party_cell_y]      ; 0x09cf
    shl cx, 1                        ; 0x09d3
    shl cx, 1                        ; 0x09d5
    shl cx, 1                        ; 0x09d7
    add ax, cx                       ; 0x09d9
    add ax, word [party_cell_x]      ; 0x09db
    mov word [bp - 2], ax            ; 0x09df
    mov ax, 6                        ; 0x09e2
    push ax                          ; 0x09e5
    push word [bp - 2]               ; 0x09e6
    mov ax, word [maze_data]         ; 0x09e9
    add ax, 0x4b0                    ; 0x09ec
    push ax                          ; 0x09ef
    call read_packed_field           ; 0x09f0
    add sp, byte 6                   ; 0x09f3
    mov word [bp - 8], ax            ; 0x09f6
    cmp ax, strict word 1            ; 0x09f9
    je short .forward1               ; 0x09fc
    cmp ax, strict word 2            ; 0x09fe
    jne short .forward2              ; 0x0a01
.forward1:
    mov ax, 2                        ; 0x0a03
    push ax                          ; 0x0a06
    push word [bp - 2]               ; 0x0a07
    mov ax, word [maze_data]         ; 0x0a0a
    add ax, 0x7b0                    ; 0x0a0d
    push ax                          ; 0x0a10
    call read_packed_field           ; 0x0a11
    add sp, byte 6                   ; 0x0a14
    cmp ax, word [bp + 4]            ; 0x0a17
    jne short .forward2              ; 0x0a1a
    mov ax, 1                        ; 0x0a1c
    ret                              ; 0x0a1f
.forward2:
    mov ax, word [party_world_x]     ; 0x0a20
    mov word [bp - 0xa], ax          ; 0x0a23
    mov ax, word [party_world_y]     ; 0x0a26
    mov word [bp - 0xc], ax          ; 0x0a29
    mov ax, 1                        ; 0x0a2c
    push ax                          ; 0x0a2f
    push word [bp + 4]               ; 0x0a30
    call loc_VJNU                    ; 0x0a33
    add sp, byte 4                   ; 0x0a36
    push word [party_world_y]        ; 0x0a39
    push word [party_world_x]        ; 0x0a3d
    mov ax, party_map_piece          ; 0x0a41
    push ax                          ; 0x0a44
    mov ax, party_cell_y             ; 0x0a45
    push ax                          ; 0x0a48
    mov ax, party_cell_x             ; 0x0a49
    push ax                          ; 0x0a4c
    call find_map_piece              ; 0x0a4d
    add sp, byte 0xa                 ; 0x0a50
    test ax, ax                      ; 0x0a53
    je short .forward3               ; 0x0a55
    push word [bp - 0xc]             ; 0x0a57
    push word [bp - 0xa]             ; 0x0a5a
    call loc_NHMQ                    ; 0x0a5d
    add sp, byte 4                   ; 0x0a60
    mov ax, 1                        ; 0x0a63
    ret                              ; 0x0a66
.forward3:
    mov ax, word [party_map_piece]   ; 0x0a67
    mov cx, 6                        ; 0x0a6a
    shl ax, cl                       ; 0x0a6d
    mov cx, word [party_cell_y]      ; 0x0a6f
    shl cx, 1                        ; 0x0a73
    shl cx, 1                        ; 0x0a75
    shl cx, 1                        ; 0x0a77
    add ax, cx                       ; 0x0a79
    add ax, word [party_cell_x]      ; 0x0a7b
    mov word [bp - 2], ax            ; 0x0a7f
    push ax                          ; 0x0a82
    push word [bp + 6]               ; 0x0a83
    call test_bit                    ; 0x0a86
    add sp, byte 4                   ; 0x0a89
    cmp ax, strict word 1            ; 0x0a8c
    je short .forward4               ; 0x0a8f
    push word [bp - 2]               ; 0x0a91
    mov ax, current_map_block_a      ; 0x0a94
    push ax                          ; 0x0a97
    call test_bit                    ; 0x0a98
    add sp, byte 4                   ; 0x0a9b
    cmp ax, strict word 1            ; 0x0a9e
    jne short .forward5              ; 0x0aa1
.forward4:
    push word [bp - 0xc]             ; 0x0aa3
    push word [bp - 0xa]             ; 0x0aa6
    call loc_NHMQ                    ; 0x0aa9
    add sp, byte 4                   ; 0x0aac
    mov ax, 1                        ; 0x0aaf
    ret                              ; 0x0ab2
.forward5:
    push word [bp - 2]               ; 0x0ab3
    mov ax, word [maze_data]         ; 0x0ab6
    add ax, 0x8b0                    ; 0x0ab9
    push ax                          ; 0x0abc
    call test_bit                    ; 0x0abd
    add sp, byte 4                   ; 0x0ac0
    mov word [bp - 4], ax            ; 0x0ac3
    push word [bp - 2]               ; 0x0ac6
    mov ax, word [maze_data]         ; 0x0ac9
    add ax, 0x930                    ; 0x0acc
    push ax                          ; 0x0acf
    call test_bit                    ; 0x0ad0
    add sp, byte 4                   ; 0x0ad3
    mov word [bp - 6], ax            ; 0x0ad6
    cmp word [save_location_flag], byte 0 ; 0x0ad9
    jne short .forward6              ; 0x0ade
    call check_at_saved_location     ; 0x0ae0
.forward6:
    cmp word [save_location_flag], byte 0 ; 0x0ae3
    jne short .forward7              ; 0x0ae8
    call api_idx_0004_SMLK           ; 0x0aea
    test ax, ax                      ; 0x0aed
    je short .forward8               ; 0x0aef
.forward7:
    push word [bp - 0xc]             ; 0x0af1
    push word [bp - 0xa]             ; 0x0af4
    call loc_NHMQ                    ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 1                        ; 0x0afd
    ret                              ; 0x0b00
.forward8:
    mov si, word [party_map_piece]   ; 0x0b01
    mov bx, word [maze_tables]       ; 0x0b05
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    push ax                          ; 0x0b0f
    push si                          ; 0x0b10
    push word [party_cell_y]         ; 0x0b11
    push word [party_cell_x]         ; 0x0b15
    call find_object_at              ; 0x0b19
    add sp, byte 8                   ; 0x0b1c
    cmp ax, strict word 0xffff       ; 0x0b1f
    je short .forward9               ; 0x0b22
    push word [bp - 0xc]             ; 0x0b24
    push word [bp - 0xa]             ; 0x0b27
    call loc_NHMQ                    ; 0x0b2a
    add sp, byte 4                   ; 0x0b2d
    mov ax, 1                        ; 0x0b30
    ret                              ; 0x0b33
.forward9:
    mov bx, word [maze_tables]       ; 0x0b34
    mov si, word [party_map_piece]   ; 0x0b38
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x0b3c
    sub ah, ah                       ; 0x0b40
    mov word [party_region], ax      ; 0x0b42
    mov ax, 0                        ; 0x0b45
    ret                              ; 0x0b48
