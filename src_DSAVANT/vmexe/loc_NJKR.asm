; auto-generated
loc_NJKR:
    mov ax, 0                        ; 0x1e35
    call aztec_csav                  ; 0x1e38
    push word [bp + 6]               ; 0x1e3b
    push word [bp + 4]               ; 0x1e3e
    mov ax, bss_90e6                 ; 0x1e41
    push ax                          ; 0x1e44
    call loc_HJSG                    ; 0x1e45
    add sp, byte 6                   ; 0x1e48
    mov ax, bss_9136                 ; 0x1e4b
    push ax                          ; 0x1e4e
    push word [bp + 8]               ; 0x1e4f
    call load_message_string         ; 0x1e52
    add sp, byte 4                   ; 0x1e55
    mov byte [bss_9186], 0           ; 0x1e58
    cmp word [bss_91d6], byte 2      ; 0x1e5d
    jne short @..loc_NJKR.l2         ; 0x1e62
    mov ax, 4                        ; 0x1e64
    push ax                          ; 0x1e67
    mov ax, 2                        ; 0x1e68
    push ax                          ; 0x1e6b
    call api_idx_0004_UONH           ; 0x1e6c
    add sp, byte 4                   ; 0x1e6f
    mov ax, 2                        ; 0x1e72
    push ax                          ; 0x1e75
    mov ax, 0x43                     ; 0x1e76
    cmp word [bp + 4], byte 0        ; 0x1e79
    jne short @..loc_NJKR.l1         ; 0x1e7d
    mov ax, 1                        ; 0x1e7f
@..loc_NJKR.l1:
    push ax                          ; 0x1e82
    mov ax, bss_90e6                 ; 0x1e83
    push ax                          ; 0x1e86
    call api_idx_0002_TMNV           ; 0x1e87
    add sp, byte 6                   ; 0x1e8a
    mov ax, 3                        ; 0x1e8d
    push ax                          ; 0x1e90
    mov ax, 0x41                     ; 0x1e91
    push ax                          ; 0x1e94
    mov ax, bss_9136                 ; 0x1e95
    push ax                          ; 0x1e98
    call api_idx_0002_TMNV           ; 0x1e99
    add sp, byte 6                   ; 0x1e9c
    jmp short @..loc_NJKR.l4         ; 0x1e9f
@..loc_NJKR.l2:
    mov ax, 4                        ; 0x1ea1
    push ax                          ; 0x1ea4
    push ax                          ; 0x1ea5
    call api_idx_0004_UONH           ; 0x1ea6
    add sp, byte 4                   ; 0x1ea9
    mov ax, 0x41                     ; 0x1eac
    push ax                          ; 0x1eaf
    push ax                          ; 0x1eb0
    cmp word [bp + 4], byte 0        ; 0x1eb1
    jne short @..loc_NJKR.l3         ; 0x1eb5
    mov ax, 1                        ; 0x1eb7
@..loc_NJKR.l3:
    push ax                          ; 0x1eba
    mov ax, bss_9186                 ; 0x1ebb
    push ax                          ; 0x1ebe
    mov ax, bss_9136                 ; 0x1ebf
    push ax                          ; 0x1ec2
    mov ax, bss_90e6                 ; 0x1ec3
    push ax                          ; 0x1ec6
    mov ax, 4                        ; 0x1ec7
    push ax                          ; 0x1eca
    call api_idx_0004_QSNR           ; 0x1ecb
    add sp, byte 0xe                 ; 0x1ece
@..loc_NJKR.l4:
    cmp word [bp + 0xa], byte 1      ; 0x1ed1
    jne short @..loc_NJKR.l6         ; 0x1ed5
    cmp word [bp + 4], byte 0        ; 0x1ed7
    jne short @..loc_NJKR.l6         ; 0x1edb
    cmp word [bp + 0xc], byte 0      ; 0x1edd
    jle short @..loc_NJKR.l5         ; 0x1ee1
    push word [bp + 0xc]             ; 0x1ee3
    call play_sound_effect           ; 0x1ee6
    pop cx                           ; 0x1ee9
@..loc_NJKR.l5:
    mov ax, 1                        ; 0x1eea
    push ax                          ; 0x1eed
    push word [bp + 6]               ; 0x1eee
    call api_idx_0004_MLLS           ; 0x1ef1
    add sp, byte 4                   ; 0x1ef4
@..loc_NJKR.l6:
    push word [bss_9058]             ; 0x1ef7
    call api_idx_0004_QUPL           ; 0x1efb
    pop cx                           ; 0x1efe
    ret                              ; 0x1eff
