; auto-generated
api_idx_000e_GOVT:
    mov ax, 0xfff2                   ; 0x8448
    call aztec_csav                  ; 0x844b
    mov word [bp - 0x000e], 1        ; 0x844e
    mov ax, word [bss_8d12]          ; 0x8453
    shl ax, 1                        ; 0x8456
    mov si, ax                       ; 0x8458
    mov bx, word [bss_0e12]          ; 0x845a
    mov ax, word [bx + si]           ; 0x845e
    mov word [bp - 0x000a], ax       ; 0x8460
    mov ax, word [bx + si + 0x3c0]   ; 0x8463
    mov word [bp - 0x0008], ax       ; 0x8467
    mov ax, 1                        ; 0x846a
    push ax                          ; 0x846d
    mov ax, 2                        ; 0x846e
    push ax                          ; 0x8471
    push word [bp - 0x0008]          ; 0x8472
    call ds_dos_con_loc_RGTO         ; 0x8475
    add sp, byte 6                   ; 0x8478
    mov word [bp - 0x000c], ax       ; 0x847b
    mov word [bp - 0x0002], 0        ; 0x847e
    jmp short @..api_idx_000e_GOVT.l6 ; 0x8483
@..api_idx_000e_GOVT.l1:
    mov word [bp - 0x0006], 0        ; 0x8485
@..api_idx_000e_GOVT.l2:
    mov word [bp - 0x0004], 0        ; 0x848a
@..api_idx_000e_GOVT.l3:
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
    mov ax, word [bx + 0x5c34]       ; 0x84af
    cmp ax, word [bp - 0x000a]       ; 0x84b3
    jne short @..api_idx_000e_GOVT.l5 ; 0x84b6
    mov al, byte [bx + 0x5c3b]       ; 0x84b8
    sub ah, ah                       ; 0x84bc
    test ax, 1                       ; 0x84be
    jne short @..api_idx_000e_GOVT.l4 ; 0x84c1
    cmp word [bp - 0x000c], byte 0   ; 0x84c3
    je short @..api_idx_000e_GOVT.l5 ; 0x84c7
@..api_idx_000e_GOVT.l4:
    mov word [bp - 0x000e], 0        ; 0x84c9
@..api_idx_000e_GOVT.l5:
    inc word [bp - 0x0004]           ; 0x84ce
    mov ax, word [bp - 0x0004]       ; 0x84d1
    cmp ax, strict word 0xa          ; 0x84d4
    jl short @..api_idx_000e_GOVT.l3 ; 0x84d7
    inc word [bp - 0x0006]           ; 0x84d9
    mov ax, word [bp - 0x0006]       ; 0x84dc
    cmp ax, strict word 2            ; 0x84df
    jl short @..api_idx_000e_GOVT.l2 ; 0x84e2
    inc word [bp - 0x0002]           ; 0x84e4
@..api_idx_000e_GOVT.l6:
    mov ax, word [bp - 0x0002]       ; 0x84e7
    cmp ax, word [bss_69c8]          ; 0x84ea
    jl short @..api_idx_000e_GOVT.l1 ; 0x84ee
    push word [bp - 0x000e]          ; 0x84f0
    mov si, word [bss_8d12]          ; 0x84f3
    mov bx, word [bss_0e12]          ; 0x84f7
    mov al, byte [bx + si + 0xa50]   ; 0x84fb
    sub ah, ah                       ; 0x84ff
    push ax                          ; 0x8501
    shl si, 1                        ; 0x8502
    push word [bx + si + 0x1e0]      ; 0x8504
    call api_idx_0004_SMJG           ; 0x8508
    add sp, byte 6                   ; 0x850b
    cmp word [bp - 0x000e], byte 0   ; 0x850e
    je short @..api_idx_000e_GOVT.l7 ; 0x8512
    mov ax, 1                        ; 0x8514
    push ax                          ; 0x8517
    mov ax, 3                        ; 0x8518
    push ax                          ; 0x851b
    push word [bp - 0x0008]          ; 0x851c
    call ds_dos_con_loc_RGTO         ; 0x851f
    add sp, byte 6                   ; 0x8522
    test ax, ax                      ; 0x8525
    je short @..api_idx_000e_GOVT.l8 ; 0x8527
@..api_idx_000e_GOVT.l7:
    mov ax, 2                        ; 0x8529
    push ax                          ; 0x852c
    mov ax, 0                        ; 0x852d
    push ax                          ; 0x8530
    push word [bp - 0x0008]          ; 0x8531
    call ds_dos_con_loc_RGTO         ; 0x8534
    add sp, byte 6                   ; 0x8537
    push ax                          ; 0x853a
    call loc_VMLV                    ; 0x853b
    pop cx                           ; 0x853e
@..api_idx_000e_GOVT.l8:
    ret                              ; 0x853f
