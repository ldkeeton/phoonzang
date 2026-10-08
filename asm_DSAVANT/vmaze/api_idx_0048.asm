api_idx_0048:
    mov ax, 0xffb8                   ; 0x9029
    call ds_dispatch_f40b            ; 0x902c
    push word [bp + 0x6]             ; 0x902f
    push word [bp + 0x4]             ; 0x9032
    call api_idx_0002_21             ; 0x9035
    add sp, byte 4                   ; 0x9038
    test ax, ax                      ; 0x903b
    je short @..api_idx_0048.l1      ; 0x903d
    mov ax, 1                        ; 0x903f
    ret                              ; 0x9042
@..api_idx_0048.l1:
    cmp word [bp + 0x8], byte 0      ; 0x9043
    jne short @..api_idx_0048.l2     ; 0x9047
    mov ax, 0                        ; 0x9049
    ret                              ; 0x904c
@..api_idx_0048.l2:
    mov ax, 1                        ; 0x904d
    mov cx, word [bp + 0xa]          ; 0x9050
    cmp cx, word [data_9c00]         ; 0x9053
    jge short @..api_idx_0048.l3     ; 0x9057
    mov ax, 2                        ; 0x9059
@..api_idx_0048.l3:
    mov word [bp - 0x0008], ax       ; 0x905c
    mov word [bp - 0x0004], 0        ; 0x905f
    jmp near @..api_idx_0048.l20     ; 0x9064
