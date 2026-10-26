; auto-generated
loc_UVUO:
    mov ax, 0                        ; 0x7832
    call aztec_csav                  ; 0x7835
    mov ax, word [bp + 4]            ; 0x7838
    cmp ax, word [bp + 6]            ; 0x783b
    jl short .forward1               ; 0x783e
    inc word [bp + 4]                ; 0x7840
.forward1:
    mov ax, word [bp + 4]            ; 0x7843
    cmp ax, strict word 0xffff       ; 0x7846
    je short .forward2               ; 0x7849
    cmp ax, word [bp + 6]            ; 0x784b
    jl short .forward2               ; 0x784e
    mov ax, word [bp + 6]            ; 0x7850
    add ax, word [bp + 8]            ; 0x7853
    mov cx, ax                       ; 0x7856
    dec ax                           ; 0x7858
    mov cx, ax                       ; 0x7859
    mov ax, word [bp + 4]            ; 0x785b
    cmp cx, ax                       ; 0x785e
    jge short .forward3              ; 0x7860
.forward2:
    mov ax, word [bp + 6]            ; 0x7862
    mov word [bp + 4], ax            ; 0x7865
.forward3:
    mov ax, word [bp + 4]            ; 0x7868
    ret                              ; 0x786b
