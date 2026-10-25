; auto-generated
api_idx_000e_LLMU:
    mov ax, 0xfff2                   ; 0x8448
    call aztec_csav                  ; 0x844b
    mov word [bp - 0x000e], 1        ; 0x844e
    mov ax, word [party_region]      ; 0x8453
    shl ax, 1                        ; 0x8456
    mov si, ax                       ; 0x8458
    mov bx, word [maze_tables]       ; 0x845a
    mov ax, word [bx + si]           ; 0x845e
    mov word [bp - 0x000a], ax       ; 0x8460
    mov ax, word [bx + si + 0x3c0]   ; 0x8463
    mov word [bp - 0x0008], ax       ; 0x8467
    mov ax, 1                        ; 0x846a
    push ax                          ; 0x846d
    mov ax, 2                        ; 0x846e
    push ax                          ; 0x8471
    push word [bp - 0x0008]          ; 0x8472
    call get_bits                    ; 0x8475
    add sp, byte 6                   ; 0x8478
    mov word [bp - 0x000c], ax       ; 0x847b
    mov word [bp - 0x0002], 0        ; 0x847e
    jmp short @..api_idx_000e_LLMU.l6 ; 0x8483
@..api_idx_000e_LLMU.l1:
    mov word [bp - 0x0006], 0        ; 0x8485
@..api_idx_000e_LLMU.l2:
    mov word [bp - 0x0004], 0        ; 0x848a
@..api_idx_000e_LLMU.l3:
    mov ax, 0x248                    ; 0x848f
    imul word [bp - 0x0002]          ; 0x8492
    push ax                          ; 0x8495
    mov ax, 0x78                     ; 0x8496
    imul word [bp - 0x0006]          ; 0x8499
    mov cx, ax                       ; 0x849c
    pop ax                           ; 0x849e
    add ax, cx                       ; 0x849f
    push ax                          ; 0x84a1
    mov ax, 0xc                      ; 0x84a2
    imul word [bp - 0x0004]          ; 0x84a5
    mov cx, ax                       ; 0x84a8
    pop ax                           ; 0x84aa
    add ax, cx                       ; 0x84ab
    mov bx, ax                       ; 0x84ad
    mov ax, word [bx + party_records + pc_rec.cell] ; 0x84af
    cmp ax, word [bp - 0x000a]       ; 0x84b3
    jne short @..api_idx_000e_LLMU.l5 ; 0x84b6
    mov al, byte [bx + party_records + pc_rec.cell + 0x7] ; 0x84b8
    sub ah, ah                       ; 0x84bc
    test ax, 1                       ; 0x84be
    jne short @..api_idx_000e_LLMU.l4 ; 0x84c1
    cmp word [bp - 0x000c], byte 0   ; 0x84c3
    je short @..api_idx_000e_LLMU.l5 ; 0x84c7
@..api_idx_000e_LLMU.l4:
    mov word [bp - 0x000e], 0        ; 0x84c9
@..api_idx_000e_LLMU.l5:
    inc word [bp - 0x0004]           ; 0x84ce
    mov ax, word [bp - 0x0004]       ; 0x84d1
    cmp ax, strict word 0xa          ; 0x84d4
    jl short @..api_idx_000e_LLMU.l3 ; 0x84d7
    inc word [bp - 0x0006]           ; 0x84d9
    mov ax, word [bp - 0x0006]       ; 0x84dc
    cmp ax, strict word 2            ; 0x84df
    jl short @..api_idx_000e_LLMU.l2 ; 0x84e2
    inc word [bp - 0x0002]           ; 0x84e4
@..api_idx_000e_LLMU.l6:
    mov ax, word [bp - 0x0002]       ; 0x84e7
    cmp ax, word [party_char_count]  ; 0x84ea
    jl short @..api_idx_000e_LLMU.l1 ; 0x84ee
    push word [bp - 0x000e]          ; 0x84f0
    mov si, word [party_region]      ; 0x84f3
    mov bx, word [maze_tables]       ; 0x84f7
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x84fb
    sub ah, ah                       ; 0x84ff
    push ax                          ; 0x8501
    shl si, 1                        ; 0x8502
    push word [bx + si + 0x1e0]      ; 0x8504
    call api_idx_0004_KGNP           ; 0x8508
    add sp, byte 6                   ; 0x850b
    cmp word [bp - 0x000e], byte 0   ; 0x850e
    je short @..api_idx_000e_LLMU.l7 ; 0x8512
    mov ax, 1                        ; 0x8514
    push ax                          ; 0x8517
    mov ax, 3                        ; 0x8518
    push ax                          ; 0x851b
    push word [bp - 0x0008]          ; 0x851c
    call get_bits                    ; 0x851f
    add sp, byte 6                   ; 0x8522
    test ax, ax                      ; 0x8525
    je short @..api_idx_000e_LLMU.l8 ; 0x8527
@..api_idx_000e_LLMU.l7:
    mov ax, 2                        ; 0x8529
    push ax                          ; 0x852c
    mov ax, 0                        ; 0x852d
    push ax                          ; 0x8530
    push word [bp - 0x0008]          ; 0x8531
    call get_bits                    ; 0x8534
    add sp, byte 6                   ; 0x8537
    push ax                          ; 0x853a
    call mark_region_bits            ; 0x853b
    pop cx                           ; 0x853e
@..api_idx_000e_LLMU.l8:
    ret                              ; 0x853f
