leaf_loc_4e1f:
    mov word [bp - 0x0006], 4        ; 0x4e1f
    jmp short loc_4e64               ; 0x4e24
loc_4e26:
    mov word [bp - 0x0006], 7        ; 0x4e26
    jmp short loc_4e64               ; 0x4e2b
loc_4e2d:
    mov word [bp - 0x0006], 0xa      ; 0x4e2d
    jmp short loc_4e64               ; 0x4e32
loc_4e34:
    mov word [bp - 0x0006], 0xe      ; 0x4e34
    jmp short loc_4e64               ; 0x4e39
loc_4e3b:
    mov word [bp - 0x0006], 0x12     ; 0x4e3b
    jmp short loc_4e64               ; 0x4e40
loc_4e42:
    mov word [bp - 0x0006], 0x18     ; 0x4e42
    jmp short loc_4e64               ; 0x4e47
jumptable_4e49:
    dw leaf_loc_4e18 - IMAGE_BASE + 0x5055     ; 0x4e49
    dw leaf_loc_4e1f - IMAGE_BASE + 0x5055     ; 0x4e4b
    dw loc_4e26 - IMAGE_BASE + 0x5055          ; 0x4e4d
    dw loc_4e2d - IMAGE_BASE + 0x5055          ; 0x4e4f
    dw loc_4e34 - IMAGE_BASE + 0x5055          ; 0x4e51
    dw loc_4e3b - IMAGE_BASE + 0x5055          ; 0x4e53
    dw loc_4e42 - IMAGE_BASE + 0x5055          ; 0x4e55
loc_4e57:
    cmp ax, strict word 7            ; 0x4e57
    jae short loc_4e64               ; 0x4e5a
    xchg bx, ax                      ; 0x4e5c
    shl bx, 1                        ; 0x4e5d
    jmp [cs:bx - 0x6170]             ; 0x4e5f
loc_4e64:
    mov ax, 0x248                    ; 0x4e64
    imul word [bp + 0x4]             ; 0x4e67
    mov bx, ax                       ; 0x4e6a
    mov ax, word [bx + 0x5c18]       ; 0x4e6c
    cmp ax, word [bp - 0x0006]       ; 0x4e70
    jl short loc_4e78                ; 0x4e73
    inc word [bp - 0x0004]           ; 0x4e75
loc_4e78:
    inc word [bp - 0x0002]           ; 0x4e78
    mov ax, word [bp - 0x0002]       ; 0x4e7b
    cmp ax, strict word 7            ; 0x4e7e
    jl short loc_4e13                ; 0x4e81
    mov ax, 0x248                    ; 0x4e83
    imul word [bp + 0x4]             ; 0x4e86
    mov bx, ax                       ; 0x4e89
    mov al, byte [bx + 0x5e2e]       ; 0x4e8b
    sub ah, ah                       ; 0x4e8f
    cmp ax, word [bp - 0x0004]       ; 0x4e91
    jge short loc_4e9d               ; 0x4e94
    mov al, byte [bp - 0x0004]       ; 0x4e96
    mov byte [bx + 0x5e2e], al       ; 0x4e99
loc_4e9d:
    ret                              ; 0x4e9d
