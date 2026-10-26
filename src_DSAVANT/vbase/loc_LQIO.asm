; auto-generated
loc_LQIO:
    mov ax, 0xfdb2                   ; 0x606d
    call aztec_csav                  ; 0x6070
@..loc_LQIO.l1:
    cmp word [party_char_count], byte 6 ; 0x6073
    jl short @..loc_LQIO.l2          ; 0x6078
    jmp near @..loc_LQIO.l10         ; 0x607a
@..loc_LQIO.l2:
    mov ax, MSG_ADD_CHARACTER_1200   ; 0x607d
    push ax                          ; 0x6080
    call loc_PVJJ                    ; 0x6081
    pop cx                           ; 0x6084
    mov word [bp - 0x0002], ax       ; 0x6085
    cmp ax, strict word 0xffff       ; 0x6088
    jne short @..loc_LQIO.l3         ; 0x608b
    jmp near @..loc_LQIO.l10         ; 0x608d
@..loc_LQIO.l3:
    mov ax, 0                        ; 0x6090
    push ax                          ; 0x6093
    push word [bp - 0x0002]          ; 0x6094
    lea ax, word [bp - 0x024e]       ; 0x6097
    push ax                          ; 0x609b
    call transfer_pc_file_record     ; 0x609c
    add sp, byte 6                   ; 0x609f
    mov bx, word [bp - 0x0002]       ; 0x60a2
    mov byte [bx + pc_file_record_base_hi + 0x2], 2 ; 0x60a5
    mov si, word [party_char_count]  ; 0x60aa
    shl si, 1                        ; 0x60ae
    mov word [si + member_roster_index + 0x2], bx ; 0x60b0
    push word [party_char_count]     ; 0x60b4
    call api_idx_0006_MHOR           ; 0x60b8
    pop cx                           ; 0x60bb
    mov cx, word [party_char_count]  ; 0x60bc
    shl cx, 1                        ; 0x60c0
    mov bx, cx                       ; 0x60c2
    mov word [bx + member_icon], ax  ; 0x60c4
    push ax                          ; 0x60c8
    mov al, byte [bp - 0x0018]       ; 0x60c9
    sub ah, ah                       ; 0x60cc
    push ax                          ; 0x60ce
    call api_idx_0016_KOOO           ; 0x60cf
    add sp, byte 4                   ; 0x60d2
    lea si, word [bp - 0x024e]       ; 0x60d5
    mov ax, 0x248                    ; 0x60d9
    imul word [party_char_count]     ; 0x60dc
    mov di, ax                       ; 0x60e0
    add ax, party_records            ; 0x60e2
    mov di, ax                       ; 0x60e5
    mov cx, ds                       ; 0x60e7
    mov es, cx                       ; 0x60e9
    mov cx, 0x124                    ; 0x60eb
    rep movsw                        ; 0x60ee
    mov ax, 0                        ; 0x60f0
    push ax                          ; 0x60f3
    push word [party_char_count]     ; 0x60f4
    call draw_party_member_panel     ; 0x60f8
    add sp, byte 4                   ; 0x60fb
    mov ax, word [party_char_count]  ; 0x60fe
    mov cx, 2                        ; 0x6101
    cwd                              ; 0x6104
    idiv cx                          ; 0x6105
    mov ax, dx                       ; 0x6107
    mov cx, 0xfc                     ; 0x6109
    imul cx                          ; 0x610c
    add ax, strict word 5            ; 0x610e
    mov word [bp - 0x0004], ax       ; 0x6111
    mov ax, word [party_char_count]  ; 0x6114
    mov cx, 2                        ; 0x6117
    cwd                              ; 0x611a
    idiv cx                          ; 0x611b
    mov cx, 0x2d                     ; 0x611d
    imul cx                          ; 0x6120
    add ax, strict word 0x12         ; 0x6122
    mov word [bp - 0x0006], ax       ; 0x6125
    mov ax, word [party_char_count]  ; 0x6128
    jmp near @..loc_LQIO.l7          ; 0x612b
@..loc_LQIO.l4:
    mov ax, 0x8d                     ; 0x612e
    push ax                          ; 0x6131
    mov ax, word [bp - 0x0004]       ; 0x6132
    add ax, strict word 0x3b         ; 0x6135
    push ax                          ; 0x6138
    push word [bp - 0x0006]          ; 0x6139
    push word [bp - 0x0004]          ; 0x613c
    call gfx_show_area               ; 0x613f
    add sp, byte 8                   ; 0x6142
    mov ax, word [bp - 0x0006]       ; 0x6145
    add ax, strict word 0x2b         ; 0x6148
    push ax                          ; 0x614b
    mov ax, 0x35                     ; 0x614c
    push ax                          ; 0x614f
    push word [bp - 0x0006]          ; 0x6150
    push word [bp - 0x0004]          ; 0x6153
    call gfx_show_area               ; 0x6156
    add sp, byte 8                   ; 0x6159
    jmp short @..loc_LQIO.l9         ; 0x615c
@..loc_LQIO.l5:
    mov ax, 0x8d                     ; 0x615e
    push ax                          ; 0x6161
    mov ax, word [bp - 0x0004]       ; 0x6162
    add ax, strict word 0x3b         ; 0x6165
    push ax                          ; 0x6168
    push word [bp - 0x0006]          ; 0x6169
    push word [bp - 0x0004]          ; 0x616c
    call gfx_show_area               ; 0x616f
    add sp, byte 8                   ; 0x6172
    mov ax, word [bp - 0x0006]       ; 0x6175
    add ax, strict word 0x2b         ; 0x6178
    push ax                          ; 0x617b
    mov ax, word [bp - 0x0004]       ; 0x617c
    add ax, strict word 0x3b         ; 0x617f
    push ax                          ; 0x6182
    push word [bp - 0x0006]          ; 0x6183
    mov ax, 0x10a                    ; 0x6186
    push ax                          ; 0x6189
    call gfx_show_area               ; 0x618a
    add sp, byte 8                   ; 0x618d
    jmp short @..loc_LQIO.l9         ; 0x6190
@..loc_LQIO.l6:
    mov ax, word [bp - 0x0006]       ; 0x6192
    add ax, strict word 0x2b         ; 0x6195
    push ax                          ; 0x6198
    mov ax, word [bp - 0x0004]       ; 0x6199
    add ax, strict word 0x3b         ; 0x619c
    push ax                          ; 0x619f
    push word [bp - 0x0006]          ; 0x61a0
    push word [bp - 0x0004]          ; 0x61a3
    call gfx_show_area               ; 0x61a6
    add sp, byte 8                   ; 0x61a9
    jmp short @..loc_LQIO.l9         ; 0x61ac
@..loc_LQIO.l7:
    cmp ax, strict word 4            ; 0x61ae
    jne short @..loc_LQIO.l8         ; 0x61b1
    jmp near @..loc_LQIO.l4          ; 0x61b3
@..loc_LQIO.l8:
    cmp ax, strict word 5            ; 0x61b6
    je short @..loc_LQIO.l5          ; 0x61b9
    jmp short @..loc_LQIO.l6         ; 0x61bb
@..loc_LQIO.l9:
    inc word [party_char_count]      ; 0x61bd
    jmp near @..loc_LQIO.l1          ; 0x61c1
@..loc_LQIO.l10:
    mov ax, 0xc6                     ; 0x61c4
    push ax                          ; 0x61c7
    mov ax, 0x109                    ; 0x61c8
    push ax                          ; 0x61cb
    mov ax, 0x8e                     ; 0x61cc
    push ax                          ; 0x61cf
    mov ax, 0x36                     ; 0x61d0
    push ax                          ; 0x61d3
    call gfx_show_area               ; 0x61d4
    add sp, byte 8                   ; 0x61d7
    ret                              ; 0x61da
