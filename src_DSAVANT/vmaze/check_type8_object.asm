; auto-generated
check_type8_object:
    mov ax, 0xfffa                   ; 0x8b52
    call aztec_csav                  ; 0x8b55
    mov ax, word [bp + 0x4]          ; 0x8b58
    shl ax, 1                        ; 0x8b5b
    mov si, ax                       ; 0x8b5d
    mov bx, word [maze_tables]       ; 0x8b5f
    mov ax, word [bx + si + maze_tables_rec.f_03c0] ; 0x8b63
    mov word [bp - 0x0002], ax       ; 0x8b67
    mov ax, 1                        ; 0x8b6a
    push ax                          ; 0x8b6d
    mov ax, 0xe                      ; 0x8b6e
    push ax                          ; 0x8b71
    push word [bp - 0x0002]          ; 0x8b72
    call get_bits                    ; 0x8b75
    add sp, byte 6                   ; 0x8b78
    cmp ax, strict word 1            ; 0x8b7b
    jne short @..check_type8_object.l1 ; 0x8b7e
    mov ax, 2                        ; 0x8b80
    push ax                          ; 0x8b83
    mov ax, 0xc                      ; 0x8b84
    push ax                          ; 0x8b87
    push word [bp - 0x0002]          ; 0x8b88
    call get_bits                    ; 0x8b8b
    add sp, byte 6                   ; 0x8b8e
    cmp ax, word [party_tag]         ; 0x8b91
    je short @..check_type8_object.l1 ; 0x8b95
    mov ax, 0                        ; 0x8b97
    ret                              ; 0x8b9a
@..check_type8_object.l1:
    mov bx, word [maze_tables]       ; 0x8b9b
    mov si, word [bp + 0x4]          ; 0x8b9f
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x8ba2
    sub ah, ah                       ; 0x8ba6
    push ax                          ; 0x8ba8
    call loc_GRON                    ; 0x8ba9
    pop cx                           ; 0x8bac
    mov ax, 8                        ; 0x8bad
    push ax                          ; 0x8bb0
    mov ax, 0                        ; 0x8bb1
    push ax                          ; 0x8bb4
    push word [bp - 0x0002]          ; 0x8bb5
    call get_bits                    ; 0x8bb8
    add sp, byte 6                   ; 0x8bbb
    mov word [bp - 0x0004], ax       ; 0x8bbe
    mov ax, 1                        ; 0x8bc1
    push ax                          ; 0x8bc4
    mov ax, 0xa                      ; 0x8bc5
    push ax                          ; 0x8bc8
    push word [bp - 0x0002]          ; 0x8bc9
    call get_bits                    ; 0x8bcc
    add sp, byte 6                   ; 0x8bcf
    mov word [bp - 0x0006], ax       ; 0x8bd2
    push ax                          ; 0x8bd5
    push word [bp - 0x0004]          ; 0x8bd6
    mov ax, word [game_state_arg]    ; 0x8bd9
    mov cx, 4                        ; 0x8bdc
    shl ax, cl                       ; 0x8bdf
    add ax, party_region + 0x2       ; 0x8be1
    push ax                          ; 0x8be4
    call set_bitmap_bit              ; 0x8be5
    add sp, byte 6                   ; 0x8be8
    mov ax, word [bp + 0x4]          ; 0x8beb
    shl ax, 1                        ; 0x8bee
    mov si, ax                       ; 0x8bf0
    mov bx, word [maze_tables]       ; 0x8bf2
    cmp word [bx + si + maze_tables_rec.f_01e0], byte 0 ; 0x8bf6
    jle short @..check_type8_object.l2 ; 0x8bfb
    mov ax, 0                        ; 0x8bfd
    push ax                          ; 0x8c00
    push word [bx + si + 0x1e0]      ; 0x8c01
    mov ax, word [game_state_arg]    ; 0x8c05
    mov cx, 4                        ; 0x8c08
    shl ax, cl                       ; 0x8c0b
    add ax, party_region + 0x2       ; 0x8c0d
    push ax                          ; 0x8c10
    call set_bitmap_bit              ; 0x8c11
    add sp, byte 6                   ; 0x8c14
@..check_type8_object.l2:
    mov ax, word [bp + 0x4]          ; 0x8c17
    mov word [party_region], ax      ; 0x8c1a
    mov ax, 2                        ; 0x8c1d
    push ax                          ; 0x8c20
    mov ax, 8                        ; 0x8c21
    push ax                          ; 0x8c24
    push word [bp - 0x0002]          ; 0x8c25
    call get_bits                    ; 0x8c28
    add sp, byte 6                   ; 0x8c2b
    mov word [bp - 0x0004], ax       ; 0x8c2e
    push ax                          ; 0x8c31
    call mark_region_bits            ; 0x8c32
    pop cx                           ; 0x8c35
    mov ax, word [bp + 0x4]          ; 0x8c36
    inc ax                           ; 0x8c39
    mov word [party_region], ax      ; 0x8c3a
    mov word [location_changed], 1   ; 0x8c3d
    mov ax, 1                        ; 0x8c43
    ret                              ; 0x8c46
