; auto-generated
leaf_loc_QGJH:
    mov ax, 5                        ; 0x1dd2
    imul word [bss_91aa]             ; 0x1dd5
    add ax, word [bp + 0xe]          ; 0x1dd9
    mov bx, ax                       ; 0x1ddc
    mov byte [bx - 0x6d8a], 2        ; 0x1dde
    jmp short loc_TRQP               ; 0x1de3
jumptable_1de5:
    dw loc_TRQP - IMAGE_BASE + 0x5055          ; 0x1de5
    dw leaf_loc_LGUH - IMAGE_BASE + 0x5055     ; 0x1de7
    dw leaf_loc_TGSJ - IMAGE_BASE + 0x5055     ; 0x1de9
    dw leaf_loc_LHNH - IMAGE_BASE + 0x5055     ; 0x1deb
    dw leaf_loc_UKTT - IMAGE_BASE + 0x5055     ; 0x1ded
    dw leaf_loc_LUKJ - IMAGE_BASE + 0x5055     ; 0x1def
    dw leaf_loc_NNIO - IMAGE_BASE + 0x5055     ; 0x1df1
    dw leaf_loc_KJOS - IMAGE_BASE + 0x5055     ; 0x1df3
    dw leaf_loc_GPJL - IMAGE_BASE + 0x5055     ; 0x1df5
    dw leaf_loc_THRI - IMAGE_BASE + 0x5055     ; 0x1df7
    dw leaf_loc_KGIG - IMAGE_BASE + 0x5055     ; 0x1df9
    dw leaf_loc_RJTN - IMAGE_BASE + 0x5055     ; 0x1dfb
    dw leaf_loc_NQKR - IMAGE_BASE + 0x5055     ; 0x1dfd
    dw leaf_loc_KOGU_1d8b - IMAGE_BASE + 0x5055 ; 0x1dff
    dw leaf_loc_HHMN - IMAGE_BASE + 0x5055     ; 0x1e01
    dw leaf_loc_JTOP - IMAGE_BASE + 0x5055     ; 0x1e03
    dw leaf_loc_QGJH - IMAGE_BASE + 0x5055     ; 0x1e05
    dw leaf_loc_HHMN - IMAGE_BASE + 0x5055     ; 0x1e07
loc_HSIV:
    cmp ax, strict word 0x12         ; 0x1e09
    jae short loc_TRQP               ; 0x1e0c
    xchg bx, ax                      ; 0x1e0e
    shl bx, 1                        ; 0x1e0f
    jmp [cs:bx + 0x6e2c]             ; 0x1e11
loc_TRQP:
    mov ax, word [bss_830c]          ; 0x1e16
    cmp ax, word [bss_8f28]          ; 0x1e19
    jne short loc_NLMS               ; 0x1e1d
    mov ax, word [bp + 0xc]          ; 0x1e1f
    cmp ax, word [bss_8f2a]          ; 0x1e22
    jne short loc_NLMS               ; 0x1e26
    mov ax, word [bp + 0x8]          ; 0x1e28
    cmp ax, word [bss_8f2e]          ; 0x1e2b
    jne short loc_NLMS               ; 0x1e2f
    mov ax, word [bp + 0xa]          ; 0x1e31
    cmp ax, word [bss_8f2c]          ; 0x1e34
    jne short loc_NLMS               ; 0x1e38
    mov ax, 5                        ; 0x1e3a
    imul word [bss_91aa]             ; 0x1e3d
    add ax, word [bp + 0xe]          ; 0x1e41
    mov bx, ax                       ; 0x1e44
    mov byte [bx - 0x6d8a], 3        ; 0x1e46
loc_NLMS:
    mov ax, word [bp - 0x0004]       ; 0x1e4b
    ret                              ; 0x1e4e
