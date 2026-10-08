api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0106
    call ds_dispatch_f40b            ; 0x0109
    cmp word [data_830c], byte 0x17  ; 0x010c
    jne short @..api_idx_0002_2.l1   ; 0x0111
    cmp word [data_8f3e], byte 0x0f  ; 0x0113
    jne short @..api_idx_0002_2.l1   ; 0x0118
    ret                              ; 0x011a
@..api_idx_0002_2.l1:
    mov ax, 3                        ; 0x011b
    push ax                          ; 0x011e
    call ds_dispatch_b7a9            ; 0x011f
    pop cx                           ; 0x0122
    cmp ax, strict word 2            ; 0x0123
    jne short @..api_idx_0002_2.l2   ; 0x0126
    cmp word [data_9196], byte 0     ; 0x0128
    je short @..api_idx_0002_2.l2    ; 0x012d
    mov ax, 0xf                      ; 0x012f
    jmp short @..api_idx_0002_2.l3   ; 0x0132
@..api_idx_0002_2.l2:
    mov ax, api_idx_0002             ; 0x0134
@..api_idx_0002_2.l3:
    mov word [bp - 0x0002], ax       ; 0x0137
    push ax                          ; 0x013a
    call ds_dispatch_b7e0            ; 0x013b
    pop cx                           ; 0x013e
    ret                              ; 0x013f
