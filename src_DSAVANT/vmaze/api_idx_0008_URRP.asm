; auto-generated
api_idx_0008_URRP:
    mov ax, 0xfff8                   ; 0x01c9
    call aztec_csav                  ; 0x01cc
    mov word [bp - 8], 0             ; 0x01cf
    call check_at_saved_location     ; 0x01d4
    cmp word [save_location_flag], byte 0 ; 0x01d7
    je short .forward2               ; 0x01dc
    cmp word [bss_9194], byte 0xd    ; 0x01de
    je short .forward1               ; 0x01e3
    mov ax, 0                        ; 0x01e5
    push ax                          ; 0x01e8
    mov ax, 0xd                      ; 0x01e9
    push ax                          ; 0x01ec
    call loc_RRRG                    ; 0x01ed
    add sp, byte 4                   ; 0x01f0
.forward1:
    mov ax, word [bp + 0xe]          ; 0x01f3
    mov word [bss_9198], ax          ; 0x01f6
    ret                              ; 0x01f9
.forward2:
    mov ax, word [bp + 0xe]          ; 0x01fa
    jmp near .forward8               ; 0x01fd
.back1:
    mov ax, word [party_map_piece]   ; 0x0200
    mov cx, 6                        ; 0x0203
    shl ax, cl                       ; 0x0206
    mov cx, word [party_cell_y]      ; 0x0208
    shl cx, 1                        ; 0x020c
    shl cx, 1                        ; 0x020e
    shl cx, 1                        ; 0x0210
    add ax, cx                       ; 0x0212
    add ax, word [party_cell_x]      ; 0x0214
    mov word [bp - 2], ax            ; 0x0218
    push ax                          ; 0x021b
    mov ax, word [maze_data]         ; 0x021c
    add ax, 0x8b0                    ; 0x021f
    push ax                          ; 0x0222
    call test_bit                    ; 0x0223
    add sp, byte 4                   ; 0x0226
    test ax, ax                      ; 0x0229
    je short .forward3               ; 0x022b
    push word [bp - 2]               ; 0x022d
    mov ax, word [maze_data]         ; 0x0230
    add ax, 0x9b0                    ; 0x0233
    push ax                          ; 0x0236
    call test_bit                    ; 0x0237
    add sp, byte 4                   ; 0x023a
    test ax, ax                      ; 0x023d
    je short .forward3               ; 0x023f
    mov ax, 1                        ; 0x0241
    jmp short .forward4              ; 0x0244
.forward3:
    mov ax, 0                        ; 0x0246
.forward4:
    mov word [bp - 8], ax            ; 0x0249
    jmp short .forward10             ; 0x024c
.back2:
    mov word [bp - 4], 0x14a         ; 0x024e
    mov ax, word [game_time]         ; 0x0253
    mov dx, word [game_time_hi]      ; 0x0256
    push ax                          ; 0x025a
    push dx                          ; 0x025b
    mov ax, word [bp - 4]            ; 0x025c
    cwd                              ; 0x025f
    mov cx, ax                       ; 0x0260
    mov bx, dx                       ; 0x0262
    pop dx                           ; 0x0264
    pop ax                           ; 0x0265
    sub ax, cx                       ; 0x0266
    sbb dx, bx                       ; 0x0268
    mov cx, 0x5a0                    ; 0x026a
    mov bx, 0                        ; 0x026d
    call aztec_lrm                   ; 0x0270
    mov word [bp - 6], ax            ; 0x0273
    cmp ax, strict word 0            ; 0x0276
    jl short .forward5               ; 0x0279
    cmp ax, 0x36c                    ; 0x027b
    jl short .forward6               ; 0x027e
.forward5:
    mov ax, 1                        ; 0x0280
    jmp short .forward7              ; 0x0283
.forward6:
    mov ax, 0                        ; 0x0285
.forward7:
    mov word [bp - 8], ax            ; 0x0288
    jmp short .forward10             ; 0x028b
.forward8:
    cmp ax, strict word 2            ; 0x028d
    jne short .forward9              ; 0x0290
    jmp near .back1                  ; 0x0292
.forward9:
    jmp short .back2                 ; 0x0295
.forward10:
    cmp word [bp - 8], byte 0        ; 0x0297
    je short .forward13              ; 0x029b
    mov ax, word [bss_9194]          ; 0x029d
    cmp ax, word [bp + 8]            ; 0x02a0
    jne short .forward11             ; 0x02a3
    cmp word [bp + 0xc], byte 0      ; 0x02a5
    je short .forward12              ; 0x02a9
.forward11:
    push word [bp + 0xa]             ; 0x02ab
    push word [bp + 8]               ; 0x02ae
    call loc_RRRG                    ; 0x02b1
    add sp, byte 4                   ; 0x02b4
.forward12:
    jmp short .forward15             ; 0x02b7
.forward13:
    mov ax, word [bss_9194]          ; 0x02b9
    cmp ax, word [bp + 4]            ; 0x02bc
    jne short .forward14             ; 0x02bf
    cmp word [bp + 0xc], byte 0      ; 0x02c1
    je short .forward15              ; 0x02c5
.forward14:
    push word [bp + 6]               ; 0x02c7
    push word [bp + 4]               ; 0x02ca
    call loc_RRRG                    ; 0x02cd
    add sp, byte 4                   ; 0x02d0
.forward15:
    mov ax, word [bp + 0xe]          ; 0x02d3
    mov word [bss_9198], ax          ; 0x02d6
    ret                              ; 0x02d9
