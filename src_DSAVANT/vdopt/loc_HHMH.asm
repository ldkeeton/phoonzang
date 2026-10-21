; auto-generated
loc_HHMH:
    mov ax, 0                        ; 0x04b7
    call aztec_csav                  ; 0x04ba
    mov ax, word [party_tag]         ; 0x04bd
    shl ax, 1                        ; 0x04c0
    mov bx, ax                       ; 0x04c2
    mov word [bx + bss_8cfe], 0      ; 0x04c4
    push ax                          ; 0x04ca
    mov cx, word [bp + 0x4]          ; 0x04cb
    shl cx, 1                        ; 0x04ce
    mov ax, word [maze_tables]       ; 0x04d0
    add ax, cx                       ; 0x04d3
    add ax, 0x3c0                    ; 0x04d5
    push ax                          ; 0x04d8
    call api_idx_0002_NNOS           ; 0x04d9
    add sp, byte 4                   ; 0x04dc
    mov ax, 0                        ; 0x04df
    push ax                          ; 0x04e2
    push ax                          ; 0x04e3
    push ax                          ; 0x04e4
    mov ax, word [bp + 0x4]          ; 0x04e5
    shl ax, 1                        ; 0x04e8
    mov si, ax                       ; 0x04ea
    mov bx, word [maze_tables]       ; 0x04ec
    push word [bx + si + 0x3c0]      ; 0x04f0
    mov ax, 0                        ; 0x04f4
    push ax                          ; 0x04f7
    push ax                          ; 0x04f8
    push word [bp + 0x4]             ; 0x04f9
    mov ax, 6                        ; 0x04fc
    push ax                          ; 0x04ff
    push word [game_state_arg]       ; 0x0500
    call api_idx_0004_PSJH           ; 0x0504
    add sp, byte 0x12                ; 0x0507
    mov ax, word [bp + 0x4]          ; 0x050a
    shl ax, 1                        ; 0x050d
    mov si, ax                       ; 0x050f
    mov bx, word [maze_tables]       ; 0x0511
    cmp word [bx + si], byte 0       ; 0x0515
    jle short @..loc_HHMH.l1         ; 0x0518
    mov ax, 0                        ; 0x051a
    push ax                          ; 0x051d
    push word [bx + si]              ; 0x051e
    mov ax, word [game_state_arg]    ; 0x0520
    mov cx, 4                        ; 0x0523
    shl ax, cl                       ; 0x0526
    add ax, 0x8d14                   ; 0x0528
    push ax                          ; 0x052b
    call set_bitmap_bit              ; 0x052c
    add sp, byte 6                   ; 0x052f
    mov ax, 0                        ; 0x0532
    push ax                          ; 0x0535
    mov ax, word [bp + 0x4]          ; 0x0536
    shl ax, 1                        ; 0x0539
    mov si, ax                       ; 0x053b
    mov bx, word [maze_tables]       ; 0x053d
    push word [bx + si]              ; 0x0541
    mov ax, word [game_state_arg]    ; 0x0543
    mov cx, 4                        ; 0x0546
    shl ax, cl                       ; 0x0549
    add ax, bss_5642                 ; 0x054b
    push ax                          ; 0x054e
    call set_bitmap_bit              ; 0x054f
    add sp, byte 6                   ; 0x0552
    mov ax, word [bp + 0x4]          ; 0x0555
    inc ax                           ; 0x0558
    mov word [party_region], ax      ; 0x0559
@..loc_HHMH.l1:
    mov ax, 1                        ; 0x055c
    push ax                          ; 0x055f
    call ds_app_HKIJ                 ; 0x0560
    pop cx                           ; 0x0563
    ret                              ; 0x0564
