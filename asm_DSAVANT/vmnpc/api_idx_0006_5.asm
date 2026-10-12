api_idx_0006_5:
    mov ax, 0xfffa                   ; 0x5d0e
    call ds_aztec_csav               ; 0x5d11
    call loc_10b6                    ; 0x5d14
    mov ax, 0x248                    ; 0x5d17
    imul word [bp + 0x4]             ; 0x5d1a
    add ax, 0x5bf4                   ; 0x5d1d
    push ax                          ; 0x5d20
    push word [bss_9ca8]             ; 0x5d21
    mov ax, 1                        ; 0x5d25
    push ax                          ; 0x5d28
    push ax                          ; 0x5d29
    mov ax, 0                        ; 0x5d2a
    push ax                          ; 0x5d2d
    push word [bp + 0x6]             ; 0x5d2e
    call api_idx_0038_2              ; 0x5d31
    add sp, byte 0x0c                ; 0x5d34
    mov word [bp - 0x0006], ax       ; 0x5d37
    mov ax, word [bss_904e]          ; 0x5d3a
    mov word [bp - 0x0002], ax       ; 0x5d3d
    mov word [bp - 0x0004], 0        ; 0x5d40
    mov ax, word [bp - 0x0006]       ; 0x5d45
    cmp ax, word [bp + 0x8]          ; 0x5d48
    jne short @..api_idx_0006_5.l2   ; 0x5d4b
    cmp word [bp - 0x0002], byte 0xff ; 0x5d4d
    je short @..api_idx_0006_5.l2    ; 0x5d51
    cmp word [bp + 0xa], byte 0      ; 0x5d53
    jne short @..api_idx_0006_5.l1   ; 0x5d57
    push word [bp - 0x0002]          ; 0x5d59
    push word [bp + 0x4]             ; 0x5d5c
    call api_idx_005e_2              ; 0x5d5f
    add sp, byte 4                   ; 0x5d62
    mov word [bp - 0x0004], ax       ; 0x5d65
    jmp short @..api_idx_0006_5.l2   ; 0x5d68
@..api_idx_0006_5.l1:
    push word [bp - 0x0002]          ; 0x5d6a
    push word [bp + 0x4]             ; 0x5d6d
    call api_idx_004e                ; 0x5d70
    add sp, byte 4                   ; 0x5d73
    mov word [bp - 0x0004], ax       ; 0x5d76
@..api_idx_0006_5.l2:
    mov ax, 0xc6                     ; 0x5d79
    push ax                          ; 0x5d7c
    mov ax, 0x109                    ; 0x5d7d
    push ax                          ; 0x5d80
    mov ax, 0x8e                     ; 0x5d81
    push ax                          ; 0x5d84
    mov ax, 0x36                     ; 0x5d85
    push ax                          ; 0x5d88
    call ds_loc_3b21                 ; 0x5d89
    add sp, byte 8                   ; 0x5d8c
    mov ax, word [bp - 0x0004]       ; 0x5d8f
    ret                              ; 0x5d92
