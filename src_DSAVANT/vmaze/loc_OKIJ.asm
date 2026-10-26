; auto-generated
loc_OKIJ:
    mov ax, 0                        ; 0x86a9
    call aztec_csav                  ; 0x86ac
    mov ax, 2                        ; 0x86af
    push ax                          ; 0x86b2
    mov ax, 0                        ; 0x86b3
    push ax                          ; 0x86b6
    mov ax, word [party_region]      ; 0x86b7
    shl ax, 1                        ; 0x86ba
    mov si, ax                       ; 0x86bc
    mov bx, word [maze_tables]       ; 0x86be
    push word [bx + si + 0x3c0]      ; 0x86c2
    call get_bits                    ; 0x86c6
    add sp, byte 6                   ; 0x86c9
    push ax                          ; 0x86cc
    mov si, word [party_region]      ; 0x86cd
    mov bx, word [maze_tables]       ; 0x86d1
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x86d5
    sub ah, ah                       ; 0x86d9
    mov cx, 6                        ; 0x86db
    imul cx                          ; 0x86de
    mov bx, ax                       ; 0x86e0
    cmp byte [bx + slot_bit_states + slot_bit_state.status], 0 ; 0x86e2
    je short .forward1               ; 0x86e7
    mov ax, 0                        ; 0x86e9
    jmp short .forward2              ; 0x86ec
.forward1:
    mov ax, 1                        ; 0x86ee
.forward2:
    push ax                          ; 0x86f1
    call loc_GTVH                    ; 0x86f2
    add sp, byte 4                   ; 0x86f5
    ret                              ; 0x86f8
