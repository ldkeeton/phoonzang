api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0085
    call ds_dispatch_f40b            ; 0x0088
    mov ax, 0                        ; 0x008b
    push ax                          ; 0x008e
    call ds_dispatch_ef14            ; 0x008f
    pop cx                           ; 0x0092
    mov ax, 2                        ; 0x0093
    push ax                          ; 0x0096
    mov ax, 0                        ; 0x0097
    push ax                          ; 0x009a
    mov ax, 0x9098                   ; 0x009b
    push ax                          ; 0x009e
    call ds_dispatch_d161            ; 0x009f
    add sp, byte 4                   ; 0x00a2
    push ax                          ; 0x00a5
    call ds_dispatch_f909            ; 0x00a6
    add sp, byte 4                   ; 0x00a9
    mov word [bp - 0x0002], ax       ; 0x00ac
    mov ax, 0                        ; 0x00af
    push ax                          ; 0x00b2
    mov ax, word [bp + 0x6]          ; 0x00b3
    imul word [dseg_906e]            ; 0x00b6
    cwd                              ; 0x00ba
    add ax, word [dseg_9072]         ; 0x00bb
    adc dx, word [dseg_9074]         ; 0x00bf
    push dx                          ; 0x00c3
    push ax                          ; 0x00c4
    push word [bp - 0x0002]          ; 0x00c5
    call ds_dispatch_fdbd            ; 0x00c8
    add sp, byte 8                   ; 0x00cb
    cmp word [bp + 0x8], byte 0      ; 0x00ce
    jne short @..api_idx_0002_2.l1   ; 0x00d2
    push word [dseg_906e]            ; 0x00d4
    push word [bp + 0x4]             ; 0x00d8
    push word [bp - 0x0002]          ; 0x00db
    call ds_dispatch_fd6f            ; 0x00de
    add sp, byte 6                   ; 0x00e1
    jmp short @..api_idx_0002_2.l2   ; 0x00e4
@..api_idx_0002_2.l1:
    cmp word [bp + 0x8], byte 1      ; 0x00e6
    jne short @..api_idx_0002_2.l2   ; 0x00ea
    push word [dseg_906e]            ; 0x00ec
    push word [bp + 0x4]             ; 0x00f0
    push word [bp - 0x0002]          ; 0x00f3
    call ds_dispatch_fd76            ; 0x00f6
    add sp, byte 6                   ; 0x00f9
@..api_idx_0002_2.l2:
    push word [bp - 0x0002]          ; 0x00fc
    call ds_dispatch_fda5            ; 0x00ff
    pop cx                           ; 0x0102
    ret                              ; 0x0103
