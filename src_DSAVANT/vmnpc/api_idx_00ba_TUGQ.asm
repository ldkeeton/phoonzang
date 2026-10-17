; auto-generated
api_idx_00ba_TUGQ:
    mov ax, 0xff46                   ; 0xaa93
    call aztec_csav                  ; 0xaa96
    lea ax, word [bp - 0x00b6]       ; 0xaa99
    push ax                          ; 0xaa9d
    push word [bp + 0x6]             ; 0xaa9e
    call ds_app_mem_TIMR             ; 0xaaa1
    add sp, byte 4                   ; 0xaaa4
    lea ax, word [bp - 0x0066]       ; 0xaaa7
    push ax                          ; 0xaaaa
    mov ax, 0x5e9                    ; 0xaaab
    push ax                          ; 0xaaae
    call ds_app_mem_TIMR             ; 0xaaaf
    add sp, byte 4                   ; 0xaab2
    mov ax, 0x5e                     ; 0xaab5
    push ax                          ; 0xaab8
    mov ax, 0x248                    ; 0xaab9
    imul word [bp + 0x4]             ; 0xaabc
    add ax, 0x5bf4                   ; 0xaabf
    push ax                          ; 0xaac2
    lea ax, word [bp - 0x0066]       ; 0xaac3
    push ax                          ; 0xaac6
    call ds_app_string_HHIL          ; 0xaac7
    add sp, byte 6                   ; 0xaaca
@..api_idx_00ba_TUGQ.l1:
    mov ax, 0                        ; 0xaacd
    push ax                          ; 0xaad0
    mov ax, word [bp + 0x6]          ; 0xaad1
    inc ax                           ; 0xaad4
    inc ax                           ; 0xaad5
    push ax                          ; 0xaad6
    call api_idx_0100_KHVV           ; 0xaad7
    add sp, byte 4                   ; 0xaada
    lea ax, word [bp - 0x0066]       ; 0xaadd
    push ax                          ; 0xaae0
    lea ax, word [bp - 0x0052]       ; 0xaae1
    push ax                          ; 0xaae4
    call api_idx_00b0_KPHQ           ; 0xaae5
    add sp, byte 4                   ; 0xaae8
    lea ax, word [bp - 0x0052]       ; 0xaaeb
    push ax                          ; 0xaaee
    call aztec_strlen                ; 0xaaef
    pop cx                           ; 0xaaf2
    mov word [bp - 0x00b8], ax       ; 0xaaf3
    mov bx, ax                       ; 0xaaf7
    add bx, bp                       ; 0xaaf9
    mov byte [bx - 0x0052], 0x20     ; 0xaafb
    mov byte [bx - 0x0051], 0        ; 0xaaff
    lea ax, word [bp - 0x0052]       ; 0xab03
    push ax                          ; 0xab06
    call api_idx_00a8_PUTL           ; 0xab07
    pop cx                           ; 0xab0a
    mov word [bp - 0x00b8], 0        ; 0xab0b
@..api_idx_00ba_TUGQ.l2:
    mov ax, 0x2f                     ; 0xab11
    push ax                          ; 0xab14
    mov ax, word [bp - 0x00b8]       ; 0xab15
    lea cx, word [bp - 0x00b5]       ; 0xab19
    add ax, cx                       ; 0xab1d
    push ax                          ; 0xab1f
    call strpos                      ; 0xab20
    add sp, byte 4                   ; 0xab23
    mov word [bp - 0x00ba], ax       ; 0xab26
    lea ax, word [bp - 0x0052]       ; 0xab2a
    mov word [bp - 0x0002], ax       ; 0xab2d
@..api_idx_00ba_TUGQ.l3:
    mov bx, word [bp - 0x0002]       ; 0xab30
    cmp byte [bx], 0                 ; 0xab33
    je short @..api_idx_00ba_TUGQ.l5 ; 0xab36
    push word [bp - 0x00ba]          ; 0xab38
    mov ax, word [bp - 0x00b8]       ; 0xab3c
    lea cx, word [bp - 0x00b5]       ; 0xab40
    add ax, cx                       ; 0xab44
    push ax                          ; 0xab46
    push bx                          ; 0xab47
    call aztec_strncmp               ; 0xab48
    add sp, byte 6                   ; 0xab4b
    test ax, ax                      ; 0xab4e
    jne short @..api_idx_00ba_TUGQ.l4 ; 0xab50
    mov bx, word [bp - 0x00b8]       ; 0xab52
    add bx, bp                       ; 0xab56
    mov al, byte [bx - 0x00b6]       ; 0xab58
    sub ah, ah                       ; 0xab5c
    ret                              ; 0xab5e
@..api_idx_00ba_TUGQ.l4:
    inc word [bp - 0x0002]           ; 0xab5f
    jmp short @..api_idx_00ba_TUGQ.l3 ; 0xab62
@..api_idx_00ba_TUGQ.l5:
    mov ax, word [bp - 0x00b8]       ; 0xab64
    add ax, word [bp - 0x00ba]       ; 0xab68
    inc ax                           ; 0xab6c
    inc ax                           ; 0xab6d
    mov word [bp - 0x00b8], ax       ; 0xab6e
    mov bx, word [bp - 0x00b8]       ; 0xab72
    add bx, bp                       ; 0xab76
    cmp byte [bx - 0x00b6], 0        ; 0xab78
    jne short @..api_idx_00ba_TUGQ.l2 ; 0xab7d
    cmp word [bp + 0x8], byte 1      ; 0xab7f
    jne short @..api_idx_00ba_TUGQ.l6 ; 0xab83
    mov ax, 1                        ; 0xab85
    ret                              ; 0xab88
@..api_idx_00ba_TUGQ.l6:
    jmp near @..api_idx_00ba_TUGQ.l1 ; 0xab89
    db 0xc3
