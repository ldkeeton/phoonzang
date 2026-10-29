; auto-generated
api_idx_000e_RTSO:
    mov ax, 0xfff2                   ; 0x804e
    call aztec_csav                  ; 0x8051
    mov ax, 5                        ; 0x8054
    push ax                          ; 0x8057
    call wait_ticks_or_key           ; 0x8058
    pop cx                           ; 0x805b
    mov ax, word [party_region]      ; 0x805c
    shl ax, 1                        ; 0x805f
    mov si, ax                       ; 0x8061
    mov bx, word [maze_tables]       ; 0x8063
    mov ax, word [bx + si + 0x3c0]   ; 0x8067
    mov word [bp - 2], ax            ; 0x806b
    mov ax, 8                        ; 0x806e
    push ax                          ; 0x8071
    mov ax, 0                        ; 0x8072
    push ax                          ; 0x8075
    push word [bp - 2]               ; 0x8076
    call get_bits                    ; 0x8079
    add sp, byte 6                   ; 0x807c
    mov word [bp - 6], ax            ; 0x807f
    mov bx, word [maze_tables]       ; 0x8082
    mov si, word [party_region]      ; 0x8086
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x808a
    sub ah, ah                       ; 0x808e
    mov word [bp - 0xa], ax          ; 0x8090
    cmp word [bp - 0xa], byte 0      ; 0x8093
    jne short .forward3              ; 0x8097
.back1:
    call pick_party_member           ; 0x8099
    mov word [bp - 4], ax            ; 0x809c
    cmp ax, strict word 0xffff       ; 0x809f
    je short .forward1               ; 0x80a2
    push ax                          ; 0x80a4
    call member_is_active            ; 0x80a5
    pop cx                           ; 0x80a8
    test ax, ax                      ; 0x80a9
    jne short .forward2              ; 0x80ab
.forward1:
    jmp short .back1                 ; 0x80ad
.forward2:
    mov ax, 3                        ; 0x80af
    push ax                          ; 0x80b2
    mov ax, 0xb                      ; 0x80b3
    push ax                          ; 0x80b6
    push word [bp - 2]               ; 0x80b7
    call get_bits                    ; 0x80ba
    add sp, byte 6                   ; 0x80bd
    push ax                          ; 0x80c0
    mov ax, 0x248                    ; 0x80c1
    imul word [bp - 4]               ; 0x80c4
    mov cx, ax                       ; 0x80c7
    pop ax                           ; 0x80c9
    add ax, cx                       ; 0x80ca
    mov bx, ax                       ; 0x80cc
    mov al, byte [bx + party_records + pc_rec.stat] ; 0x80ce
    sub ah, ah                       ; 0x80d2
    mov word [bp - 0xa], ax          ; 0x80d4
    jmp near .forward8               ; 0x80d7
.forward3:
    cmp word [bp - 0xa], strict word 0xfe ; 0x80da
    jne short .forward5              ; 0x80df
    cmp word [bp - 6], byte 0x15     ; 0x80e1
    jne short .forward4              ; 0x80e5
    mov ax, 1                        ; 0x80e7
    push ax                          ; 0x80ea
    mov ax, 0x12                     ; 0x80eb
    push ax                          ; 0x80ee
    push word [member_roster_index]  ; 0x80ef
    call loc_SIKN                    ; 0x80f3
    add sp, byte 6                   ; 0x80f6
.forward4:
    mov ax, 0x248                    ; 0x80f9
    imul word [member_roster_index]  ; 0x80fc
    mov bx, ax                       ; 0x8100
    mov al, byte [bx + party_records + pc_rec.stat + 0x4] ; 0x8102
    sub ah, ah                       ; 0x8106
    mov cx, 2                        ; 0x8108
    cwd                              ; 0x810b
    idiv cx                          ; 0x810c
    push ax                          ; 0x810e
    mov al, byte [bx + party_records + pc_rec.flag + 0x12] ; 0x810f
    sub ah, ah                       ; 0x8113
    mov cx, 3                        ; 0x8115
    cwd                              ; 0x8118
    idiv cx                          ; 0x8119
    mov cx, ax                       ; 0x811b
    pop ax                           ; 0x811d
    add ax, cx                       ; 0x811e
    mov word [bp - 0xa], ax          ; 0x8120
    jmp short .forward8              ; 0x8123
.forward5:
    cmp word [bp - 0xa], strict word 0xff ; 0x8125
    jne short .forward8              ; 0x812a
    mov word [bp - 0xa], 0           ; 0x812c
    mov word [bp - 4], 0             ; 0x8131
    jmp short .forward7              ; 0x8136
.back2:
    push word [bp - 4]               ; 0x8138
    call member_is_active            ; 0x813b
    pop cx                           ; 0x813e
    test ax, ax                      ; 0x813f
    je short .forward6               ; 0x8141
    mov ax, 0x248                    ; 0x8143
    imul word [bp - 4]               ; 0x8146
    mov bx, ax                       ; 0x8149
    mov al, byte [bx + party_records + pc_rec.flag + 0xb] ; 0x814b
    sub ah, ah                       ; 0x814f
    add word [bp - 0xa], ax          ; 0x8151
    mov ax, 2                        ; 0x8154
    push ax                          ; 0x8157
    mov ax, 0xb                      ; 0x8158
    push ax                          ; 0x815b
    push word [bp - 4]               ; 0x815c
    call loc_SIKN                    ; 0x815f
    add sp, byte 6                   ; 0x8162
.forward6:
    inc word [bp - 4]                ; 0x8165
.forward7:
    mov ax, word [bp - 4]            ; 0x8168
    cmp ax, word [party_char_count]  ; 0x816b
    jl short .back2                  ; 0x816f
    mov ax, word [bp - 0xa]          ; 0x8171
    cwd                              ; 0x8174
    idiv word [party_char_count]     ; 0x8175
    mov word [bp - 0xa], ax          ; 0x8179
.forward8:
    push word [bp - 6]               ; 0x817c
    call random_below                ; 0x817f
    pop cx                           ; 0x8182
    mov word [bp - 0xc], ax          ; 0x8183
    cmp ax, word [bp - 0xa]          ; 0x8186
    jge short .forward9              ; 0x8189
    mov ax, word [party_region]      ; 0x818b
    shl ax, 1                        ; 0x818e
    mov si, ax                       ; 0x8190
    mov bx, word [maze_tables]       ; 0x8192
    mov ax, word [bx + si]           ; 0x8196
    jmp short .forward10             ; 0x8198
.forward9:
    mov ax, word [party_region]      ; 0x819a
    shl ax, 1                        ; 0x819d
    mov si, ax                       ; 0x819f
    mov bx, word [maze_tables]       ; 0x81a1
    mov ax, word [bx + si + 0x1e0]   ; 0x81a5
.forward10:
    mov word [bp - 0xe], ax          ; 0x81a9
    mov ax, 0                        ; 0x81ac
    push ax                          ; 0x81af
    push word [bp - 0xe]             ; 0x81b0
    mov ax, word [game_state_arg]    ; 0x81b3
    mov cx, 4                        ; 0x81b6
    shl ax, cl                       ; 0x81b9
    add ax, party_region + 0x2       ; 0x81bb
    push ax                          ; 0x81be
    call set_bitmap_bit              ; 0x81bf
    add sp, byte 6                   ; 0x81c2
    mov ax, 1                        ; 0x81c5
    push ax                          ; 0x81c8
    mov ax, 8                        ; 0x81c9
    push ax                          ; 0x81cc
    push word [bp - 2]               ; 0x81cd
    call get_bits                    ; 0x81d0
    add sp, byte 6                   ; 0x81d3
    cmp ax, strict word 1            ; 0x81d6
    jne short .forward11             ; 0x81d9
    mov ax, 0                        ; 0x81db
    push ax                          ; 0x81de
    push word [bp - 0xe]             ; 0x81df
    mov ax, word [game_state_arg]    ; 0x81e2
    mov cx, 4                        ; 0x81e5
    shl ax, cl                       ; 0x81e8
    add ax, scenario_header_data     ; 0x81ea
    push ax                          ; 0x81ed
    call set_bitmap_bit              ; 0x81ee
    add sp, byte 6                   ; 0x81f1
.forward11:
    mov ax, 2                        ; 0x81f4
    push ax                          ; 0x81f7
    mov ax, 9                        ; 0x81f8
    push ax                          ; 0x81fb
    push word [bp - 2]               ; 0x81fc
    call get_bits                    ; 0x81ff
    add sp, byte 6                   ; 0x8202
    push ax                          ; 0x8205
    call mark_region_bits            ; 0x8206
    pop cx                           ; 0x8209
    ret                              ; 0x820a
