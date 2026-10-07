math_loc_3620:
    mov ax, 0xfe52                   ; 0x3620
    call ds_dispatch_f40b            ; 0x3623
    mov ax, word [data_9058]         ; 0x3626
    mov cx, 2                        ; 0x3629
    cwd                              ; 0x362c
    idiv cx                          ; 0x362d
    push ax                          ; 0x362f
    call api_idx_0004_5              ; 0x3630
    pop cx                           ; 0x3633
    mov word [data_90e4], 0          ; 0x3634
    cmp word [data_8464], byte 0     ; 0x363a
    je short @..math_loc_3620.l1     ; 0x363f
    mov ax, word [data_8464]         ; 0x3641
    cmp ax, strict word 6            ; 0x3644
    jne short @..math_loc_3620.l3    ; 0x3647
@..math_loc_3620.l1:
    mov word [bp - 0x0004], 6        ; 0x3649
    mov ax, word [bp - 0x0004]       ; 0x364e
    shl ax, 1                        ; 0x3651
    mov bx, ax                       ; 0x3653
    mov bx, word [bx - 0x7b7e]       ; 0x3655
    cmp byte [bx + 0x1a1], 0         ; 0x3659
    jbe short @..math_loc_3620.l2    ; 0x365e
    mov ax, 2                        ; 0x3660
    push ax                          ; 0x3663
    mov ax, 0x41                     ; 0x3664
    push ax                          ; 0x3667
    mov ax, 0xc91                    ; 0x3668
    push ax                          ; 0x366b
    call api_idx_0050                ; 0x366c
    add sp, byte 6                   ; 0x366f
    ret                              ; 0x3672
