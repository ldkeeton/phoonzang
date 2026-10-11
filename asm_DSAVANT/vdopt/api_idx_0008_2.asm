api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x362f
    call ds_dispatch_f40b            ; 0x3632
    mov word [bp - 0x0006], 0xffff   ; 0x3635
    mov word [bp - 0x0008], 0xffff   ; 0x363a
    mov ax, word [bss_0e0e]          ; 0x363f
    mov word [bp - 0x0004], ax       ; 0x3642
    mov word [bp - 0x0002], 0        ; 0x3645
    jmp short @..api_idx_0008_2.l6   ; 0x364a
@..api_idx_0008_2.l1:
    mov bx, word [bp - 0x0004]       ; 0x364c
    mov al, byte [bx]                ; 0x364f
    sub ah, ah                       ; 0x3651
    cmp ax, 0xff                     ; 0x3653
    jne short @..api_idx_0008_2.l2   ; 0x3656
    mov ax, word [bp - 0x0002]       ; 0x3658
    ret                              ; 0x365b
@..api_idx_0008_2.l2:
    mov al, byte [bx + 0x1]          ; 0x365c
    sub ah, ah                       ; 0x365f
    test ax, 0x40                    ; 0x3661
    jne short @..api_idx_0008_2.l5   ; 0x3664
    cmp word [bp - 0x0006], byte 0xff ; 0x3666
    je short @..api_idx_0008_2.l3    ; 0x366a
    mov ax, 7                        ; 0x366c
    push ax                          ; 0x366f
    call ds_dispatch_b7a9            ; 0x3670
    pop cx                           ; 0x3673
    test ax, ax                      ; 0x3674
    jne short @..api_idx_0008_2.l5   ; 0x3676
@..api_idx_0008_2.l3:
    mov bx, word [bp - 0x0004]       ; 0x3678
    mov al, byte [bx]                ; 0x367b
    sub ah, ah                       ; 0x367d
    cmp ax, word [bss_830c]          ; 0x367f
    jne short @..api_idx_0008_2.l4   ; 0x3683
    mov ax, word [bp - 0x0002]       ; 0x3685
    mov word [bp - 0x0008], ax       ; 0x3688
    jmp short @..api_idx_0008_2.l5   ; 0x368b
@..api_idx_0008_2.l4:
    mov ax, word [bp - 0x0002]       ; 0x368d
    mov word [bp - 0x0006], ax       ; 0x3690
@..api_idx_0008_2.l5:
    add word [bp - 0x0004], byte 8   ; 0x3693
    inc word [bp - 0x0002]           ; 0x3697
@..api_idx_0008_2.l6:
    mov ax, word [bp - 0x0002]       ; 0x369a
    cmp ax, word [bss_5910]          ; 0x369d
    jl short @..api_idx_0008_2.l1    ; 0x36a1
    cmp word [bp + 0x4], byte 0      ; 0x36a3
    je short @..api_idx_0008_2.l8    ; 0x36a7
    cmp word [bp - 0x0006], byte 0xff ; 0x36a9
    jne short @..api_idx_0008_2.l7   ; 0x36ad
    mov ax, word [bp - 0x0008]       ; 0x36af
    ret                              ; 0x36b2
@..api_idx_0008_2.l7:
    mov ax, word [bp - 0x0006]       ; 0x36b3
    ret                              ; 0x36b6
@..api_idx_0008_2.l8:
    mov ax, 0xffff                   ; 0x36b7
    ret                              ; 0x36ba
