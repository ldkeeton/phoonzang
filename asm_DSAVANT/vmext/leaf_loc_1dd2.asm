leaf_loc_1dd2:
    mov ax, 5                        ; 0x1dd2
    imul word [bss_91aa]             ; 0x1dd5
    add ax, word [bp + 0xe]          ; 0x1dd9
    mov bx, ax                       ; 0x1ddc
    mov byte [bx - 0x6d8a], 2        ; 0x1dde
    jmp short loc_1e16               ; 0x1de3
jumptable_1de5:
    dw 0x6e5d
    dw 0x6d17
    dw 0x6d1f
    dw 0x6d27
    dw 0x6d2f
    dw 0x6d37
    dw 0x6d46
    dw 0x6d55
    dw 0x6d70
    dw 0x6d8f
    dw 0x6dae
    dw 0x6db6
    dw 0x6dbe
    dw 0x6dd2
    dw 0x6de5
    dw 0x6dfb
    dw 0x6e19
    dw 0x6de5
loc_1e09:
    cmp ax, strict word 0x12         ; 0x1e09
    jae short loc_1e16               ; 0x1e0c
    xchg bx, ax                      ; 0x1e0e
    shl bx, 1                        ; 0x1e0f
    jmp [cs:bx + 0x6e2c]             ; 0x1e11
loc_1e16:
    mov ax, word [bss_830c]          ; 0x1e16
    cmp ax, word [bss_8f28]          ; 0x1e19
    jne short loc_1e4b               ; 0x1e1d
    mov ax, word [bp + 0xc]          ; 0x1e1f
    cmp ax, word [bss_8f2a]          ; 0x1e22
    jne short loc_1e4b               ; 0x1e26
    mov ax, word [bp + 0x8]          ; 0x1e28
    cmp ax, word [bss_8f2e]          ; 0x1e2b
    jne short loc_1e4b               ; 0x1e2f
    mov ax, word [bp + 0xa]          ; 0x1e31
    cmp ax, word [bss_8f2c]          ; 0x1e34
    jne short loc_1e4b               ; 0x1e38
    mov ax, 5                        ; 0x1e3a
    imul word [bss_91aa]             ; 0x1e3d
    add ax, word [bp + 0xe]          ; 0x1e41
    mov bx, ax                       ; 0x1e44
    mov byte [bx - 0x6d8a], 3        ; 0x1e46
loc_1e4b:
    mov ax, word [bp - 0x0004]       ; 0x1e4b
    ret                              ; 0x1e4e
