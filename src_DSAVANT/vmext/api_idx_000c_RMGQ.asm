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
    mov word [bp - 0x0002], ax       ; 0x09df
    mov ax, 6                        ; 0x09e2
    push ax                          ; 0x09e5
    push word [bp - 0x0002]          ; 0x09e6
    mov ax, word [maze_data]         ; 0x09e9
    add ax, 0x4b0                    ; 0x09ec
    push ax                          ; 0x09ef
    call ds_leaf_loc_NPSL            ; 0x09f0
    add sp, byte 6                   ; 0x09f3
    mov word [bp - 0x0008], ax       ; 0x09f6
    cmp ax, strict word 1            ; 0x09f9
    je short @..api_idx_000c_RMGQ.l1 ; 0x09fc
    cmp ax, strict word 2            ; 0x09fe
    jne short @..api_idx_000c_RMGQ.l2 ; 0x0a01
@..api_idx_000c_RMGQ.l1:
    mov ax, 2                        ; 0x0a03
    push ax                          ; 0x0a06
    push word [bp - 0x0002]          ; 0x0a07
    mov ax, word [maze_data]         ; 0x0a0a
    add ax, 0x7b0                    ; 0x0a0d
    push ax                          ; 0x0a10
    call ds_leaf_loc_NPSL            ; 0x0a11
    add sp, byte 6                   ; 0x0a14
    cmp ax, word [bp + 0x4]          ; 0x0a17
    jne short @..api_idx_000c_RMGQ.l2 ; 0x0a1a
    mov ax, 1                        ; 0x0a1c
    ret                              ; 0x0a1f
@..api_idx_000c_RMGQ.l2:
    mov ax, word [party_world_x]     ; 0x0a20
    mov word [bp - 0x000a], ax       ; 0x0a23
    mov ax, word [party_world_y]     ; 0x0a26
    mov word [bp - 0x000c], ax       ; 0x0a29
    mov ax, 1                        ; 0x0a2c
    push ax                          ; 0x0a2f
    push word [bp + 0x4]             ; 0x0a30
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
    add sp, byte 0x0a                ; 0x0a50
    test ax, ax                      ; 0x0a53
    je short @..api_idx_000c_RMGQ.l3 ; 0x0a55
    push word [bp - 0x000c]          ; 0x0a57
    push word [bp - 0x000a]          ; 0x0a5a
    call loc_NHMQ                    ; 0x0a5d
    add sp, byte 4                   ; 0x0a60
    mov ax, 1                        ; 0x0a63
    ret                              ; 0x0a66
@..api_idx_000c_RMGQ.l3:
    mov ax, word [party_map_piece]   ; 0x0a67
    mov cx, 6                        ; 0x0a6a
    shl ax, cl                       ; 0x0a6d
    mov cx, word [party_cell_y]      ; 0x0a6f
    shl cx, 1                        ; 0x0a73
    shl cx, 1                        ; 0x0a75
    shl cx, 1                        ; 0x0a77
    add ax, cx                       ; 0x0a79
    add ax, word [party_cell_x]      ; 0x0a7b
    mov word [bp - 0x0002], ax       ; 0x0a7f
    push ax                          ; 0x0a82
    push word [bp + 0x6]             ; 0x0a83
    call test_bit                    ; 0x0a86
    add sp, byte 4                   ; 0x0a89
    cmp ax, strict word 1            ; 0x0a8c
    je short @..api_idx_000c_RMGQ.l4 ; 0x0a8f
    push word [bp - 0x0002]          ; 0x0a91
    mov ax, bss_8b7e                 ; 0x0a94
    push ax                          ; 0x0a97
    call test_bit                    ; 0x0a98
    add sp, byte 4                   ; 0x0a9b
    cmp ax, strict word 1            ; 0x0a9e
    jne short @..api_idx_000c_RMGQ.l5 ; 0x0aa1
@..api_idx_000c_RMGQ.l4:
    push word [bp - 0x000c]          ; 0x0aa3
    push word [bp - 0x000a]          ; 0x0aa6
    call loc_NHMQ                    ; 0x0aa9
    add sp, byte 4                   ; 0x0aac
    mov ax, 1                        ; 0x0aaf
    ret                              ; 0x0ab2
@..api_idx_000c_RMGQ.l5:
    push word [bp - 0x0002]          ; 0x0ab3
    mov ax, word [maze_data]         ; 0x0ab6
    add ax, 0x8b0                    ; 0x0ab9
    push ax                          ; 0x0abc
    call test_bit                    ; 0x0abd
    add sp, byte 4                   ; 0x0ac0
    mov word [bp - 0x0004], ax       ; 0x0ac3
    push word [bp - 0x0002]          ; 0x0ac6
    mov ax, word [maze_data]         ; 0x0ac9
    add ax, 0x930                    ; 0x0acc
    push ax                          ; 0x0acf
    call test_bit                    ; 0x0ad0
    add sp, byte 4                   ; 0x0ad3
    mov word [bp - 0x0006], ax       ; 0x0ad6
    cmp word [bss_918a], byte 0      ; 0x0ad9
    jne short @..api_idx_000c_RMGQ.l6 ; 0x0ade
    call check_at_saved_location     ; 0x0ae0
@..api_idx_000c_RMGQ.l6:
    cmp word [bss_918a], byte 0      ; 0x0ae3
    jne short @..api_idx_000c_RMGQ.l7 ; 0x0ae8
    call api_idx_0004_JIVL           ; 0x0aea
    test ax, ax                      ; 0x0aed
    je short @..api_idx_000c_RMGQ.l8 ; 0x0aef
@..api_idx_000c_RMGQ.l7:
    push word [bp - 0x000c]          ; 0x0af1
    push word [bp - 0x000a]          ; 0x0af4
    call loc_NHMQ                    ; 0x0af7
    add sp, byte 4                   ; 0x0afa
    mov ax, 1                        ; 0x0afd
    ret                              ; 0x0b00
@..api_idx_000c_RMGQ.l8:
    mov si, word [party_map_piece]   ; 0x0b01
    mov bx, word [maze_tables]       ; 0x0b05
    mov al, byte [bx + si + 0xb40]   ; 0x0b09
    sub ah, ah                       ; 0x0b0d
    push ax                          ; 0x0b0f
    push si                          ; 0x0b10
    push word [party_cell_y]         ; 0x0b11
    push word [party_cell_x]         ; 0x0b15
    call find_object_at              ; 0x0b19
    add sp, byte 8                   ; 0x0b1c
    cmp ax, strict word 0xffff       ; 0x0b1f
    je short @..api_idx_000c_RMGQ.l9 ; 0x0b22
    push word [bp - 0x000c]          ; 0x0b24
    push word [bp - 0x000a]          ; 0x0b27
    call loc_NHMQ                    ; 0x0b2a
    add sp, byte 4                   ; 0x0b2d
    mov ax, 1                        ; 0x0b30
    ret                              ; 0x0b33
@..api_idx_000c_RMGQ.l9:
    mov bx, word [maze_tables]       ; 0x0b34
    mov si, word [party_map_piece]   ; 0x0b38
    mov al, byte [bx + si + 0xb40]   ; 0x0b3c
    sub ah, ah                       ; 0x0b40
    mov word [party_region], ax      ; 0x0b42
    mov ax, 0                        ; 0x0b45
    ret                              ; 0x0b48
