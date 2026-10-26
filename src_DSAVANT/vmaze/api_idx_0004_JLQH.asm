; auto-generated
api_idx_0004_JLQH:
    mov ax, 0xfffc                   ; 0x1308
    call aztec_csav                  ; 0x130b
    mov word [bp - 4], 0             ; 0x130e
    mov word [bp - 2], 0             ; 0x1313
    jmp short @..api_idx_0004_JLQH.l2 ; 0x1318
@..api_idx_0004_JLQH.l1:
    push word [bp - 2]               ; 0x131a
    call member_is_active            ; 0x131d
    pop cx                           ; 0x1320
    or word [bp - 4], ax             ; 0x1321
    inc word [bp - 2]                ; 0x1324
@..api_idx_0004_JLQH.l2:
    mov ax, word [bp - 2]            ; 0x1327
    cmp ax, word [party_char_count]  ; 0x132a
    jl short @..api_idx_0004_JLQH.l1 ; 0x132e
    cmp word [bp - 4], byte 0        ; 0x1330
    je short @..api_idx_0004_JLQH.l3 ; 0x1334
    jmp near @..api_idx_0004_JLQH.l5 ; 0x1336
@..api_idx_0004_JLQH.l3:
    mov ax, 3                        ; 0x1339
    push ax                          ; 0x133c
    mov ax, word [game_state_arg]    ; 0x133d
    mov cx, 4                        ; 0x1340
    shl ax, cl                       ; 0x1343
    add ax, party_region + 0x2       ; 0x1345
    push ax                          ; 0x1348
    call test_bit                    ; 0x1349
    add sp, byte 4                   ; 0x134c
    test ax, ax                      ; 0x134f
    jne short @..api_idx_0004_JLQH.l4 ; 0x1351
    mov word [party_map_piece], 0xa  ; 0x1353
    mov word [party_cell_x], 7       ; 0x1359
    mov word [party_cell_y], 2       ; 0x135f
@..api_idx_0004_JLQH.l4:
    mov ax, 4                        ; 0x1365
    push ax                          ; 0x1368
    call random_below                ; 0x1369
    pop cx                           ; 0x136c
    mov word [party_tag], ax         ; 0x136d
    mov bx, word [maze_data]         ; 0x1370
    mov si, word [party_map_piece]   ; 0x1374
    mov al, byte [bx + si + 0x490]   ; 0x1378
    sub ah, ah                       ; 0x137c
    add ax, word [party_cell_x]      ; 0x137e
    mov word [party_world_x], ax     ; 0x1382
    mov al, byte [bx + si + 0x4a0]   ; 0x1385
    sub ah, ah                       ; 0x1389
    add ax, word [party_cell_y]      ; 0x138b
    mov word [party_world_y], ax     ; 0x138f
    push ax                          ; 0x1392
    push word [party_world_x]        ; 0x1393
    mov ax, party_map_piece          ; 0x1397
    push ax                          ; 0x139a
    mov ax, party_cell_y             ; 0x139b
    push ax                          ; 0x139e
    mov ax, party_cell_x             ; 0x139f
    push ax                          ; 0x13a2
    call find_map_piece              ; 0x13a3
    add sp, byte 0xa                 ; 0x13a6
    mov word [bss_91aa], 1           ; 0x13a9
    mov word [location_changed], 1   ; 0x13af
    call loc_IVLM                    ; 0x13b5
    mov ax, 1                        ; 0x13b8
    ret                              ; 0x13bb
@..api_idx_0004_JLQH.l5:
    mov ax, 0                        ; 0x13bc
    ret                              ; 0x13bf
