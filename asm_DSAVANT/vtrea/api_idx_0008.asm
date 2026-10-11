api_idx_0008:
    mov ax, 0xfff8                   ; 0x3552
    call ds_dispatch_f40b            ; 0x3555
    mov word [bp - 0x0006], 0xffff   ; 0x3558
    mov word [bp - 0x0008], 0xffff   ; 0x355d
    mov ax, word [bss_0e0e]          ; 0x3562
    mov word [bp - 0x0004], ax       ; 0x3565
    mov word [bp - 0x0002], 0        ; 0x3568
    jmp short @..api_idx_0008.l6     ; 0x356d
@..api_idx_0008.l1:
    mov bx, word [bp - 0x0004]       ; 0x356f
    mov al, byte [bx]                ; 0x3572
    sub ah, ah                       ; 0x3574
    cmp ax, 0xff                     ; 0x3576
    jne short @..api_idx_0008.l2     ; 0x3579
    mov ax, word [bp - 0x0002]       ; 0x357b
    ret                              ; 0x357e
@..api_idx_0008.l2:
    mov al, byte [bx + 0x1]          ; 0x357f
    sub ah, ah                       ; 0x3582
    test ax, 0x40                    ; 0x3584
    jne short @..api_idx_0008.l5     ; 0x3587
    cmp word [bp - 0x0006], byte 0xff ; 0x3589
    je short @..api_idx_0008.l3      ; 0x358d
    mov ax, 7                        ; 0x358f
    push ax                          ; 0x3592
    call ds_dispatch_b7a9            ; 0x3593
    pop cx                           ; 0x3596
    test ax, ax                      ; 0x3597
    jne short @..api_idx_0008.l5     ; 0x3599
@..api_idx_0008.l3:
    mov bx, word [bp - 0x0004]       ; 0x359b
    mov al, byte [bx]                ; 0x359e
    sub ah, ah                       ; 0x35a0
    cmp ax, word [bss_830c]          ; 0x35a2
    jne short @..api_idx_0008.l4     ; 0x35a6
    mov ax, word [bp - 0x0002]       ; 0x35a8
    mov word [bp - 0x0008], ax       ; 0x35ab
    jmp short @..api_idx_0008.l5     ; 0x35ae
@..api_idx_0008.l4:
    mov ax, word [bp - 0x0002]       ; 0x35b0
    mov word [bp - 0x0006], ax       ; 0x35b3
@..api_idx_0008.l5:
    add word [bp - 0x0004], byte 8   ; 0x35b6
    inc word [bp - 0x0002]           ; 0x35ba
@..api_idx_0008.l6:
    mov ax, word [bp - 0x0002]       ; 0x35bd
    cmp ax, word [bss_5910]          ; 0x35c0
    jl short @..api_idx_0008.l1      ; 0x35c4
    cmp word [bp + 0x4], byte 0      ; 0x35c6
    je short @..api_idx_0008.l8      ; 0x35ca
    cmp word [bp - 0x0006], byte 0xff ; 0x35cc
    jne short @..api_idx_0008.l7     ; 0x35d0
    mov ax, word [bp - 0x0008]       ; 0x35d2
    ret                              ; 0x35d5
@..api_idx_0008.l7:
    mov ax, word [bp - 0x0006]       ; 0x35d6
    ret                              ; 0x35d9
@..api_idx_0008.l8:
    mov ax, 0xffff                   ; 0x35da
    ret                              ; 0x35dd
