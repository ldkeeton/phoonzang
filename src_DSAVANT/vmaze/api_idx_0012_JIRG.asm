; auto-generated
api_idx_0012_JIRG:
    mov ax, 0xffee                   ; 0x8568
    call aztec_csav                  ; 0x856b
    mov ax, word [party_region]      ; 0x856e
    shl ax, 1                        ; 0x8571
    mov si, ax                       ; 0x8573
    mov bx, word [maze_tables]       ; 0x8575
    mov ax, word [bx + si + 0x3c0]   ; 0x8579
    mov word [bp - 0x0002], ax       ; 0x857d
    mov ax, 5                        ; 0x8580
    push ax                          ; 0x8583
    mov ax, 0                        ; 0x8584
    push ax                          ; 0x8587
    push word [bp - 0x0002]          ; 0x8588
    call get_bits                    ; 0x858b
    add sp, byte 6                   ; 0x858e
    mov word [bp - 0x0004], ax       ; 0x8591
    mov ax, 5                        ; 0x8594
    push ax                          ; 0x8597
    push ax                          ; 0x8598
    push word [bp - 0x0002]          ; 0x8599
    call get_bits                    ; 0x859c
    add sp, byte 6                   ; 0x859f
    mov word [bp - 0x0006], ax       ; 0x85a2
    mov ax, 2                        ; 0x85a5
    push ax                          ; 0x85a8
    mov ax, 0xa                      ; 0x85a9
    push ax                          ; 0x85ac
    push word [bp - 0x0002]          ; 0x85ad
    call get_bits                    ; 0x85b0
    add sp, byte 6                   ; 0x85b3
    mov word [bp - 0x0010], ax       ; 0x85b6
    mov ax, 1                        ; 0x85b9
    push ax                          ; 0x85bc
    mov ax, 0xc                      ; 0x85bd
    push ax                          ; 0x85c0
    push word [bp - 0x0002]          ; 0x85c1
    call get_bits                    ; 0x85c4
    add sp, byte 6                   ; 0x85c7
    mov word [bp - 0x0012], ax       ; 0x85ca
    mov ax, word [game_time]         ; 0x85cd
    mov dx, word [bss_8f1e]          ; 0x85d0
    mov cx, 0x5a0                    ; 0x85d4
    mov bx, 0                        ; 0x85d7
    call aztec_lrm                   ; 0x85da
    mov cx, 0x3c                     ; 0x85dd
    mov bx, 0                        ; 0x85e0
    call aztec_ldv                   ; 0x85e3
    mov word [bp - 0x000a], ax       ; 0x85e6
    mov ax, word [bp - 0x0006]       ; 0x85e9
    push ax                          ; 0x85ec
    cmp ax, word [bp - 0x0004]       ; 0x85ed
    pop ax                           ; 0x85f0
    jge short @..api_idx_0012_JIRG.l1 ; 0x85f1
    mov ax, 0x18                     ; 0x85f3
@..api_idx_0012_JIRG.l1:
    mov word [bp - 0x0008], ax       ; 0x85f6
    mov ax, word [bp - 0x000a]       ; 0x85f9
    cmp ax, word [bp - 0x0004]       ; 0x85fc
    jl short @..api_idx_0012_JIRG.l2 ; 0x85ff
    cmp ax, word [bp - 0x0008]       ; 0x8601
    jge short @..api_idx_0012_JIRG.l2 ; 0x8604
    mov ax, 0                        ; 0x8606
    jmp short @..api_idx_0012_JIRG.l3 ; 0x8609
@..api_idx_0012_JIRG.l2:
    mov ax, 1                        ; 0x860b
@..api_idx_0012_JIRG.l3:
    mov word [bp - 0x000e], ax       ; 0x860e
    mov ax, word [bp - 0x0006]       ; 0x8611
    cmp ax, word [bp - 0x0004]       ; 0x8614
    jge short @..api_idx_0012_JIRG.l6 ; 0x8617
    cmp word [bp - 0x000a], byte 0   ; 0x8619
    jl short @..api_idx_0012_JIRG.l4 ; 0x861d
    cmp ax, word [bp - 0x000a]       ; 0x861f
    jle short @..api_idx_0012_JIRG.l4 ; 0x8622
    mov ax, 0                        ; 0x8624
    jmp short @..api_idx_0012_JIRG.l5 ; 0x8627
@..api_idx_0012_JIRG.l4:
    mov ax, word [bp - 0x000e]       ; 0x8629
@..api_idx_0012_JIRG.l5:
    mov word [bp - 0x000e], ax       ; 0x862c
@..api_idx_0012_JIRG.l6:
    cmp word [bp - 0x0012], byte 0   ; 0x862f
    jne short @..api_idx_0012_JIRG.l7 ; 0x8633
    push word [bp - 0x0010]          ; 0x8635
    push word [bp - 0x000e]          ; 0x8638
    call loc_GTVH                    ; 0x863b
    add sp, byte 4                   ; 0x863e
    jmp short @..api_idx_0012_JIRG.l11 ; 0x8641
@..api_idx_0012_JIRG.l7:
    cmp word [bp - 0x000e], byte 0   ; 0x8643
    jne short @..api_idx_0012_JIRG.l8 ; 0x8647
    mov ax, word [party_region]      ; 0x8649
    shl ax, 1                        ; 0x864c
    mov si, ax                       ; 0x864e
    mov bx, word [maze_tables]       ; 0x8650
    mov ax, word [bx + si]           ; 0x8654
    jmp short @..api_idx_0012_JIRG.l9 ; 0x8656
@..api_idx_0012_JIRG.l8:
    mov ax, word [party_region]      ; 0x8658
    shl ax, 1                        ; 0x865b
    mov si, ax                       ; 0x865d
    mov bx, word [maze_tables]       ; 0x865f
    mov ax, word [bx + si + 0x1e0]   ; 0x8663
@..api_idx_0012_JIRG.l9:
    mov word [bp - 0x000c], ax       ; 0x8667
    cmp ax, strict word 0            ; 0x866a
    jle short @..api_idx_0012_JIRG.l10 ; 0x866d
    mov ax, 0                        ; 0x866f
    push ax                          ; 0x8672
    push word [bp - 0x000c]          ; 0x8673
    mov ax, word [game_state_arg]    ; 0x8676
    mov cx, 4                        ; 0x8679
    shl ax, cl                       ; 0x867c
    add ax, party_region + 0x2       ; 0x867e
    push ax                          ; 0x8681
    call set_bitmap_bit              ; 0x8682
    add sp, byte 6                   ; 0x8685
    mov ax, 0                        ; 0x8688
    push ax                          ; 0x868b
    push word [bp - 0x000c]          ; 0x868c
    mov ax, word [game_state_arg]    ; 0x868f
    mov cx, 4                        ; 0x8692
    shl ax, cl                       ; 0x8695
    add ax, bss_5642                 ; 0x8697
    push ax                          ; 0x869a
    call set_bitmap_bit              ; 0x869b
    add sp, byte 6                   ; 0x869e
@..api_idx_0012_JIRG.l10:
    push word [bp - 0x0010]          ; 0x86a1
    call mark_region_bits            ; 0x86a4
    pop cx                           ; 0x86a7
@..api_idx_0012_JIRG.l11:
    ret                              ; 0x86a8
