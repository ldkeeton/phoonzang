; auto-generated
show_region_message:
    mov ax, 0xffe2                   ; 0x7034
    call aztec_csav                  ; 0x7037
    mov ax, word [party_region]      ; 0x703a
    shl ax, 1                        ; 0x703d
    mov si, ax                       ; 0x703f
    mov bx, word [maze_tables]       ; 0x7041
    cmp word [bx + si], byte 0       ; 0x7045
    jle short .forward1              ; 0x7048
    push word [bx + si]              ; 0x704a
    call show_message                ; 0x704c
    pop cx                           ; 0x704f
    push word [message_delay]        ; 0x7050
    call wait_ticks_or_key           ; 0x7054
    pop cx                           ; 0x7057
    mov ax, 0x98                     ; 0x7058
    push ax                          ; 0x705b
    mov ax, 0x13f                    ; 0x705c
    push ax                          ; 0x705f
    mov ax, 0x92                     ; 0x7060
    push ax                          ; 0x7063
    mov ax, 0                        ; 0x7064
    push ax                          ; 0x7067
    call call_show_area              ; 0x7068
    add sp, byte 8                   ; 0x706b
.forward1:
    mov ax, word [party_region]      ; 0x706e
    shl ax, 1                        ; 0x7071
    mov si, ax                       ; 0x7073
    mov bx, word [maze_tables]       ; 0x7075
    mov ax, word [bx + si + 0x1e0]   ; 0x7079
    mov word [bp - 0x1e], ax         ; 0x707d
    mov ax, word [bx + si + 0x3c0]   ; 0x7080
    mov word [bp - 0xe], ax          ; 0x7084
    mov word [bp - 2], 0             ; 0x7087
.back1:
    mov ax, 1                        ; 0x708c
    push ax                          ; 0x708f
    mov ax, word [bp - 2]            ; 0x7090
    add ax, strict word 8            ; 0x7093
    push ax                          ; 0x7096
    push word [bp - 0xe]             ; 0x7097
    call get_bits                    ; 0x709a
    add sp, byte 6                   ; 0x709d
    mov cx, word [bp - 2]            ; 0x70a0
    shl cx, 1                        ; 0x70a3
    mov bx, cx                       ; 0x70a5
    add bx, bp                       ; 0x70a7
    mov word [bx - 0xc], ax          ; 0x70a9
    inc word [bp - 2]                ; 0x70ac
    mov ax, word [bp - 2]            ; 0x70af
    cmp ax, strict word 4            ; 0x70b2
    jl short .back1                  ; 0x70b5
    mov ax, 8                        ; 0x70b7
    push ax                          ; 0x70ba
    mov ax, 0                        ; 0x70bb
    push ax                          ; 0x70be
    push word [bp - 0xe]             ; 0x70bf
    call get_bits                    ; 0x70c2
    add sp, byte 6                   ; 0x70c5
    mov word [bp - 0x10], ax         ; 0x70c8
    mov bx, word [maze_tables]       ; 0x70cb
    mov si, word [party_region]      ; 0x70cf
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x70d3
    sub ah, ah                       ; 0x70d7
    mov word [bp - 0x12], ax         ; 0x70d9
    mov ax, 1                        ; 0x70dc
    push ax                          ; 0x70df
    mov ax, 0xc                      ; 0x70e0
    push ax                          ; 0x70e3
    push word [bp - 0xe]             ; 0x70e4
    call get_bits                    ; 0x70e7
    add sp, byte 6                   ; 0x70ea
    mov word [bp - 0x18], ax         ; 0x70ed
    mov ax, 1                        ; 0x70f0
    push ax                          ; 0x70f3
    mov ax, 0xd                      ; 0x70f4
    push ax                          ; 0x70f7
    push word [bp - 0xe]             ; 0x70f8
    call get_bits                    ; 0x70fb
    add sp, byte 6                   ; 0x70fe
    cmp ax, strict word 1            ; 0x7101
    jne short .forward2              ; 0x7104
    mov ax, 1                        ; 0x7106
    jmp short .forward3              ; 0x7109
.forward2:
    mov ax, 0xffff                   ; 0x710b
.forward3:
    mov word [bp - 0x1a], ax         ; 0x710e
    mov ax, 1                        ; 0x7111
    push ax                          ; 0x7114
    mov ax, 0xe                      ; 0x7115
    push ax                          ; 0x7118
    push word [bp - 0xe]             ; 0x7119
    call get_bits                    ; 0x711c
    add sp, byte 6                   ; 0x711f
    mov word [bp - 0x1c], ax         ; 0x7122
    mov word [bp - 2], 0             ; 0x7125
    jmp near .forward13              ; 0x712a
.back2:
    lea ax, word [bp - 0xc]          ; 0x712d
    push ax                          ; 0x7130
    call pick_region_marker_party_tag ; 0x7131
    pop cx                           ; 0x7134
    mov word [bp - 0x16], ax         ; 0x7135
    cmp word [bp - 0x18], byte 1     ; 0x7138
    jne short .forward8              ; 0x713c
    cmp ax, word [party_tag]         ; 0x713e
    je short .forward8               ; 0x7142
    cmp word [bp - 0x1a], byte 1     ; 0x7144
    jne short .forward4              ; 0x7148
    sub ax, word [party_tag]         ; 0x714a
    add ax, strict word 4            ; 0x714e
    mov cx, 4                        ; 0x7151
    cwd                              ; 0x7154
    idiv cx                          ; 0x7155
    mov word [bp - 0x14], dx         ; 0x7157
    jmp short .forward5              ; 0x715a
.forward4:
    mov ax, word [party_tag]         ; 0x715c
    sub ax, word [bp - 0x16]         ; 0x715f
    add ax, strict word 4            ; 0x7162
    mov cx, 4                        ; 0x7165
    cwd                              ; 0x7168
    idiv cx                          ; 0x7169
    mov word [bp - 0x14], dx         ; 0x716b
.forward5:
    cmp word [bp - 0x12], byte 0     ; 0x716e
    jne short .forward6              ; 0x7172
    dec word [bp - 0x14]             ; 0x7174
.forward6:
    mov word [bp - 4], 0             ; 0x7177
    jmp short .forward7              ; 0x717c
.back3:
    push word [bp - 0x1e]            ; 0x717e
    call wait_ticks_or_key           ; 0x7181
    pop cx                           ; 0x7184
    mov ax, word [party_tag]         ; 0x7185
    add ax, word [bp - 0x1a]         ; 0x7188
    add ax, strict word 4            ; 0x718b
    mov cx, 4                        ; 0x718e
    cwd                              ; 0x7191
    idiv cx                          ; 0x7192
    mov word [party_tag], dx         ; 0x7194
    call redraw_maze_view            ; 0x7198
    inc word [bp - 4]                ; 0x719b
.forward7:
    mov ax, word [bp - 4]            ; 0x719e
    cmp ax, word [bp - 0x14]         ; 0x71a1
    jl short .back3                  ; 0x71a4
.forward8:
    push word [bp - 0x1e]            ; 0x71a6
    call wait_ticks_or_key           ; 0x71a9
    pop cx                           ; 0x71ac
    mov ax, word [bp - 0x16]         ; 0x71ad
    mov word [party_tag], ax         ; 0x71b0
    cmp word [bp - 0x12], byte 0     ; 0x71b3
    jle short .forward12             ; 0x71b7
    call save_previous_party_position ; 0x71b9
    cmp word [bp - 0x1c], byte 1     ; 0x71bc
    jne short .forward9              ; 0x71c0
    push word [bp - 0x12]            ; 0x71c2
    call random_below                ; 0x71c5
    pop cx                           ; 0x71c8
    inc ax                           ; 0x71c9
    push ax                          ; 0x71ca
    push word [party_tag]            ; 0x71cb
    call adjust_party_world_position ; 0x71cf
    add sp, byte 4                   ; 0x71d2
    jmp short .forward10             ; 0x71d5
.forward9:
    push word [bp - 0x12]            ; 0x71d7
    push word [party_tag]            ; 0x71da
    call adjust_party_world_position ; 0x71de
    add sp, byte 4                   ; 0x71e1
.forward10:
    push word [party_world_y]        ; 0x71e4
    push word [party_world_x]        ; 0x71e8
    mov ax, party_map_piece          ; 0x71ec
    push ax                          ; 0x71ef
    mov ax, party_cell_y             ; 0x71f0
    push ax                          ; 0x71f3
    mov ax, party_cell_x             ; 0x71f4
    push ax                          ; 0x71f7
    call find_map_piece              ; 0x71f8
    add sp, byte 0xa                 ; 0x71fb
    cmp ax, strict word 1            ; 0x71fe
    jne short .forward11             ; 0x7201
    mov ax, 4                        ; 0x7203
    push ax                          ; 0x7206
    mov ax, MSG_YOU_ARE_IN_ROCK      ; 0x7207
    push ax                          ; 0x720a
    call show_rock_entry_message     ; 0x720b
    add sp, byte 4                   ; 0x720e
    ret                              ; 0x7211
.forward11:
    mov bx, word [maze_tables]       ; 0x7212
    mov si, word [party_map_piece]   ; 0x7216
    mov al, byte [bx + si + spell_table + spell_table_rec_size*218 + spell_table_rec.f_0004] ; 0x721a
    sub ah, ah                       ; 0x721e
    mov word [party_region], ax      ; 0x7220
    mov word [region_step_flag], 0   ; 0x7223
.forward12:
    call redraw_maze_view            ; 0x7229
    inc word [bp - 2]                ; 0x722c
.forward13:
    mov ax, word [bp - 2]            ; 0x722f
    cmp ax, word [bp - 0x10]         ; 0x7232
    jge short .forward14             ; 0x7235
    jmp near .back2                  ; 0x7237
.forward14:
    push word [bp - 0x1e]            ; 0x723a
    call wait_ticks_or_key           ; 0x723d
    pop cx                           ; 0x7240
    ret                              ; 0x7241
