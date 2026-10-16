; auto-generated
api_idx_0072_KTMQ:
    mov ax, 0xff8e                   ; 0x5e96
    call aztec_csav                  ; 0x5e99
    mov word [bp - 0x0004], 0        ; 0x5e9c
@..api_idx_0072_KTMQ.l1:
    mov ax, word [bp - 0x0004]       ; 0x5ea1
    shl ax, 1                        ; 0x5ea4
    mov bx, ax                       ; 0x5ea6
    add bx, bp                       ; 0x5ea8
    mov word [bx - 0x0018], 1        ; 0x5eaa
    inc word [bp - 0x0004]           ; 0x5eaf
    mov ax, word [bp - 0x0004]       ; 0x5eb2
    cmp ax, strict word 4            ; 0x5eb5
    jle short @..api_idx_0072_KTMQ.l1 ; 0x5eb8
    mov al, byte [bss_91cb]          ; 0x5eba
    sub ah, ah                       ; 0x5ebd
    test ax, 2                       ; 0x5ebf
    je short @..api_idx_0072_KTMQ.l2 ; 0x5ec2
    mov word [bp - 0x0018], 0        ; 0x5ec4
    mov word [bp - 0x0016], 0        ; 0x5ec9
@..api_idx_0072_KTMQ.l2:
    mov word [bp - 0x000e], 0xffff   ; 0x5ece
    mov ax, 0x248                    ; 0x5ed3
    imul word [bp + 0x4]             ; 0x5ed6
    add ax, 0x5bf4                   ; 0x5ed9
    push ax                          ; 0x5edc
    lea ax, word [bp - 0x0068]       ; 0x5edd
    push ax                          ; 0x5ee0
    call aztec_strcpy                ; 0x5ee1
    add sp, byte 4                   ; 0x5ee4
    lea ax, word [bp - 0x0072]       ; 0x5ee7
    push ax                          ; 0x5eea
    mov ax, 0x5e8                    ; 0x5eeb
    push ax                          ; 0x5eee
    call ds_app_mem_TIMR             ; 0x5eef
    add sp, byte 4                   ; 0x5ef2
    push word [bp + 0x4]             ; 0x5ef5
    call api_idx_004c_OGSK           ; 0x5ef8
    pop cx                           ; 0x5efb
@..api_idx_0072_KTMQ.l3:
    cmp word [bss_9cd2], byte 0      ; 0x5efc
    jg short @..api_idx_0072_KTMQ.l4 ; 0x5f01
    mov word [bp - 0x0018], 0        ; 0x5f03
@..api_idx_0072_KTMQ.l4:
    cmp word [bss_9ca8], byte 0      ; 0x5f08
    jne short @..api_idx_0072_KTMQ.l5 ; 0x5f0d
    mov word [bp - 0x0016], 0        ; 0x5f0f
    mov word [bp - 0x0014], 0        ; 0x5f14
@..api_idx_0072_KTMQ.l5:
    lea ax, word [bp - 0x0018]       ; 0x5f19
    push ax                          ; 0x5f1c
    mov ax, 4                        ; 0x5f1d
    push ax                          ; 0x5f20
    lea ax, word [bp - 0x0072]       ; 0x5f21
    push ax                          ; 0x5f24
    lea ax, word [bp - 0x0068]       ; 0x5f25
    push ax                          ; 0x5f28
    mov ax, 0x5f0                    ; 0x5f29
    push ax                          ; 0x5f2c
    push word [bp + 0x4]             ; 0x5f2d
    call api_idx_0054_IHKM           ; 0x5f30
    add sp, byte 0x0c                ; 0x5f33
    mov word [bp - 0x0004], ax       ; 0x5f36
    jmp near @..api_idx_0072_KTMQ.l12 ; 0x5f39
@..api_idx_0072_KTMQ.l6:
    push word [bp + 0x4]             ; 0x5f3c
    call api_idx_0006_RKSL           ; 0x5f3f
    pop cx                           ; 0x5f42
    jmp near @..api_idx_0072_KTMQ.l13 ; 0x5f43
@..api_idx_0072_KTMQ.l7:
    mov ax, 0                        ; 0x5f46
    push ax                          ; 0x5f49
    mov ax, 1                        ; 0x5f4a
    push ax                          ; 0x5f4d
    mov ax, 0x62c                    ; 0x5f4e
    push ax                          ; 0x5f51
    push word [bp + 0x4]             ; 0x5f52
    call api_idx_0006_GQUO           ; 0x5f55
    add sp, byte 8                   ; 0x5f58
    test ax, ax                      ; 0x5f5b
    je short @..api_idx_0072_KTMQ.l8 ; 0x5f5d
    mov word [bp - 0x0004], 4        ; 0x5f5f
@..api_idx_0072_KTMQ.l8:
    jmp short @..api_idx_0072_KTMQ.l13 ; 0x5f64
@..api_idx_0072_KTMQ.l9:
    mov ax, 1                        ; 0x5f66
    push ax                          ; 0x5f69
    push ax                          ; 0x5f6a
    mov ax, 0x62f                    ; 0x5f6b
    push ax                          ; 0x5f6e
    push word [bp + 0x4]             ; 0x5f6f
    call api_idx_0006_GQUO           ; 0x5f72
    add sp, byte 8                   ; 0x5f75
    test ax, ax                      ; 0x5f78
    je short @..api_idx_0072_KTMQ.l10 ; 0x5f7a
    mov word [bp - 0x0004], 4        ; 0x5f7c
@..api_idx_0072_KTMQ.l10:
    jmp short @..api_idx_0072_KTMQ.l13 ; 0x5f81
@..api_idx_0072_KTMQ.l11:
    push word [bp + 0x4]             ; 0x5f83
    call api_idx_0006_TLLQ           ; 0x5f86
    pop cx                           ; 0x5f89
    mov ax, 2                        ; 0x5f8a
    push ax                          ; 0x5f8d
    call api_idx_0006_SHUK           ; 0x5f8e
    pop cx                           ; 0x5f91
    mov ax, 1                        ; 0x5f92
    push ax                          ; 0x5f95
    mov ax, 0x93                     ; 0x5f96
    push ax                          ; 0x5f99
    mov ax, 0xa0                     ; 0x5f9a
    push ax                          ; 0x5f9d
    lea ax, word [bp - 0x0068]       ; 0x5f9e
    push ax                          ; 0x5fa1
    call loc_VNIO                    ; 0x5fa2
    add sp, byte 8                   ; 0x5fa5
    mov ax, 2                        ; 0x5fa8
    push ax                          ; 0x5fab
    call loc_HTQP                    ; 0x5fac
    pop cx                           ; 0x5faf
    jmp short @..api_idx_0072_KTMQ.l13 ; 0x5fb0
@..api_idx_0072_KTMQ.l12:
    cmp ax, strict word 0            ; 0x5fb2
    je short @..api_idx_0072_KTMQ.l6 ; 0x5fb5
    cmp ax, strict word 1            ; 0x5fb7
    je short @..api_idx_0072_KTMQ.l7 ; 0x5fba
    cmp ax, strict word 2            ; 0x5fbc
    je short @..api_idx_0072_KTMQ.l9 ; 0x5fbf
    cmp ax, strict word 3            ; 0x5fc1
    je short @..api_idx_0072_KTMQ.l11 ; 0x5fc4
@..api_idx_0072_KTMQ.l13:
    cmp word [bp - 0x0004], byte 4   ; 0x5fc6
    je short @..api_idx_0072_KTMQ.l14 ; 0x5fca
    jmp near @..api_idx_0072_KTMQ.l3 ; 0x5fcc
@..api_idx_0072_KTMQ.l14:
    ret                              ; 0x5fcf
