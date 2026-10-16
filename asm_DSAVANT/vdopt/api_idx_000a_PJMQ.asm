; auto-generated
api_idx_000a_PJMQ:
    mov ax, 0xfff6                   ; 0x26f3
    call aztec_csav                  ; 0x26f6
    mov byte [bp - 0x000a], 1        ; 0x26f9
    mov byte [bp - 0x0009], 0        ; 0x26fd
    mov ax, 0                        ; 0x2701
    push ax                          ; 0x2704
    push ax                          ; 0x2705
    lea ax, word [bp - 0x000a]       ; 0x2706
    push ax                          ; 0x2709
    mov ax, 0                        ; 0x270a
    push ax                          ; 0x270d
    mov ax, 0xc7                     ; 0x270e
    push ax                          ; 0x2711
    mov ax, 0                        ; 0x2712
    push ax                          ; 0x2715
    mov ax, 0x13f                    ; 0x2716
    push ax                          ; 0x2719
    mov ax, 0                        ; 0x271a
    push ax                          ; 0x271d
    mov ax, 0x73                     ; 0x271e
    push ax                          ; 0x2721
    mov ax, 0x32                     ; 0x2722
    push ax                          ; 0x2725
    mov ax, 1                        ; 0x2726
    push ax                          ; 0x2729
    call thunk_28                    ; 0x272a
    add sp, byte 0x16                ; 0x272d
    ret                              ; 0x2730
