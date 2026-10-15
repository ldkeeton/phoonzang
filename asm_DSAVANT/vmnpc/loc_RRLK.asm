; auto-generated
loc_RRLK:
    mov ax, 0                        ; 0x7832
    call aztec_csav                  ; 0x7835
    mov ax, word [bp + 0x4]          ; 0x7838
    cmp ax, word [bp + 0x6]          ; 0x783b
    jl short @..loc_RRLK.l1          ; 0x783e
    inc word [bp + 0x4]              ; 0x7840
@..loc_RRLK.l1:
    mov ax, word [bp + 0x4]          ; 0x7843
    cmp ax, strict word 0xffff       ; 0x7846
    je short @..loc_RRLK.l2          ; 0x7849
    cmp ax, word [bp + 0x6]          ; 0x784b
    jl short @..loc_RRLK.l2          ; 0x784e
    mov ax, word [bp + 0x6]          ; 0x7850
    add ax, word [bp + 0x8]          ; 0x7853
    mov cx, ax                       ; 0x7856
    dec ax                           ; 0x7858
    mov cx, ax                       ; 0x7859
    mov ax, word [bp + 0x4]          ; 0x785b
    cmp cx, ax                       ; 0x785e
    jge short @..loc_RRLK.l3         ; 0x7860
@..loc_RRLK.l2:
    mov ax, word [bp + 0x6]          ; 0x7862
    mov word [bp + 0x4], ax          ; 0x7865
@..loc_RRLK.l3:
    mov ax, word [bp + 0x4]          ; 0x7868
    ret                              ; 0x786b
