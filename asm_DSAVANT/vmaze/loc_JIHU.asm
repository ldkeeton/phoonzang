; auto-generated
loc_JIHU:
    mov ax, 0                        ; 0x8540
    call aztec_csav                  ; 0x8543
    push word [bp + 0x4]             ; 0x8546
    mov ax, word [bss_8d12]          ; 0x8549
    shl ax, 1                        ; 0x854c
    mov si, ax                       ; 0x854e
    mov bx, word [bss_0e12]          ; 0x8550
    push word [bx + si + 0x1e0]      ; 0x8554
    push word [bx + si]              ; 0x8558
    call api_idx_0004_SMJG           ; 0x855a
    add sp, byte 6                   ; 0x855d
    push word [bp + 0x6]             ; 0x8560
    call loc_VMLV                    ; 0x8563
    pop cx                           ; 0x8566
    ret                              ; 0x8567
